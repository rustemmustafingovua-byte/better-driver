.class public final Lio/sentry/NoOpHub;
.super Ljava/lang/Object;
.source "NoOpHub.java"

# interfaces
.implements Lio/sentry/IHub;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final instance:Lio/sentry/NoOpHub;


# instance fields
.field private final emptyOptions:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lio/sentry/NoOpHub;

    invoke-direct {v0}, Lio/sentry/NoOpHub;-><init>()V

    sput-object v0, Lio/sentry/NoOpHub;->instance:Lio/sentry/NoOpHub;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/NoOpHub;->emptyOptions:Lio/sentry/SentryOptions;

    .line 28
    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpHub;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    sget-object v0, Lio/sentry/NoOpHub;->instance:Lio/sentry/NoOpHub;

    return-object v0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 104
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 101
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 361
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 170
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "checkIn"    # Lio/sentry/CheckIn;

    .line 315
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 70
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 42
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 48
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 75
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 81
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 65
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;

    .line 53
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 59
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;

    .line 249
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "replay"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 320
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "hint"    # Lio/sentry/Hint;
    .param p4, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;

    .line 244
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    .line 119
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    sget-object v0, Lio/sentry/NoOpHub;->instance:Lio/sentry/NoOpHub;

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

    .line 20
    invoke-virtual {p0}, Lio/sentry/NoOpHub;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 95
    return-void
.end method

.method public close(Z)V
    .locals 0
    .param p1, "isRestarting"    # Z

    .line 98
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
    .locals 0
    .param p1, "scopeType"    # Lio/sentry/ScopeType;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 167
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

    .line 300
    .local p2, "baggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession()V
    .locals 0

    .line 92
    return-void
.end method

.method public feedback()Lio/sentry/IFeedbackApi;
    .locals 1

    .line 345
    invoke-static {}, Lio/sentry/NoOpFeedbackApi;->getInstance()Lio/sentry/NoOpFeedbackApi;

    move-result-object v0

    return-object v0
.end method

.method public flush(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 178
    return-void
.end method

.method public forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 235
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 192
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 1

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalScope()Lio/sentry/IScope;
    .locals 1

    .line 220
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public getIsolationScope()Lio/sentry/IScope;
    .locals 1

    .line 214
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 135
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 286
    iget-object v0, p0, Lio/sentry/NoOpHub;->emptyOptions:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getParentScopes()Lio/sentry/IScopes;
    .locals 1

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScope()Lio/sentry/IScope;
    .locals 1

    .line 208
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 1

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAncestorOf(Lio/sentry/IScopes;)Z
    .locals 1
    .param p1, "otherScopes"    # Lio/sentry/IScopes;

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 1

    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isHealthy()Z
    .locals 1

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public isNoOp()Z
    .locals 1

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public logger()Lio/sentry/logger/ILoggerApi;
    .locals 1

    .line 335
    invoke-static {}, Lio/sentry/logger/NoOpLoggerApi;->getInstance()Lio/sentry/logger/NoOpLoggerApi;

    move-result-object v0

    return-object v0
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 202
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lio/sentry/metrics/IMetricsApi;
    .locals 1

    .line 340
    invoke-static {}, Lio/sentry/metrics/NoOpMetricsApi;->getInstance()Lio/sentry/metrics/NoOpMetricsApi;

    move-result-object v0

    return-object v0
.end method

.method public popScope()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    return-void
.end method

.method public pushIsolationScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 145
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public pushScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 140
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 358
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 125
    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 0

    .line 295
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 277
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 0
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 352
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 349
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 355
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 128
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

    .line 116
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 107
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "spanContext"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 113
    return-void
.end method

.method public startProfiler()V
    .locals 0

    .line 260
    return-void
.end method

.method public startSession()V
    .locals 0

    .line 89
    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 256
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    return-object v0
.end method

.method public stopProfiler()V
    .locals 0

    .line 263
    return-void
.end method

.method public withIsolationScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 163
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V

    .line 164
    return-void
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 158
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V

    .line 159
    return-void
.end method
