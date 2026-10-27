.class public final Lio/sentry/SentryTracer;
.super Ljava/lang/Object;
.source "SentryTracer.java"

# interfaces
.implements Lio/sentry/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryTracer$FinishStatus;
    }
.end annotation


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation
.end field

.field private final compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private final contexts:Lio/sentry/protocol/Contexts;

.field private volatile deadlineTimeoutFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final eventId:Lio/sentry/protocol/SentryId;

.field private finishStatus:Lio/sentry/SentryTracer$FinishStatus;

.field private volatile idleTimeoutFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final instrumenter:Lio/sentry/Instrumenter;

.field private final isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private name:Ljava/lang/String;

.field private final root:Lio/sentry/Span;

.field private final scopes:Lio/sentry/IScopes;

.field private final timerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private volatile timersEnabled:Z

.field private final tracerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

.field private final transactionOptions:Lio/sentry/TransactionOptions;


# direct methods
.method public static synthetic $r8$lambda$2t4ItonDoCYD1kjhXVvG1RKX5P8(Lio/sentry/SentryTracer;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/SentryTracer;->onIdleTimeoutReached()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ppj35KDU2-BIfR0ZX3xHf3yL01M(Lio/sentry/SentryTracer;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/SentryTracer;->onDeadlineTimeoutReached()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IScopes;)V
    .locals 2
    .param p1, "context"    # Lio/sentry/TransactionContext;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 59
    new-instance v0, Lio/sentry/TransactionOptions;

    invoke-direct {v0}, Lio/sentry/TransactionOptions;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;)V
    .locals 1
    .param p1, "context"    # Lio/sentry/TransactionContext;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)V
    .locals 3
    .param p1, "context"    # Lio/sentry/TransactionContext;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "transactionOptions"    # Lio/sentry/TransactionOptions;
    .param p4, "compositePerformanceCollector"    # Lio/sentry/CompositePerformanceCollector;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->eventId:Lio/sentry/protocol/SentryId;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 38
    sget-object v0, Lio/sentry/SentryTracer$FinishStatus;->NOT_FINISHED:Lio/sentry/SentryTracer$FinishStatus;

    iput-object v0, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    .line 46
    new-instance v1, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v1}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryTracer;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 47
    new-instance v1, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v1}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryTracer;->tracerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    .line 74
    const-string v0, "context is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const-string v0, "scopes are required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lio/sentry/Span;

    invoke-direct {v0, p1, p0, p2, p3}, Lio/sentry/Span;-><init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/IScopes;Lio/sentry/SpanOptions;)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 79
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    .line 81
    iput-object p2, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 83
    nop

    .line 84
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isSampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 85
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 86
    iput-object p3, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 88
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-direct {p0, v0}, Lio/sentry/SentryTracer;->setDefaultSpanData(Lio/sentry/ISpan;)V

    .line 90
    invoke-direct {p0}, Lio/sentry/SentryTracer;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 92
    .local v0, "continuousProfilerId":Lio/sentry/protocol/SentryId;
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isSampled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    new-instance v2, Lio/sentry/ProfileContext;

    invoke-direct {v2, v0}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/protocol/SentryId;)V

    invoke-virtual {v1, v2}, Lio/sentry/protocol/Contexts;->setProfile(Lio/sentry/ProfileContext;)V

    .line 98
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    invoke-interface {v1, p0}, Lio/sentry/CompositePerformanceCollector;->start(Lio/sentry/ITransaction;)V

    .line 102
    :cond_2
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getDeadlineTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 104
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    .line 106
    invoke-direct {p0}, Lio/sentry/SentryTracer;->scheduleDeadlineTimeout()V

    .line 107
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    .line 109
    :cond_4
    return-void
.end method

.method private cancelDeadlineTimer()V
    .locals 3

    .line 334
    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 335
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->deadlineTimeoutFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lio/sentry/SentryTracer;->deadlineTimeoutFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 337
    iget-object v1, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryTracer;->deadlineTimeoutFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 341
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 334
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method private cancelIdleTimer()V
    .locals 3

    .line 297
    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 298
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->idleTimeoutFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lio/sentry/SentryTracer;->idleTimeoutFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 300
    iget-object v1, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryTracer;->idleTimeoutFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 304
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 297
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method private createChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 10
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 453
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0

    .line 457
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0

    .line 461
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIgnoredSpanOrigins()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lio/sentry/SpanOptions;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/util/SpanUtils;->isIgnored(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0

    .line 465
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SpanContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v0

    .line 466
    .local v0, "parentSpanId":Lio/sentry/SpanId;
    invoke-virtual {p1}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "operation":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SpanContext;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "description":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 470
    const-string v3, "parentSpanId is required"

    invoke-static {v0, v3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    const-string v3, "operation is required"

    invoke-static {v1, v3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelIdleTimer()V

    .line 473
    new-instance v4, Lio/sentry/Span;

    iget-object v6, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    new-instance v9, Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;-><init>(Lio/sentry/SentryTracer;)V

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    .end local p1    # "spanContext":Lio/sentry/SpanContext;
    .end local p2    # "spanOptions":Lio/sentry/SpanOptions;
    .local v7, "spanContext":Lio/sentry/SpanContext;
    .local v8, "spanOptions":Lio/sentry/SpanOptions;
    invoke-direct/range {v4 .. v9}, Lio/sentry/Span;-><init>(Lio/sentry/SentryTracer;Lio/sentry/IScopes;Lio/sentry/SpanContext;Lio/sentry/SpanOptions;Lio/sentry/SpanFinishedCallback;)V

    .line 524
    .local v4, "span":Lio/sentry/Span;
    invoke-direct {p0, v4}, Lio/sentry/SentryTracer;->setDefaultSpanData(Lio/sentry/ISpan;)V

    .line 525
    iget-object p1, v5, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object p1, v5, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz p1, :cond_3

    .line 527
    iget-object p1, v5, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    invoke-interface {p1, v4}, Lio/sentry/CompositePerformanceCollector;->onSpanStarted(Lio/sentry/ISpan;)V

    .line 529
    :cond_3
    return-object v4

    .line 531
    .end local v4    # "span":Lio/sentry/Span;
    .end local v7    # "spanContext":Lio/sentry/SpanContext;
    .end local v8    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local p1    # "spanContext":Lio/sentry/SpanContext;
    .restart local p2    # "spanOptions":Lio/sentry/SpanOptions;
    :cond_4
    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    .end local p1    # "spanContext":Lio/sentry/SpanContext;
    .end local p2    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local v7    # "spanContext":Lio/sentry/SpanContext;
    .restart local v8    # "spanOptions":Lio/sentry/SpanOptions;
    iget-object p1, v5, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 532
    invoke-interface {p1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    .line 534
    const-string v4, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    invoke-interface {p1, p2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1
.end method

.method private createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 2
    .param p1, "parentSpanId"    # Lio/sentry/SpanId;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "options"    # Lio/sentry/SpanOptions;

    .line 442
    nop

    .line 443
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lio/sentry/SpanContext;->copyForChild(Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/SpanId;)Lio/sentry/SpanContext;

    move-result-object v0

    .line 444
    .local v0, "spanContext":Lio/sentry/SpanContext;
    invoke-virtual {v0, p3}, Lio/sentry/SpanContext;->setDescription(Ljava/lang/String;)V

    .line 445
    sget-object v1, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    invoke-virtual {v0, v1}, Lio/sentry/SpanContext;->setInstrumenter(Lio/sentry/Instrumenter;)V

    .line 447
    invoke-direct {p0, v0, p4}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v1

    return-object v1
.end method

.method private createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;
    .param p4, "instrumenter"    # Lio/sentry/Instrumenter;
    .param p5, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 676
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0

    .line 680
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    invoke-virtual {v0, p4}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0

    .line 684
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 685
    iget-object v2, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "timestamp":Lio/sentry/SentryDate;
    .end local p4    # "instrumenter":Lio/sentry/Instrumenter;
    .end local p5    # "spanOptions":Lio/sentry/SpanOptions;
    .local v3, "operation":Ljava/lang/String;
    .local v4, "description":Ljava/lang/String;
    .local v5, "timestamp":Lio/sentry/SentryDate;
    .local v6, "instrumenter":Lio/sentry/Instrumenter;
    .local v7, "spanOptions":Lio/sentry/SpanOptions;
    invoke-virtual/range {v2 .. v7}, Lio/sentry/Span;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1

    .line 687
    .end local v3    # "operation":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "timestamp":Lio/sentry/SentryDate;
    .end local v6    # "instrumenter":Lio/sentry/Instrumenter;
    .end local v7    # "spanOptions":Lio/sentry/SpanOptions;
    .restart local p1    # "operation":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "timestamp":Lio/sentry/SentryDate;
    .restart local p4    # "instrumenter":Lio/sentry/Instrumenter;
    .restart local p5    # "spanOptions":Lio/sentry/SpanOptions;
    :cond_2
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "timestamp":Lio/sentry/SentryDate;
    .end local p4    # "instrumenter":Lio/sentry/Instrumenter;
    .restart local v3    # "operation":Ljava/lang/String;
    .restart local v4    # "description":Ljava/lang/String;
    .restart local v5    # "timestamp":Lio/sentry/SentryDate;
    .restart local v6    # "instrumenter":Lio/sentry/Instrumenter;
    iget-object p1, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 688
    invoke-interface {p1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    .line 689
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object p3

    .line 690
    const-string p4, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    invoke-interface {p1, p2, p4, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1
.end method

.method private dropUnrecordedProfilerIds(Lio/sentry/SentryDate;)V
    .locals 7
    .param p1, "finishTimestamp"    # Lio/sentry/SentryDate;

    .line 561
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 562
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    .line 563
    .local v0, "continuousProfiler":Lio/sentry/IContinuousProfiler;
    instance-of v1, v0, Lio/sentry/NoOpContinuousProfiler;

    if-eqz v1, :cond_0

    .line 565
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-direct {p0, v0, v1, p1}, Lio/sentry/SentryTracer;->isProfileMissing(Lio/sentry/IContinuousProfiler;Lio/sentry/Span;Lio/sentry/SentryDate;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "profiler_id"

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v1, v3, v2}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    iget-object v1, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    const-string v4, "profile"

    invoke-virtual {v1, v4}, Lio/sentry/protocol/Contexts;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v1, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 572
    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 573
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 574
    const-string v6, "No profile was recorded for transaction, dropping its profiler id."

    invoke-interface {v1, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/Span;

    .line 580
    .local v4, "child":Lio/sentry/Span;
    invoke-direct {p0, v0, v4, p1}, Lio/sentry/SentryTracer;->isProfileMissing(Lio/sentry/IContinuousProfiler;Lio/sentry/Span;Lio/sentry/SentryDate;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 581
    invoke-virtual {v4, v3, v2}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    .end local v4    # "child":Lio/sentry/Span;
    :cond_2
    goto :goto_0

    .line 584
    :cond_3
    return-void
.end method

.method private getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 2

    .line 615
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IContinuousProfiler;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 615
    :goto_0
    return-object v0
.end method

.method private hasAllChildrenFinished()Z
    .locals 3

    .line 766
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 767
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lio/sentry/Span;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 771
    .local v1, "span":Lio/sentry/Span;
    invoke-virtual {v1}, Lio/sentry/Span;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 772
    const/4 v2, 0x0

    return v2

    .line 774
    .end local v1    # "span":Lio/sentry/Span;
    :cond_0
    goto :goto_0

    .line 775
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isProfileMissing(Lio/sentry/IContinuousProfiler;Lio/sentry/Span;Lio/sentry/SentryDate;)Z
    .locals 6
    .param p1, "continuousProfiler"    # Lio/sentry/IContinuousProfiler;
    .param p2, "span"    # Lio/sentry/Span;
    .param p3, "finishTimestamp"    # Lio/sentry/SentryDate;

    .line 595
    const-string v0, "profiler_id"

    invoke-virtual {p2, v0}, Lio/sentry/Span;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 596
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 597
    return v2

    .line 601
    :cond_0
    :try_start_0
    new-instance v1, Lio/sentry/protocol/SentryId;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .local v1, "profilerId":Lio/sentry/protocol/SentryId;
    nop

    .line 606
    invoke-virtual {p2}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v3

    .line 607
    .local v3, "spanFinishDate":Lio/sentry/SentryDate;
    nop

    .line 609
    invoke-virtual {p2}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v4

    .line 610
    if-eqz v3, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, p3

    .line 607
    :goto_0
    invoke-interface {p1, v1, v4, v5}, Lio/sentry/IContinuousProfiler;->getProfileRecordingState(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Lio/sentry/profiling/ProfileRecordingState;

    move-result-object v4

    sget-object v5, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 602
    .end local v1    # "profilerId":Lio/sentry/protocol/SentryId;
    .end local v3    # "spanFinishDate":Lio/sentry/SentryDate;
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v2
.end method

.method static synthetic lambda$updateBaggageValues$4(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "replayId"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 739
    invoke-interface {p1}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 740
    return-void
.end method

.method private onDeadlineTimeoutReached()V
    .locals 5

    .line 148
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    .line 149
    .local v0, "status":Lio/sentry/SpanStatus;
    nop

    .line 150
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    :goto_0
    iget-object v2, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 151
    invoke-virtual {v2}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 149
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lio/sentry/SentryTracer;->forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    .line 153
    iget-object v1, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    return-void
.end method

.method private onIdleTimeoutReached()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    .line 143
    .local v0, "status":Lio/sentry/SpanStatus;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :goto_0
    invoke-virtual {p0, v1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    .line 144
    iget-object v1, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    return-void
.end method

.method private scheduleDeadlineTimeout()V
    .locals 6

    .line 307
    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v0}, Lio/sentry/TransactionOptions;->getDeadlineTimeout()Ljava/lang/Long;

    move-result-object v0

    .line 308
    .local v0, "deadlineTimeOut":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 309
    iget-object v1, p0, Lio/sentry/SentryTracer;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 310
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v2, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    if-eqz v2, :cond_0

    .line 311
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelDeadlineTimer()V

    .line 312
    iget-object v2, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    iget-object v2, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 316
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getTimerExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v2

    new-instance v3, Lio/sentry/SentryTracer$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda7;-><init>(Lio/sentry/SentryTracer;)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryTracer;->deadlineTimeoutFuture:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    goto :goto_0

    .line 319
    :catchall_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 321
    invoke-interface {v3}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to schedule finish timer"

    .line 323
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    invoke-direct {p0}, Lio/sentry/SentryTracer;->onDeadlineTimeoutReached()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_2

    .line 309
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2

    .line 331
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_2
    return-void
.end method

.method private setDefaultSpanData(Lio/sentry/ISpan;)V
    .locals 4
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 545
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v0

    .line 546
    .local v0, "threadChecker":Lio/sentry/util/thread/IThreadChecker;
    invoke-direct {p0}, Lio/sentry/SentryTracer;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 547
    .local v1, "profilerId":Lio/sentry/protocol/SentryId;
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1}, Lio/sentry/ISpan;->isSampled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    const-string v2, "profiler_id"

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    :cond_0
    nop

    .line 551
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->currentThreadSystemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 550
    const-string v3, "thread.id"

    invoke-interface {p1, v3, v2}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    const-string v2, "thread.name"

    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->getCurrentThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    return-void
.end method

.method private updateBaggageValues(Lio/sentry/Baggage;)V
    .locals 10
    .param p1, "baggage"    # Lio/sentry/Baggage;

    .line 734
    iget-object v0, p0, Lio/sentry/SentryTracer;->tracerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 735
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/Baggage;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 737
    .local v0, "replayId":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/protocol/SentryId;>;"
    iget-object v2, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    new-instance v3, Lio/sentry/SentryTracer$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 741
    nop

    .line 742
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 743
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/sentry/protocol/SentryId;

    iget-object v2, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 744
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    .line 745
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v7

    .line 746
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getName()Ljava/lang/String;

    move-result-object v8

    .line 747
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 741
    move-object v3, p1

    .end local p1    # "baggage":Lio/sentry/Baggage;
    .local v3, "baggage":Lio/sentry/Baggage;
    :try_start_1
    invoke-virtual/range {v3 .. v9}, Lio/sentry/Baggage;->setValuesFromTransaction(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    .line 748
    invoke-virtual {v3}, Lio/sentry/Baggage;->freeze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 734
    .end local v0    # "replayId":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/protocol/SentryId;>;"
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 735
    .end local v3    # "baggage":Lio/sentry/Baggage;
    .restart local p1    # "baggage":Lio/sentry/Baggage;
    :cond_0
    move-object v3, p1

    .line 750
    .end local p1    # "baggage":Lio/sentry/Baggage;
    .restart local v3    # "baggage":Lio/sentry/Baggage;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 751
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 734
    .end local v3    # "baggage":Lio/sentry/Baggage;
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p1    # "baggage":Lio/sentry/Baggage;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .end local p1    # "baggage":Lio/sentry/Baggage;
    .restart local v3    # "baggage":Lio/sentry/Baggage;
    :goto_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method


# virtual methods
.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 1083
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1084
    return-void
.end method

.method areTimersEnabled()Z
    .locals 1

    .line 1044
    iget-boolean v0, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    return v0
.end method

.method public finish()V
    .locals 1

    .line 706
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    .line 707
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 712
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 2
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "finishDate"    # Lio/sentry/SentryDate;

    .line 718
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V

    .line 719
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V
    .locals 9
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "finishDate"    # Lio/sentry/SentryDate;
    .param p3, "dropIfNoChildren"    # Z
    .param p4, "hint"    # Lio/sentry/Hint;

    .line 186
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    .line 189
    .local v0, "finishTimestamp":Lio/sentry/SentryDate;
    if-eqz p2, :cond_0

    .line 190
    move-object v0, p2

    .line 194
    :cond_0
    if-nez v0, :cond_1

    .line 195
    iget-object v1, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 199
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    .line 200
    .local v2, "span":Lio/sentry/Span;
    invoke-virtual {v2}, Lio/sentry/Span;->getOptions()Lio/sentry/SpanOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SpanOptions;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    if-eqz p1, :cond_2

    move-object v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    iget-object v3, v3, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    :goto_1
    invoke-virtual {v2, v3, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 203
    .end local v2    # "span":Lio/sentry/Span;
    :cond_3
    goto :goto_0

    .line 205
    :cond_4
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->finishing(Lio/sentry/SpanStatus;)Lio/sentry/SentryTracer$FinishStatus;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    .line 206
    iget-object v1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v1}, Lio/sentry/Span;->isFinished()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 207
    invoke-virtual {v1}, Lio/sentry/TransactionOptions;->isWaitForChildren()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lio/sentry/SentryTracer;->hasAllChildrenFinished()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 209
    :cond_5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 213
    .local v1, "performanceCollectionData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;>;"
    iget-object v2, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v2}, Lio/sentry/Span;->getSpanFinishedCallback()Lio/sentry/SpanFinishedCallback;

    move-result-object v2

    .line 214
    .local v2, "oldCallback":Lio/sentry/SpanFinishedCallback;
    iget-object v3, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    new-instance v4, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v1}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryTracer;Lio/sentry/SpanFinishedCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v3, v4}, Lio/sentry/Span;->setSpanFinishedCallback(Lio/sentry/SpanFinishedCallback;)V

    .line 237
    iget-object v3, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    iget-object v4, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    invoke-static {v4}, Lio/sentry/SentryTracer$FinishStatus;->access$000(Lio/sentry/SentryTracer$FinishStatus;)Lio/sentry/SpanStatus;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "profilingTraceData":Lio/sentry/ProfilingTraceData;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isSampled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 241
    iget-object v4, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 243
    invoke-interface {v4}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v4

    .line 245
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v6}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    invoke-interface {v4, p0, v5, v6}, Lio/sentry/ITransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    move-result-object v3

    .line 247
    :cond_6
    iget-object v4, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 248
    invoke-interface {v4}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v4

    sget-object v5, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 249
    invoke-virtual {v4}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SpanContext;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    sget-object v5, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v4, v5}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 250
    iget-object v4, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v4

    sget-object v5, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    invoke-interface {v4, v5}, Lio/sentry/IContinuousProfiler;->stopProfiler(Lio/sentry/ProfileLifecycle;)V

    .line 252
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 253
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 256
    :cond_8
    iget-object v4, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    new-instance v5, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryTracer;)V

    invoke-interface {v4, v5}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 265
    invoke-direct {p0, v0}, Lio/sentry/SentryTracer;->dropUnrecordedProfilerIds(Lio/sentry/SentryDate;)V

    .line 267
    new-instance v4, Lio/sentry/protocol/SentryTransaction;

    invoke-direct {v4, p0}, Lio/sentry/protocol/SentryTransaction;-><init>(Lio/sentry/SentryTracer;)V

    .line 269
    .local v4, "transaction":Lio/sentry/protocol/SentryTransaction;
    iget-boolean v5, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    if-eqz v5, :cond_b

    .line 270
    iget-object v5, p0, Lio/sentry/SentryTracer;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v5}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v5

    .line 271
    .local v5, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v6, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    if-eqz v6, :cond_9

    .line 272
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelIdleTimer()V

    .line 273
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelDeadlineTimer()V

    .line 274
    const/4 v6, 0x0

    iput-boolean v6, p0, Lio/sentry/SentryTracer;->timersEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_9
    if-eqz v5, :cond_b

    invoke-interface {v5}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_3

    .line 270
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_a

    :try_start_1
    invoke-interface {v5}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v6

    .line 279
    .end local v5    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_b
    :goto_3
    if-eqz p3, :cond_c

    iget-object v5, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v5}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 281
    iget-object v5, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 282
    invoke-interface {v5}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v5

    .line 283
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v7, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 284
    const-string v8, "Dropping idle transaction %s because it has no child spans"

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return-void

    .line 291
    :cond_c
    invoke-virtual {v4}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v6}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    iget-object v5, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->traceContext()Lio/sentry/TraceContext;

    move-result-object v6

    invoke-interface {v5, v4, v6, p4, v3}, Lio/sentry/IScopes;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    .line 294
    .end local v1    # "performanceCollectionData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;>;"
    .end local v2    # "oldCallback":Lio/sentry/SpanFinishedCallback;
    .end local v3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .end local v4    # "transaction":Lio/sentry/protocol/SentryTransaction;
    :cond_d
    return-void
.end method

.method public forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V
    .locals 4
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "dropIfNoChildren"    # Z
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 159
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 169
    .local v0, "finishTimestamp":Lio/sentry/SentryDate;
    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->reverseListIterator(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/ListIterator;

    move-result-object v1

    .line 171
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lio/sentry/Span;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    .line 173
    .local v2, "span":Lio/sentry/Span;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/sentry/Span;->setSpanFinishedCallback(Lio/sentry/SpanFinishedCallback;)V

    .line 174
    invoke-virtual {v2, p1, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 175
    .end local v2    # "span":Lio/sentry/Span;
    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V

    .line 177
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 1068
    iget-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getDeadlineTimeoutFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lio/sentry/SentryTracer;->deadlineTimeoutFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 817
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 1011
    iget-object v0, p0, Lio/sentry/SentryTracer;->eventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 1

    .line 354
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    return-object v0
.end method

.method getIdleTimeoutFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lio/sentry/SentryTracer;->idleTimeoutFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getLatestActiveSpan()Lio/sentry/ISpan;
    .locals 3

    .line 998
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 999
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->reverseListIterator(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/ListIterator;

    move-result-object v0

    .line 1000
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lio/sentry/Span;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 1002
    .local v1, "span":Lio/sentry/Span;
    invoke-virtual {v1}, Lio/sentry/Span;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1003
    return-object v1

    .line 1005
    .end local v1    # "span":Lio/sentry/Span;
    :cond_0
    goto :goto_0

    .line 1006
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 982
    iget-object v0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRoot()Lio/sentry/Span;
    .locals 1

    .line 1027
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 954
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 1

    .line 861
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    return-object v0
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 1

    .line 349
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 838
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 856
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 987
    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method isDeadlineTimerRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1056
    iget-object v0, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method isFinishTimerRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1050
    iget-object v0, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 884
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isNoOp()Z
    .locals 1

    .line 1078
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileSampled()Ljava/lang/Boolean;
    .locals 1

    .line 949
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1

    .line 944
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createChild$3$io-sentry-SentryTracer(Lio/sentry/Span;)V
    .locals 2
    .param p1, "finishingSpan"    # Lio/sentry/Span;

    .line 480
    iget-object v0, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    invoke-interface {v0, p1}, Lio/sentry/CompositePerformanceCollector;->onSpanFinished(Lio/sentry/ISpan;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    .line 484
    .local v0, "finishStatus":Lio/sentry/SentryTracer$FinishStatus;
    iget-object v1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v1}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 488
    iget-object v1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v1}, Lio/sentry/TransactionOptions;->isWaitForChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lio/sentry/SentryTracer;->hasAllChildrenFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    goto :goto_0

    .line 491
    :cond_2
    invoke-static {v0}, Lio/sentry/SentryTracer$FinishStatus;->access$100(Lio/sentry/SentryTracer$FinishStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    invoke-static {v0}, Lio/sentry/SentryTracer$FinishStatus;->access$000(Lio/sentry/SentryTracer$FinishStatus;)Lio/sentry/SpanStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    .line 494
    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$finish$0$io-sentry-SentryTracer(Lio/sentry/SpanFinishedCallback;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/Span;)V
    .locals 2
    .param p1, "oldCallback"    # Lio/sentry/SpanFinishedCallback;
    .param p2, "performanceCollectionData"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "span"    # Lio/sentry/Span;

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-interface {p1, p3}, Lio/sentry/SpanFinishedCallback;->execute(Lio/sentry/Span;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 223
    invoke-virtual {v0}, Lio/sentry/TransactionOptions;->getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;

    move-result-object v0

    .line 224
    .local v0, "finishedCallback":Lio/sentry/TransactionFinishedCallback;
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0, p0}, Lio/sentry/TransactionFinishedCallback;->execute(Lio/sentry/ITransaction;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lio/sentry/SentryTracer;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    invoke-interface {v1, p0}, Lio/sentry/CompositePerformanceCollector;->stop(Lio/sentry/ITransaction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 231
    :cond_2
    return-void
.end method

.method synthetic lambda$finish$1$io-sentry-SentryTracer(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;

    .line 260
    if-ne p2, p0, :cond_0

    .line 261
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    .line 263
    :cond_0
    return-void
.end method

.method synthetic lambda$finish$2$io-sentry-SentryTracer(Lio/sentry/IScope;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 258
    new-instance v0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryTracer;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 264
    return-void
.end method

.method synthetic lambda$makeCurrent$5$io-sentry-SentryTracer(Lio/sentry/IScope;)V
    .locals 0
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 1019
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    .line 1020
    return-void
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 2

    .line 1017
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    new-instance v1, Lio/sentry/SentryTracer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda6;-><init>(Lio/sentry/SentryTracer;)V

    invoke-interface {v0, v1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 1022
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public scheduleFinish()V
    .locals 6

    .line 113
    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 114
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/SentryTracer;->timersEnabled:Z

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v1}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v1

    .line 117
    .local v1, "idleTimeout":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelIdleTimer()V

    .line 119
    iget-object v2, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    iget-object v2, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 124
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getTimerExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v2

    new-instance v3, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;-><init>(Lio/sentry/SentryTracer;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryTracer;->idleTimeoutFuture:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 129
    invoke-interface {v3}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to schedule finish timer"

    .line 131
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    invoke-direct {p0}, Lio/sentry/SentryTracer;->onIdleTimeoutReached()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    .end local v1    # "idleTimeout":Ljava/lang/Long;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 139
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 113
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .line 1062
    iget-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 889
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 891
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 893
    const-string v3, "The transaction is already finished. Data %s cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 803
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 805
    const-string v3, "The transaction is already finished. Description %s cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 927
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 928
    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;
    .param p3, "unit"    # Lio/sentry/MeasurementUnit;

    .line 935
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/Span;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 936
    return-void
.end method

.method public setMeasurementFromChild(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 909
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryTracer;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 912
    :cond_0
    return-void
.end method

.method public setMeasurementFromChild(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;
    .param p3, "unit"    # Lio/sentry/MeasurementUnit;

    .line 920
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/SentryTracer;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 923
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 959
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    .line 960
    return-void
.end method

.method public setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;

    .line 965
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 967
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 969
    const-string v3, "The transaction is already finished. Name %s cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    return-void

    .line 976
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    .line 977
    iput-object p2, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 978
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 782
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 784
    const-string v3, "The transaction is already finished. Operation %s cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setOperation(Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 4
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 822
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 824
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 829
    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/sentry/SpanStatus;->name()Ljava/lang/String;

    move-result-object v2

    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 826
    const-string v3, "The transaction is already finished. Status %s cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setStatus(Lio/sentry/SpanStatus;)V

    .line 834
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 868
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 870
    const-string v3, "The transaction is already finished. Tag %s cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 843
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    .line 845
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 847
    const-string v3, "The transaction is already finished. Throwable cannot be set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setThrowable(Ljava/lang/Throwable;)V

    .line 852
    return-void
.end method

.method public startChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 667
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "parentSpanId"    # Lio/sentry/SpanId;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 370
    new-instance v0, Lio/sentry/SpanOptions;

    invoke-direct {v0}, Lio/sentry/SpanOptions;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/SentryTracer;->startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 3
    .param p1, "parentSpanId"    # Lio/sentry/SpanId;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "timestamp"    # Lio/sentry/SentryDate;
    .param p5, "instrumenter"    # Lio/sentry/Instrumenter;

    .line 398
    nop

    .line 399
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lio/sentry/SpanContext;->copyForChild(Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/SpanId;)Lio/sentry/SpanContext;

    move-result-object v0

    .line 400
    .local v0, "spanContext":Lio/sentry/SpanContext;
    invoke-virtual {v0, p3}, Lio/sentry/SpanContext;->setDescription(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p5}, Lio/sentry/SpanContext;->setInstrumenter(Lio/sentry/Instrumenter;)V

    .line 403
    new-instance v1, Lio/sentry/SpanOptions;

    invoke-direct {v1}, Lio/sentry/SpanOptions;-><init>()V

    .line 404
    .local v1, "spanOptions":Lio/sentry/SpanOptions;
    invoke-virtual {v1, p4}, Lio/sentry/SpanOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    .line 406
    invoke-direct {p0, v0, v1}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v2

    return-object v2
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 2
    .param p1, "parentSpanId"    # Lio/sentry/SpanId;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "timestamp"    # Lio/sentry/SentryDate;
    .param p5, "instrumenter"    # Lio/sentry/Instrumenter;
    .param p6, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 417
    nop

    .line 418
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lio/sentry/SpanContext;->copyForChild(Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/SpanId;)Lio/sentry/SpanContext;

    move-result-object v0

    .line 419
    .local v0, "spanContext":Lio/sentry/SpanContext;
    invoke-virtual {v0, p3}, Lio/sentry/SpanContext;->setDescription(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p5}, Lio/sentry/SpanContext;->setInstrumenter(Lio/sentry/Instrumenter;)V

    .line 422
    invoke-virtual {p6, p4}, Lio/sentry/SpanOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    .line 424
    invoke-direct {p0, v0, p6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v1

    return-object v1
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "parentSpanId"    # Lio/sentry/SpanId;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;

    .line 622
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 655
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .local v1, "operation":Ljava/lang/String;
    .local v2, "description":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;

    .line 649
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "timestamp":Lio/sentry/SentryDate;
    .local v1, "operation":Ljava/lang/String;
    .local v2, "description":Ljava/lang/String;
    .local v3, "timestamp":Lio/sentry/SentryDate;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;
    .param p4, "instrumenter"    # Lio/sentry/Instrumenter;

    .line 631
    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "timestamp":Lio/sentry/SentryDate;
    .end local p4    # "instrumenter":Lio/sentry/Instrumenter;
    .local v1, "operation":Ljava/lang/String;
    .local v2, "description":Ljava/lang/String;
    .local v3, "timestamp":Lio/sentry/SentryDate;
    .local v4, "instrumenter":Lio/sentry/Instrumenter;
    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;
    .param p4, "instrumenter"    # Lio/sentry/Instrumenter;
    .param p5, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 641
    invoke-direct/range {p0 .. p5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 661
    const/4 v3, 0x0

    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "spanOptions":Lio/sentry/SpanOptions;
    .local v1, "operation":Ljava/lang/String;
    .local v2, "description":Ljava/lang/String;
    .local v5, "spanOptions":Lio/sentry/SpanOptions;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    .line 755
    .local p1, "thirdPartyBaggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    .line 757
    .local v0, "baggage":Lio/sentry/Baggage;
    if-eqz v0, :cond_0

    .line 758
    invoke-direct {p0, v0}, Lio/sentry/SentryTracer;->updateBaggageValues(Lio/sentry/Baggage;)V

    .line 759
    invoke-static {v0, p1}, Lio/sentry/BaggageHeader;->fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object v1

    return-object v1

    .line 762
    .end local v0    # "baggage":Lio/sentry/Baggage;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 701
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 2

    .line 723
    iget-object v0, p0, Lio/sentry/SentryTracer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    .line 725
    .local v0, "baggage":Lio/sentry/Baggage;
    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0, v0}, Lio/sentry/SentryTracer;->updateBaggageValues(Lio/sentry/Baggage;)V

    .line 727
    invoke-virtual {v0}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object v1

    return-object v1

    .line 730
    .end local v0    # "baggage":Lio/sentry/Baggage;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 1
    .param p1, "date"    # Lio/sentry/SentryDate;

    .line 1073
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->updateEndDate(Lio/sentry/SentryDate;)Z

    move-result v0

    return v0
.end method
