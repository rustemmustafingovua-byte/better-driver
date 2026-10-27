.class public final Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;,
        Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;,
        Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;
    }
.end annotation


# static fields
.field private static final MAX_FRAMES_COUNT:I = 0xe10

.field private static final MAX_FRAME_AGE_NANOS:J = 0x45d964b800L

.field private static final frozenFrameThresholdNanos:J

.field private static final oneSecondInNanos:J


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private volatile choreographer:Landroid/view/Choreographer;

.field private volatile choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

.field private currentWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private volatile handler:Landroid/os/Handler;

.field private final handlerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private isAvailable:Z

.field private lastFrameEndNanos:J

.field private lastFrameStartNanos:J

.field private final listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lio/sentry/ILogger;

.field private final trackedWindows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->oneSecondInNanos:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frozenFrameThresholdNanos:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 81
    new-instance v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$2;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$2;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p4, "windowFrameMetricsManager"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    .line 51
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handlerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameStartNanos:J

    .line 62
    iput-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 100
    nop

    .line 102
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 101
    const-string v1, "The context is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 103
    .local v0, "appContext":Landroid/content/Context;
    const-string v1, "Logger is required"

    invoke-static {p2, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ILogger;

    iput-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->logger:Lio/sentry/ILogger;

    .line 104
    nop

    .line 105
    const-string v1, "BuildInfoProvider is required"

    invoke-static {p3, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 106
    nop

    .line 107
    const-string v1, "WindowFrameMetricsManager is required"

    invoke-static {p4, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    iput-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    .line 110
    instance-of v1, v0, Landroid/app/Application;

    if-nez v1, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-virtual {p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 115
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 131
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;)V

    .line 132
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    new-instance v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/android/core/BuildInfoProvider;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 73
    new-instance v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$1;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p4, "windowFrameMetricsManager"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    .line 90
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V

    .line 91
    return-void
.end method

.method private ensureHandlerThreadStarted()V
    .locals 4

    .line 302
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handlerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 306
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 307
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "io.sentry.android.core.internal.util.SentryFrameMetricsCollector"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    new-instance v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 311
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 312
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 315
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 305
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

.method private getFrameCpuDuration(Landroid/view/FrameMetrics;)J
    .locals 4
    .param p1, "frameMetrics"    # Landroid/view/FrameMetrics;

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    .line 248
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 249
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 250
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 251
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 252
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 247
    return-wide v0
.end method

.method private getFrameStartTimestamp(Landroid/view/FrameMetrics;)J
    .locals 2
    .param p1, "frameMetrics"    # Landroid/view/FrameMetrics;

    .line 232
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 233
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    return-wide v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getLastKnownFrameStartTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isFrozen(J)Z
    .locals 2
    .param p0, "frameDuration"    # J

    .line 218
    sget-wide v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frozenFrameThresholdNanos:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSlow(JJ)Z
    .locals 1
    .param p0, "frameDuration"    # J
    .param p2, "expectedFrameDuration"    # J

    .line 222
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pruneOldFrames(J)V
    .locals 4
    .param p1, "currentNanos"    # J

    .line 458
    const-wide v0, 0x45d964b800L

    sub-long v0, p1, v0

    .line 459
    .local v0, "cutoff":J
    iget-object v2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v3, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    invoke-direct {v3, v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->clear()V

    .line 460
    return-void
.end method

.method private setCurrentWindow(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .line 349
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    .line 353
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackCurrentWindow()V

    .line 354
    return-void
.end method

.method private stopTrackingWindow(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .line 332
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Landroid/view/Window;)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method private trackCurrentWindow()V
    .locals 3

    .line 358
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 359
    .local v0, "window":Landroid/view/Window;
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    return-void

    .line 367
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 369
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Landroid/view/Window;)V

    .line 370
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    :cond_3
    return-void

    .line 360
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getFramesDelay(JJ)Lio/sentry/android/core/SentryFramesDelayResult;
    .locals 20
    .param p1, "startSystemNanos"    # J
    .param p3, "endSystemNanos"    # J

    .line 416
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    const/4 v6, 0x0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    if-nez v5, :cond_0

    .line 417
    new-instance v5, Lio/sentry/android/core/SentryFramesDelayResult;

    invoke-direct {v5, v7, v8, v6}, Lio/sentry/android/core/SentryFramesDelayResult;-><init>(DI)V

    return-object v5

    .line 420
    :cond_0
    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    .line 421
    new-instance v5, Lio/sentry/android/core/SentryFramesDelayResult;

    invoke-direct {v5, v7, v8, v6}, Lio/sentry/android/core/SentryFramesDelayResult;-><init>(DI)V

    return-object v5

    .line 424
    :cond_1
    const-wide/16 v5, 0x0

    .line 425
    .local v5, "totalDelayNanos":J
    const/4 v7, 0x0

    .line 427
    .local v7, "delayFrameCount":I
    iget-object v8, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 428
    iget-object v8, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v9, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    invoke-direct {v9, v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;-><init>(J)V

    .line 429
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 431
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 432
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    .line 434
    .local v9, "frame":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;
    iget-wide v10, v9, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->startNanos:J

    cmp-long v10, v10, v3

    if-ltz v10, :cond_2

    .line 435
    goto :goto_1

    .line 439
    :cond_2
    iget-wide v10, v9, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->endNanos:J

    iget-wide v12, v9, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->delayNanos:J

    sub-long/2addr v10, v12

    .line 440
    .local v10, "delayStart":J
    iget-wide v12, v9, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->endNanos:J

    .line 443
    .local v12, "delayEnd":J
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 444
    .local v14, "overlapStart":J
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 446
    .local v16, "overlapEnd":J
    cmp-long v18, v16, v14

    if-lez v18, :cond_3

    .line 447
    sub-long v18, v16, v14

    add-long v5, v5, v18

    .line 448
    add-int/lit8 v7, v7, 0x1

    .line 450
    .end local v9    # "frame":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;
    .end local v10    # "delayStart":J
    .end local v12    # "delayEnd":J
    .end local v14    # "overlapStart":J
    .end local v16    # "overlapEnd":J
    :cond_3
    goto :goto_0

    .line 453
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;>;"
    :cond_4
    :goto_1
    long-to-double v8, v5

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v8, v10

    .line 454
    .local v8, "delaySeconds":D
    new-instance v10, Lio/sentry/android/core/SentryFramesDelayResult;

    invoke-direct {v10, v8, v9, v7}, Lio/sentry/android/core/SentryFramesDelayResult;-><init>(DI)V

    return-object v10
.end method

.method public getLastKnownFrameStartTimeNanos()J
    .locals 3

    .line 390
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 392
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographer:Landroid/view/Choreographer;

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 394
    .local v0, "choreographerFrameStartTime":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 398
    .end local v0    # "choreographerFrameStartTime":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 400
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method synthetic lambda$ensureHandlerThreadStarted$2$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 310
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error during frames measurements."

    invoke-interface {v0, v1, v2, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$new$0$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 135
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographer:Landroid/view/Choreographer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error retrieving Choreographer instance. Slow and frozen frames will not be reported."

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-class v0, Landroid/view/Choreographer;

    const-string v1, "mLastFrameTimeNanos"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

    .line 147
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Unable to get the frame timestamp from the choreographer: "

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    return-void
.end method

.method synthetic lambda$new$1$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Lio/sentry/android/core/BuildInfoProvider;Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 28
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "frameMetrics"    # Landroid/view/FrameMetrics;
    .param p4, "dropCountSinceLastInvocation"    # I

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 160
    .local v2, "now":J
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    :goto_0
    move/from16 v16, v4

    .line 164
    .local v16, "refreshRate":F
    sget-wide v4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->oneSecondInNanos:J

    long-to-float v4, v4

    div-float v4, v4, v16

    float-to-long v4, v4

    .line 166
    .local v4, "expectedFrameDuration":J
    invoke-direct {v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getFrameCpuDuration(Landroid/view/FrameMetrics;)J

    move-result-wide v10

    .line 170
    .local v10, "cpuDuration":J
    sub-long v6, v10, v4

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 172
    .local v12, "delayNanos":J
    invoke-direct {v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getFrameStartTimestamp(Landroid/view/FrameMetrics;)J

    move-result-wide v6

    .line 175
    .local v6, "startTime":J
    cmp-long v14, v6, v8

    if-gez v14, :cond_1

    .line 176
    sub-long v6, v2, v10

    .line 179
    :cond_1
    iget-wide v14, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 181
    iget-wide v14, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameStartNanos:J

    cmp-long v14, v6, v14

    if-nez v14, :cond_2

    .line 182
    return-void

    .line 184
    :cond_2
    iput-wide v6, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameStartNanos:J

    .line 185
    add-long v14, v6, v10

    iput-wide v14, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    .line 190
    sget-wide v14, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->oneSecondInNanos:J

    long-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v16, v15

    div-float/2addr v14, v15

    float-to-long v14, v14

    .line 191
    invoke-static {v10, v11, v14, v15}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result v14

    .line 192
    .local v14, "isSlow":Z
    if-eqz v14, :cond_3

    invoke-static {v10, v11}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 194
    .local v15, "isFrozen":Z
    :goto_1
    move-wide/from16 v18, v6

    .line 197
    .local v18, "frameStartTime":J
    cmp-long v8, v12, v8

    if-lez v8, :cond_5

    .line 198
    iget-wide v8, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    invoke-direct {v0, v8, v9}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->pruneOldFrames(J)V

    .line 199
    iget-object v8, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v8

    const/16 v9, 0xe10

    if-ge v8, v9, :cond_4

    .line 200
    iget-object v8, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->delayedFrames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v17, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    move-wide/from16 v24, v2

    .end local v2    # "now":J
    .local v24, "now":J
    iget-wide v1, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    move-wide/from16 v20, v1

    move-wide/from16 v22, v12

    .end local v12    # "delayNanos":J
    .local v22, "delayNanos":J
    invoke-direct/range {v17 .. v23}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;-><init>(JJJ)V

    move-object/from16 v1, v17

    .end local v22    # "delayNanos":J
    .restart local v12    # "delayNanos":J
    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    .end local v24    # "now":J
    .restart local v2    # "now":J
    :cond_4
    move-wide/from16 v24, v2

    .end local v2    # "now":J
    .restart local v24    # "now":J
    goto :goto_2

    .line 197
    .end local v24    # "now":J
    .restart local v2    # "now":J
    :cond_5
    move-wide/from16 v24, v2

    .line 204
    .end local v2    # "now":J
    .restart local v24    # "now":J
    :goto_2
    iget-object v1, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;

    .line 205
    .local v2, "l":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;
    iget-wide v8, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    move-wide/from16 v26, v4

    move-object v5, v2

    move-wide/from16 v2, v26

    .end local v4    # "expectedFrameDuration":J
    .local v2, "expectedFrameDuration":J
    .local v5, "l":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;
    invoke-interface/range {v5 .. v16}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;->onFrameMetricCollected(JJJJZZF)V

    .line 213
    .end local v5    # "l":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;
    move-wide v4, v2

    goto :goto_3

    .line 214
    .end local v2    # "expectedFrameDuration":J
    .restart local v4    # "expectedFrameDuration":J
    :cond_6
    return-void
.end method

.method synthetic lambda$stopTrackingWindow$3$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Landroid/view/Window;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;

    .line 338
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-interface {v0, p1, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;->removeOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to remove frameMetricsAvailableListener"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic lambda$trackCurrentWindow$4$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Landroid/view/Window;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;

    .line 372
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    invoke-interface {v0, p1, v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;->addOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to add frameMetricsAvailableListener"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 258
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 283
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 269
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 266
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 280
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 262
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->setCurrentWindow(Landroid/view/Window;)V

    .line 263
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 273
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopTrackingWindow(Landroid/view/Window;)V

    .line 274
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    .line 277
    :cond_0
    return-void
.end method

.method public startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;
    .locals 2
    .param p1, "listener"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;

    .line 286
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->ensureHandlerThreadStarted()V

    .line 290
    invoke-static {}, Lio/sentry/SentryUUID;->generateSentryId()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackCurrentWindow()V

    .line 293
    return-object v0
.end method

.method public stopCollection(Ljava/lang/String;)V
    .locals 2
    .param p1, "listenerId"    # Ljava/lang/String;

    .line 318
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    if-nez v0, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 322
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 325
    .local v0, "window":Landroid/view/Window;
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopTrackingWindow(Landroid/view/Window;)V

    .line 328
    :cond_3
    return-void
.end method
