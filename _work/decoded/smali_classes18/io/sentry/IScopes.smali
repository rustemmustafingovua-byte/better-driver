.class public interface abstract Lio/sentry/IScopes;
.super Ljava/lang/Object;
.source "IScopes.java"


# virtual methods
.method public abstract addBreadcrumb(Lio/sentry/Breadcrumb;)V
.end method

.method public abstract addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
.end method

.method public addBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 263
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1}, Lio/sentry/Breadcrumb;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 264
    return-void
.end method

.method public addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 274
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1}, Lio/sentry/Breadcrumb;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    invoke-virtual {v0, p2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 276
    invoke-interface {p0, v0}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 277
    return-void
.end method

.method public abstract addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract bindClient(Lio/sentry/ISentryClient;)V
.end method

.method public abstract captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 167
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/IScopes;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public abstract captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 41
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public abstract captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 53
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 187
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/IScopes;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public abstract captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 199
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/IScopes;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;

    .line 121
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lio/sentry/IScopes;->captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 133
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/IScopes;->captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public abstract captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
.end method

.method public captureMessage(Ljava/lang/String;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-interface {p0, p1, v0}, Lio/sentry/IScopes;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 111
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/IScopes;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public abstract captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 556
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/IScopes;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;

    .line 569
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/IScopes;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 550
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lio/sentry/IScopes;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public abstract captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureUserFeedback(Lio/sentry/UserFeedback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearBreadcrumbs()V
.end method

.method public abstract clone()Lio/sentry/IHub;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract close(Z)V
.end method

.method public configureScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 396
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 397
    return-void
.end method

.method public abstract configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
.end method

.method public abstract continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/TransactionContext;"
        }
    .end annotation
.end method

.method public abstract endSession()V
.end method

.method public abstract feedback()Lio/sentry/IFeedbackApi;
.end method

.method public abstract flush(J)V
.end method

.method public abstract forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;
.end method

.method public abstract forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;
.end method

.method public abstract forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;
.end method

.method public abstract getBaggage()Lio/sentry/BaggageHeader;
.end method

.method public abstract getGlobalScope()Lio/sentry/IScope;
.end method

.method public abstract getIsolationScope()Lio/sentry/IScope;
.end method

.method public abstract getLastEventId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract getOptions()Lio/sentry/SentryOptions;
.end method

.method public abstract getParentScopes()Lio/sentry/IScopes;
.end method

.method public abstract getRateLimiter()Lio/sentry/transport/RateLimiter;
.end method

.method public abstract getScope()Lio/sentry/IScope;
.end method

.method public abstract getSpan()Lio/sentry/ISpan;
.end method

.method public abstract getTraceparent()Lio/sentry/SentryTraceHeader;
.end method

.method public abstract getTransaction()Lio/sentry/ITransaction;
.end method

.method public abstract isAncestorOf(Lio/sentry/IScopes;)Z
.end method

.method public abstract isCrashedLastRun()Ljava/lang/Boolean;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isHealthy()Z
.end method

.method public isNoOp()Z
    .locals 1

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public abstract logger()Lio/sentry/logger/ILoggerApi;
.end method

.method public abstract makeCurrent()Lio/sentry/ISentryLifecycleToken;
.end method

.method public abstract metrics()Lio/sentry/metrics/IMetricsApi;
.end method

.method public abstract popScope()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pushIsolationScope()Lio/sentry/ISentryLifecycleToken;
.end method

.method public abstract pushScope()Lio/sentry/ISentryLifecycleToken;
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract removeExtra(Ljava/lang/String;)V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract reportFullyDisplayed()V
.end method

.method public abstract setActiveSpan(Lio/sentry/ISpan;)V
.end method

.method public abstract setAttribute(Lio/sentry/SentryAttribute;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setAttributes(Lio/sentry/SentryAttributes;)V
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setFingerprint(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLevel(Lio/sentry/SentryLevel;)V
.end method

.method public abstract setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTransaction(Ljava/lang/String;)V
.end method

.method public abstract setUser(Lio/sentry/protocol/User;)V
.end method

.method public abstract startProfiler()V
.end method

.method public abstract startSession()V
.end method

.method public startTransaction(Lio/sentry/TransactionContext;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "transactionContexts"    # Lio/sentry/TransactionContext;

    .line 589
    new-instance v0, Lio/sentry/TransactionOptions;

    invoke-direct {v0}, Lio/sentry/TransactionOptions;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
.end method

.method public startTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .line 603
    new-instance v0, Lio/sentry/TransactionOptions;

    invoke-direct {v0}, Lio/sentry/TransactionOptions;-><init>()V

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/IScopes;->startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 620
    new-instance v0, Lio/sentry/TransactionContext;

    invoke-direct {v0, p1, p2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract stopProfiler()V
.end method

.method public abstract withIsolationScope(Lio/sentry/ScopeCallback;)V
.end method

.method public abstract withScope(Lio/sentry/ScopeCallback;)V
.end method
