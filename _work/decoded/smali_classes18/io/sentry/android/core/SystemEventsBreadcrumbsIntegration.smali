.class public final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "SystemEventsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Lio/sentry/android/core/AppState$AppStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;,
        Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final actions:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field customHandler:Landroid/os/Handler;

.field private volatile filter:Landroid/content/IntentFilter;

.field private volatile handlerThread:Landroid/os/HandlerThread;

.field private volatile isClosed:Z

.field private final isReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isStopped:Z

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private previousBatteryState:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

.field volatile receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

.field private final receiverLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private scopes:Lio/sentry/IScopes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->getDefaultActionsInternal()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 83
    invoke-static {}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->getDefaultActionsInternal()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    .line 68
    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isStopped:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    .line 70
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    .line 71
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiverLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 75
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->customHandler:Landroid/os/Handler;

    .line 97
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->actions:[Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->actions:[Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actions"    # [Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    .line 68
    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isStopped:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    .line 70
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    .line 71
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiverLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 75
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->customHandler:Landroid/os/Handler;

    .line 90
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->actions:[Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->customHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;)Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    .line 55
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->previousBatteryState:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    return-object v0
.end method

.method static synthetic access$002(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
    .param p1, "x1"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    .line 55
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->previousBatteryState:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    return-object p1
.end method

.method public static getDefaultActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-static {}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->getDefaultActionsInternal()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultActionsInternal()[Ljava/lang/String;
    .locals 3

    .line 257
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 258
    .local v0, "actions":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    aput-object v2, v0, v1

    .line 259
    const/4 v1, 0x1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    aput-object v2, v0, v1

    .line 260
    const/4 v1, 0x2

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    .line 261
    const/4 v1, 0x3

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    aput-object v2, v0, v1

    .line 262
    const/4 v1, 0x4

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    aput-object v2, v0, v1

    .line 263
    const/4 v1, 0x5

    const-string v2, "android.intent.action.DATE_CHANGED"

    aput-object v2, v0, v1

    .line 264
    const/4 v1, 0x6

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    aput-object v2, v0, v1

    .line 265
    const/4 v1, 0x7

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    aput-object v2, v0, v1

    .line 266
    const/16 v1, 0x8

    const-string v2, "android.intent.action.DOCK_EVENT"

    aput-object v2, v0, v1

    .line 267
    const/16 v1, 0x9

    const-string v2, "android.intent.action.DREAMING_STARTED"

    aput-object v2, v0, v1

    .line 268
    const/16 v1, 0xa

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    aput-object v2, v0, v1

    .line 269
    const/16 v1, 0xb

    const-string v2, "android.intent.action.INPUT_METHOD_CHANGED"

    aput-object v2, v0, v1

    .line 270
    const/16 v1, 0xc

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    aput-object v2, v0, v1

    .line 271
    const/16 v1, 0xd

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    .line 272
    const/16 v1, 0xe

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    .line 273
    const/16 v1, 0xf

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v2, v0, v1

    .line 274
    const/16 v1, 0x10

    const-string v2, "android.intent.action.TIME_SET"

    aput-object v2, v0, v1

    .line 275
    const/16 v1, 0x11

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    aput-object v2, v0, v1

    .line 276
    const/16 v1, 0x12

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    aput-object v2, v0, v1

    .line 277
    return-object v0
.end method

.method private registerReceiver(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 130
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 134
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isStopped:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    nop

    .line 140
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 141
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 192
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 193
    const-string v4, "Failed to start SystemEventsBreadcrumbsIntegration on executor thread."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 135
    :cond_2
    :goto_1
    return-void
.end method

.method private scheduleUnregisterReceiver()V
    .locals 2

    .line 201
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->unregisterReceiver(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 210
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private unregisterReceiver(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 6
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 214
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiverLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 215
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isStopped:Z

    .line 216
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 217
    .local v1, "receiverRef":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 220
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    if-eqz v1, :cond_1

    .line 222
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    .local v0, "exception":Ljava/lang/Throwable;
    nop

    .line 225
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 226
    const-string v5, "Failed to unregister SystemEventsBroadcastReceiver"

    invoke-interface {v2, v3, v0, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    .end local v0    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 214
    .end local v1    # "receiverRef":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiverLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 235
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    .line 237
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 240
    :cond_0
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 243
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->removeAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 244
    invoke-direct {p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->scheduleUnregisterReceiver()V

    .line 246
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SystemEventsBreadcrumbsIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_2
    return-void

    .line 234
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
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

.method synthetic lambda$registerReceiver$0$io-sentry-android-core-SystemEventsBreadcrumbsIntegration(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 7
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 143
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiverLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 144
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isStopped:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 148
    :cond_0
    new-instance v1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 149
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    .line 151
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->actions:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 152
    .local v5, "item":Ljava/lang/String;
    iget-object v6, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    .end local v5    # "item":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->customHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 156
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SystemEventsReceiver"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    .line 159
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->customHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->customHandler:Landroid/os/Handler;

    .local v1, "handler":Landroid/os/Handler;
    goto :goto_1

    .line 170
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_3
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    .restart local v1    # "handler":Landroid/os/Handler;
    :goto_1
    iget-object v3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    iget-object v4, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    iget-object v5, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->filter:Landroid/content/IntentFilter;

    invoke-static {v3, p2, v4, v5, v1}, Lio/sentry/android/core/ContextUtils;->registerReceiver(Landroid/content/Context;Lio/sentry/SentryOptions;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    iget-object v3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 174
    nop

    .line 175
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "SystemEventsBreadcrumbsIntegration installed."

    new-array v6, v2, [Ljava/lang/Object;

    .line 176
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const-string v3, "SystemEventsBreadcrumbs"

    invoke-static {v3}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_4
    goto :goto_2

    .line 179
    :catchall_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p2, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 181
    nop

    .line 182
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to initialize SystemEventsBreadcrumbsIntegration."

    .line 183
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 189
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_5
    return-void

    .line 188
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 145
    :cond_7
    return-void

    .line 143
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v1
.end method

.method synthetic lambda$scheduleUnregisterReceiver$1$io-sentry-android-core-SystemEventsBreadcrumbsIntegration()V
    .locals 1

    .line 206
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->unregisterReceiver(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public onBackground()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->scheduleUnregisterReceiver()V

    .line 294
    return-void
.end method

.method public onForeground()V
    .locals 2

    .line 282
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isStopped:Z

    .line 288
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->registerReceiver(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 289
    return-void

    .line 283
    :cond_1
    :goto_0
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 104
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    nop

    .line 107
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 109
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    .line 111
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 112
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 116
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 113
    const-string v3, "SystemEventsBreadcrumbsIntegration enabled: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->addAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 121
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->scopes:Lio/sentry/IScopes;

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->registerReceiver(Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 125
    :cond_1
    return-void
.end method
