.class final Lio/sentry/android/core/SendCachedEnvelopeIntegration;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
.implements Ljava/io/Closeable;


# instance fields
.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private final factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private scopes:Lio/sentry/IScopes;

.field private sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

.field private final startupCrashHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final startupCrashMarkerEvaluator:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V
    .locals 2
    .param p1, "factory"    # Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;",
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "startupCrashMarkerEvaluator":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->startupCrashHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 45
    const-string v0, "SendFireAndForgetFactory is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    .line 46
    iput-object p2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->startupCrashMarkerEvaluator:Lio/sentry/util/LazyEvaluator;

    .line 47
    return-void
.end method

.method private sendCachedEnvelopes(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 8
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 88
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    nop

    .line 91
    :try_start_1
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SendCachedEnvelopeIntegration;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IScopes;)V

    .line 92
    invoke-interface {v1, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 151
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->startupCrashMarkerEvaluator:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v2}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->startupCrashHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Startup Crash marker exists, blocking flush."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashFlushTimeoutMillis()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    nop

    .line 158
    :try_start_3
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "Synchronous send timed out, continuing in the background."

    new-array v7, v3, [Ljava/lang/Object;

    .line 159
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "SendCachedEnvelopeIntegration installed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 88
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "scopes":Lio/sentry/IScopes;
    .end local p2    # "options":Lio/sentry/android/core/SentryAndroidOptions;
    :cond_1
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 170
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p1    # "scopes":Lio/sentry/IScopes;
    .restart local p2    # "options":Lio/sentry/android/core/SentryAndroidOptions;
    :catchall_2
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 172
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 173
    const-string v3, "Failed to call the executor. Cached events will not be sent"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 163
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    nop

    .line 165
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 166
    const-string v3, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_2
    :goto_2
    nop

    .line 175
    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    invoke-interface {v0, p0}, Lio/sentry/IConnectionStatusProvider;->removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    .line 73
    :cond_0
    return-void
.end method

.method synthetic lambda$sendCachedEnvelopes$0$io-sentry-android-core-SendCachedEnvelopeIntegration(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IScopes;)V
    .locals 5
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    nop

    .line 97
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "SendCachedEnvelopeIntegration, not trying to send after closing."

    new-array v1, v1, [Ljava/lang/Object;

    .line 98
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 106
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    invoke-interface {v0, p0}, Lio/sentry/IConnectionStatusProvider;->addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    .line 108
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    invoke-interface {v0, p2, p1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->create(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    .line 111
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 112
    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v0, v2, :cond_2

    .line 114
    nop

    .line 115
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "SendCachedEnvelopeIntegration, no connection."

    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void

    .line 121
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    .line 122
    .local v0, "rateLimiter":Lio/sentry/transport/RateLimiter;
    if-eqz v0, :cond_3

    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 123
    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    nop

    .line 125
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "SendCachedEnvelopeIntegration, rate limiting active."

    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void

    .line 132
    :cond_3
    iget-object v2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    if-nez v2, :cond_4

    .line 133
    nop

    .line 134
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "SendCachedEnvelopeIntegration factory is null."

    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void

    .line 141
    :cond_4
    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    invoke-interface {v1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;->send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v0    # "rateLimiter":Lio/sentry/transport/RateLimiter;
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 144
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 145
    const-string v3, "Failed trying to send cached events."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 78
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-eq p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->scopes:Lio/sentry/IScopes;

    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->sendCachedEnvelopes(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 83
    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 5
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 51
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->scopes:Lio/sentry/IScopes;

    .line 52
    nop

    .line 54
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "cachedDir":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->hasValidPath(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "No cache dir path is defined in options."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void

    .line 62
    :cond_1
    const-string v1, "SendCachedEnvelope"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->sendCachedEnvelopes(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 65
    return-void
.end method
