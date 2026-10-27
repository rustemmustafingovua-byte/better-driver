.class public final Lio/sentry/android/core/AnrIntegration;
.super Ljava/lang/Object;
.source "AnrIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrIntegration$AnrHint;
    }
.end annotation


# static fields
.field private static anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

.field protected static final watchDogLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private final context:Landroid/content/Context;

.field private isClosed:Z

.field private options:Lio/sentry/SentryOptions;

.field private final startLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AnrIntegration;->isClosed:Z

    .line 35
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->startLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 38
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private buildAnrThrowable(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)Ljava/lang/Throwable;
    .locals 6
    .param p1, "isAppInBackground"    # Z
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "anr"    # Lio/sentry/android/core/ApplicationNotResponding;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANR for at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 144
    .local v1, "thread":Ljava/lang/Thread;
    if-nez v1, :cond_1

    .line 145
    new-instance v2, Lio/sentry/android/core/ApplicationNotResponding;

    invoke-direct {v2, v0}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;)V

    .local v2, "error":Lio/sentry/android/core/ApplicationNotResponding;
    goto :goto_0

    .line 147
    .end local v2    # "error":Lio/sentry/android/core/ApplicationNotResponding;
    :cond_1
    new-instance v2, Lio/sentry/android/core/ApplicationNotResponding;

    invoke-direct {v2, v0, v1}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 150
    .restart local v2    # "error":Lio/sentry/android/core/ApplicationNotResponding;
    :goto_0
    new-instance v3, Lio/sentry/protocol/Mechanism;

    invoke-direct {v3}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 151
    .local v3, "mechanism":Lio/sentry/protocol/Mechanism;
    const-string v4, "ANR"

    invoke-virtual {v3, v4}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 153
    new-instance v4, Lio/sentry/exception/ExceptionMechanismException;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v2, v1, v5}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-object v4
.end method

.method private register(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 61
    nop

    .line 62
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 63
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AnrIntegration enabled: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "Anr"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 68
    nop

    .line 69
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 70
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 80
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 81
    const-string v3, "Failed to start AnrIntegration on executor thread."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private startAnrWatchdog(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 12
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 88
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 89
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    if-nez v0, :cond_0

    .line 90
    nop

    .line 91
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "ANR timeout in milliseconds: %d"

    .line 95
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 92
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v5, Lio/sentry/android/core/ANRWatchDog;

    .line 99
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v6

    .line 100
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v8

    new-instance v9, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, p1, p2}, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 102
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v10

    iget-object v11, p0, Lio/sentry/android/core/AnrIntegration;->context:Landroid/content/Context;

    invoke-direct/range {v5 .. v11}, Lio/sentry/android/core/ANRWatchDog;-><init>(JZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Landroid/content/Context;)V

    sput-object v5, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    .line 104
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    invoke-virtual {v0}, Lio/sentry/android/core/ANRWatchDog;->start()V

    .line 106
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AnrIntegration installed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 109
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 88
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->startLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 165
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/AnrIntegration;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 166
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 167
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 168
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    sget-object v1, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    if-eqz v1, :cond_1

    .line 169
    sget-object v1, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    invoke-virtual {v1}, Lio/sentry/android/core/ANRWatchDog;->interrupt()V

    .line 170
    const/4 v1, 0x0

    sput-object v1, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    .line 171
    iget-object v1, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AnrIntegration removed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 176
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 167
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1

    .line 164
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method getANRWatchDog()Lio/sentry/android/core/ANRWatchDog;
    .locals 1

    .line 159
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    return-object v0
.end method

.method synthetic lambda$register$0$io-sentry-android-core-AnrIntegration(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 72
    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->startLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 73
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/AnrIntegration;->isClosed:Z

    if-nez v1, :cond_0

    .line 74
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->startAnrWatchdog(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 77
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 72
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

.method synthetic lambda$startAnrWatchdog$1$io-sentry-android-core-AnrIntegration(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 0
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "error"    # Lio/sentry/android/core/ApplicationNotResponding;

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/core/AnrIntegration;->reportANR(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V

    return-void
.end method

.method public final register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 55
    const-string v0, "SentryOptions is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    .line 56
    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/AnrIntegration;->register(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 57
    return-void
.end method

.method reportANR(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 5
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "error"    # Lio/sentry/android/core/ApplicationNotResponding;

    .line 116
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ANR triggered with message: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/AppState;->isInBackground()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    .local v0, "isAppInBackground":Z
    invoke-direct {p0, v0, p2, p3}, Lio/sentry/android/core/AnrIntegration;->buildAnrThrowable(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)Ljava/lang/Throwable;

    move-result-object v1

    .line 124
    .local v1, "anrThrowable":Ljava/lang/Throwable;
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, v1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 125
    .local v2, "event":Lio/sentry/SentryEvent;
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v2, v3}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 127
    new-instance v3, Lio/sentry/android/core/AnrIntegration$AnrHint;

    invoke-direct {v3, v0}, Lio/sentry/android/core/AnrIntegration$AnrHint;-><init>(Z)V

    .line 128
    .local v3, "anrHint":Lio/sentry/android/core/AnrIntegration$AnrHint;
    invoke-static {v3}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v4

    .line 129
    .local v4, "hint":Lio/sentry/Hint;
    invoke-interface {p1, v2, v4}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 130
    return-void
.end method
