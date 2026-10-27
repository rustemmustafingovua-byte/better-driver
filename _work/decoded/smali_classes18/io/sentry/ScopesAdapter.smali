.class public final Lio/sentry/ScopesAdapter;
.super Ljava/lang/Object;
.source "ScopesAdapter.java"

# interfaces
.implements Lio/sentry/IScopes;


# static fields
.field private static final INSTANCE:Lio/sentry/ScopesAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lio/sentry/ScopesAdapter;

    invoke-direct {v0}, Lio/sentry/ScopesAdapter;-><init>()V

    sput-object v0, Lio/sentry/ScopesAdapter;->INSTANCE:Lio/sentry/ScopesAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/ScopesAdapter;
    .locals 1

    .line 22
    sget-object v0, Lio/sentry/ScopesAdapter;->INSTANCE:Lio/sentry/ScopesAdapter;

    return-object v0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 118
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/sentry/ScopesAdapter;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 119
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 113
    invoke-static {p1, p2}, Lio/sentry/Sentry;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 114
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 423
    invoke-static {p1, p2}, Lio/sentry/Sentry;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 208
    invoke-static {p1}, Lio/sentry/Sentry;->bindClient(Lio/sentry/ISentryClient;)V

    .line 209
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "checkIn"    # Lio/sentry/CheckIn;

    .line 372
    invoke-static {p1}, Lio/sentry/Sentry;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 71
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScopes;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 32
    invoke-static {p1, p2}, Lio/sentry/Sentry;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 38
    invoke-static {p1, p2, p3}, Lio/sentry/Sentry;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 76
    invoke-static {p1, p2}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 82
    invoke-static {p1, p2, p3}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;

    .line 54
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 59
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 65
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;

    .line 43
    invoke-static {p1, p2}, Lio/sentry/Sentry;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 49
    invoke-static {p1, p2, p3}, Lio/sentry/Sentry;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;

    .line 293
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScopes;->captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "replay"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 383
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScopes;->captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "hint"    # Lio/sentry/Hint;
    .param p4, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;

    .line 287
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 288
    invoke-interface {v0, p1, p2, p3, p4}, Lio/sentry/IScopes;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-static {p1}, Lio/sentry/Sentry;->captureUserFeedback(Lio/sentry/UserFeedback;)V

    .line 89
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    .line 143
    invoke-static {}, Lio/sentry/Sentry;->clearBreadcrumbs()V

    .line 144
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->clone()Lio/sentry/IHub;

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

    .line 15
    invoke-virtual {p0}, Lio/sentry/ScopesAdapter;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 108
    invoke-static {}, Lio/sentry/Sentry;->close()V

    .line 109
    return-void
.end method

.method public close(Z)V
    .locals 0
    .param p1, "isRestarting"    # Z

    .line 103
    invoke-static {}, Lio/sentry/Sentry;->close()V

    .line 104
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
    .locals 0
    .param p1, "scopeType"    # Lio/sentry/ScopeType;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 203
    invoke-static {p1, p2}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 204
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

    .line 356
    .local p2, "baggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lio/sentry/Sentry;->continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;

    move-result-object v0

    return-object v0
.end method

.method public endSession()V
    .locals 0

    .line 98
    invoke-static {}, Lio/sentry/Sentry;->endSession()V

    .line 99
    return-void
.end method

.method public feedback()Lio/sentry/IFeedbackApi;
    .locals 1

    .line 398
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    return-object v0
.end method

.method public flush(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 218
    invoke-static {p1, p2}, Lio/sentry/Sentry;->flush(J)V

    .line 219
    return-void
.end method

.method public forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 239
    invoke-static {p1}, Lio/sentry/Sentry;->forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 244
    invoke-static {p1}, Lio/sentry/Sentry;->forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lio/sentry/Sentry;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 1

    .line 366
    invoke-static {}, Lio/sentry/Sentry;->getBaggage()Lio/sentry/BaggageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalScope()Lio/sentry/IScope;
    .locals 1

    .line 267
    invoke-static {}, Lio/sentry/Sentry;->getGlobalScope()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public getIsolationScope()Lio/sentry/IScope;
    .locals 1

    .line 261
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getIsolationScope()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 168
    invoke-static {}, Lio/sentry/Sentry;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 340
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParentScopes()Lio/sentry/IScopes;
    .locals 1

    .line 272
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getParentScopes()Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 378
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lio/sentry/IScope;
    .locals 1

    .line 255
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getScope()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 1

    .line 324
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 361
    invoke-static {}, Lio/sentry/Sentry;->getTraceparent()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 335
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public isAncestorOf(Lio/sentry/IScopes;)Z
    .locals 1
    .param p1, "otherScopes"    # Lio/sentry/IScopes;

    .line 277
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScopes;->isAncestorOf(Lio/sentry/IScopes;)Z

    move-result v0

    return v0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 1

    .line 345
    invoke-static {}, Lio/sentry/Sentry;->isCrashedLastRun()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 27
    invoke-static {}, Lio/sentry/Sentry;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHealthy()Z
    .locals 1

    .line 213
    invoke-static {}, Lio/sentry/Sentry;->isHealthy()Z

    move-result v0

    return v0
.end method

.method public logger()Lio/sentry/logger/ILoggerApi;
    .locals 1

    .line 388
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->logger()Lio/sentry/logger/ILoggerApi;

    move-result-object v0

    return-object v0
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 249
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lio/sentry/metrics/IMetricsApi;
    .locals 1

    .line 393
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->metrics()Lio/sentry/metrics/IMetricsApi;

    move-result-object v0

    return-object v0
.end method

.method public popScope()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-static {}, Lio/sentry/Sentry;->popScope()V

    .line 189
    return-void
.end method

.method public pushIsolationScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 178
    invoke-static {}, Lio/sentry/Sentry;->pushIsolationScope()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public pushScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 173
    invoke-static {}, Lio/sentry/Sentry;->pushScope()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 418
    invoke-static {p1}, Lio/sentry/Sentry;->removeAttribute(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 163
    invoke-static {p1}, Lio/sentry/Sentry;->removeExtra(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lio/sentry/Sentry;->removeTag(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 0

    .line 350
    invoke-static {}, Lio/sentry/Sentry;->reportFullyDisplayed()V

    .line 351
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 329
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScopes;->setActiveSpan(Lio/sentry/ISpan;)V

    .line 330
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 0
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 408
    invoke-static {p1}, Lio/sentry/Sentry;->setAttribute(Lio/sentry/SentryAttribute;)V

    .line 409
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 403
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 413
    invoke-static {p1}, Lio/sentry/Sentry;->setAttributes(Lio/sentry/SentryAttributes;)V

    .line 414
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 158
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
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

    .line 138
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lio/sentry/Sentry;->setFingerprint(Ljava/util/List;)V

    .line 139
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 123
    invoke-static {p1}, Lio/sentry/Sentry;->setLevel(Lio/sentry/SentryLevel;)V

    .line 124
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "span"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 319
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/IScopes;->setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 148
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lio/sentry/Sentry;->setTransaction(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 133
    invoke-static {p1}, Lio/sentry/Sentry;->setUser(Lio/sentry/protocol/User;)V

    .line 134
    return-void
.end method

.method public startProfiler()V
    .locals 0

    .line 305
    invoke-static {}, Lio/sentry/Sentry;->startProfiler()V

    .line 306
    return-void
.end method

.method public startSession()V
    .locals 0

    .line 93
    invoke-static {}, Lio/sentry/Sentry;->startSession()V

    .line 94
    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 300
    invoke-static {p1, p2}, Lio/sentry/Sentry;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public stopProfiler()V
    .locals 0

    .line 310
    invoke-static {}, Lio/sentry/Sentry;->stopProfiler()V

    .line 311
    return-void
.end method

.method public withIsolationScope(Lio/sentry/ScopeCallback;)V
    .locals 0
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 198
    invoke-static {p1}, Lio/sentry/Sentry;->withIsolationScope(Lio/sentry/ScopeCallback;)V

    .line 199
    return-void
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 0
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 193
    invoke-static {p1}, Lio/sentry/Sentry;->withScope(Lio/sentry/ScopeCallback;)V

    .line 194
    return-void
.end method
