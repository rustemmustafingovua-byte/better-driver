.class public final Lio/sentry/android/core/AppStartExtension;
.super Ljava/lang/Object;
.source "AppStartExtension.java"

# interfaces
.implements Lio/sentry/IAppStartExtender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;,
        Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
    }
.end annotation


# instance fields
.field private extendAppStartListener:Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;

.field private extendedSpan:Lio/sentry/ISpan;

.field private extendedTransaction:Lio/sentry/ITransaction;

.field private final finishLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final metrics:Lio/sentry/android/core/performance/AppStartMetrics;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 1
    .param p1, "metrics"    # Lio/sentry/android/core/performance/AppStartMetrics;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 40
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AppStartExtension;->finishLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 61
    iput-object p1, p0, Lio/sentry/android/core/AppStartExtension;->metrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 196
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 197
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;

    .line 198
    iput-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 200
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 196
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

.method public extendAppStart()V
    .locals 5

    .line 72
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 73
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 74
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "App start is already being extended."

    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 78
    :cond_0
    return-void

    .line 80
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->metrics:Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->canExtendAppStart()Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Cannot extend app start: the app start window has already passed."

    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 87
    :cond_2
    return-void

    .line 89
    :cond_3
    :try_start_2
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendAppStartListener:Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;

    .line 90
    .local v1, "listener":Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;
    if-eqz v1, :cond_4

    .line 91
    invoke-interface {v1}, Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;->onExtendAppStartRequested()Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;

    move-result-object v2

    .line 92
    .local v2, "extended":Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
    if-eqz v2, :cond_4

    .line 93
    iget-object v3, v2, Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;->transaction:Lio/sentry/ITransaction;

    iput-object v3, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    .line 94
    iget-object v3, v2, Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;->span:Lio/sentry/ISpan;

    iput-object v3, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v1    # "listener":Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;
    .end local v2    # "extended":Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 98
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_5
    return-void

    .line 72
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v1
.end method

.method public finishExtendedAppStart()V
    .locals 4

    .line 115
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->finishLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 117
    .local v0, "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .local v2, "span":Lio/sentry/ISpan;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 121
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lio/sentry/ISpan;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v2, v1}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    .end local v2    # "span":Lio/sentry/ISpan;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 125
    .end local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 117
    .restart local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 115
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public finishTransaction(Lio/sentry/SentryDate;)V
    .locals 6
    .param p1, "endTimestamp"    # Lio/sentry/SentryDate;

    .line 161
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->finishLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 164
    .local v0, "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 165
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    .line 166
    .local v2, "transaction":Lio/sentry/ITransaction;
    iget-object v3, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .local v3, "span":Lio/sentry/ISpan;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 168
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v1

    .line 171
    .local v1, "spanEnd":Lio/sentry/SentryDate;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lio/sentry/SentryDate;->isAfter(Lio/sentry/SentryDate;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 172
    .local v4, "end":Lio/sentry/SentryDate;
    :goto_1
    sget-object v5, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v2, v5, v4}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    .end local v1    # "spanEnd":Lio/sentry/SentryDate;
    .end local v2    # "transaction":Lio/sentry/ITransaction;
    .end local v3    # "span":Lio/sentry/ISpan;
    .end local v4    # "end":Lio/sentry/SentryDate;
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 175
    .end local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    return-void

    .line 164
    .restart local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    .end local p1    # "endTimestamp":Lio/sentry/SentryDate;
    :cond_5
    :goto_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "ignoredFinish":Lio/sentry/ISentryLifecycleToken;
    .restart local p1    # "endTimestamp":Lio/sentry/SentryDate;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_5
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v1
.end method

.method public getExtendedAppStartSpan()Lio/sentry/ISpan;
    .locals 3

    .line 129
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 130
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;

    .line 132
    .local v1, "span":Lio/sentry/ISpan;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 133
    nop

    .line 136
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 133
    :cond_0
    return-object v1

    .line 135
    :cond_1
    nop

    .line 136
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 135
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 129
    .end local v1    # "span":Lio/sentry/ISpan;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public getExtendedEndTime()Lio/sentry/SentryDate;
    .locals 5

    .line 178
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 179
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .local v1, "span":Lio/sentry/ISpan;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 181
    nop

    .line 192
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 181
    :cond_0
    return-object v2

    .line 185
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v3

    sget-object v4, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_3

    .line 186
    nop

    .line 192
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 186
    :cond_2
    return-object v2

    .line 191
    :cond_3
    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 191
    :cond_4
    return-object v2

    .line 178
    .end local v1    # "span":Lio/sentry/ISpan;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
.end method

.method public isActive()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 141
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    invoke-interface {v1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 141
    :cond_1
    return v1

    .line 140
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

.method public isExtended()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 151
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedSpan:Lio/sentry/ISpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 151
    :cond_1
    return v1

    .line 150
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

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 107
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    invoke-interface {v1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lio/sentry/android/core/AppStartExtension;->extendedTransaction:Lio/sentry/ITransaction;

    invoke-interface {v1, p1, p2}, Lio/sentry/ITransaction;->setData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 111
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 106
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

.method public setExtendAppStartListener(Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;)V
    .locals 3
    .param p1, "listener"    # Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/AppStartExtension;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 66
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iput-object p1, p0, Lio/sentry/android/core/AppStartExtension;->extendAppStartListener:Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 68
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 65
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
