.class public final Lio/sentry/transport/AsyncHttpTransport;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Lio/sentry/transport/ITransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;,
        Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;
    }
.end annotation


# instance fields
.field private final connection:Lio/sentry/transport/HttpConnection;

.field private volatile currentRunnable:Ljava/lang/Runnable;

.field private final envelopeCache:Lio/sentry/cache/IEnvelopeCache;

.field private final executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

.field private final options:Lio/sentry/SentryOptions;

.field private final rateLimiter:Lio/sentry/transport/RateLimiter;

.field private final transportGate:Lio/sentry/transport/ITransportGate;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/RequestDetails;)V
    .locals 10
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "rateLimiter"    # Lio/sentry/transport/RateLimiter;
    .param p3, "transportGate"    # Lio/sentry/transport/ITransportGate;
    .param p4, "requestDetails"    # Lio/sentry/RequestDetails;

    .line 50
    nop

    .line 52
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v3

    .line 51
    invoke-static {v0, v1, v2, v3}, Lio/sentry/transport/AsyncHttpTransport;->initExecutor(ILio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)Lio/sentry/transport/QueuedThreadPoolExecutor;

    move-result-object v5

    new-instance v9, Lio/sentry/transport/HttpConnection;

    invoke-direct {v9, p1, p4, p2}, Lio/sentry/transport/HttpConnection;-><init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/RateLimiter;)V

    .line 50
    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "options":Lio/sentry/SentryOptions;
    .end local p2    # "rateLimiter":Lio/sentry/transport/RateLimiter;
    .end local p3    # "transportGate":Lio/sentry/transport/ITransportGate;
    .local v6, "options":Lio/sentry/SentryOptions;
    .local v7, "rateLimiter":Lio/sentry/transport/RateLimiter;
    .local v8, "transportGate":Lio/sentry/transport/ITransportGate;
    invoke-direct/range {v4 .. v9}, Lio/sentry/transport/AsyncHttpTransport;-><init>(Lio/sentry/transport/QueuedThreadPoolExecutor;Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/transport/HttpConnection;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/QueuedThreadPoolExecutor;Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/transport/HttpConnection;)V
    .locals 2
    .param p1, "executor"    # Lio/sentry/transport/QueuedThreadPoolExecutor;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "rateLimiter"    # Lio/sentry/transport/RateLimiter;
    .param p4, "transportGate"    # Lio/sentry/transport/ITransportGate;
    .param p5, "httpConnection"    # Lio/sentry/transport/HttpConnection;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    .line 68
    const-string v0, "executor is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/transport/QueuedThreadPoolExecutor;

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 69
    nop

    .line 70
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v0

    const-string v1, "envelopeCache is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/cache/IEnvelopeCache;

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    .line 71
    const-string v0, "options is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 72
    const-string v0, "rateLimiter is required"

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/transport/RateLimiter;

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    .line 73
    const-string v0, "transportGate is required"

    invoke-static {p4, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/transport/ITransportGate;

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->transportGate:Lio/sentry/transport/ITransportGate;

    .line 74
    const-string v0, "httpConnection is required"

    invoke-static {p5, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/transport/HttpConnection;

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->connection:Lio/sentry/transport/HttpConnection;

    .line 75
    return-void
.end method

.method static synthetic access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lio/sentry/transport/AsyncHttpTransport;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "x0"    # Lio/sentry/transport/AsyncHttpTransport;

    .line 35
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method static synthetic access$300(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;
    .locals 1
    .param p0, "x0"    # Lio/sentry/transport/AsyncHttpTransport;

    .line 35
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->transportGate:Lio/sentry/transport/ITransportGate;

    return-object v0
.end method

.method static synthetic access$400(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/HttpConnection;
    .locals 1
    .param p0, "x0"    # Lio/sentry/transport/AsyncHttpTransport;

    .line 35
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->connection:Lio/sentry/transport/HttpConnection;

    return-object v0
.end method

.method private static initExecutor(ILio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)Lio/sentry/transport/QueuedThreadPoolExecutor;
    .locals 8
    .param p0, "maxQueueSize"    # I
    .param p1, "envelopeCache"    # Lio/sentry/cache/IEnvelopeCache;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "dateProvider"    # Lio/sentry/SentryDateProvider;

    .line 136
    new-instance v0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda2;-><init>(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)V

    move-object v5, v0

    .line 150
    .local v5, "storeEvents":Ljava/util/concurrent/RejectedExecutionHandler;
    new-instance v1, Lio/sentry/transport/QueuedThreadPoolExecutor;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;-><init>(Lio/sentry/transport/AsyncHttpTransport$1;)V

    const/4 v2, 0x1

    move v3, p0

    move-object v6, p2

    move-object v7, p3

    .end local p0    # "maxQueueSize":I
    .end local p2    # "logger":Lio/sentry/ILogger;
    .end local p3    # "dateProvider":Lio/sentry/SentryDateProvider;
    .local v3, "maxQueueSize":I
    .local v6, "logger":Lio/sentry/ILogger;
    .local v7, "dateProvider":Lio/sentry/SentryDateProvider;
    invoke-direct/range {v1 .. v7}, Lio/sentry/transport/QueuedThreadPoolExecutor;-><init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)V

    return-object v1
.end method

.method static synthetic lambda$initExecutor$1(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 4
    .param p0, "envelopeCache"    # Lio/sentry/cache/IEnvelopeCache;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 138
    instance-of v0, p2, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    if-eqz v0, :cond_1

    .line 139
    move-object v0, p2

    check-cast v0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    .line 141
    .local v0, "envelopeSender":Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;
    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;

    move-result-object v1

    const-class v2, Lio/sentry/hints/Cached;

    invoke-static {v1, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$600(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lio/sentry/cache/IEnvelopeCache;->storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    .line 145
    :cond_0
    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/sentry/transport/AsyncHttpTransport;->markHintWhenSendingFailed(Lio/sentry/Hint;Z)V

    .line 146
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Envelope rejected"

    invoke-interface {p1, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .end local v0    # "envelopeSender":Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;
    :cond_1
    return-void
.end method

.method static synthetic lambda$markHintWhenSendingFailed$2(Lio/sentry/hints/SubmissionResult;)V
    .locals 1
    .param p0, "result"    # Lio/sentry/hints/SubmissionResult;

    .line 212
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method static synthetic lambda$markHintWhenSendingFailed$3(ZLio/sentry/hints/Retryable;)V
    .locals 0
    .param p0, "retry"    # Z
    .param p1, "retryable"    # Lio/sentry/hints/Retryable;

    .line 213
    invoke-interface {p1, p0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method private static markHintWhenSendingFailed(Lio/sentry/Hint;Z)V
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;
    .param p1, "retry"    # Z

    .line 212
    const-class v0, Lio/sentry/hints/SubmissionResult;

    new-instance v1, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 213
    const-class v0, Lio/sentry/hints/Retryable;

    new-instance v1, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 214
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/sentry/transport/AsyncHttpTransport;->close(Z)V

    .line 169
    return-void
.end method

.method public close(Z)V
    .locals 7
    .param p1, "isRestarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    invoke-virtual {v0}, Lio/sentry/transport/RateLimiter;->close()V

    .line 174
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-virtual {v0}, Lio/sentry/transport/QueuedThreadPoolExecutor;->shutdown()V

    .line 175
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Shutting down"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez p1, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v0

    .line 181
    .local v0, "timeout":J
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lio/sentry/transport/QueuedThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 183
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to shutdown the async connection async sender  within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms. Trying to force it now."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 184
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-virtual {v3}, Lio/sentry/transport/QueuedThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 190
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-virtual {v3}, Lio/sentry/transport/QueuedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v0    # "timeout":J
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 199
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 200
    const-string v4, "Thread interrupted while closing the connection."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 202
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    nop

    .line 203
    :goto_1
    return-void
.end method

.method public flush(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 127
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-virtual {v0, p1, p2}, Lio/sentry/transport/QueuedThreadPoolExecutor;->waitTillIdle(J)V

    .line 128
    return-void
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    return-object v0
.end method

.method public isHealthy()Z
    .locals 3

    .line 161
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    invoke-virtual {v0}, Lio/sentry/transport/RateLimiter;->isAnyRateLimitActive()Z

    move-result v0

    .line 162
    .local v0, "anyRateLimitActive":Z
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-virtual {v1}, Lio/sentry/transport/QueuedThreadPoolExecutor;->didRejectRecently()Z

    move-result v1

    .line 163
    .local v1, "didRejectRecently":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method synthetic lambda$send$0$io-sentry-transport-AsyncHttpTransport(Lio/sentry/hints/Enqueable;)V
    .locals 4
    .param p1, "enqueable"    # Lio/sentry/hints/Enqueable;

    .line 118
    invoke-interface {p1}, Lio/sentry/hints/Enqueable;->markEnqueued()V

    .line 119
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Envelope enqueued"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 7
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    .line 82
    .local v0, "currentEnvelopeCache":Lio/sentry/cache/IEnvelopeCache;
    const/4 v1, 0x0

    .line 83
    .local v1, "cached":Z
    const-class v2, Lio/sentry/hints/Cached;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    .line 86
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Captured Envelope is already cached"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    invoke-virtual {v2, p1, p2}, Lio/sentry/transport/RateLimiter;->filter(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/SentryEnvelope;

    move-result-object v2

    .line 91
    .local v2, "filteredEnvelope":Lio/sentry/SentryEnvelope;
    if-nez v2, :cond_1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    invoke-interface {v3, p1}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    goto :goto_1

    .line 97
    :cond_1
    const-class v3, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 100
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v3

    .local v3, "envelopeThatMayIncludeClientReport":Lio/sentry/SentryEnvelope;
    goto :goto_0

    .line 102
    .end local v3    # "envelopeThatMayIncludeClientReport":Lio/sentry/SentryEnvelope;
    :cond_2
    move-object v3, v2

    .line 105
    .restart local v3    # "envelopeThatMayIncludeClientReport":Lio/sentry/SentryEnvelope;
    :goto_0
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    new-instance v5, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    invoke-direct {v5, p0, v3, p2, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;-><init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V

    .line 106
    invoke-virtual {v4, v5}, Lio/sentry/transport/QueuedThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 109
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 111
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v5

    sget-object v6, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 112
    invoke-interface {v5, v6, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    goto :goto_1

    .line 114
    :cond_3
    const-class v5, Lio/sentry/hints/Enqueable;

    new-instance v6, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;-><init>(Lio/sentry/transport/AsyncHttpTransport;)V

    invoke-static {p2, v5, v6}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 123
    .end local v3    # "envelopeThatMayIncludeClientReport":Lio/sentry/SentryEnvelope;
    .end local v4    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_4
    :goto_1
    return-void
.end method
