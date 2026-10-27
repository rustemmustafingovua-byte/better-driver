.class public final Lio/sentry/transport/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/RateLimiter$IRateLimitObserver;
    }
.end annotation


# static fields
.field private static final HTTP_RETRY_AFTER_DEFAULT_DELAY_MILLIS:J = 0xea60L


# instance fields
.field private final config:Lio/sentry/transport/RateLimiterConfig;

.field private final notifyFuturesLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final notifyObserversFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final rateLimitObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/transport/RateLimiter$IRateLimitObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final sentryRetryAfterLimit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/DataCategory;",
            "Lio/sentry/time/Deadline;",
            ">;"
        }
    .end annotation
.end field

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method public static synthetic $r8$lambda$lPtp-j4ZBaoHJLFgxXS25QiXv3s(Lio/sentry/transport/RateLimiter;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/transport/RateLimiter;->notifyRateLimitObservers()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 75
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMonotonicTicker()Lio/sentry/time/MonotonicTicker;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/transport/RateLimiter;-><init>(Lio/sentry/time/MonotonicTicker;Lio/sentry/transport/RateLimiterConfig;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lio/sentry/time/MonotonicTicker;Lio/sentry/transport/RateLimiterConfig;)V
    .locals 1
    .param p1, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p2, "config"    # Lio/sentry/transport/RateLimiterConfig;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/RateLimiter;->rateLimitObservers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/RateLimiter;->notifyObserversFutures:Ljava/util/List;

    .line 50
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/RateLimiter;->notifyFuturesLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 55
    iput-object p1, p0, Lio/sentry/transport/RateLimiter;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 56
    iput-object p2, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    .line 57
    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "currentDateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    new-instance v0, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda4;-><init>(Lio/sentry/transport/ICurrentDateProvider;)V

    invoke-direct {p0, v0, p2}, Lio/sentry/transport/RateLimiter;-><init>(Lio/sentry/time/MonotonicTicker;Lio/sentry/transport/RateLimiterConfig;)V

    .line 93
    return-void
.end method

.method private applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Lio/sentry/time/Deadline;)V
    .locals 8
    .param p1, "dataCategory"    # Lio/sentry/DataCategory;
    .param p2, "deadline"    # Lio/sentry/time/Deadline;

    .line 321
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/time/Deadline;

    .line 324
    .local v0, "oldLimit":Lio/sentry/time/Deadline;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lio/sentry/time/Deadline;->isAfter(Lio/sentry/time/Deadline;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    :cond_0
    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-direct {p0}, Lio/sentry/transport/RateLimiter;->notifyRateLimitObservers()V

    .line 331
    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->notifyFuturesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 332
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/transport/RateLimiter;->notifyObserversFutures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 333
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    :cond_2
    :try_start_1
    iget-object v3, p0, Lio/sentry/transport/RateLimiter;->notifyObserversFutures:Ljava/util/List;

    iget-object v4, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    .line 341
    invoke-interface {v4}, Lio/sentry/transport/RateLimiterConfig;->getTimerExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v4

    new-instance v5, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda0;-><init>(Lio/sentry/transport/RateLimiter;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 343
    invoke-virtual {p2, v6}, Lio/sentry/time/Deadline;->remaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 342
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 339
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    goto :goto_1

    .line 344
    :catch_0
    move-exception v3

    .line 345
    .local v3, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    iget-object v4, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    .line 346
    invoke-interface {v4}, Lio/sentry/transport/RateLimiterConfig;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "Failed to schedule rate limit lifted notification."

    .line 347
    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    .end local v3    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 351
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 331
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
.end method

.method public static create(Lio/sentry/time/MonotonicTicker;Lio/sentry/transport/RateLimiterConfig;)Lio/sentry/transport/RateLimiter;
    .locals 1
    .param p0, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p1, "config"    # Lio/sentry/transport/RateLimiterConfig;

    .line 66
    new-instance v0, Lio/sentry/transport/RateLimiter;

    invoke-direct {v0, p0, p1}, Lio/sentry/transport/RateLimiter;-><init>(Lio/sentry/time/MonotonicTicker;Lio/sentry/transport/RateLimiterConfig;)V

    return-object v0
.end method

.method private getCategoryFromItemType(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/DataCategory;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "transaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "check_in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "trace_metric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_4
    const-string v0, "event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_6
    const-string v0, "log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "feedback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "profile_chunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "replay_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "attachment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 243
    sget-object v0, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_0
    new-array v0, v3, [Lio/sentry/DataCategory;

    sget-object v3, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    aput-object v3, v0, v2

    sget-object v2, Lio/sentry/DataCategory;->TraceMetricByte:Lio/sentry/DataCategory;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_1
    sget-object v0, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_2
    new-array v0, v3, [Lio/sentry/DataCategory;

    sget-object v3, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    aput-object v3, v0, v2

    sget-object v2, Lio/sentry/DataCategory;->LogByte:Lio/sentry/DataCategory;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_3
    sget-object v0, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_4
    sget-object v0, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_5
    sget-object v0, Lio/sentry/DataCategory;->Monitor:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_6
    sget-object v0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 227
    :pswitch_7
    new-array v0, v3, [Lio/sentry/DataCategory;

    sget-object v3, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    aput-object v3, v0, v2

    sget-object v2, Lio/sentry/DataCategory;->ProfileChunk:Lio/sentry/DataCategory;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 222
    :pswitch_8
    sget-object v0, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 220
    :pswitch_9
    sget-object v0, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 218
    :pswitch_a
    sget-object v0, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 216
    :pswitch_b
    sget-object v0, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7508a6dd -> :sswitch_b
        -0x61b909dd -> :sswitch_a
        -0x2b7e93a9 -> :sswitch_9
        -0x12717657 -> :sswitch_8
        -0xb6a147b -> :sswitch_7
        0x1a344 -> :sswitch_6
        0x35f74a -> :sswitch_5
        0x5c6729a -> :sswitch_4
        0xdadf9ea -> :sswitch_3
        0x5b9b0fbc -> :sswitch_2
        0x76508296 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isRetryAfter(Ljava/lang/String;)Z
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0, p1}, Lio/sentry/transport/RateLimiter;->getCategoryFromItemType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "dataCategory":Ljava/util/List;, "Ljava/util/List<Lio/sentry/DataCategory;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/DataCategory;

    .line 200
    .local v2, "category":Lio/sentry/DataCategory;
    invoke-virtual {p0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    const/4 v1, 0x1

    return v1

    .line 203
    .end local v2    # "category":Lio/sentry/DataCategory;
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$markHintWhenSendingFailed$1(Lio/sentry/hints/SubmissionResult;)V
    .locals 1
    .param p0, "result"    # Lio/sentry/hints/SubmissionResult;

    .line 179
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method static synthetic lambda$markHintWhenSendingFailed$2(ZLio/sentry/hints/Retryable;)V
    .locals 0
    .param p0, "retry"    # Z
    .param p1, "retryable"    # Lio/sentry/hints/Retryable;

    .line 180
    invoke-interface {p1, p0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method static synthetic lambda$new$0(Lio/sentry/transport/ICurrentDateProvider;)J
    .locals 3
    .param p0, "currentDateProvider"    # Lio/sentry/transport/ICurrentDateProvider;

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private markHintWhenSendingFailed(Lio/sentry/Hint;Z)V
    .locals 2
    .param p1, "hint"    # Lio/sentry/Hint;
    .param p2, "retry"    # Z

    .line 179
    const-class v0, Lio/sentry/hints/SubmissionResult;

    new-instance v1, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 180
    const-class v0, Lio/sentry/hints/Retryable;

    new-instance v1, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-static {p1, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 181
    const-class v0, Lio/sentry/hints/DiskFlushNotification;

    new-instance v1, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda3;-><init>(Lio/sentry/transport/RateLimiter;)V

    invoke-static {p1, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 188
    return-void
.end method

.method private notifyRateLimitObservers()V
    .locals 2

    .line 373
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->rateLimitObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    .line 374
    .local v1, "observer":Lio/sentry/transport/RateLimiter$IRateLimitObserver;
    invoke-interface {v1, p0}, Lio/sentry/transport/RateLimiter$IRateLimitObserver;->onRateLimitChanged(Lio/sentry/transport/RateLimiter;)V

    .line 375
    .end local v1    # "observer":Lio/sentry/transport/RateLimiter$IRateLimitObserver;
    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method private parseRetryAfterOrDefault(Ljava/lang/String;)Lio/sentry/time/Deadline;
    .locals 6
    .param p1, "retryAfterHeader"    # Ljava/lang/String;

    .line 360
    const-wide/32 v0, 0xea60

    .line 361
    .local v0, "retryAfterMillis":J
    if-eqz p1, :cond_0

    .line 363
    nop

    .line 364
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 367
    goto :goto_0

    .line 365
    :catch_0
    move-exception v2

    .line 369
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/sentry/transport/RateLimiter;->ticker:Lio/sentry/time/MonotonicTicker;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v0, v1, v3}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V
    .locals 1
    .param p1, "observer"    # Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    .line 379
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->rateLimitObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->notifyFuturesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 389
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->notifyObserversFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 390
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 391
    nop

    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->notifyObserversFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 394
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->rateLimitObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    return-void

    .line 388
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public filter(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/SentryEnvelope;
    .locals 7
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "dropItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeItem;

    .line 101
    .local v2, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/transport/RateLimiter;->isRetryAfter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 106
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v3, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    .line 108
    invoke-interface {v3}, Lio/sentry/transport/RateLimiterConfig;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

    .line 109
    invoke-interface {v3, v4, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelopeItem(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V

    .line 111
    .end local v2    # "item":Lio/sentry/SentryEnvelopeItem;
    :cond_1
    goto :goto_0

    .line 113
    :cond_2
    if-eqz v0, :cond_6

    .line 114
    iget-object v1, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    .line 115
    invoke-interface {v1}, Lio/sentry/transport/RateLimiterConfig;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 116
    const-string v4, "%d envelope items will be dropped due rate limiting."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "toSend":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryEnvelopeItem;

    .line 124
    .local v3, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v3    # "item":Lio/sentry/SentryEnvelopeItem;
    :cond_3
    goto :goto_1

    .line 130
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    iget-object v2, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    .line 132
    invoke-interface {v2}, Lio/sentry/transport/RateLimiterConfig;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 133
    const-string v6, "Envelope discarded due all items rate limited."

    invoke-interface {v2, v3, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p2, v4}, Lio/sentry/transport/RateLimiter;->markHintWhenSendingFailed(Lio/sentry/Hint;Z)V

    .line 136
    const/4 v2, 0x0

    return-object v2

    .line 139
    :cond_5
    new-instance v2, Lio/sentry/SentryEnvelope;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v2

    .line 141
    .end local v1    # "toSend":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    :cond_6
    return-object p1
.end method

.method public isActiveForCategory(Lio/sentry/DataCategory;)Z
    .locals 5
    .param p1, "dataCategory"    # Lio/sentry/DataCategory;

    .line 146
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    sget-object v1, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/time/Deadline;

    .line 147
    .local v0, "allCategories":Lio/sentry/time/Deadline;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    return v1

    .line 152
    :cond_0
    sget-object v2, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    invoke-virtual {v2, p1}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 153
    return v3

    .line 157
    :cond_1
    iget-object v2, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/time/Deadline;

    .line 158
    .local v2, "categoryLimit":Lio/sentry/time/Deadline;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method public isAnyRateLimitActive()Z
    .locals 3

    .line 163
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->sentryRetryAfterLimit:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/time/Deadline;

    .line 164
    .local v1, "limit":Lio/sentry/time/Deadline;
    invoke-virtual {v1}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v1    # "limit":Lio/sentry/time/Deadline;
    :cond_0
    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$markHintWhenSendingFailed$3$io-sentry-transport-RateLimiter(Lio/sentry/hints/DiskFlushNotification;)V
    .locals 4
    .param p1, "diskFlushNotification"    # Lio/sentry/hints/DiskFlushNotification;

    .line 185
    invoke-interface {p1}, Lio/sentry/hints/DiskFlushNotification;->markFlushed()V

    .line 186
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    invoke-interface {v0}, Lio/sentry/transport/RateLimiterConfig;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disk flush envelope fired due to rate limit"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public removeRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V
    .locals 1
    .param p1, "observer"    # Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    .line 383
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->rateLimitObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method public updateRetryAfterLimits(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "sentryRateLimitHeader"    # Ljava/lang/String;
    .param p2, "retryAfterHeader"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .line 260
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_7

    .line 261
    const-string v0, ","

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v0, v4, v7

    .line 264
    .local v0, "limit":Ljava/lang/String;
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .end local v0    # "limit":Ljava/lang/String;
    .local v8, "limit":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "rateLimit":[Ljava/lang/String;
    array-length v0, v9

    if-lez v0, :cond_5

    .line 273
    aget-object v10, v9, v6

    .line 274
    .local v10, "retryAfter":Ljava/lang/String;
    invoke-direct {v1, v10}, Lio/sentry/transport/RateLimiter;->parseRetryAfterOrDefault(Ljava/lang/String;)Lio/sentry/time/Deadline;

    move-result-object v11

    .line 276
    .local v11, "deadline":Lio/sentry/time/Deadline;
    array-length v0, v9

    const/4 v12, 0x1

    if-le v0, v12, :cond_4

    .line 277
    aget-object v12, v9, v12

    .line 279
    .local v12, "allCategories":Ljava/lang/String;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    const-string v0, ";"

    invoke-virtual {v12, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 282
    .local v13, "categories":[Ljava/lang/String;
    array-length v14, v13

    move v15, v6

    :goto_1
    if-ge v15, v14, :cond_2

    aget-object v16, v13, v15

    .line 283
    .local v16, "catItem":Ljava/lang/String;
    sget-object v17, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    .line 285
    .local v17, "dataCategory":Lio/sentry/DataCategory;
    :try_start_0
    invoke-static/range {v16 .. v16}, Lio/sentry/util/StringUtils;->camelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "catItemCapitalized":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 287
    invoke-static {v0}, Lio/sentry/DataCategory;->valueOf(Ljava/lang/String;)Lio/sentry/DataCategory;

    move-result-object v18

    move-object/from16 v17, v18

    .end local v17    # "dataCategory":Lio/sentry/DataCategory;
    .local v18, "dataCategory":Lio/sentry/DataCategory;
    goto :goto_2

    .line 289
    .end local v18    # "dataCategory":Lio/sentry/DataCategory;
    .restart local v17    # "dataCategory":Lio/sentry/DataCategory;
    :cond_0
    iget-object v3, v1, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    invoke-interface {v3}, Lio/sentry/transport/RateLimiterConfig;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    move-object/from16 v19, v0

    .end local v0    # "catItemCapitalized":Ljava/lang/String;
    .local v19, "catItemCapitalized":Ljava/lang/String;
    const-string v0, "Couldn\'t capitalize: %s"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v6, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v19    # "catItemCapitalized":Ljava/lang/String;
    :goto_2
    move-object/from16 v19, v4

    move-object/from16 v0, v17

    goto :goto_3

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, v1, Lio/sentry/transport/RateLimiter;->config:Lio/sentry/transport/RateLimiterConfig;

    invoke-interface {v2}, Lio/sentry/transport/RateLimiterConfig;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "Unknown category: %s"

    move-object/from16 v19, v4

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v0, v6, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    .line 295
    .end local v17    # "dataCategory":Lio/sentry/DataCategory;
    .local v0, "dataCategory":Lio/sentry/DataCategory;
    :goto_3
    sget-object v2, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    invoke-virtual {v2, v0}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    goto :goto_4

    .line 299
    :cond_1
    invoke-direct {v1, v0, v11}, Lio/sentry/transport/RateLimiter;->applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Lio/sentry/time/Deadline;)V

    .line 282
    .end local v0    # "dataCategory":Lio/sentry/DataCategory;
    .end local v16    # "catItem":Ljava/lang/String;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, v19

    const/4 v3, -0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v19, v4

    .line 301
    .end local v13    # "categories":[Ljava/lang/String;
    goto :goto_5

    .line 279
    :cond_3
    move-object/from16 v19, v4

    .line 303
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-direct {v1, v0, v11}, Lio/sentry/transport/RateLimiter;->applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Lio/sentry/time/Deadline;)V

    goto :goto_5

    .line 276
    .end local v12    # "allCategories":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v4

    goto :goto_5

    .line 272
    .end local v10    # "retryAfter":Ljava/lang/String;
    .end local v11    # "deadline":Lio/sentry/time/Deadline;
    :cond_5
    move-object/from16 v19, v4

    .line 261
    .end local v8    # "limit":Ljava/lang/String;
    .end local v9    # "rateLimit":[Ljava/lang/String;
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, v19

    const/4 v3, -0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v3, p2

    move/from16 v2, p3

    goto :goto_6

    .line 308
    :cond_7
    const/16 v0, 0x1ad

    move/from16 v2, p3

    if-ne v2, v0, :cond_8

    .line 309
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lio/sentry/transport/RateLimiter;->parseRetryAfterOrDefault(Ljava/lang/String;)Lio/sentry/time/Deadline;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lio/sentry/transport/RateLimiter;->applyRetryAfterOnlyIfLonger(Lio/sentry/DataCategory;Lio/sentry/time/Deadline;)V

    goto :goto_6

    .line 308
    :cond_8
    move-object/from16 v3, p2

    .line 311
    :goto_6
    return-void
.end method
