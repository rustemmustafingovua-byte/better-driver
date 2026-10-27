.class public final Lio/sentry/Sentry;
.super Ljava/lang/Object;
.source "Sentry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Sentry$OptionsConfiguration;
    }
.end annotation


# static fields
.field public static final APP_START_PROFILING_CONFIG_FILE_NAME:Ljava/lang/String; = "app_start_profiling_config"

.field private static final GLOBAL_HUB_DEFAULT_MODE:Z = false

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final classCreationTimestamp:J

.field private static volatile globalHubMode:Z

.field private static final globalScope:Lio/sentry/IScope;

.field private static final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private static volatile rootScopes:Lio/sentry/IScopes;

.field private static volatile scopesStorage:Lio/sentry/IScopesStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Lio/sentry/NoOpScopesStorage;->getInstance()Lio/sentry/NoOpScopesStorage;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    .line 59
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    .line 68
    new-instance v0, Lio/sentry/Scope;

    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    sput-object v0, Lio/sentry/Sentry;->globalScope:Lio/sentry/IScope;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    .line 81
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->UTF_8:Ljava/nio/charset/Charset;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/Sentry;->classCreationTimestamp:J

    .line 86
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/Sentry;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p0, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 960
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 961
    return-void
.end method

.method public static addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 1
    .param p0, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 951
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 952
    return-void
.end method

.method public static addBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 969
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->addBreadcrumb(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public static addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .line 980
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    return-void
.end method

.method public static addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "flag"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 1501
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1502
    return-void
.end method

.method private static applyOptionsConfiguration(Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/SentryOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 280
    .local p0, "optionsConfiguration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<TT;>;"
    .local p1, "options":Lio/sentry/SentryOptions;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lio/sentry/Sentry$OptionsConfiguration;->configure(Lio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 283
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 284
    const-string v3, "Error in the \'OptionsConfiguration.configure\' callback."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static bindClient(Lio/sentry/ISentryClient;)V
    .locals 1
    .param p0, "client"    # Lio/sentry/ISentryClient;

    .line 1165
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->bindClient(Lio/sentry/ISentryClient;)V

    .line 1166
    return-void
.end method

.method public static captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "checkIn"    # Lio/sentry/CheckIn;

    .line 1397
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "event"    # Lio/sentry/SentryEvent;

    .line 756
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 780
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "hint"    # Lio/sentry/Hint;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 795
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "event"    # Lio/sentry/SentryEvent;
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 768
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 888
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 912
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "hint"    # Lio/sentry/Hint;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 927
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IScopes;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureException(Ljava/lang/Throwable;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 900
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->captureException(Ljava/lang/Throwable;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureFeedback(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "feedback"    # Lio/sentry/protocol/Feedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p1, "hint"    # Lio/sentry/Hint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p1, "hint"    # Lio/sentry/Hint;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureMessage(Ljava/lang/String;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 805
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->captureMessage(Ljava/lang/String;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureMessage(Ljava/lang/String;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 817
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->captureMessage(Ljava/lang/String;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 829
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "callback"    # Lio/sentry/ScopeCallback;

    .line 844
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IScopes;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 1
    .param p0, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 940
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->captureUserFeedback(Lio/sentry/UserFeedback;)V

    .line 941
    return-void
.end method

.method public static clearBreadcrumbs()V
    .locals 1

    .line 1021
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->clearBreadcrumbs()V

    .line 1022
    return-void
.end method

.method public static close()V
    .locals 3

    .line 740
    sget-object v0, Lio/sentry/Sentry;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 741
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    .line 742
    .local v1, "scopes":Lio/sentry/IScopes;
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v2

    sput-object v2, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    .line 744
    invoke-static {}, Lio/sentry/Sentry;->getScopesStorage()Lio/sentry/IScopesStorage;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IScopesStorage;->close()V

    .line 745
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/sentry/IScopes;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .end local v1    # "scopes":Lio/sentry/IScopes;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 747
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 740
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static configureScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p0, "callback"    # Lio/sentry/ScopeCallback;

    .line 1146
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 1147
    return-void
.end method

.method public static configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p0, "scopeType"    # Lio/sentry/ScopeType;
    .param p1, "callback"    # Lio/sentry/ScopeCallback;

    .line 1156
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 1157
    return-void
.end method

.method public static continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 1
    .param p0, "sentryTrace"    # Ljava/lang/String;
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

    .line 1373
    .local p1, "baggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;

    move-result-object v0

    return-object v0
.end method

.method public static distribution()Lio/sentry/IDistributionApi;
    .locals 1

    .line 1418
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDistributionController()Lio/sentry/IDistributionApi;

    move-result-object v0

    return-object v0
.end method

.method public static endSession()V
    .locals 1

    .line 1188
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->endSession()V

    .line 1189
    return-void
.end method

.method public static extendAppStart()V
    .locals 1

    .line 1327
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getAppStartExtender()Lio/sentry/IAppStartExtender;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IAppStartExtender;->extendAppStart()V

    .line 1328
    return-void
.end method

.method public static feedback()Lio/sentry/IFeedbackApi;
    .locals 1

    .line 1428
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    return-object v0
.end method

.method private static finalizePreviousSession(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "scopes"    # Lio/sentry/IScopes;

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/PreviousSessionFinalizer;

    invoke-direct {v1, p0, p1}, Lio/sentry/PreviousSessionFinalizer;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to finalize previous session."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static finishExtendedAppStart()V
    .locals 1

    .line 1335
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getAppStartExtender()Lio/sentry/IAppStartExtender;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IAppStartExtender;->finishExtendedAppStart()V

    .line 1336
    return-void
.end method

.method public static flush(J)V
    .locals 1
    .param p0, "timeoutMillis"    # J

    .line 1178
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->flush(J)V

    .line 1179
    return-void
.end method

.method public static forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p0, "creator"    # Ljava/lang/String;

    .line 163
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->forkedCurrentScope(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public static forkedRootScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p0, "creator"    # Ljava/lang/String;

    .line 152
    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    return-object v0

    .line 155
    :cond_0
    sget-object v0, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public static forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 1
    .param p0, "creator"    # Ljava/lang/String;

    .line 159
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public static getBaggage()Lio/sentry/BaggageHeader;
    .locals 1

    .line 1393
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getBaggage()Lio/sentry/BaggageHeader;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentHub()Lio/sentry/IHub;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    new-instance v0, Lio/sentry/HubScopesWrapper;

    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/HubScopesWrapper;-><init>(Lio/sentry/IScopes;)V

    return-object v0
.end method

.method public static getCurrentScopes()Lio/sentry/IScopes;
    .locals 1

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Lio/sentry/Sentry;->getCurrentScopes(Z)Lio/sentry/IScopes;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentScopes(Z)Lio/sentry/IScopes;
    .locals 3
    .param p0, "ensureForked"    # Z

    .line 119
    sget-object v0, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    .line 120
    .local v0, "root":Lio/sentry/IScopes;
    invoke-static {}, Lio/sentry/Sentry;->getScopesStorage()Lio/sentry/IScopesStorage;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IScopesStorage;->get()Lio/sentry/IScopes;

    move-result-object v1

    .line 121
    .local v1, "scopes":Lio/sentry/IScopes;
    sget-boolean v2, Lio/sentry/Sentry;->globalHubMode:Z

    if-eqz v2, :cond_1

    .line 125
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/sentry/IScopes;->isNoOp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Lio/sentry/IScopes;->isAncestorOf(Lio/sentry/IScopes;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    return-object v1

    .line 128
    :cond_0
    return-object v0

    .line 130
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/sentry/IScopes;->isNoOp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    :cond_2
    if-nez p0, :cond_3

    .line 132
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v2

    return-object v2

    .line 134
    :cond_3
    const-string v2, "getCurrentScopes"

    invoke-interface {v0, v2}, Lio/sentry/IScopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v1

    .line 135
    invoke-static {}, Lio/sentry/Sentry;->getScopesStorage()Lio/sentry/IScopesStorage;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/sentry/IScopesStorage;->set(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    .line 138
    :cond_4
    return-object v1
.end method

.method public static getExtendedAppStartSpan()Lio/sentry/ISpan;
    .locals 1

    .line 1344
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getAppStartExtender()Lio/sentry/IAppStartExtender;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IAppStartExtender;->getExtendedAppStartSpan()Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalScope()Lio/sentry/IScope;
    .locals 1

    .line 182
    sget-object v0, Lio/sentry/Sentry;->globalScope:Lio/sentry/IScope;

    return-object v0
.end method

.method public static getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 1069
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method private static getScopesStorage()Lio/sentry/IScopesStorage;
    .locals 1

    .line 142
    sget-object v0, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    return-object v0
.end method

.method public static getSpan()Lio/sentry/ISpan;
    .locals 1

    .line 1282
    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0

    .line 1285
    :cond_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public static getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 1383
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getTraceparent()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method private static handleAppStartProfilingConfig(Lio/sentry/SentryOptions;Lio/sentry/ISentryExecutorService;)V
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "sentryExecutorService"    # Lio/sentry/ISentryExecutorService;

    .line 471
    :try_start_0
    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/Sentry$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 529
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 530
    const-string v3, "Failed to call the executor. App start profiling config will not be changed. Did you call Sentry.close()?"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static init()V
    .locals 2

    .line 196
    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/Sentry$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/sentry/Sentry;->init(Lio/sentry/Sentry$OptionsConfiguration;Z)V

    .line 197
    return-void
.end method

.method public static init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/OptionsContainer<",
            "TT;>;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 226
    .local p0, "clazz":Lio/sentry/OptionsContainer;, "Lio/sentry/OptionsContainer<TT;>;"
    .local p1, "optionsConfiguration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/sentry/Sentry;->init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V

    .line 227
    return-void
.end method

.method public static init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V
    .locals 1
    .param p2, "globalHubMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/OptionsContainer<",
            "TT;>;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 249
    .local p0, "clazz":Lio/sentry/OptionsContainer;, "Lio/sentry/OptionsContainer<TT;>;"
    .local p1, "optionsConfiguration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<TT;>;"
    invoke-virtual {p0}, Lio/sentry/OptionsContainer;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    .line 250
    .local v0, "options":Lio/sentry/SentryOptions;, "TT;"
    invoke-static {p1, v0}, Lio/sentry/Sentry;->applyOptionsConfiguration(Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/SentryOptions;)V

    .line 251
    invoke-static {v0, p2}, Lio/sentry/Sentry;->init(Lio/sentry/SentryOptions;Z)V

    .line 252
    return-void
.end method

.method public static init(Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/SentryOptions;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p0, "optionsConfiguration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/SentryOptions;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/Sentry;->init(Lio/sentry/Sentry$OptionsConfiguration;Z)V

    .line 261
    return-void
.end method

.method public static init(Lio/sentry/Sentry$OptionsConfiguration;Z)V
    .locals 1
    .param p1, "globalHubMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/SentryOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 272
    .local p0, "optionsConfiguration":Lio/sentry/Sentry$OptionsConfiguration;, "Lio/sentry/Sentry$OptionsConfiguration<Lio/sentry/SentryOptions;>;"
    new-instance v0, Lio/sentry/SentryOptions;

    invoke-direct {v0}, Lio/sentry/SentryOptions;-><init>()V

    .line 273
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-static {p0, v0}, Lio/sentry/Sentry;->applyOptionsConfiguration(Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/SentryOptions;)V

    .line 274
    invoke-static {v0, p1}, Lio/sentry/Sentry;->init(Lio/sentry/SentryOptions;Z)V

    .line 275
    return-void
.end method

.method public static init(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 295
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/Sentry;->init(Lio/sentry/SentryOptions;Z)V

    .line 296
    return-void
.end method

.method private static init(Lio/sentry/SentryOptions;Z)V
    .locals 14
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "globalHubMode"    # Z

    .line 310
    sget-object v0, Lio/sentry/Sentry;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 311
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "io.sentry.android.core.SentryAndroidOptions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    .line 312
    :try_start_1
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You are running Android. Please, use SentryAndroid.init. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .end local p1    # "globalHubMode":Z
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    .restart local p1    # "globalHubMode":Z
    :catchall_0
    move-exception v0

    move-object v9, p0

    move-object p0, v0

    goto/16 :goto_7

    .line 318
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {p0}, Lio/sentry/Sentry;->preInitConfigurations(Lio/sentry/SentryOptions;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v0, :cond_3

    .line 426
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 319
    :cond_2
    return-void

    .line 322
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isGlobalHubMode()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v2, v0

    .line 324
    .local v2, "globalHubModeFromOptions":Ljava/lang/Boolean;
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    move v3, v0

    .line 325
    .local v3, "globalHubModeToUse":Z
    nop

    .line 326
    :try_start_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "GlobalHubMode: \'%s\'"

    .line 327
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    sput-boolean v3, Lio/sentry/Sentry;->globalHubMode:Z

    .line 329
    invoke-static {p0}, Lio/sentry/Sentry;->initFatalLogger(Lio/sentry/SentryOptions;)V

    .line 330
    sget-object v0, Lio/sentry/Sentry;->globalScope:Lio/sentry/IScope;

    .line 331
    invoke-interface {v0}, Lio/sentry/IScope;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-static {}, Lio/sentry/Sentry;->isEnabled()Z

    move-result v4

    invoke-static {v0, p0, v4}, Lio/sentry/util/InitUtil;->shouldInit(Lio/sentry/SentryOptions;Lio/sentry/SentryOptions;Z)Z

    move-result v0

    move v4, v0

    .line 332
    .local v4, "shouldInit":Z
    const/4 v0, 0x0

    if-eqz v4, :cond_9

    .line 333
    invoke-static {}, Lio/sentry/Sentry;->isEnabled()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_5

    .line 334
    nop

    .line 335
    :try_start_6
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "Sentry has been already initialized. Previous configuration will be overwritten."

    new-array v0, v0, [Ljava/lang/Object;

    .line 336
    invoke-interface {v5, v6, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->activate()V

    .line 343
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    move-object v5, v0

    .line 344
    .local v5, "scopes":Lio/sentry/IScopes;
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Lio/sentry/IScopes;->close(Z)V

    .line 346
    sget-object v0, Lio/sentry/Sentry;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0, p0}, Lio/sentry/IScope;->replaceOptions(Lio/sentry/SentryOptions;)V

    .line 348
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    move-object v6, v0

    .line 349
    .local v6, "rootScope":Lio/sentry/IScope;
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    move-object v7, v0

    .line 350
    .local v7, "rootIsolationScope":Lio/sentry/IScope;
    new-instance v0, Lio/sentry/Scopes;

    sget-object v8, Lio/sentry/Sentry;->globalScope:Lio/sentry/IScope;

    const-string v9, "Sentry.init"

    invoke-direct {v0, v6, v7, v8, v9}, Lio/sentry/Scopes;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;Ljava/lang/String;)V

    sput-object v0, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    .line 352
    invoke-static {p0}, Lio/sentry/Sentry;->initLogger(Lio/sentry/SentryOptions;)V

    .line 353
    invoke-static {p0}, Lio/sentry/Sentry;->initForOpenTelemetryMaybe(Lio/sentry/SentryOptions;)V

    .line 354
    invoke-static {}, Lio/sentry/Sentry;->getScopesStorage()Lio/sentry/IScopesStorage;

    move-result-object v0

    sget-object v8, Lio/sentry/Sentry;->rootScopes:Lio/sentry/IScopes;

    invoke-interface {v0, v8}, Lio/sentry/IScopesStorage;->set(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    .line 355
    invoke-static {p0}, Lio/sentry/Sentry;->initConfigurations(Lio/sentry/SentryOptions;)V

    .line 357
    sget-object v0, Lio/sentry/Sentry;->globalScope:Lio/sentry/IScope;

    new-instance v8, Lio/sentry/SentryClient;

    invoke-direct {v8, p0}, Lio/sentry/SentryClient;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v0, v8}, Lio/sentry/IScope;->bindClient(Lio/sentry/ISentryClient;)V

    .line 361
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryExecutorService;->isClosed()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_6

    .line 362
    :try_start_8
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0, p0}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setExecutorService(Lio/sentry/ISentryExecutorService;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 365
    :cond_6
    :try_start_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTimerExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryExecutorService;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 366
    new-instance v8, Lio/sentry/SentryExecutorService;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v10, 0x1

    const-wide/16 v11, 0x1e

    move-object v9, p0

    .end local p0    # "options":Lio/sentry/SentryOptions;
    .local v9, "options":Lio/sentry/SentryOptions;
    :try_start_a
    invoke-direct/range {v8 .. v13}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;ZJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v9, v8}, Lio/sentry/SentryOptions;->setTimerExecutorService(Lio/sentry/ISentryExecutorService;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .line 365
    .end local v9    # "options":Lio/sentry/SentryOptions;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    :cond_7
    move-object v9, p0

    .line 373
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .restart local v9    # "options":Lio/sentry/SentryOptions;
    :goto_2
    :try_start_b
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p0

    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda4;

    invoke-direct {v0, v9}, Lio/sentry/Sentry$$ExternalSyntheticLambda4;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 381
    goto :goto_3

    .line 374
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 375
    .local p0, "e":Ljava/util/concurrent/RejectedExecutionException;
    nop

    .line 376
    :try_start_c
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v10, "Failed to call the executor. Lazy fields will not be loaded. Did you call Sentry.close()?"

    .line 377
    invoke-interface {v0, v8, v10, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    .end local p0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_3
    invoke-static {v9}, Lio/sentry/Sentry;->movePreviousSession(Lio/sentry/SentryOptions;)V

    .line 388
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Integration;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v8, v0

    .line 390
    .local v8, "integration":Lio/sentry/Integration;
    :try_start_d
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-interface {v8, v0, v9}, Lio/sentry/Integration;->register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 398
    goto :goto_5

    .line 391
    :catchall_1
    move-exception v0

    .line 392
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 393
    :try_start_e
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v10

    sget-object v11, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to register the integration "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 396
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 394
    invoke-interface {v10, v11, v12, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v8    # "integration":Lio/sentry/Integration;
    :goto_5
    goto :goto_4

    .line 401
    :cond_8
    invoke-static {v9}, Lio/sentry/Sentry;->notifyOptionsObservers(Lio/sentry/SentryOptions;)V

    .line 403
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object p0

    invoke-static {v9, p0}, Lio/sentry/Sentry;->finalizePreviousSession(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    .line 405
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p0

    invoke-static {v9, p0}, Lio/sentry/Sentry;->handleAppStartProfilingConfig(Lio/sentry/SentryOptions;Lio/sentry/ISentryExecutorService;)V

    .line 407
    nop

    .line 408
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Using openTelemetryMode %s"

    .line 409
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p0, v0, v8, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    nop

    .line 411
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Using span factory %s"

    .line 415
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getSpanFactory()Lio/sentry/ISpanFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 412
    invoke-interface {p0, v0, v8, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    nop

    .line 417
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Using scopes storage %s"

    sget-object v10, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    .line 418
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p0, v0, v8, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    .end local v5    # "scopes":Lio/sentry/IScopes;
    .end local v6    # "rootScope":Lio/sentry/IScope;
    .end local v7    # "rootIsolationScope":Lio/sentry/IScope;
    goto :goto_6

    .line 420
    .end local v9    # "options":Lio/sentry/SentryOptions;
    .local p0, "options":Lio/sentry/SentryOptions;
    :cond_9
    move-object v9, p0

    .line 421
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .restart local v9    # "options":Lio/sentry/SentryOptions;
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "This init call has been ignored due to priority being too low."

    new-array v0, v0, [Ljava/lang/Object;

    .line 422
    invoke-interface {p0, v5, v6, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 426
    .end local v2    # "globalHubModeFromOptions":Ljava/lang/Boolean;
    .end local v3    # "globalHubModeToUse":Z
    .end local v4    # "shouldInit":Z
    :goto_6
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 427
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_a
    return-void

    .line 310
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_7

    .end local v9    # "options":Lio/sentry/SentryOptions;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    :catchall_3
    move-exception v0

    move-object v9, p0

    move-object p0, v0

    .end local p0    # "options":Lio/sentry/SentryOptions;
    .restart local v9    # "options":Lio/sentry/SentryOptions;
    :goto_7
    if-eqz v1, :cond_b

    :try_start_f
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    throw p0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1
    .param p0, "dsn"    # Ljava/lang/String;

    .line 205
    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/sentry/Sentry$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->init(Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 206
    return-void
.end method

.method private static initConfigurations(Lio/sentry/SentryOptions;)V
    .locals 10
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 631
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 632
    .local v0, "logger":Lio/sentry/ILogger;
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Initializing SDK with DSN: \'%s\'"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 640
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "No outbox dir path is defined in options."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "cacheDirPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v3

    .line 647
    .local v3, "envelopeCache":Lio/sentry/cache/IEnvelopeCache;
    instance-of v4, v3, Lio/sentry/transport/NoOpEnvelopeCache;

    if-eqz v4, :cond_1

    .line 648
    invoke-static {p0}, Lio/sentry/cache/EnvelopeCache;->create(Lio/sentry/SentryOptions;)Lio/sentry/cache/IEnvelopeCache;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/sentry/SentryOptions;->setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V

    .line 652
    .end local v3    # "envelopeCache":Lio/sentry/cache/IEnvelopeCache;
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "profilingTracesDirPath":Ljava/lang/String;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    .line 656
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v4, "profilingTracesDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 660
    nop

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v5

    new-instance v6, Lio/sentry/Sentry$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4}, Lio/sentry/Sentry$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    .line 662
    invoke-interface {v5, v6}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    goto :goto_0

    .line 676
    :catch_0
    move-exception v5

    .line 677
    .local v5, "e":Ljava/util/concurrent/RejectedExecutionException;
    nop

    .line 678
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 679
    const-string v8, "Failed to call the executor. Old profiles will not be deleted. Did you call Sentry.close()?"

    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .end local v4    # "profilingTracesDir":Ljava/io/File;
    .end local v5    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    move-result-object v4

    .line 687
    .local v4, "modulesLoader":Lio/sentry/internal/modules/IModulesLoader;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendModules()Z

    move-result v5

    if-nez v5, :cond_4

    .line 688
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    goto :goto_1

    .line 689
    :cond_4
    instance-of v5, v4, Lio/sentry/internal/modules/NoOpModulesLoader;

    if-eqz v5, :cond_5

    .line 690
    new-instance v5, Lio/sentry/internal/modules/CompositeModulesLoader;

    const/4 v6, 0x2

    new-array v6, v6, [Lio/sentry/internal/modules/IModulesLoader;

    new-instance v7, Lio/sentry/internal/modules/ManifestModulesLoader;

    .line 693
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/sentry/internal/modules/ManifestModulesLoader;-><init>(Lio/sentry/ILogger;)V

    aput-object v7, v6, v2

    new-instance v2, Lio/sentry/internal/modules/ResourcesModulesLoader;

    .line 694
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    invoke-direct {v2, v7}, Lio/sentry/internal/modules/ResourcesModulesLoader;-><init>(Lio/sentry/ILogger;)V

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 692
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 695
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lio/sentry/internal/modules/CompositeModulesLoader;-><init>(Ljava/util/List;Lio/sentry/ILogger;)V

    .line 690
    invoke-virtual {p0, v5}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 698
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    move-result-object v2

    instance-of v2, v2, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    if-eqz v2, :cond_6

    .line 699
    new-instance v2, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-direct {v2, v5}, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;-><init>(Lio/sentry/ILogger;)V

    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V

    .line 701
    :cond_6
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/internal/debugmeta/IDebugMetaLoader;->loadDebugMeta()Ljava/util/List;

    move-result-object v2

    .line 702
    .local v2, "propertiesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-static {p0, v2}, Lio/sentry/util/DebugMetaPropertiesApplier;->apply(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 704
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v5

    .line 706
    .local v5, "threadChecker":Lio/sentry/util/thread/IThreadChecker;
    instance-of v6, v5, Lio/sentry/util/thread/NoOpThreadChecker;

    if-eqz v6, :cond_7

    .line 707
    invoke-static {}, Lio/sentry/util/thread/ThreadChecker;->getInstance()Lio/sentry/util/thread/ThreadChecker;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/sentry/SentryOptions;->setThreadChecker(Lio/sentry/util/thread/IThreadChecker;)V

    .line 710
    :cond_7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getPerformanceCollectors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 711
    new-instance v6, Lio/sentry/JavaMemoryCollector;

    invoke-direct {v6}, Lio/sentry/JavaMemoryCollector;-><init>()V

    invoke-virtual {p0, v6}, Lio/sentry/SentryOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 714
    :cond_8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableBackpressureHandling()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 715
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object v6

    instance-of v6, v6, Lio/sentry/backpressure/NoOpBackpressureMonitor;

    if-eqz v6, :cond_9

    .line 716
    new-instance v6, Lio/sentry/backpressure/BackpressureMonitor;

    .line 717
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lio/sentry/backpressure/BackpressureMonitor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    .line 716
    invoke-virtual {p0, v6}, Lio/sentry/SentryOptions;->setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V

    .line 719
    :cond_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/backpressure/IBackpressureMonitor;->start()V

    .line 722
    :cond_a
    invoke-static {p0}, Lio/sentry/Sentry;->initJvmContinuousProfiling(Lio/sentry/SentryOptions;)V

    .line 724
    nop

    .line 725
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 729
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 730
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 726
    const-string v9, "Continuous profiler is enabled %s mode: %s"

    invoke-interface {v6, v7, v9, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    return-void
.end method

.method private static initFatalLogger(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 449
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getFatalLogger()Lio/sentry/ILogger;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpLogger;

    if-eqz v0, :cond_0

    .line 450
    new-instance v0, Lio/sentry/SystemOutLogger;

    invoke-direct {v0}, Lio/sentry/SystemOutLogger;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setFatalLogger(Lio/sentry/ILogger;)V

    .line 452
    :cond_0
    return-void
.end method

.method private static initForOpenTelemetryMaybe(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 430
    new-instance v0, Lio/sentry/util/LoadClass;

    invoke-direct {v0}, Lio/sentry/util/LoadClass;-><init>()V

    invoke-static {p0, v0}, Lio/sentry/opentelemetry/OpenTelemetryUtil;->updateOpenTelemetryModeIfAuto(Lio/sentry/SentryOptions;Lio/sentry/util/LoadClass;)V

    .line 431
    sget-object v0, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 432
    new-instance v0, Lio/sentry/DefaultSpanFactory;

    invoke-direct {v0}, Lio/sentry/DefaultSpanFactory;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSpanFactory(Lio/sentry/ISpanFactory;)V

    .line 438
    :cond_0
    invoke-static {p0}, Lio/sentry/Sentry;->initScopesStorage(Lio/sentry/SentryOptions;)V

    .line 439
    invoke-static {p0}, Lio/sentry/opentelemetry/OpenTelemetryUtil;->applyIgnoredSpanOrigins(Lio/sentry/SentryOptions;)V

    .line 440
    return-void
.end method

.method private static initJvmContinuousProfiling(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 734
    invoke-static {p0}, Lio/sentry/util/InitUtil;->initializeProfiler(Lio/sentry/SentryOptions;)Lio/sentry/IContinuousProfiler;

    .line 735
    invoke-static {p0}, Lio/sentry/util/InitUtil;->initializeProfileConverter(Lio/sentry/SentryOptions;)Lio/sentry/IProfileConverter;

    .line 736
    return-void
.end method

.method private static initLogger(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 443
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpLogger;

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Lio/sentry/SystemOutLogger;

    invoke-direct {v0}, Lio/sentry/SystemOutLogger;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setLogger(Lio/sentry/ILogger;)V

    .line 446
    :cond_0
    return-void
.end method

.method private static initScopesStorage(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 455
    invoke-static {}, Lio/sentry/Sentry;->getScopesStorage()Lio/sentry/IScopesStorage;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopesStorage;->close()V

    .line 456
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopesStorageFactory()Lio/sentry/IScopesStorageFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopesStorageFactory()Lio/sentry/IScopesStorageFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopesStorageFactory;->create(Lio/sentry/SentryOptions;)Lio/sentry/IScopesStorage;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    .line 458
    sget-object v0, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    invoke-interface {v0}, Lio/sentry/IScopesStorage;->init()V

    goto :goto_0

    .line 459
    :cond_0
    sget-object v0, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 460
    new-instance v0, Lio/sentry/DefaultScopesStorage;

    invoke-direct {v0}, Lio/sentry/DefaultScopesStorage;-><init>()V

    sput-object v0, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    goto :goto_0

    .line 462
    :cond_1
    new-instance v0, Lio/sentry/util/LoadClass;

    invoke-direct {v0}, Lio/sentry/util/LoadClass;-><init>()V

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/ScopesStorageFactory;->create(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->scopesStorage:Lio/sentry/IScopesStorage;

    .line 464
    :goto_0
    return-void
.end method

.method public static isCrashedLastRun()Ljava/lang/Boolean;
    .locals 1

    .line 1300
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->isCrashedLastRun()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 191
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isHealthy()Z
    .locals 1

    .line 1169
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->isHealthy()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleAppStartProfilingConfig$3(Lio/sentry/SentryOptions;)V
    .locals 9
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 473
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPathWithoutDsn()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "cacheDirPath":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 475
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "app_start_profiling_config"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v2, "appStartProfilingConfigFile":Ljava/io/File;
    :try_start_0
    invoke-static {v2}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 481
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    move-result v3

    if-nez v3, :cond_0

    .line 482
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 487
    nop

    .line 488
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "Tracing is disabled and app start profiling will not start."

    new-array v4, v4, [Ljava/lang/Object;

    .line 489
    invoke-interface {v3, v5, v6, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    return-void

    .line 496
    :cond_1
    invoke-static {v1}, Lio/sentry/util/FileUtils;->createDirectory(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 497
    nop

    .line 498
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to create cache dir %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    .line 499
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    return-void

    .line 502
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 507
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    invoke-static {p0}, Lio/sentry/Sentry;->sampleAppStartProfiling(Lio/sentry/SentryOptions;)Lio/sentry/TracesSamplingDecision;

    move-result-object v3

    goto :goto_0

    .line 509
    :cond_3
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    nop

    .line 510
    .local v3, "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    new-instance v4, Lio/sentry/SentryAppStartProfilingOptions;

    invoke-direct {v4, p0, v3}, Lio/sentry/SentryAppStartProfilingOptions;-><init>(Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V

    .line 512
    .local v4, "appStartProfilingOptions":Lio/sentry/SentryAppStartProfilingOptions;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 514
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    sget-object v8, Lio/sentry/Sentry;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 516
    .local v6, "writer":Ljava/io/Writer;
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    :try_start_3
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v6    # "writer":Ljava/io/Writer;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 512
    .restart local v6    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_6
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDirPath":Ljava/lang/String;
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "appStartProfilingConfigFile":Ljava/io/File;
    .end local v3    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v4    # "appStartProfilingOptions":Lio/sentry/SentryAppStartProfilingOptions;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    :goto_1
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v0    # "cacheDirPath":Ljava/lang/String;
    .restart local v1    # "cacheDir":Ljava/io/File;
    .restart local v2    # "appStartProfilingConfigFile":Ljava/io/File;
    .restart local v3    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .restart local v4    # "appStartProfilingOptions":Lio/sentry/SentryAppStartProfilingOptions;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v7

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDirPath":Ljava/lang/String;
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "appStartProfilingConfigFile":Ljava/io/File;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    :goto_2
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 524
    .end local v3    # "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    .end local v4    # "appStartProfilingOptions":Lio/sentry/SentryAppStartProfilingOptions;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "cacheDirPath":Ljava/lang/String;
    .restart local v1    # "cacheDir":Ljava/io/File;
    .restart local v2    # "appStartProfilingConfigFile":Ljava/io/File;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    :cond_4
    :goto_3
    goto :goto_4

    .line 519
    :catchall_4
    move-exception v3

    .line 520
    .local v3, "e":Ljava/lang/Throwable;
    nop

    .line 521
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 522
    const-string v6, "Unable to create app start profiling config file. "

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "appStartProfilingConfigFile":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    return-void
.end method

.method static synthetic lambda$init$0(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableExternalConfiguration(Z)V

    return-void
.end method

.method static synthetic lambda$init$1(Ljava/lang/String;Lio/sentry/SentryOptions;)V
    .locals 0
    .param p0, "dsn"    # Ljava/lang/String;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 205
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$init$2(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 373
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->loadLazyFields()V

    return-void
.end method

.method static synthetic lambda$initConfigurations$5(Ljava/io/File;)V
    .locals 11
    .param p0, "profilingTracesDir"    # Ljava/io/File;

    .line 664
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 665
    .local v0, "oldTracesDirContent":[Ljava/io/File;
    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 671
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-wide v6, Lio/sentry/Sentry;->classCreationTimestamp:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 672
    invoke-static {v3}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 668
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    :cond_2
    return-void
.end method

.method static synthetic lambda$notifyOptionsObservers$4(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 581
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOptionsObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IOptionsObserver;

    .line 582
    .local v1, "observer":Lio/sentry/IOptionsObserver;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setRelease(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setProguardUuid(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 585
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setDist(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setEnvironment(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setTags(Ljava/util/Map;)V

    .line 588
    nop

    .line 589
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v2

    .line 588
    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setReplayErrorSampleRate(Ljava/lang/Double;)V

    .line 590
    .end local v1    # "observer":Lio/sentry/IOptionsObserver;
    goto :goto_0

    .line 596
    :cond_0
    nop

    .line 597
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    move-result-object v0

    .line 598
    .local v0, "scopeCache":Lio/sentry/cache/PersistingScopeObserver;
    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {v0}, Lio/sentry/cache/PersistingScopeObserver;->resetCache()V

    .line 601
    :cond_1
    return-void
.end method

.method public static logger()Lio/sentry/logger/ILoggerApi;
    .locals 1

    .line 1402
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->logger()Lio/sentry/logger/ILoggerApi;

    move-result-object v0

    return-object v0
.end method

.method public static metrics()Lio/sentry/metrics/IMetricsApi;
    .locals 1

    .line 1423
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->metrics()Lio/sentry/metrics/IMetricsApi;

    move-result-object v0

    return-object v0
.end method

.method private static movePreviousSession(Lio/sentry/SentryOptions;)V
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 551
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/MovePreviousSession;

    invoke-direct {v1, p0}, Lio/sentry/MovePreviousSession;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to move previous session."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static notifyOptionsObservers(Lio/sentry/SentryOptions;)V
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 576
    nop

    .line 577
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/Sentry$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/sentry/Sentry$$ExternalSyntheticLambda3;-><init>(Lio/sentry/SentryOptions;)V

    .line 578
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to notify options observers."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static popScope()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1110
    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-nez v0, :cond_0

    .line 1111
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->popScope()V

    .line 1113
    :cond_0
    return-void
.end method

.method private static preInitConfigurations(Lio/sentry/SentryOptions;)Z
    .locals 3
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 608
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableExternalConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-static {}, Lio/sentry/config/PropertiesProviderFactory;->create()Lio/sentry/config/PropertiesProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/ExternalOptions;->from(Lio/sentry/config/PropertiesProvider;Lio/sentry/ILogger;)Lio/sentry/ExternalOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->merge(Lio/sentry/ExternalOptions;)V

    .line 612
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "dsn":Ljava/lang/String;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 617
    :cond_1
    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 625
    const/4 v1, 0x1

    return v1

    .line 618
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DSN is required. Use empty string or set enabled to false in SentryOptions to disable SDK."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_3
    :goto_0
    invoke-static {}, Lio/sentry/Sentry;->close()V

    .line 616
    const/4 v1, 0x0

    return v1
.end method

.method public static pushIsolationScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 1095
    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-nez v0, :cond_0

    .line 1096
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->pushIsolationScope()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0

    .line 1098
    :cond_0
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public static pushScope()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 1081
    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-nez v0, :cond_0

    .line 1082
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->pushScope()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0

    .line 1084
    :cond_0
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public static removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 1497
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->removeAttribute(Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method public static removeExtra(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 1060
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->removeExtra(Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method public static removeTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 1040
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->removeTag(Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method public static replay()Lio/sentry/IReplayApi;
    .locals 1

    .line 1407
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v0

    return-object v0
.end method

.method public static reportFullyDisplayed()V
    .locals 1

    .line 1312
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->reportFullyDisplayed()V

    .line 1313
    return-void
.end method

.method private static sampleAppStartProfiling(Lio/sentry/SentryOptions;)Lio/sentry/TracesSamplingDecision;
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 539
    new-instance v0, Lio/sentry/TransactionContext;

    const-string v1, "app.launch"

    const-string v2, "profile"

    invoke-direct {v0, v1, v2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v0, "appStartTransactionContext":Lio/sentry/TransactionContext;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/sentry/TransactionContext;->setForNextAppStart(Z)V

    .line 541
    new-instance v1, Lio/sentry/SamplingContext;

    .line 543
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;Ljava/lang/Double;Ljava/util/Map;)V

    .line 544
    .local v1, "appStartSamplingContext":Lio/sentry/SamplingContext;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/TracesSampler;->sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v2

    return-object v2
.end method

.method public static setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 1
    .param p0, "attribute"    # Lio/sentry/SentryAttribute;

    .line 1479
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->setAttribute(Lio/sentry/SentryAttribute;)V

    .line 1480
    return-void
.end method

.method public static setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1470
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1471
    return-void
.end method

.method public static setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 1
    .param p0, "attributes"    # Lio/sentry/SentryAttributes;

    .line 1488
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->setAttributes(Lio/sentry/SentryAttributes;)V

    .line 1489
    return-void
.end method

.method public static setCurrentHub(Lio/sentry/IHub;)Lio/sentry/ISentryLifecycleToken;
    .locals 1
    .param p0, "hub"    # Lio/sentry/IHub;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentScopes(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentScopes(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;
    .locals 1
    .param p0, "scopes"    # Lio/sentry/IScopes;

    .line 178
    invoke-static {}, Lio/sentry/Sentry;->getScopesStorage()Lio/sentry/IScopesStorage;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopesStorage;->set(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public static setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1051
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public static setFingerprint(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1016
    .local p0, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->setFingerprint(Ljava/util/List;)V

    .line 1017
    return-void
.end method

.method public static setLevel(Lio/sentry/SentryLevel;)V
    .locals 1
    .param p0, "level"    # Lio/sentry/SentryLevel;

    .line 989
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->setLevel(Lio/sentry/SentryLevel;)V

    .line 990
    return-void
.end method

.method public static setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1031
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public static setTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "transaction"    # Ljava/lang/String;

    .line 998
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->setTransaction(Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method public static setUser(Lio/sentry/protocol/User;)V
    .locals 1
    .param p0, "user"    # Lio/sentry/protocol/User;

    .line 1007
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->setUser(Lio/sentry/protocol/User;)V

    .line 1008
    return-void
.end method

.method public static showUserFeedbackDialog()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1437
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IFeedbackApi;->show()V

    .line 1438
    return-void
.end method

.method public static showUserFeedbackDialog(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 1
    .param p0, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1448
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IFeedbackApi;->show(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    .line 1449
    return-void
.end method

.method public static showUserFeedbackDialog(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 1
    .param p0, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p1, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1460
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IFeedbackApi;->show(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    .line 1461
    return-void
.end method

.method public static startProfiler()V
    .locals 1

    .line 1265
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->startProfiler()V

    .line 1266
    return-void
.end method

.method public static startSession()V
    .locals 1

    .line 1183
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->startSession()V

    .line 1184
    return-void
.end method

.method public static startTransaction(Lio/sentry/TransactionContext;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "transactionContexts"    # Lio/sentry/TransactionContext;

    .line 1246
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public static startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p1, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 1259
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;

    .line 1200
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IScopes;->startTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 1215
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IScopes;->startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "transactionOptions"    # Lio/sentry/TransactionOptions;

    .line 1233
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0, p1, p3}, Lio/sentry/IScopes;->startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    .line 1234
    .local v0, "transaction":Lio/sentry/ITransaction;
    invoke-interface {v0, p2}, Lio/sentry/ITransaction;->setDescription(Ljava/lang/String;)V

    .line 1235
    return-object v0
.end method

.method public static stopProfiler()V
    .locals 1

    .line 1271
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->stopProfiler()V

    .line 1272
    return-void
.end method

.method public static withIsolationScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p0, "callback"    # Lio/sentry/ScopeCallback;

    .line 1137
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->withIsolationScope(Lio/sentry/ScopeCallback;)V

    .line 1138
    return-void
.end method

.method public static withScope(Lio/sentry/ScopeCallback;)V
    .locals 1
    .param p0, "callback"    # Lio/sentry/ScopeCallback;

    .line 1124
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IScopes;->withScope(Lio/sentry/ScopeCallback;)V

    .line 1125
    return-void
.end method
