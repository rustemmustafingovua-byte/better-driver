.class public final Lio/sentry/NoOpScopes;
.super Ljava/lang/Object;
.source "NoOpScopes.java"

# interfaces
.implements Lio/sentry/IScopes;


# static fields
.field private static final instance:Lio/sentry/NoOpScopes;


# instance fields
.field private final emptyOptions:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/SentryOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lio/sentry/NoOpScopes;

    invoke-direct {v0}, Lio/sentry/NoOpScopes;-><init>()V

    sput-object v0, Lio/sentry/NoOpScopes;->instance:Lio/sentry/NoOpScopes;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/NoOpScopes$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/NoOpScopes$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/NoOpScopes;->emptyOptions:Lio/sentry/util/LazyEvaluator;

    .line 26
    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpScopes;
    .locals 1

    .line 29
    sget-object v0, Lio/sentry/NoOpScopes;->instance:Lio/sentry/NoOpScopes;

    return-object v0
.end method

.method static synthetic lambda$new$0()Lio/sentry/SentryOptions;
    .locals 1

    .line 24
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 101
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 98
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 359
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 167
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "checkIn"    # Lio/sentry/CheckIn;

    .line 313
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 67
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 39
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 45
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 72
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 78
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 62
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;

    .line 50
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 56
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;

    .line 246
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "replay"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 328
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "hint"    # Lio/sentry/Hint;
    .param p4, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;

    .line 241
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    .line 116
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-static {}, Lio/sentry/NoOpHub;->getInstance()Lio/sentry/NoOpHub;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    invoke-virtual {p0}, Lio/sentry/NoOpScopes;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 92
    return-void
.end method

.method public close(Z)V
    .locals 0
    .param p1, "isRestarting"    # Z

    .line 95
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
    .locals 0
    .param p1, "scopeType"    # Lio/sentry/ScopeType;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 164
    return-void
.end method

.method public continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 1
    .param p1, "sentryTrace"    # Ljava/lang/String;
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

    .line 297
    .local p2, "baggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession()V
    .locals 0

    .line 89
    return-void
.end method

.method public feedback()Lio/sentry/IFeedbackApi;
    .locals 1

    .line 343
    invoke-static {}, Lio/sentry/NoOpFeedbackApi;->getInstance()Lio/sentry/NoOpFeedbackApi;

    move-result-object v0

    return-object v0
.end method

.method public flush(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 175
    return-void
.end method

.method public forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 194
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 199
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 1

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalScope()Lio/sentry/IScope;
    .locals 1

    .line 222
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public getIsolationScope()Lio/sentry/IScope;
    .locals 1

    .line 216
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 132
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 283
    iget-object v0, p0, Lio/sentry/NoOpScopes;->emptyOptions:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getParentScopes()Lio/sentry/IScopes;
    .locals 1

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScope()Lio/sentry/IScope;
    .locals 1

    .line 210
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 1

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAncestorOf(Lio/sentry/IScopes;)Z
    .locals 1
    .param p1, "otherScopes"    # Lio/sentry/IScopes;

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 1

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isHealthy()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public isNoOp()Z
    .locals 1

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public logger()Lio/sentry/logger/ILoggerApi;
    .locals 1

    .line 333
    invoke-static {}, Lio/sentry/logger/NoOpLoggerApi;->getInstance()Lio/sentry/logger/NoOpLoggerApi;

    move-result-object v0

    return-object v0
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 204
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lio/sentry/metrics/IMetricsApi;
    .locals 1

    .line 338
    invoke-static {}, Lio/sentry/metrics/NoOpMetricsApi;->getInstance()Lio/sentry/metrics/NoOpMetricsApi;

    move-result-object v0

    return-object v0
.end method

.method public popScope()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    return-void
.end method

.method public pushIsolationScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 142
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public pushScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 137
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 356
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 128
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 0

    .line 292
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 274
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 0
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 350
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 353
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 104
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "spanContext"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 110
    return-void
.end method

.method public startProfiler()V
    .locals 0

    .line 257
    return-void
.end method

.method public startSession()V
    .locals 0

    .line 86
    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 253
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    return-object v0
.end method

.method public stopProfiler()V
    .locals 0

    .line 260
    return-void
.end method

.method public withIsolationScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 160
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V

    .line 161
    return-void
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 155
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V

    .line 156
    return-void
.end method
