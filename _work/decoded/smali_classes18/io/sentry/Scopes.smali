.class public final Lio/sentry/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lio/sentry/IScopes;


# instance fields
.field private final combinedScope:Lio/sentry/CombinedScopeView;

.field private final compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private final creator:Ljava/lang/String;

.field private final feedbackApi:Lio/sentry/IFeedbackApi;

.field private final globalScope:Lio/sentry/IScope;

.field private final isolationScope:Lio/sentry/IScope;

.field private final logger:Lio/sentry/logger/ILoggerApi;

.field private final metrics:Lio/sentry/metrics/IMetricsApi;

.field private final parentScopes:Lio/sentry/Scopes;

.field private final scope:Lio/sentry/IScope;


# direct methods
.method private constructor <init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/Scopes;Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "isolationScope"    # Lio/sentry/IScope;
    .param p3, "globalScope"    # Lio/sentry/IScope;
    .param p4, "parentScopes"    # Lio/sentry/Scopes;
    .param p5, "creator"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lio/sentry/CombinedScopeView;

    invoke-direct {v0, p3, p2, p1}, Lio/sentry/CombinedScopeView;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V

    iput-object v0, p0, Lio/sentry/Scopes;->combinedScope:Lio/sentry/CombinedScopeView;

    .line 54
    iput-object p1, p0, Lio/sentry/Scopes;->scope:Lio/sentry/IScope;

    .line 55
    iput-object p2, p0, Lio/sentry/Scopes;->isolationScope:Lio/sentry/IScope;

    .line 56
    iput-object p3, p0, Lio/sentry/Scopes;->globalScope:Lio/sentry/IScope;

    .line 57
    iput-object p4, p0, Lio/sentry/Scopes;->parentScopes:Lio/sentry/Scopes;

    .line 58
    iput-object p5, p0, Lio/sentry/Scopes;->creator:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 61
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-static {v0}, Lio/sentry/Scopes;->validateOptions(Lio/sentry/SentryOptions;)V

    .line 62
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/Scopes;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 63
    new-instance v1, Lio/sentry/logger/LoggerApi;

    invoke-direct {v1, p0}, Lio/sentry/logger/LoggerApi;-><init>(Lio/sentry/Scopes;)V

    iput-object v1, p0, Lio/sentry/Scopes;->logger:Lio/sentry/logger/ILoggerApi;

    .line 64
    new-instance v1, Lio/sentry/metrics/MetricsApi;

    invoke-direct {v1, p0}, Lio/sentry/metrics/MetricsApi;-><init>(Lio/sentry/Scopes;)V

    iput-object v1, p0, Lio/sentry/Scopes;->metrics:Lio/sentry/metrics/IMetricsApi;

    .line 65
    new-instance v1, Lio/sentry/FeedbackApi;

    invoke-direct {v1, p0}, Lio/sentry/FeedbackApi;-><init>(Lio/sentry/IScopes;)V

    iput-object v1, p0, Lio/sentry/Scopes;->feedbackApi:Lio/sentry/IFeedbackApi;

    .line 66
    return-void
.end method

.method public constructor <init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;Ljava/lang/String;)V
    .locals 6
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "isolationScope"    # Lio/sentry/IScope;
    .param p3, "globalScope"    # Lio/sentry/IScope;
    .param p4, "creator"    # Ljava/lang/String;

    .line 44
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "scope":Lio/sentry/IScope;
    .end local p2    # "isolationScope":Lio/sentry/IScope;
    .end local p3    # "globalScope":Lio/sentry/IScope;
    .end local p4    # "creator":Ljava/lang/String;
    .local v1, "scope":Lio/sentry/IScope;
    .local v2, "isolationScope":Lio/sentry/IScope;
    .local v3, "globalScope":Lio/sentry/IScope;
    .local v5, "creator":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/Scopes;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/Scopes;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 184
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 185
    return-void
.end method

.method private buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;
    .locals 4
    .param p1, "parentScope"    # Lio/sentry/IScope;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 189
    if-eqz p2, :cond_0

    .line 191
    :try_start_0
    invoke-interface {p1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    .line 192
    .local v0, "localScope":Lio/sentry/IScope;
    invoke-interface {p2, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    return-object v0

    .line 194
    .end local v0    # "localScope":Lio/sentry/IScope;
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 197
    const-string v3, "Error in the \'ScopeCallback\' callback."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object p1
.end method

.method private captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "scopeCallback"    # Lio/sentry/ScopeCallback;

    .line 149
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 150
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 153
    const-string v4, "Instance is disabled and this \'captureEvent\' call is a no-op."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-static {p2}, Lio/sentry/util/HintUtils;->setCaptureFailed(Lio/sentry/Hint;)V

    goto :goto_0

    .line 156
    :cond_0
    if-nez p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "captureEvent called with null parameter."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {p2}, Lio/sentry/util/HintUtils;->setCaptureFailed(Lio/sentry/Hint;)V

    goto :goto_0

    .line 161
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/Scopes;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 162
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lio/sentry/Scopes;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object v1

    .line 164
    .local v1, "localScope":Lio/sentry/IScope;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v2

    move-object v0, v2

    .line 165
    invoke-direct {p0, v0}, Lio/sentry/Scopes;->updateLastEventId(Lio/sentry/protocol/SentryId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v1    # "localScope":Lio/sentry/IScope;
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while capturing event with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    invoke-static {p2}, Lio/sentry/util/HintUtils;->setCaptureFailed(Lio/sentry/Hint;)V

    .line 174
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "scopeCallback"    # Lio/sentry/ScopeCallback;

    .line 322
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 323
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 326
    const-string v4, "Instance is disabled and this \'captureException\' call is a no-op."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_0
    if-nez p1, :cond_1

    .line 330
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 332
    const-string v4, "captureException called with null parameter."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 335
    :cond_1
    :try_start_0
    new-instance v1, Lio/sentry/SentryEvent;

    invoke-direct {v1, p1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 336
    .local v1, "event":Lio/sentry/SentryEvent;
    invoke-direct {p0, v1}, Lio/sentry/Scopes;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 338
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/Scopes;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object v2

    .line 340
    .local v2, "localScope":Lio/sentry/IScope;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v3

    invoke-interface {v3, v1, v2, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 346
    .end local v1    # "event":Lio/sentry/SentryEvent;
    .end local v2    # "localScope":Lio/sentry/IScope;
    goto :goto_0

    .line 341
    :catchall_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while capturing exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v0}, Lio/sentry/Scopes;->updateLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 349
    return-object v0
.end method

.method private captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;
    .param p3, "scopeCallback"    # Lio/sentry/ScopeCallback;

    .line 221
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 222
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 225
    const-string v4, "Instance is disabled and this \'captureMessage\' call is a no-op."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 229
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 231
    const-string v4, "captureMessage called with null parameter."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lio/sentry/Scopes;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object v1

    .line 236
    .local v1, "localScope":Lio/sentry/IScope;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lio/sentry/ISentryClient;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 241
    .end local v1    # "localScope":Lio/sentry/IScope;
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while capturing message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v0}, Lio/sentry/Scopes;->updateLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 244
    return-object v0
.end method

.method private createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 9
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 932
    const-string v0, "transactionContext is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/TransactionContext;->setOrigin(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 938
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 939
    const-string v3, "Instance is disabled and this \'startTransaction\' returns a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    .local v0, "transaction":Lio/sentry/ITransaction;
    goto/16 :goto_2

    .line 943
    .end local v0    # "transaction":Lio/sentry/ITransaction;
    :cond_0
    nop

    .line 944
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIgnoredSpanOrigins()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getOrigin()Ljava/lang/String;

    move-result-object v2

    .line 943
    invoke-static {v0, v2}, Lio/sentry/util/SpanUtils;->isIgnored(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 950
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getOrigin()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 947
    const-string v3, "Returning no-op for span origin %s as the SDK has been configured to ignore it"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    .restart local v0    # "transaction":Lio/sentry/ITransaction;
    goto/16 :goto_2

    .line 953
    .end local v0    # "transaction":Lio/sentry/ITransaction;
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 954
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 959
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v2

    .line 960
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 956
    const-string v3, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    .restart local v0    # "transaction":Lio/sentry/ITransaction;
    goto/16 :goto_2

    .line 962
    .end local v0    # "transaction":Lio/sentry/ITransaction;
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 963
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 965
    const-string v3, "Tracing is disabled and this \'startTransaction\' returns a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    .restart local v0    # "transaction":Lio/sentry/ITransaction;
    goto/16 :goto_2

    .line 969
    .end local v0    # "transaction":Lio/sentry/ITransaction;
    :cond_3
    invoke-direct {p0, p1}, Lio/sentry/Scopes;->getSampleRand(Lio/sentry/TransactionContext;)Ljava/lang/Double;

    move-result-object v0

    .line 970
    .local v0, "sampleRand":Ljava/lang/Double;
    new-instance v1, Lio/sentry/SamplingContext;

    .line 972
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getCustomSamplingContext()Lio/sentry/CustomSamplingContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v0, v3}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;Ljava/lang/Double;Ljava/util/Map;)V

    .line 973
    .local v1, "samplingContext":Lio/sentry/SamplingContext;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    move-result-object v2

    .line 974
    .local v2, "tracesSampler":Lio/sentry/TracesSampler;
    invoke-virtual {v2, v1}, Lio/sentry/TracesSampler;->sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v3

    .line 975
    .local v3, "samplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-virtual {p1, v3}, Lio/sentry/TransactionContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 977
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getSpanFactory()Lio/sentry/ISpanFactory;

    move-result-object v4

    .line 979
    .local v4, "maybeSpanFactory":Lio/sentry/ISpanFactory;
    if-nez v4, :cond_4

    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSpanFactory()Lio/sentry/ISpanFactory;

    move-result-object v5

    goto :goto_0

    :cond_4
    move-object v5, v4

    .line 986
    .local v5, "spanFactory":Lio/sentry/ISpanFactory;
    :goto_0
    invoke-virtual {v3}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 987
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 988
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v6

    sget-object v7, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    if-ne v6, v7, :cond_5

    .line 989
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    sget-object v7, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v6, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 990
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    .line 991
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v6

    sget-object v7, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    .line 992
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lio/sentry/IContinuousProfiler;->startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V

    .line 995
    :cond_5
    iget-object v6, p0, Lio/sentry/Scopes;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 996
    invoke-interface {v5, p1, p0, p2, v6}, Lio/sentry/ISpanFactory;->createTransaction(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)Lio/sentry/ITransaction;

    move-result-object v6

    .line 1004
    .local v6, "transaction":Lio/sentry/ITransaction;
    invoke-virtual {v3}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1006
    invoke-virtual {v3}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1007
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v7

    .line 1009
    .local v7, "transactionProfiler":Lio/sentry/ITransactionProfiler;
    invoke-interface {v7}, Lio/sentry/ITransactionProfiler;->isRunning()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1010
    invoke-interface {v7}, Lio/sentry/ITransactionProfiler;->start()V

    .line 1011
    invoke-interface {v7, v6}, Lio/sentry/ITransactionProfiler;->bindTransaction(Lio/sentry/ITransaction;)V

    goto :goto_1

    .line 1012
    :cond_6
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->isAppStartTransaction()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1014
    invoke-interface {v7, v6}, Lio/sentry/ITransactionProfiler;->bindTransaction(Lio/sentry/ITransaction;)V

    .line 1019
    .end local v0    # "sampleRand":Ljava/lang/Double;
    .end local v1    # "samplingContext":Lio/sentry/SamplingContext;
    .end local v2    # "tracesSampler":Lio/sentry/TracesSampler;
    .end local v3    # "samplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v4    # "maybeSpanFactory":Lio/sentry/ISpanFactory;
    .end local v5    # "spanFactory":Lio/sentry/ISpanFactory;
    .end local v7    # "transactionProfiler":Lio/sentry/ITransactionProfiler;
    :cond_7
    :goto_1
    move-object v0, v6

    .end local v6    # "transaction":Lio/sentry/ITransaction;
    .local v0, "transaction":Lio/sentry/ITransaction;
    :goto_2
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->isBindToScope()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1020
    invoke-interface {v0}, Lio/sentry/ITransaction;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    .line 1022
    :cond_8
    return-object v0
.end method

.method private getSampleRand(Lio/sentry/TransactionContext;)Ljava/lang/Double;
    .locals 2
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;

    .line 1026
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    .line 1027
    .local v0, "baggage":Lio/sentry/Baggage;
    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {v0}, Lio/sentry/Baggage;->getSampleRand()Ljava/lang/Double;

    move-result-object v1

    .line 1029
    .local v1, "sampleRandFromBaggageMaybe":Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 1030
    return-object v1

    .line 1034
    .end local v1    # "sampleRandFromBaggageMaybe":Ljava/lang/Double;
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/PropagationContext;->getSampleRand()Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$close$0(Lio/sentry/IScope;)V
    .locals 0
    .param p0, "scope"    # Lio/sentry/IScope;

    .line 466
    invoke-interface {p0}, Lio/sentry/IScope;->clear()V

    return-void
.end method

.method static synthetic lambda$close$1(Lio/sentry/IScope;)V
    .locals 0
    .param p0, "scope"    # Lio/sentry/IScope;

    .line 467
    invoke-interface {p0}, Lio/sentry/IScope;->clear()V

    return-void
.end method

.method static synthetic lambda$close$3(ZLio/sentry/IScope;)V
    .locals 1
    .param p0, "isRestarting"    # Z
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 498
    invoke-interface {p1}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/ISentryClient;->close(Z)V

    return-void
.end method

.method static synthetic lambda$close$4(ZLio/sentry/IScope;)V
    .locals 1
    .param p0, "isRestarting"    # Z
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 499
    invoke-interface {p1}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/ISentryClient;->close(Z)V

    return-void
.end method

.method static synthetic lambda$close$5(ZLio/sentry/IScope;)V
    .locals 1
    .param p0, "isRestarting"    # Z
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 500
    invoke-interface {p1}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/ISentryClient;->close(Z)V

    return-void
.end method

.method static synthetic lambda$continueTrace$6(Lio/sentry/IScope;Lio/sentry/PropagationContext;Lio/sentry/PropagationContext;)V
    .locals 0
    .param p0, "scope"    # Lio/sentry/IScope;
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;
    .param p2, "oldPropagationContext"    # Lio/sentry/PropagationContext;

    .line 1156
    invoke-interface {p0, p1}, Lio/sentry/IScope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    .line 1157
    return-void
.end method

.method static synthetic lambda$continueTrace$7(Lio/sentry/PropagationContext;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "propagationContext"    # Lio/sentry/PropagationContext;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 1154
    new-instance v0, Lio/sentry/Scopes$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lio/sentry/Scopes$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IScope;Lio/sentry/PropagationContext;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    .line 1158
    return-void
.end method

.method private updateLastEventId(Lio/sentry/protocol/SentryId;)V
    .locals 1
    .param p1, "lastEventId"    # Lio/sentry/protocol/SentryId;

    .line 649
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 650
    return-void
.end method

.method private static validateOptions(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 1321
    const-string v0, "SentryOptions is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1326
    return-void

    .line 1323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scopes requires a DSN to be instantiated. Considering using the NoOpScopes if no DSN is available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 526
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 527
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 4
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 509
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 512
    const-string v3, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_0
    if-nez p1, :cond_1

    .line 516
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 518
    const-string v3, "addBreadcrumb called with null parameter."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 522
    :goto_0
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 1317
    iget-object v0, p0, Lio/sentry/Scopes;->combinedScope:Lio/sentry/CombinedScopeView;

    invoke-virtual {v0, p1, p2}, Lio/sentry/CombinedScopeView;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1318
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 4
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 773
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 774
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "New client bound to scope."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->bindClient(Lio/sentry/ISentryClient;)V

    goto :goto_0

    .line 777
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "NoOp client bound to scope."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/IScope;->bindClient(Lio/sentry/ISentryClient;)V

    .line 780
    :goto_0
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1, "checkIn"    # Lio/sentry/CheckIn;

    .line 1204
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1205
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1208
    const-string v4, "Instance is disabled and this \'captureCheckIn\' call is a no-op."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1213
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lio/sentry/ISentryClient;->captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1218
    goto :goto_0

    .line 1214
    :catchall_0
    move-exception v1

    .line 1215
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 1216
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1217
    const-string v4, "Error while capturing check-in for slug"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1220
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v0}, Lio/sentry/Scopes;->updateLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 1221
    return-object v0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 281
    const-string v0, "SentryEnvelope is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 284
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 287
    const-string v4, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/sentry/ISentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v1, "capturedEnvelopeId":Lio/sentry/protocol/SentryId;
    if-eqz v1, :cond_1

    .line 294
    move-object v0, v1

    .line 298
    .end local v1    # "capturedEnvelopeId":Lio/sentry/protocol/SentryId;
    :cond_1
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while capturing envelope."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Scopes;->captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Scopes;->captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Scopes;->captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Scopes;->captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "scopeCallback"    # Lio/sentry/ScopeCallback;

    .line 252
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 253
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 256
    const-string v4, "Instance is disabled and this \'captureFeedback\' call is a no-op."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/Feedback;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 262
    const-string v4, "captureFeedback called with empty message."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lio/sentry/Scopes;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object v1

    .line 267
    .local v1, "localScope":Lio/sentry/IScope;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lio/sentry/ISentryClient;->captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 272
    .end local v1    # "localScope":Lio/sentry/IScope;
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while capturing feedback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 271
    invoke-virtual {p1}, Lio/sentry/protocol/Feedback;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Scopes;->captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lio/sentry/SentryLevel;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Scopes;->captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "profilingContinuousData"    # Lio/sentry/ProfileChunk;

    .line 897
    const-string v0, "profilingContinuousData is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 900
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 902
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 903
    const-string v4, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 908
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/Scopes;->getScope()Lio/sentry/IScope;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lio/sentry/ISentryClient;->captureProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 917
    goto :goto_0

    .line 909
    :catchall_0
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 911
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while capturing profile chunk with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 915
    invoke-virtual {p1}, Lio/sentry/ProfileChunk;->getChunkId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 912
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 919
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1, "replay"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 1227
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1228
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 1230
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1231
    const-string v4, "Instance is disabled and this \'captureReplay\' call is a no-op."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1236
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lio/sentry/ISentryClient;->captureReplayEvent(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1239
    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v1

    .line 1238
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while capturing replay"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1241
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 8
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "hint"    # Lio/sentry/Hint;
    .param p4, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;

    .line 823
    const-string v0, "transaction is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 825
    sget-object v7, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 826
    .local v7, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 829
    const-string v4, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 833
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 839
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 836
    const-string v4, "Transaction: %s is not finished and this \'captureTransaction\' call is a no-op."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 841
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->isSampled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 842
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 847
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 844
    const-string v4, "Transaction %s was dropped due to sampling decision."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/backpressure/IBackpressureMonitor;->getDownsampleFactor()I

    move-result v0

    if-lez v0, :cond_2

    .line 849
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->BACKPRESSURE:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 851
    invoke-interface {v0, v1, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 852
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->BACKPRESSURE:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 857
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 854
    invoke-interface {v0, v1, v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 861
    invoke-interface {v0, v1, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 862
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 867
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 864
    invoke-interface {v0, v1, v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    goto :goto_0

    .line 871
    :cond_3
    nop

    .line 872
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    .line 876
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v4

    .line 873
    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 886
    goto :goto_0

    .line 879
    :catchall_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 881
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing transaction with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 884
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 882
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 890
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v7
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 5
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 358
    const-string v3, "Instance is disabled and this \'captureUserFeedback\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->captureUserFeedback(Lio/sentry/UserFeedback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing captureUserFeedback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 369
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 4

    .line 585
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 588
    const-string v3, "Instance is disabled and this \'clearBreadcrumbs\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clearBreadcrumbs()V

    .line 594
    :goto_0
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disabled Scopes cloned."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    :cond_0
    new-instance v0, Lio/sentry/HubScopesWrapper;

    const-string v1, "scopes clone"

    invoke-virtual {p0, v1}, Lio/sentry/Scopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/HubScopesWrapper;-><init>(Lio/sentry/IScopes;)V

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

    .line 23
    invoke-virtual {p0}, Lio/sentry/Scopes;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->close(Z)V

    .line 428
    return-void
.end method

.method public close(Z)V
    .locals 7
    .param p1, "isRestarting"    # Z

    .line 433
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 436
    const-string v3, "Instance is disabled and this \'close\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 439
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Integration;

    .line 440
    .local v1, "integration":Lio/sentry/Integration;
    instance-of v2, v1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    .line 442
    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    goto :goto_1

    .line 443
    :catchall_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    .line 445
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to close the integration {}."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 446
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    .end local v1    # "integration":Lio/sentry/Integration;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 451
    .local v1, "eventProcessor":Lio/sentry/EventProcessor;
    instance-of v2, v1, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_3

    .line 453
    :try_start_3
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 462
    goto :goto_3

    .line 454
    :catchall_1
    move-exception v2

    .line 455
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    .line 456
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to close the event processor {}."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 457
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    .end local v1    # "eventProcessor":Lio/sentry/EventProcessor;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    goto :goto_2

    .line 466
    :cond_4
    new-instance v0, Lio/sentry/Scopes$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/sentry/Scopes$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 467
    sget-object v0, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    new-instance v1, Lio/sentry/Scopes$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/sentry/Scopes$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/sentry/Scopes;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 468
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/backpressure/IBackpressureMonitor;->close()V

    .line 469
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    .line 470
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/sentry/IContinuousProfiler;->close(Z)V

    .line 471
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/CompositePerformanceCollector;->close()V

    .line 472
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->close()V

    .line 476
    if-nez p1, :cond_5

    .line 477
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTimerExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 479
    :cond_5
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 480
    .local v0, "executorService":Lio/sentry/ISentryExecutorService;
    if-eqz p1, :cond_6

    .line 482
    :try_start_5
    new-instance v1, Lio/sentry/Scopes$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lio/sentry/Scopes$$ExternalSyntheticLambda3;-><init>(Lio/sentry/Scopes;Lio/sentry/ISentryExecutorService;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 492
    :goto_4
    goto :goto_5

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_6
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to submit executor service shutdown task during restart. Shutting down synchronously."

    .line 487
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/sentry/ISentryExecutorService;->close(J)V

    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    goto :goto_4

    .line 494
    :cond_6
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 498
    :goto_5
    sget-object v1, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    new-instance v2, Lio/sentry/Scopes$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lio/sentry/Scopes$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lio/sentry/Scopes;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 499
    sget-object v1, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    new-instance v2, Lio/sentry/Scopes$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lio/sentry/Scopes$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lio/sentry/Scopes;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 500
    sget-object v1, Lio/sentry/ScopeType;->GLOBAL:Lio/sentry/ScopeType;

    new-instance v2, Lio/sentry/Scopes$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lio/sentry/Scopes$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lio/sentry/Scopes;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 503
    .end local v0    # "executorService":Lio/sentry/ISentryExecutorService;
    goto :goto_6

    .line 501
    :catchall_2
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error while closing the Scopes."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 505
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
    .locals 4
    .param p1, "scopeType"    # Lio/sentry/ScopeType;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 754
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 757
    const-string v3, "Instance is disabled and this \'configureScope\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Scopes;->combinedScope:Lio/sentry/CombinedScopeView;

    invoke-virtual {v0, p1}, Lio/sentry/CombinedScopeView;->getSpecificScope(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 765
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 766
    const-string v3, "Error in the \'configureScope\' callback."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 2
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

    .line 1149
    .local p2, "baggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1151
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 1150
    invoke-static {v0, p1, p2, v1}, Lio/sentry/PropagationContext;->fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object v0

    .line 1152
    .local v0, "propagationContext":Lio/sentry/PropagationContext;
    new-instance v1, Lio/sentry/Scopes$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lio/sentry/Scopes$$ExternalSyntheticLambda7;-><init>(Lio/sentry/PropagationContext;)V

    invoke-virtual {p0, v1}, Lio/sentry/Scopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 1159
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    invoke-static {v0}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object v1

    return-object v1

    .line 1162
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public endSession()V
    .locals 4

    .line 405
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 408
    const-string v3, "Instance is disabled and this \'endSession\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->endSession()Lio/sentry/Session;

    move-result-object v0

    .line 411
    .local v0, "previousSession":Lio/sentry/Session;
    if-eqz v0, :cond_1

    .line 412
    new-instance v1, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v1}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-static {v1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 414
    .local v1, "hint":Lio/sentry/Hint;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 417
    .end local v0    # "previousSession":Lio/sentry/Session;
    .end local v1    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    return-void
.end method

.method public feedback()Lio/sentry/IFeedbackApi;
    .locals 1

    .line 1262
    iget-object v0, p0, Lio/sentry/Scopes;->feedbackApi:Lio/sentry/IFeedbackApi;

    return-object v0
.end method

.method public flush(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 789
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 792
    const-string v3, "Instance is disabled and this \'flush\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 795
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/ISentryClient;->flush(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error in the \'client.flush\'."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 6
    .param p1, "creator"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lio/sentry/Scopes;

    iget-object v1, p0, Lio/sentry/Scopes;->scope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/Scopes;->isolationScope:Lio/sentry/IScope;

    iget-object v3, p0, Lio/sentry/Scopes;->globalScope:Lio/sentry/IScope;

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "creator":Ljava/lang/String;
    .local v5, "creator":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/Scopes;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/Scopes;Ljava/lang/String;)V

    return-object v0
.end method

.method public forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p1, "creator"    # Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lio/sentry/Sentry;->forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 6
    .param p1, "creator"    # Ljava/lang/String;

    .line 116
    new-instance v0, Lio/sentry/Scopes;

    iget-object v1, p0, Lio/sentry/Scopes;->scope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/Scopes;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/Scopes;->globalScope:Lio/sentry/IScope;

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "creator":Ljava/lang/String;
    .local v5, "creator":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/Scopes;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/Scopes;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 5

    .line 1187
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1190
    const-string v4, "Instance is disabled and this \'getBaggage\' call is a no-op."

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1192
    :cond_0
    nop

    .line 1193
    invoke-virtual {p0}, Lio/sentry/Scopes;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IScopes;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object v0

    .line 1194
    .local v0, "headers":Lio/sentry/util/TracingUtils$TracingHeaders;
    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {v0}, Lio/sentry/util/TracingUtils$TracingHeaders;->getBaggageHeader()Lio/sentry/BaggageHeader;

    move-result-object v1

    return-object v1

    .line 1199
    .end local v0    # "headers":Lio/sentry/util/TracingUtils$TracingHeaders;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getClient()Lio/sentry/ISentryClient;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    return-object v0
.end method

.method public getCombinedScopeView()Lio/sentry/IScope;
    .locals 1

    .line 422
    iget-object v0, p0, Lio/sentry/Scopes;->combinedScope:Lio/sentry/CombinedScopeView;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/sentry/Scopes;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalScope()Lio/sentry/IScope;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/Scopes;->globalScope:Lio/sentry/IScope;

    return-object v0
.end method

.method public getIsolationScope()Lio/sentry/IScope;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/sentry/Scopes;->isolationScope:Lio/sentry/IScope;

    return-object v0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 654
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 1128
    iget-object v0, p0, Lio/sentry/Scopes;->combinedScope:Lio/sentry/CombinedScopeView;

    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParentScopes()Lio/sentry/IScopes;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/sentry/Scopes;->parentScopes:Lio/sentry/Scopes;

    return-object v0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 1247
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryClient;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lio/sentry/IScope;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/sentry/Scopes;->scope:Lio/sentry/IScope;

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 4

    .line 1095
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1098
    const-string v3, "Instance is disabled and this \'getSpan\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    const/4 v0, 0x0

    return-object v0

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 5

    .line 1168
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1171
    const-string v4, "Instance is disabled and this \'getTraceparent\' call is a no-op."

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1175
    :cond_0
    nop

    .line 1176
    invoke-virtual {p0}, Lio/sentry/Scopes;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IScopes;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object v0

    .line 1177
    .local v0, "headers":Lio/sentry/util/TracingUtils$TracingHeaders;
    if-eqz v0, :cond_1

    .line 1178
    invoke-virtual {v0}, Lio/sentry/util/TracingUtils$TracingHeaders;->getSentryTraceHeader()Lio/sentry/SentryTraceHeader;

    move-result-object v1

    return-object v1

    .line 1182
    .end local v0    # "headers":Lio/sentry/util/TracingUtils$TracingHeaders;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 5

    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "span":Lio/sentry/ITransaction;
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 1116
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1117
    const-string v4, "Instance is disabled and this \'getTransaction\' call is a no-op."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    .line 1123
    :goto_0
    return-object v0
.end method

.method public isAncestorOf(Lio/sentry/IScopes;)Z
    .locals 2
    .param p1, "otherScopes"    # Lio/sentry/IScopes;

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 100
    return v0

    .line 103
    :cond_0
    if-ne p0, p1, :cond_1

    .line 104
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_1
    invoke-interface {p1}, Lio/sentry/IScopes;->getParentScopes()Lio/sentry/IScopes;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    invoke-interface {p1}, Lio/sentry/IScopes;->getParentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->isAncestorOf(Lio/sentry/IScopes;)Z

    move-result v0

    return v0

    .line 111
    :cond_2
    return v0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 3

    .line 1133
    invoke-static {}, Lio/sentry/SentryCrashLastRunState;->getInstance()Lio/sentry/SentryCrashLastRunState;

    move-result-object v0

    .line 1135
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v2

    .line 1134
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryCrashLastRunState;->isCrashedLastRun(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1133
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryClient;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHealthy()Z
    .locals 1

    .line 784
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryClient;->isHealthy()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$close$2$io-sentry-Scopes(Lio/sentry/ISentryExecutorService;)V
    .locals 2
    .param p1, "executorService"    # Lio/sentry/ISentryExecutorService;

    .line 483
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/sentry/ISentryExecutorService;->close(J)V

    return-void
.end method

.method public logger()Lio/sentry/logger/ILoggerApi;
    .locals 1

    .line 1252
    iget-object v0, p0, Lio/sentry/Scopes;->logger:Lio/sentry/logger/ILoggerApi;

    return-object v0
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 687
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentScopes(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lio/sentry/metrics/IMetricsApi;
    .locals 1

    .line 1257
    iget-object v0, p0, Lio/sentry/Scopes;->metrics:Lio/sentry/metrics/IMetricsApi;

    return-object v0
.end method

.method public popScope()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 700
    const-string v3, "Instance is disabled and this \'popScope\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lio/sentry/Scopes;->parentScopes:Lio/sentry/Scopes;

    .line 703
    .local v0, "parent":Lio/sentry/Scopes;
    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {v0}, Lio/sentry/Scopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    .line 707
    .end local v0    # "parent":Lio/sentry/Scopes;
    :cond_1
    :goto_0
    return-void
.end method

.method public pushIsolationScope()Lio/sentry/ISentryLifecycleToken;
    .locals 4

    .line 672
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 675
    const-string v3, "Instance is disabled and this \'pushIsolationScope\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0

    .line 680
    :cond_0
    const-string v0, "pushIsolationScope"

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 681
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    return-object v1
.end method

.method public pushScope()Lio/sentry/ISentryLifecycleToken;
    .locals 4

    .line 659
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 662
    const-string v3, "Instance is disabled and this \'pushScope\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0

    .line 665
    :cond_0
    const-string v0, "pushScope"

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 666
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    return-object v1
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1304
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1306
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1307
    const-string v3, "Instance is disabled and this \'removeAttribute\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1311
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeAttribute(Ljava/lang/String;)V

    .line 1313
    :goto_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 640
    const-string v3, "Instance is disabled and this \'removeExtra\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_0
    if-nez p1, :cond_1

    .line 642
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "removeExtra called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeExtra(Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 611
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 614
    const-string v3, "Instance is disabled and this \'removeTag\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 615
    :cond_0
    if-nez p1, :cond_1

    .line 616
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "removeTag called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeTag(Ljava/lang/String;)V

    .line 620
    :goto_0
    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/FullyDisplayedReporter;->reportFullyDrawn()V

    .line 1143
    :cond_0
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 1107
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setActiveSpan(Lio/sentry/ISpan;)V

    .line 1108
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 4
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 1279
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1282
    const-string v3, "Instance is disabled and this \'setAttribute\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setAttribute(Lio/sentry/SentryAttribute;)V

    .line 1287
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1267
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1269
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1270
    const-string v3, "Instance is disabled and this \'setAttribute\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1275
    :goto_0
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 4
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 1291
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1294
    const-string v3, "Instance is disabled and this \'setAttributes\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setAttributes(Lio/sentry/SentryAttributes;)V

    .line 1300
    :goto_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 624
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 627
    const-string v3, "Instance is disabled and this \'setExtra\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 628
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "setExtra called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    :goto_1
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 571
    const-string v3, "Instance is disabled and this \'setFingerprint\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 574
    :cond_0
    if-nez p1, :cond_1

    .line 575
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 577
    const-string v3, "setFingerprint called with null parameter."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setFingerprint(Ljava/util/List;)V

    .line 581
    :goto_0
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 4
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 531
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 534
    const-string v3, "Instance is disabled and this \'setLevel\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setLevel(Lio/sentry/SentryLevel;)V

    .line 538
    :goto_0
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "span"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 1090
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/IScope;->setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 601
    const-string v3, "Instance is disabled and this \'setTag\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 602
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 603
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "setTag called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :goto_1
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 4
    .param p1, "transaction"    # Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 545
    const-string v3, "Instance is disabled and this \'setTransaction\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 548
    :cond_0
    if-eqz p1, :cond_1

    .line 549
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Transaction cannot be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :goto_0
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 4
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 557
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 560
    const-string v3, "Instance is disabled and this \'setUser\' call is a no-op."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    .line 564
    :goto_0
    return-void
.end method

.method public startProfiler()V
    .locals 4

    .line 1039
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v0

    sget-object v1, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    if-eq v0, v1, :cond_0

    .line 1041
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 1046
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/ProfileLifecycle;->name()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1043
    const-string v3, "Profiling lifecycle is %s. Profiling cannot be started manually."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    return-void

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    sget-object v1, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    .line 1051
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/sentry/IContinuousProfiler;->startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V

    goto :goto_0

    .line 1052
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1055
    const-string v3, "Continuous Profiling is not enabled. Set profilesSampleRate and profilesSampler to null to enable it."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    :cond_2
    :goto_0
    return-void
.end method

.method public startSession()V
    .locals 5

    .line 377
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 380
    const-string v3, "Instance is disabled and this \'startSession\' call is a no-op."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->startSession()Lio/sentry/Scope$SessionPair;

    move-result-object v0

    .line 384
    .local v0, "pair":Lio/sentry/Scope$SessionPair;
    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 389
    new-instance v1, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v1}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-static {v1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 391
    .local v1, "hint":Lio/sentry/Hint;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v0}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 394
    .end local v1    # "hint":Lio/sentry/Hint;
    :cond_1
    new-instance v1, Lio/sentry/hints/SessionStartHint;

    invoke-direct {v1}, Lio/sentry/hints/SessionStartHint;-><init>()V

    invoke-static {v1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 396
    .restart local v1    # "hint":Lio/sentry/Hint;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v0}, Lio/sentry/Scope$SessionPair;->getCurrent()Lio/sentry/Session;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 397
    .end local v1    # "hint":Lio/sentry/Hint;
    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Session could not be started."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    .end local v0    # "pair":Lio/sentry/Scope$SessionPair;
    :goto_0
    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 926
    invoke-direct {p0, p1, p2}, Lio/sentry/Scopes;->createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public stopProfiler()V
    .locals 4

    .line 1063
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1064
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v0

    sget-object v2, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    if-eq v0, v2, :cond_0

    .line 1065
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 1070
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/ProfileLifecycle;->name()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1067
    const-string v3, "Profiling lifecycle is %s. Profiling cannot be stopped manually."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Stopped continuous Profiling."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    sget-object v1, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    invoke-interface {v0, v1}, Lio/sentry/IContinuousProfiler;->stopProfiler(Lio/sentry/ProfileLifecycle;)V

    goto :goto_0

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 1077
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 1078
    const-string v3, "Continuous Profiling is not enabled. Set profilesSampleRate and profilesSampler to null to enable it."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    :goto_0
    return-void
.end method

.method public withIsolationScope(Lio/sentry/ScopeCallback;)V
    .locals 5
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 730
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const-string v1, "Error in the \'withIsolationScope\' callback."

    if-nez v0, :cond_0

    .line 732
    :try_start_0
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 733
    :catchall_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 735
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 736
    invoke-interface {v2, v3, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_2

    .line 740
    :cond_0
    const-string v0, "withIsolationScope"

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 741
    .local v0, "forkedScopes":Lio/sentry/IScopes;
    :try_start_1
    invoke-interface {v0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 742
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_2
    invoke-interface {v0}, Lio/sentry/IScopes;->getIsolationScope()Lio/sentry/IScope;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 743
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 747
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    goto :goto_2

    .line 741
    .restart local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "forkedScopes":Lio/sentry/IScopes;
    .end local p1    # "callback":Lio/sentry/ScopeCallback;
    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 743
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "forkedScopes":Lio/sentry/IScopes;
    .restart local p1    # "callback":Lio/sentry/ScopeCallback;
    :catchall_3
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    .line 745
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 746
    invoke-interface {v3, v4, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    .end local v0    # "forkedScopes":Lio/sentry/IScopes;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 5
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 711
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    const-string v1, "Error in the \'withScope\' callback."

    if-nez v0, :cond_0

    .line 713
    :try_start_0
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v2, v3, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_2

    .line 719
    :cond_0
    const-string v0, "withScope"

    invoke-virtual {p0, v0}, Lio/sentry/Scopes;->forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 720
    .local v0, "forkedScopes":Lio/sentry/IScopes;
    :try_start_1
    invoke-interface {v0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 721
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_2
    invoke-interface {v0}, Lio/sentry/IScopes;->getScope()Lio/sentry/IScope;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 722
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 724
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    goto :goto_2

    .line 720
    .restart local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "forkedScopes":Lio/sentry/IScopes;
    .end local p1    # "callback":Lio/sentry/ScopeCallback;
    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 722
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "forkedScopes":Lio/sentry/IScopes;
    .restart local p1    # "callback":Lio/sentry/ScopeCallback;
    :catchall_3
    move-exception v2

    .line 723
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v4, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 726
    .end local v0    # "forkedScopes":Lio/sentry/IScopes;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
