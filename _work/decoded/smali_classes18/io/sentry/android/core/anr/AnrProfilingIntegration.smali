.class public Lio/sentry/android/core/anr/AnrProfilingIntegration;
.super Ljava/lang/Object;
.source "AnrProfilingIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Lio/sentry/android/core/AppState$AppStateListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;
    }
.end annotation


# static fields
.field static final MAX_NUM_STACKS:I = 0x97

.field public static final POLLING_INTERVAL_MS:J = 0x42L

.field public static final THRESHOLD_ANR_MS:J = 0xfa0L

.field private static final THRESHOLD_SUSPICION_MS:J = 0x3e8L


# instance fields
.field private final enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile inForeground:Z

.field private volatile lastMainThreadExecutionTime:J

.field private final lifecycleLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private volatile logger:Lio/sentry/ILogger;

.field private volatile mainHandler:Landroid/os/Handler;

.field private volatile mainThread:Ljava/lang/Thread;

.field private volatile mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

.field final numCollectedStacks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile options:Lio/sentry/android/core/SentryAndroidOptions;

.field private volatile profileManager:Lio/sentry/android/core/anr/AnrProfileManager;

.field private final profileManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private volatile sampled:Z

.field private volatile thread:Ljava/lang/Thread;

.field private final updater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Lio/sentry/android/core/anr/AnrProfilingIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/android/core/anr/AnrProfilingIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/anr/AnrProfilingIntegration;)V

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->updater:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->lifecycleLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 48
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->lastMainThreadExecutionTime:J

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->numCollectedStacks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    sget-object v0, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->IDLE:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    .line 55
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->thread:Ljava/lang/Thread;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->sampled:Z

    .line 59
    iput-boolean v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->inForeground:Z

    return-void
.end method

.method private addStackTrace(Lio/sentry/android/core/anr/AnrStackTrace;)V
    .locals 1
    .param p1, "trace"    # Lio/sentry/android/core/anr/AnrStackTrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->numCollectedStacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 307
    invoke-virtual {p0}, Lio/sentry/android/core/anr/AnrProfilingIntegration;->getProfileManager()Lio/sentry/android/core/anr/AnrProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/anr/AnrProfileManager;->add(Lio/sentry/android/core/anr/AnrStackTrace;)V

    .line 308
    return-void
.end method

.method private clearStacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->numCollectedStacks:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 299
    invoke-virtual {p0}, Lio/sentry/android/core/anr/AnrProfilingIntegration;->getProfileManager()Lio/sentry/android/core/anr/AnrProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/anr/AnrProfileManager;->clear()V

    .line 300
    return-void
.end method


# virtual methods
.method protected checkMainThread(Ljava/lang/Thread;)V
    .locals 14
    .param p1, "mainThread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "now":J
    iget-wide v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->lastMainThreadExecutionTime:J

    sub-long v2, v0, v2

    .line 217
    .local v2, "diff":J
    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-gez v6, :cond_0

    .line 218
    sget-object v6, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->IDLE:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    iput-object v6, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    .line 219
    iput-boolean v7, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->sampled:Z

    .line 222
    :cond_0
    iget-object v6, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    sget-object v8, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->IDLE:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    if-ne v6, v8, :cond_4

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 223
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v4, v5}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "ANR: main thread is suspicious"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_1
    sget-object v4, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->SUSPICIOUS:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    iput-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    .line 228
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 229
    .local v4, "opts":Lio/sentry/android/core/SentryAndroidOptions;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrProfilingSampleRate()Ljava/lang/Double;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 230
    .local v5, "sampleRate":Ljava/lang/Double;
    :goto_0
    if-eqz v5, :cond_3

    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v6, v8, v10

    if-gez v6, :cond_3

    .line 231
    const/4 v6, 0x1

    iput-boolean v6, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->sampled:Z

    .line 234
    :cond_3
    iget-boolean v6, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->sampled:Z

    if-eqz v6, :cond_4

    .line 235
    invoke-direct {p0}, Lio/sentry/android/core/anr/AnrProfilingIntegration;->clearStacks()V

    .line 240
    .end local v4    # "opts":Lio/sentry/android/core/SentryAndroidOptions;
    .end local v5    # "sampleRate":Ljava/lang/Double;
    :cond_4
    iget-boolean v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->sampled:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    sget-object v5, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->SUSPICIOUS:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    sget-object v5, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->ANR_DETECTED:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    if-ne v4, v5, :cond_8

    .line 243
    :cond_5
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->numCollectedStacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x97

    if-ge v4, v5, :cond_7

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 245
    .local v4, "start":J
    new-instance v6, Lio/sentry/android/core/anr/AnrStackTrace;

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lio/sentry/android/core/anr/AnrStackTrace;-><init>(J[Ljava/lang/StackTraceElement;)V

    .line 247
    .local v6, "trace":Lio/sentry/android/core/anr/AnrStackTrace;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 248
    .local v8, "duration":J
    iget-object v10, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v11, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v10, v11}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 249
    iget-object v10, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v11, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AnrWatchdog: capturing main thread stacktrace took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12, v13}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_6
    invoke-direct {p0, v6}, Lio/sentry/android/core/anr/AnrProfilingIntegration;->addStackTrace(Lio/sentry/android/core/anr/AnrStackTrace;)V

    .line 254
    .end local v4    # "start":J
    .end local v6    # "trace":Lio/sentry/android/core/anr/AnrStackTrace;
    .end local v8    # "duration":J
    goto :goto_1

    .line 255
    :cond_7
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v4, v5}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 256
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "ANR: reached maximum number of collected stack traces, skipping further collection"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_8
    :goto_1
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    sget-object v5, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->SUSPICIOUS:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    if-ne v4, v5, :cond_a

    const-wide/16 v4, 0xfa0

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    .line 264
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v4, v5}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 265
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "ANR: main thread ANR threshold reached"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_9
    sget-object v4, Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;->ANR_DETECTED:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    iput-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    .line 269
    :cond_a
    return-void
.end method

.method public close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->removeAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 92
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainHandler:Landroid/os/Handler;

    .line 93
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 94
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->updater:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->thread:Ljava/lang/Thread;

    .line 99
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_1

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 106
    :cond_1
    :goto_0
    iget-object v3, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 108
    .local v3, "opts":Lio/sentry/android/core/SentryAndroidOptions;
    iget-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v4}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v4

    .line 109
    .local v4, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_2
    iget-object v5, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManager:Lio/sentry/android/core/anr/AnrProfileManager;

    .line 110
    .local v5, "pm":Lio/sentry/android/core/anr/AnrProfileManager;
    const/4 v6, 0x0

    iput-object v6, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManager:Lio/sentry/android/core/anr/AnrProfileManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 112
    .end local v4    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    if-eqz v3, :cond_3

    .line 114
    :try_start_3
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v4

    new-instance v6, Lio/sentry/android/core/anr/AnrProfilingIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v5}, Lio/sentry/android/core/anr/AnrProfilingIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/anr/AnrProfilingIntegration;Lio/sentry/android/core/anr/AnrProfileManager;)V

    .line 115
    invoke-interface {v4, v6}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    goto :goto_1

    .line 127
    :catchall_1
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Failed to submit AnrProfileManager close"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void

    .line 108
    .end local v5    # "pm":Lio/sentry/android/core/anr/AnrProfileManager;
    .local v4, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v1

    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v4}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method protected getProfileManager()Lio/sentry/android/core/anr/AnrProfileManager;
    .locals 5

    .line 280
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 281
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManager:Lio/sentry/android/core/anr/AnrProfileManager;

    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v2, "Options can\'t be null"

    .line 283
    invoke-static {v1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryOptions;

    .line 284
    .local v1, "opts":Lio/sentry/SentryOptions;
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "cacheDirPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 288
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {v3}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->getFileForRecording(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 290
    .local v3, "currentFile":Ljava/io/File;
    new-instance v4, Lio/sentry/android/core/anr/AnrProfileManager;

    invoke-direct {v4, v1, v3}, Lio/sentry/android/core/anr/AnrProfileManager;-><init>(Lio/sentry/SentryOptions;Ljava/io/File;)V

    iput-object v4, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManager:Lio/sentry/android/core/anr/AnrProfileManager;

    goto :goto_0

    .line 286
    .end local v3    # "currentFile":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cacheDirPath is required for ANR profiling"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    throw v3

    .line 293
    .end local v1    # "opts":Lio/sentry/SentryOptions;
    .end local v2    # "cacheDirPath":Ljava/lang/String;
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->profileManager:Lio/sentry/android/core/anr/AnrProfileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 293
    :cond_2
    return-object v1

    .line 280
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method protected getState()Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;
    .locals 1

    .line 274
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThreadState:Lio/sentry/android/core/anr/AnrProfilingIntegration$MainThreadState;

    return-object v0
.end method

.method synthetic lambda$close$1$io-sentry-android-core-anr-AnrProfilingIntegration(Lio/sentry/android/core/anr/AnrProfileManager;)V
    .locals 5
    .param p1, "pm"    # Lio/sentry/android/core/anr/AnrProfileManager;

    .line 117
    if-nez p1, :cond_0

    .line 118
    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/core/anr/AnrProfileManager;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to close AnrProfileManager"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method synthetic lambda$new$0$io-sentry-android-core-anr-AnrProfilingIntegration()V
    .locals 2

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->lastMainThreadExecutionTime:J

    return-void
.end method

.method public onBackground()V
    .locals 3

    .line 163
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->lifecycleLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 167
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->inForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 169
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 166
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

.method public onForeground()V
    .locals 5

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->lifecycleLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 139
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->inForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 158
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 140
    :cond_1
    return-void

    .line 142
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->inForeground:Z

    .line 143
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->updater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 145
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->thread:Ljava/lang/Thread;

    .line 146
    .local v2, "existingThread":Ljava/lang/Thread;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_3
    throw v1

    .line 152
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_5

    .line 153
    :cond_4
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "AnrProfilingIntegration"

    invoke-direct {v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 154
    .local v3, "profilingThread":Ljava/lang/Thread;
    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 156
    iput-object v3, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    .end local v2    # "existingThread":Ljava/lang/Thread;
    .end local v3    # "profilingThread":Ljava/lang/Thread;
    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 159
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    return-void

    .line 138
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v1
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 65
    nop

    .line 67
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 69
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    .line 71
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ANR Profiling is enabled but cacheDirPath is not set"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void

    .line 77
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 78
    .local v0, "mainLooper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThread:Ljava/lang/Thread;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainHandler:Landroid/os/Handler;

    .line 81
    const-string v1, "AnrProfiling"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/sentry/android/core/AppState;->addAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 84
    .end local v0    # "mainLooper":Landroid/os/Looper;
    :cond_2
    return-void
.end method

.method public run()V
    .locals 6

    .line 173
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainHandler:Landroid/os/Handler;

    .line 174
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->mainThread:Ljava/lang/Thread;

    .line 175
    .local v1, "mt":Ljava/lang/Thread;
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_3

    .line 180
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_3

    .line 182
    :try_start_1
    iget-boolean v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->inForeground:Z

    if-nez v2, :cond_2

    .line 184
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->inForeground:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 188
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :try_start_3
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->updater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "mt":Ljava/lang/Thread;
    :try_start_5
    throw v2

    .line 194
    .restart local v0    # "handler":Landroid/os/Handler;
    .restart local v1    # "mt":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0, v1}, Lio/sentry/android/core/anr/AnrProfilingIntegration;->checkMainThread(Ljava/lang/Thread;)V

    .line 196
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->updater:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v2, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->updater:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    const-wide/16 v2, 0x42

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 204
    return-void

    .line 209
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    goto :goto_2

    .line 207
    :catchall_1
    move-exception v2

    .line 208
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to execute AnrStacktraceIntegration"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 176
    :cond_4
    :goto_3
    return-void
.end method
