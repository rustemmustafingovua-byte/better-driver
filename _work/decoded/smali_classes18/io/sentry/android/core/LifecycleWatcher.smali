.class final Lio/sentry/android/core/LifecycleWatcher;
.super Ljava/lang/Object;
.source "LifecycleWatcher.java"

# interfaces
.implements Lio/sentry/android/core/AppState$AppStateListener;


# instance fields
.field private final currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final enableAppLifecycleBreadcrumbs:Z

.field private final enableSessionTracking:Z

.field private endSessionFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final endSessionLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

.field private final scopes:Lio/sentry/IScopes;

.field private final sessionIntervalMillis:J


# direct methods
.method constructor <init>(Lio/sentry/IScopes;JZZ)V
    .locals 7
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "sessionIntervalMillis"    # J
    .param p4, "enableSessionTracking"    # Z
    .param p5, "enableAppLifecycleBreadcrumbs"    # Z

    .line 36
    nop

    .line 41
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v6

    .line 36
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .end local p1    # "scopes":Lio/sentry/IScopes;
    .end local p2    # "sessionIntervalMillis":J
    .end local p4    # "enableSessionTracking":Z
    .end local p5    # "enableAppLifecycleBreadcrumbs":Z
    .local v1, "scopes":Lio/sentry/IScopes;
    .local v2, "sessionIntervalMillis":J
    .local v4, "enableSessionTracking":Z
    .local v5, "enableAppLifecycleBreadcrumbs":Z
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/LifecycleWatcher;-><init>(Lio/sentry/IScopes;JZZLio/sentry/transport/ICurrentDateProvider;)V

    .line 42
    return-void
.end method

.method constructor <init>(Lio/sentry/IScopes;JZZLio/sentry/transport/ICurrentDateProvider;)V
    .locals 3
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "sessionIntervalMillis"    # J
    .param p4, "enableSessionTracking"    # Z
    .param p5, "enableAppLifecycleBreadcrumbs"    # Z
    .param p6, "currentDateProvider"    # Lio/sentry/transport/ICurrentDateProvider;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 50
    iput-wide p2, p0, Lio/sentry/android/core/LifecycleWatcher;->sessionIntervalMillis:J

    .line 51
    iput-boolean p4, p0, Lio/sentry/android/core/LifecycleWatcher;->enableSessionTracking:Z

    .line 52
    iput-boolean p5, p0, Lio/sentry/android/core/LifecycleWatcher;->enableAppLifecycleBreadcrumbs:Z

    .line 53
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    .line 54
    iput-object p6, p0, Lio/sentry/android/core/LifecycleWatcher;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 55
    return-void
.end method

.method private addAppBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .line 144
    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->enableAppLifecycleBreadcrumbs:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 146
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 147
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v1, "app.lifecycle"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 149
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 150
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1, v0}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 152
    .end local v0    # "breadcrumb":Lio/sentry/Breadcrumb;
    :cond_0
    return-void
.end method

.method private cancelTask()V
    .locals 3

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 136
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 141
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 135
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

.method private scheduleEndSession()V
    .locals 6

    .line 105
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 106
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->cancelTask()V

    .line 107
    new-instance v1, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/LifecycleWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    .local v1, "endSession":Ljava/lang/Runnable;
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    .line 119
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getTimerExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v2

    iget-wide v3, p0, Lio/sentry/android/core/LifecycleWatcher;->sessionIntervalMillis:J

    .line 121
    invoke-interface {v2, v1, v3, v4}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionFuture:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    .line 124
    invoke-interface {v3}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to schedule end of session. Ending it now."

    .line 126
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    .end local v1    # "endSession":Ljava/lang/Runnable;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 132
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 105
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method private startSession()V
    .locals 6

    .line 64
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->cancelTask()V

    .line 66
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 68
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    new-instance v3, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/LifecycleWatcher;)V

    invoke-interface {v2, v3}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 78
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 79
    .local v2, "lastUpdatedSession":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lio/sentry/android/core/LifecycleWatcher;->sessionIntervalMillis:J

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 82
    .local v4, "startNewSession":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 83
    iget-boolean v5, p0, Lio/sentry/android/core/LifecycleWatcher;->enableSessionTracking:Z

    if-eqz v5, :cond_2

    .line 84
    iget-object v5, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v5}, Lio/sentry/IScopes;->startSession()V

    .line 87
    :cond_2
    iget-object v5, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v5}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v5

    invoke-interface {v5, v4}, Lio/sentry/ReplayController;->onAppForegrounded(Z)V

    .line 88
    iget-object v5, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 89
    return-void
.end method


# virtual methods
.method getEndSessionFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->endSessionFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method synthetic lambda$scheduleEndSession$1$io-sentry-android-core-LifecycleWatcher()V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->enableSessionTracking:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->endSession()V

    .line 112
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ReplayController;->onAppSessionEnded()V

    .line 113
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/sentry/IContinuousProfiler;->close(Z)V

    .line 114
    return-void
.end method

.method synthetic lambda$startSession$0$io-sentry-android-core-LifecycleWatcher(Lio/sentry/IScope;)V
    .locals 4
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 70
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    invoke-interface {p1}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object v0

    .line 72
    .local v0, "currentSession":Lio/sentry/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 76
    .end local v0    # "currentSession":Lio/sentry/Session;
    :cond_0
    return-void
.end method

.method public onBackground()V
    .locals 3

    .line 95
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 98
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->scopes:Lio/sentry/IScopes;

    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/ReplayController;->onAppBackgrounded()V

    .line 99
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->scheduleEndSession()V

    .line 101
    const-string v2, "background"

    invoke-direct {p0, v2}, Lio/sentry/android/core/LifecycleWatcher;->addAppBreadcrumb(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->startSession()V

    .line 60
    const-string v0, "foreground"

    invoke-direct {p0, v0}, Lio/sentry/android/core/LifecycleWatcher;->addAppBreadcrumb(Ljava/lang/String;)V

    .line 61
    return-void
.end method
