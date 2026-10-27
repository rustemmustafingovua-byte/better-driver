.class public final Lio/sentry/backpressure/BackpressureMonitor;
.super Ljava/lang/Object;
.source "BackpressureMonitor.java"

# interfaces
.implements Lio/sentry/backpressure/IBackpressureMonitor;
.implements Ljava/lang/Runnable;


# static fields
.field private static final CHECK_INTERVAL_IN_MS:I = 0x2710

.field private static final INITIAL_CHECK_DELAY_IN_MS:I = 0x1f4

.field static final MAX_DOWNSAMPLE_FACTOR:I = 0xa


# instance fields
.field private downsampleFactor:I

.field private volatile latestScheduledRun:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final scopes:Lio/sentry/IScopes;

.field private final sentryOptions:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 1
    .param p1, "sentryOptions"    # Lio/sentry/SentryOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->latestScheduledRun:Ljava/util/concurrent/Future;

    .line 23
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 27
    iput-object p1, p0, Lio/sentry/backpressure/BackpressureMonitor;->sentryOptions:Lio/sentry/SentryOptions;

    .line 28
    iput-object p2, p0, Lio/sentry/backpressure/BackpressureMonitor;->scopes:Lio/sentry/IScopes;

    .line 29
    return-void
.end method

.method private isHealthy()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->isHealthy()Z

    move-result v0

    return v0
.end method

.method private reschedule(I)V
    .locals 6
    .param p1, "delay"    # I

    .line 80
    iget-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->sentryOptions:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    .line 81
    .local v0, "executorService":Lio/sentry/ISentryExecutorService;
    invoke-interface {v0}, Lio/sentry/ISentryExecutorService;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lio/sentry/backpressure/BackpressureMonitor;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 84
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    int-to-long v2, p1

    :try_start_0
    invoke-interface {v0, p0, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/backpressure/BackpressureMonitor;->latestScheduledRun:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    iget-object v3, p0, Lio/sentry/backpressure/BackpressureMonitor;->sentryOptions:Lio/sentry/SentryOptions;

    .line 87
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Backpressure monitor reschedule task rejected"

    .line 88
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_3

    .line 82
    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw v2

    .line 92
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    :goto_3
    return-void
.end method


# virtual methods
.method checkHealth()V
    .locals 5

    .line 58
    invoke-direct {p0}, Lio/sentry/backpressure/BackpressureMonitor;->isHealthy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->sentryOptions:Lio/sentry/SentryOptions;

    .line 61
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v3, v1, [Ljava/lang/Object;

    .line 62
    const-string v4, "Health check positive, reverting to normal sampling."

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    iput v1, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    goto :goto_0

    .line 66
    :cond_1
    iget v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 67
    iget v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    .line 68
    iget-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->sentryOptions:Lio/sentry/SentryOptions;

    .line 69
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget v2, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 70
    const-string v3, "Health check negative, downsampling with a factor of %d"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 49
    iget-object v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->latestScheduledRun:Ljava/util/concurrent/Future;

    .line 50
    .local v0, "currentRun":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lio/sentry/backpressure/BackpressureMonitor;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 52
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    .line 55
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    :goto_1
    return-void
.end method

.method public getDownsampleFactor()I
    .locals 1

    .line 44
    iget v0, p0, Lio/sentry/backpressure/BackpressureMonitor;->downsampleFactor:I

    return v0
.end method

.method public run()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/sentry/backpressure/BackpressureMonitor;->checkHealth()V

    .line 39
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lio/sentry/backpressure/BackpressureMonitor;->reschedule(I)V

    .line 40
    return-void
.end method

.method public start()V
    .locals 1

    .line 33
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lio/sentry/backpressure/BackpressureMonitor;->reschedule(I)V

    .line 34
    return-void
.end method
