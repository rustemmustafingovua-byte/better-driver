.class public final Lio/sentry/DefaultCompositePerformanceCollector;
.super Ljava/lang/Object;
.source "DefaultCompositePerformanceCollector.java"

# interfaces
.implements Lio/sentry/CompositePerformanceCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;
    }
.end annotation


# static fields
.field private static final TRANSACTION_COLLECTION_INTERVAL_MILLIS:J = 0x64L

.field private static final TRANSACTION_COLLECTION_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private final compositeDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;",
            ">;"
        }
    .end annotation
.end field

.field private final continuousCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceContinuousCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final hasNoCollectors:Z

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final options:Lio/sentry/SentryOptions;

.field private final snapshotCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceSnapshotCollector;",
            ">;"
        }
    .end annotation
.end field

.field private volatile timer:Ljava/util/Timer;

.field private final timerLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    const-string v0, "The options object is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->snapshotCollectors:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    .line 36
    nop

    .line 37
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getPerformanceCollectors()Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "performanceCollectors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/IPerformanceCollector;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/IPerformanceCollector;

    .line 39
    .local v3, "performanceCollector":Lio/sentry/IPerformanceCollector;
    instance-of v4, v3, Lio/sentry/IPerformanceSnapshotCollector;

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, p0, Lio/sentry/DefaultCompositePerformanceCollector;->snapshotCollectors:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Lio/sentry/IPerformanceSnapshotCollector;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    instance-of v4, v3, Lio/sentry/IPerformanceContinuousCollector;

    if-eqz v4, :cond_1

    .line 43
    iget-object v4, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Lio/sentry/IPerformanceContinuousCollector;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v3    # "performanceCollector":Lio/sentry/IPerformanceCollector;
    :cond_1
    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, p0, Lio/sentry/DefaultCompositePerformanceCollector;->snapshotCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->hasNoCollectors:Z

    .line 48
    return-void
.end method

.method static synthetic access$100(Lio/sentry/DefaultCompositePerformanceCollector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/sentry/DefaultCompositePerformanceCollector;

    .line 18
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->snapshotCollectors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lio/sentry/DefaultCompositePerformanceCollector;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "x0"    # Lio/sentry/DefaultCompositePerformanceCollector;

    .line 18
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method static synthetic access$300(Lio/sentry/DefaultCompositePerformanceCollector;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/sentry/DefaultCompositePerformanceCollector;

    .line 18
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 194
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 195
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 196
    const-string v4, "stop collecting all performance info for transactions"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 200
    .local v1, "collector":Lio/sentry/IPerformanceContinuousCollector;
    invoke-interface {v1}, Lio/sentry/IPerformanceContinuousCollector;->clear()V

    .line 201
    .end local v1    # "collector":Lio/sentry/IPerformanceContinuousCollector;
    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 204
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_2

    .line 203
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

    .line 210
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    :goto_2
    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 2
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 158
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 159
    .local v1, "collector":Lio/sentry/IPerformanceContinuousCollector;
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanFinished(Lio/sentry/ISpan;)V

    .line 160
    .end local v1    # "collector":Lio/sentry/IPerformanceContinuousCollector;
    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 2
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 151
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 152
    .local v1, "collector":Lio/sentry/IPerformanceContinuousCollector;
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanStarted(Lio/sentry/ISpan;)V

    .line 153
    .end local v1    # "collector":Lio/sentry/IPerformanceContinuousCollector;
    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public start(Lio/sentry/ITransaction;)V
    .locals 4
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 53
    iget-boolean v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->hasNoCollectors:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 55
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    const-string v3, "No collector found. Performance stats will not be captured during transactions."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 63
    .local v1, "collector":Lio/sentry/IPerformanceContinuousCollector;
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanStarted(Lio/sentry/ISpan;)V

    .line 64
    .end local v1    # "collector":Lio/sentry/IPerformanceContinuousCollector;
    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    new-instance v2, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;-><init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/ITransaction;Lio/sentry/DefaultCompositePerformanceCollector$1;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    invoke-virtual {p0, v0}, Lio/sentry/DefaultCompositePerformanceCollector;->start(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .line 75
    iget-boolean v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->hasNoCollectors:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 77
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    const-string v3, "No collector found. Performance stats will not be captured during transactions."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    new-instance v1, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;-><init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/ITransaction;Lio/sentry/DefaultCompositePerformanceCollector$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2

    .line 91
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    .line 95
    :cond_2
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    new-instance v1, Lio/sentry/DefaultCompositePerformanceCollector$1;

    invoke-direct {v1, p0}, Lio/sentry/DefaultCompositePerformanceCollector$1;-><init>(Lio/sentry/DefaultCompositePerformanceCollector;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "timedOutTransactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ITransaction;>;"
    new-instance v1, Lio/sentry/DefaultCompositePerformanceCollector$2;

    invoke-direct {v1, p0, v0}, Lio/sentry/DefaultCompositePerformanceCollector$2;-><init>(Lio/sentry/DefaultCompositePerformanceCollector;Ljava/util/List;)V

    move-object v4, v1

    .line 141
    .local v4, "timerTask":Ljava/util/TimerTask;
    iget-object v3, p0, Lio/sentry/DefaultCompositePerformanceCollector;->timer:Ljava/util/Timer;

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x64

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v0    # "timedOutTransactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ITransaction;>;"
    .end local v4    # "timerTask":Ljava/util/TimerTask;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1

    .line 147
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    :goto_1
    return-void
.end method

.method public stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .locals 4
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 166
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 170
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 167
    const-string v3, "stop collecting performance info for transactions %s (%s)"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 174
    .local v1, "collector":Lio/sentry/IPerformanceContinuousCollector;
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanFinished(Lio/sentry/ISpan;)V

    .line 175
    .end local v1    # "collector":Lio/sentry/IPerformanceContinuousCollector;
    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/DefaultCompositePerformanceCollector;->stop(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public stop(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    .line 183
    .local v0, "data":Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop collecting performance info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector;->compositeDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lio/sentry/DefaultCompositePerformanceCollector;->close()V

    .line 189
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->access$500(Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
