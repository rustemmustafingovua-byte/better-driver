.class public final Lio/sentry/HostnameCache;
.super Ljava/lang/Object;
.source "HostnameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/HostnameCache$HostnameCacheThreadFactory;
    }
.end annotation


# static fields
.field private static final GET_HOSTNAME_TIMEOUT:J

.field private static final HOSTNAME_CACHE_DURATION:J

.field private static final THREAD_KEEP_ALIVE_SECONDS:J = 0x1eL


# instance fields
.field private volatile cacheFreshUntil:Lio/sentry/time/Deadline;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final getLocalhost:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hostname:Ljava/lang/String;

.field private final ticker:Lio/sentry/time/MonotonicTicker;

.field private final updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/HostnameCache;->HOSTNAME_CACHE_DURATION:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    return-void
.end method

.method constructor <init>(Lio/sentry/time/MonotonicTicker;)V
    .locals 1
    .param p1, "ticker"    # Lio/sentry/time/MonotonicTicker;

    .line 70
    new-instance v0, Lio/sentry/HostnameCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/HostnameCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/sentry/HostnameCache;-><init>(Ljava/util/concurrent/Callable;Lio/sentry/time/MonotonicTicker;)V

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Lio/sentry/time/MonotonicTicker;)V
    .locals 9
    .param p2, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/net/InetAddress;",
            ">;",
            "Lio/sentry/time/MonotonicTicker;",
            ")V"
        }
    .end annotation

    .line 82
    .local p1, "getLocalhost":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    const-string v0, "getLocalhost is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lio/sentry/HostnameCache;->getLocalhost:Ljava/util/concurrent/Callable;

    .line 84
    const-string v0, "ticker is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/time/MonotonicTicker;

    iput-object v0, p0, Lio/sentry/HostnameCache;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 87
    invoke-static {p2}, Lio/sentry/time/Deadline;->passed(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Deadline;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/HostnameCache;->cacheFreshUntil:Lio/sentry/time/Deadline;

    .line 90
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lio/sentry/HostnameCache$HostnameCacheThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lio/sentry/HostnameCache$HostnameCacheThreadFactory;-><init>(Lio/sentry/HostnameCache$1;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 98
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 99
    iput-object v1, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 100
    invoke-direct {p0}, Lio/sentry/HostnameCache;->updateCache()V

    .line 101
    return-void
.end method

.method private handleCacheUpdateFailure()V
    .locals 4

    .line 159
    iget-object v0, p0, Lio/sentry/HostnameCache;->ticker:Lio/sentry/time/MonotonicTicker;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/HostnameCache;->cacheFreshUntil:Lio/sentry/time/Deadline;

    .line 160
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private updateCache()V
    .locals 5

    .line 121
    new-instance v0, Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;-><init>(Lio/sentry/HostnameCache;)V

    .line 136
    .local v0, "hostRetriever":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 144
    .local v1, "futureTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    nop

    .line 149
    :try_start_1
    sget-wide v2, Lio/sentry/HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    goto :goto_2

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 152
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    .line 155
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 156
    :goto_2
    return-void

    .line 137
    .end local v1    # "futureTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    :catch_4
    move-exception v1

    .line 141
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    .line 143
    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 3

    .line 112
    iget-object v0, p0, Lio/sentry/HostnameCache;->cacheFreshUntil:Lio/sentry/time/Deadline;

    invoke-virtual {v0}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lio/sentry/HostnameCache;->updateCache()V

    .line 116
    :cond_0
    iget-object v0, p0, Lio/sentry/HostnameCache;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$updateCache$1$io-sentry-HostnameCache()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->getLocalhost:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/HostnameCache;->hostname:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lio/sentry/HostnameCache;->ticker:Lio/sentry/time/MonotonicTicker;

    sget-wide v2, Lio/sentry/HostnameCache;->HOSTNAME_CACHE_DURATION:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    invoke-static {v1, v2, v3, v4}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/HostnameCache;->cacheFreshUntil:Lio/sentry/time/Deadline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v1, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    nop

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 128
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    throw v1
.end method
