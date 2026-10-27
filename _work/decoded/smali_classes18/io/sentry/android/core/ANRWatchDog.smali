.class final Lio/sentry/android/core/ANRWatchDog;
.super Ljava/lang/Thread;
.source "ANRWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ANRWatchDog$ANRListener;
    }
.end annotation


# instance fields
.field private final anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

.field private final context:Landroid/content/Context;

.field private volatile lastKnownActiveUiTimestampMs:J

.field private final logger:Lio/sentry/ILogger;

.field private pollingIntervalMs:J

.field private final reportInDebug:Z

.field private final reported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ticker:Ljava/lang/Runnable;

.field private final timeProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final timeoutIntervalMillis:J

.field private final uiHandler:Lio/sentry/android/core/MainLooperHandler;


# direct methods
.method constructor <init>(JZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Landroid/content/Context;)V
    .locals 11
    .param p1, "timeoutIntervalMillis"    # J
    .param p3, "reportInDebug"    # Z
    .param p4, "listener"    # Lio/sentry/android/core/ANRWatchDog$ANRListener;
    .param p5, "logger"    # Lio/sentry/ILogger;
    .param p6, "context"    # Landroid/content/Context;

    .line 73
    new-instance v1, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;-><init>()V

    new-instance v9, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v9}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/sentry/android/core/ANRWatchDog;-><init>(Lio/sentry/transport/ICurrentDateProvider;JJZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Lio/sentry/android/core/MainLooperHandler;Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method constructor <init>(Lio/sentry/transport/ICurrentDateProvider;JJZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Lio/sentry/android/core/MainLooperHandler;Landroid/content/Context;)V
    .locals 17
    .param p1, "timeProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p2, "timeoutIntervalMillis"    # J
    .param p4, "pollingIntervalMillis"    # J
    .param p6, "reportInDebug"    # Z
    .param p7, "listener"    # Lio/sentry/android/core/ANRWatchDog$ANRListener;
    .param p8, "logger"    # Lio/sentry/ILogger;
    .param p9, "uiHandler"    # Lio/sentry/android/core/MainLooperHandler;
    .param p10, "context"    # Landroid/content/Context;

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "|ANR-WatchDog|"

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 57
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    .line 58
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-object v1, v0, Lio/sentry/android/core/ANRWatchDog;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 98
    iput-wide v2, v0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    .line 99
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    .line 100
    move/from16 v6, p6

    iput-boolean v6, v0, Lio/sentry/android/core/ANRWatchDog;->reportInDebug:Z

    .line 101
    move-object/from16 v7, p7

    iput-object v7, v0, Lio/sentry/android/core/ANRWatchDog;->anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

    .line 102
    move-object/from16 v8, p8

    iput-object v8, v0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    .line 103
    move-object/from16 v9, p9

    iput-object v9, v0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    .line 104
    move-object/from16 v10, p10

    iput-object v10, v0, Lio/sentry/android/core/ANRWatchDog;->context:Landroid/content/Context;

    .line 105
    new-instance v11, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0, v1}, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ANRWatchDog;Lio/sentry/transport/ICurrentDateProvider;)V

    iput-object v11, v0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    .line 111
    iget-wide v11, v0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    const-wide/16 v13, 0x2

    mul-long/2addr v11, v13

    cmp-long v11, v2, v11

    if-ltz v11, :cond_0

    .line 117
    return-void

    .line 112
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-wide v15, v13

    iget-wide v13, v0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    mul-long/2addr v13, v15

    .line 115
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 113
    const-string v13, "ANRWatchDog: timeoutIntervalMillis has to be at least %d ms"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private isProcessNotResponding()Z
    .locals 7

    .line 171
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 173
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 174
    const/4 v2, 0x0

    .line 177
    .local v2, "processesInErrorState":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 180
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Error getting ActivityManager#getProcessesInErrorState."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 184
    .local v4, "item":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iget v5, v4, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 185
    return v1

    .line 187
    .end local v4    # "item":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    :cond_0
    goto :goto_1

    .line 191
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 193
    .end local v2    # "processesInErrorState":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :cond_2
    return v1
.end method

.method static synthetic lambda$new$0()J
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method synthetic lambda$new$1$io-sentry-android-core-ANRWatchDog(Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 2
    .param p1, "timeProvider"    # Lio/sentry/transport/ICurrentDateProvider;

    .line 107
    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    .line 108
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    return-void
.end method

.method public run()V
    .locals 7

    .line 122
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/ANRWatchDog;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    iget-object v1, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V

    .line 128
    :try_start_0
    iget-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 143
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 144
    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    sub-long/2addr v0, v2

    .line 147
    .local v0, "unresponsiveDurationMs":J
    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 148
    iget-boolean v2, p0, Lio/sentry/android/core/ANRWatchDog;->reportInDebug:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "An ANR was detected but ignored because the debugger is connected."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/ANRWatchDog;->isProcessNotResponding()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application Not Responding for at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lio/sentry/android/core/ApplicationNotResponding;

    iget-object v4, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    .line 161
    invoke-virtual {v4}, Lio/sentry/android/core/MainLooperHandler;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 162
    .local v3, "error":Lio/sentry/android/core/ApplicationNotResponding;
    iget-object v4, p0, Lio/sentry/android/core/ANRWatchDog;->anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

    invoke-interface {v4, v3}, Lio/sentry/android/core/ANRWatchDog$ANRListener;->onAppNotResponding(Lio/sentry/android/core/ApplicationNotResponding;)V

    .line 165
    .end local v0    # "unresponsiveDurationMs":J
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "error":Lio/sentry/android/core/ApplicationNotResponding;
    :cond_2
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    nop

    .line 139
    iget-object v1, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Interrupted: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "ignored":Ljava/lang/SecurityException;
    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 136
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 133
    const-string v5, "Failed to interrupt due to SecurityException: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    return-void

    .line 166
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ignored":Ljava/lang/SecurityException;
    :cond_3
    return-void
.end method
