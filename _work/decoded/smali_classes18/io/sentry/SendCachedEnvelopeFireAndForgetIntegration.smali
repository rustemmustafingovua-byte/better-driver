.class public final Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeFireAndForgetIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;,
        Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;,
        Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;
    }
.end annotation


# instance fields
.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private final factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private options:Lio/sentry/SentryOptions;

.field private scopes:Lio/sentry/IScopes;

.field private sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;


# direct methods
.method public constructor <init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;)V
    .locals 2
    .param p1, "factory"    # Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 67
    const-string v0, "SendFireAndForgetFactory is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    .line 68
    return-void
.end method

.method private sendCachedEnvelopes(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 110
    :try_start_0
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 111
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    nop

    .line 112
    :try_start_1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v1

    new-instance v2, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    .line 113
    invoke-interface {v1, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "scopes":Lio/sentry/IScopes;
    .end local p2    # "options":Lio/sentry/SentryOptions;
    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p1    # "scopes":Lio/sentry/IScopes;
    .restart local p2    # "options":Lio/sentry/SentryOptions;
    :catchall_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 178
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 179
    const-string v3, "Failed to call the executor. Cached events will not be sent"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 169
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    nop

    .line 171
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 172
    const-string v3, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_1
    :goto_1
    nop

    .line 181
    :goto_2
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

    .line 91
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    invoke-interface {v0, p0}, Lio/sentry/IConnectionStatusProvider;->removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    .line 95
    :cond_0
    return-void
.end method

.method synthetic lambda$sendCachedEnvelopes$0$io-sentry-SendCachedEnvelopeFireAndForgetIntegration(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 5
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 116
    :try_start_0
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "SendCachedEnvelopeFireAndForgetIntegration, not trying to send after closing."

    new-array v1, v1, [Ljava/lang/Object;

    .line 119
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 127
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    invoke-interface {v0, p0}, Lio/sentry/IConnectionStatusProvider;->addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    .line 129
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    invoke-interface {v0, p2, p1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->create(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    .line 133
    :cond_1
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 134
    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v0, v2, :cond_2

    .line 136
    nop

    .line 137
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "SendCachedEnvelopeFireAndForgetIntegration, no connection."

    new-array v1, v1, [Ljava/lang/Object;

    .line 138
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void

    .line 145
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    .line 146
    .local v0, "rateLimiter":Lio/sentry/transport/RateLimiter;
    if-eqz v0, :cond_3

    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    nop

    .line 148
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "SendCachedEnvelopeFireAndForgetIntegration, rate limiting active."

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void

    .line 155
    :cond_3
    iget-object v2, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    if-nez v2, :cond_4

    .line 156
    nop

    .line 157
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "SendFireAndForget factory is null."

    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void

    .line 162
    :cond_4
    iget-object v1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    invoke-interface {v1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;->send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v0    # "rateLimiter":Lio/sentry/transport/RateLimiter;
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 165
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 166
    const-string v3, "Failed trying to send cached events."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 100
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-eq p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->scopes:Lio/sentry/IScopes;

    iget-object v1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->options:Lio/sentry/SentryOptions;

    invoke-direct {p0, v0, v1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sendCachedEnvelopes(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    .line 105
    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 5
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 72
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->scopes:Lio/sentry/IScopes;

    .line 73
    const-string v0, "SentryOptions is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->options:Lio/sentry/SentryOptions;

    .line 75
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "cachedDir":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->hasValidPath(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "No cache dir path is defined in options."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void

    .line 81
    :cond_0
    nop

    .line 82
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    const-string v4, "SendCachedEventFireAndForgetIntegration installed."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const-string v1, "SendCachedEnvelopeFireAndForget"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, p2}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sendCachedEnvelopes(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    .line 87
    return-void
.end method
