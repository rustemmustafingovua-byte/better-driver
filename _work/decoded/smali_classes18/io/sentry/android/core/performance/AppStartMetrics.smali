.class public Lio/sentry/android/core/performance/AppStartMetrics;
.super Lio/sentry/android/core/performance/ActivityLifecycleCallbacksAdapter;
.source "AppStartMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;,
        Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;
    }
.end annotation


# static fields
.field private static CLASS_LOADED_UPTIME_MS:J

.field private static volatile instance:Lio/sentry/android/core/performance/AppStartMetrics;

.field public static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private final activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final activityLifecycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private volatile appLaunchedInForeground:Ljava/lang/Boolean;

.field private appStartBaggageHeader:Ljava/lang/String;

.field private appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

.field private appStartEndTime:Lio/sentry/SentryDate;

.field private final appStartExtension:Lio/sentry/android/core/AppStartExtension;

.field private appStartProfiler:Lio/sentry/ITransactionProfiler;

.field private appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

.field private appStartSentryTraceHeader:Ljava/lang/String;

.field private final appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

.field private appStartTraceId:Lio/sentry/protocol/SentryId;

.field private volatile appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

.field private final applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

.field private cachedStartInfo:Landroid/app/ApplicationStartInfo;

.field private final contentProviderOnCreates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ContentProvider;",
            "Lio/sentry/android/core/performance/TimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile firstIdle:J

.field private final headlessAppStartCheckPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile headlessAppStartListener:Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

.field private final headlessAppStartListenerInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isCallbackRegistered:Z

.field private final sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

.field private volatile shouldSendStartMeasurements:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    .line 71
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lio/sentry/android/core/performance/ActivityLifecycleCallbacksAdapter;-><init>()V

    .line 76
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    .line 86
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 87
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 90
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartCheckPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListenerInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v0, Lio/sentry/android/core/AppStartExtension;

    invoke-direct {v0, p0}, Lio/sentry/android/core/AppStartExtension;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartExtension:Lio/sentry/android/core/AppStartExtension;

    .line 116
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 117
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 118
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    .line 121
    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/performance/AppStartMetrics;
    .locals 3

    .line 104
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez v0, :cond_2

    .line 105
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 106
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-direct {v1}, Lio/sentry/android/core/performance/AppStartMetrics;-><init>()V

    sput-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 105
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

    .line 112
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    return-object v0
.end method

.method private handleHeadlessAppStartIfNeededOnMain()V
    .locals 4

    .line 586
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_4

    .line 591
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListener:Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 599
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v1, v2, :cond_1

    .line 600
    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 604
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    invoke-interface {v1}, Lio/sentry/ITransactionProfiler;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    invoke-interface {v1}, Lio/sentry/ITransactionProfiler;->close()V

    .line 606
    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    .line 608
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    invoke-interface {v1}, Lio/sentry/IContinuousProfiler;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 609
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    invoke-interface {v1, v3}, Lio/sentry/IContinuousProfiler;->close(Z)V

    .line 610
    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 613
    :cond_3
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListener:Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

    .line 614
    .local v1, "listener":Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListenerInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 615
    invoke-direct {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->resolveHeadlessAppStartEndTime()V

    .line 616
    invoke-interface {v1}, Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;->onHeadlessAppStart()V

    .line 619
    .end local v1    # "listener":Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;
    :cond_4
    return-void
.end method

.method private static isForegroundStartReason(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "reason"    # I

    .line 219
    packed-switch p0, :pswitch_data_0

    .line 235
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 223
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static onApplicationCreate(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 476
    .local v0, "now":J
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    .line 477
    .local v2, "instance":Lio/sentry/android/core/performance/AppStartMetrics;
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 479
    invoke-virtual {v2, p0}, Lio/sentry/android/core/performance/AppStartMetrics;->registerLifecycleCallbacks(Landroid/app/Application;)V

    .line 481
    :cond_0
    return-void
.end method

.method public static onApplicationPostCreate(Landroid/app/Application;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 492
    .local v0, "now":J
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    .line 493
    .local v2, "instance":Lio/sentry/android/core/performance/AppStartMetrics;
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 495
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    .line 497
    :cond_0
    return-void
.end method

.method public static onContentProviderCreate(Landroid/content/ContentProvider;)V
    .locals 4
    .param p0, "contentProvider"    # Landroid/content/ContentProvider;

    .line 761
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 763
    .local v0, "now":J
    new-instance v2, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v2}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    .line 764
    .local v2, "measurement":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 765
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v3

    iget-object v3, v3, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    return-void
.end method

.method public static onContentProviderPostCreate(Landroid/content/ContentProvider;)V
    .locals 5
    .param p0, "contentProvider"    # Landroid/content/ContentProvider;

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 778
    .local v0, "now":J
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    iget-object v2, v2, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/performance/TimeSpan;

    .line 779
    .local v2, "measurement":Lio/sentry/android/core/performance/TimeSpan;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    .line 783
    :cond_0
    return-void
.end method

.method private resolveHeadlessAppStartEndTime()V
    .locals 5

    .line 623
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 625
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 626
    .local v0, "stopUptimeMs":J
    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->stopHeadlessAppStartAt(J)V

    .line 627
    return-void

    .line 631
    .end local v0    # "stopUptimeMs":J
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_2

    .line 633
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    move-result-object v0

    .line 634
    .local v0, "timestamps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    nop

    .line 635
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 636
    .local v1, "onCreateStartNanos":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 642
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 643
    .local v2, "onCreateStartUptimeMs":J
    invoke-direct {p0, v2, v3}, Lio/sentry/android/core/performance/AppStartMetrics;->stopHeadlessAppStartAt(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    return-void

    .line 648
    .end local v0    # "timestamps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v1    # "onCreateStartNanos":Ljava/lang/Long;
    .end local v2    # "onCreateStartUptimeMs":J
    :cond_1
    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    .line 652
    :cond_2
    :goto_0
    sget-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->stopHeadlessAppStartAt(J)V

    .line 653
    return-void
.end method

.method private scheduleHeadlessAppStartCheckOnMain()V
    .locals 3

    .line 554
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartCheckPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    nop

    .line 558
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 560
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 579
    return-void
.end method

.method private stopHeadlessAppStartAt(J)V
    .locals 1
    .param p1, "stopUptimeMs"    # J

    .line 656
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0, p1, p2}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0, p1, p2}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    .line 663
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addActivityLifecycleTimeSpans(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)V
    .locals 1
    .param p1, "timeSpan"    # Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 308
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public canExtendAppStart()Z
    .locals 2

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 381
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 382
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0
.end method

.method public clear()V
    .locals 4

    .line 397
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 398
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 399
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 400
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 401
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 402
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    .line 407
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    invoke-interface {v1, v2}, Lio/sentry/IContinuousProfiler;->close(Z)V

    .line 410
    :cond_1
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 411
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 412
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 413
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    .line 414
    iput-boolean v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 415
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 416
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 417
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    .line 418
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartCheckPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 419
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListenerInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 420
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListener:Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

    .line 421
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartTraceId:Lio/sentry/protocol/SentryId;

    .line 422
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSentryTraceHeader:Ljava/lang/String;

    .line 423
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartBaggageHeader:Ljava/lang/String;

    .line 424
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartEndTime:Lio/sentry/SentryDate;

    .line 425
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    .line 426
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartExtension:Lio/sentry/android/core/AppStartExtension;

    invoke-virtual {v0}, Lio/sentry/android/core/AppStartExtension;->clear()V

    .line 427
    return-void
.end method

.method public createProcessInitSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 9

    .line 138
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    move-object v1, v0

    .line 139
    .local v1, "processInitSpan":Lio/sentry/android/core/performance/TimeSpan;
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 141
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v3

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 142
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v5

    sget-wide v7, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    .line 139
    const-string v2, "Process Initialization"

    invoke-virtual/range {v1 .. v8}, Lio/sentry/android/core/performance/TimeSpan;->setup(Ljava/lang/String;JJJ)V

    .line 144
    return-object v1
.end method

.method public getActivityLifecycleTimeSpans()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 303
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 304
    return-object v0
.end method

.method public getAppStartBaggageHeader()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartBaggageHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStartContinuousProfiler()Lio/sentry/IContinuousProfiler;
    .locals 1

    .line 438
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    return-object v0
.end method

.method public getAppStartEndTime()Lio/sentry/SentryDate;
    .locals 1

    .line 283
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartEndTime:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public getAppStartExtension()Lio/sentry/android/core/AppStartExtension;
    .locals 1

    .line 371
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartExtension:Lio/sentry/android/core/AppStartExtension;

    return-object v0
.end method

.method public getAppStartProfiler()Lio/sentry/ITransactionProfiler;
    .locals 1

    .line 430
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    return-object v0
.end method

.method public getAppStartReason()Ljava/lang/String;
    .locals 3

    .line 177
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getReason()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    return-object v1

    .line 202
    :pswitch_0
    const-string v0, "start_activity"

    return-object v0

    .line 200
    :pswitch_1
    const-string v0, "service"

    return-object v0

    .line 198
    :pswitch_2
    const-string v0, "push"

    return-object v0

    .line 204
    :pswitch_3
    const-string v0, "other"

    return-object v0

    .line 196
    :pswitch_4
    const-string v0, "launcher_recents"

    return-object v0

    .line 194
    :pswitch_5
    const-string v0, "launcher"

    return-object v0

    .line 192
    :pswitch_6
    const-string v0, "job"

    return-object v0

    .line 190
    :pswitch_7
    const-string v0, "content_provider"

    return-object v0

    .line 188
    :pswitch_8
    const-string v0, "broadcast"

    return-object v0

    .line 186
    :pswitch_9
    const-string v0, "boot_complete"

    return-object v0

    .line 184
    :pswitch_a
    const-string v0, "backup"

    return-object v0

    .line 182
    :pswitch_b
    const-string v0, "alarm"

    return-object v0

    .line 178
    :cond_1
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 452
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object v0
.end method

.method public getAppStartSentryTraceHeader()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSentryTraceHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public getAppStartTimeSpanForHeadless()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 335
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;
    .locals 7
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 349
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->isAppLaunchedInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 353
    .local v0, "appStartSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 355
    return-object v0

    .line 360
    .end local v0    # "appStartSpan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 361
    .local v0, "sdkInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 363
    return-object v0

    .line 367
    .end local v0    # "sdkInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_1
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    return-object v0
.end method

.method public getAppStartTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 259
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartTraceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .locals 1

    .line 168
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-object v0
.end method

.method public getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public getClassLoadedUptimeMs()J
    .locals 2

    .line 327
    sget-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-wide v0
.end method

.method public getContentProviderOnCreateTimeSpans()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/TimeSpan;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/performance/TimeSpan;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 298
    return-object v0
.end method

.method getFirstIdle()J
    .locals 2

    .line 392
    iget-wide v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    return-wide v0
.end method

.method public getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public isAppLaunchedInForeground()Z
    .locals 2

    .line 240
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onActivityStarted$3$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 0

    .line 714
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onFirstFrameDrawn()V

    return-void
.end method

.method synthetic lambda$onActivityStarted$4$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 0

    .line 716
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onFirstFrameDrawn()V

    return-void
.end method

.method synthetic lambda$scheduleHeadlessAppStartCheckOnMain$0$io-sentry-android-core-performance-AppStartMetrics()Z
    .locals 2

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    .line 563
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartCheckPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    invoke-direct {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->handleHeadlessAppStartIfNeededOnMain()V

    .line 565
    return v1
.end method

.method synthetic lambda$scheduleHeadlessAppStartCheckOnMain$1$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 2

    .line 574
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartCheckPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 575
    invoke-direct {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->handleHeadlessAppStartIfNeededOnMain()V

    .line 576
    return-void
.end method

.method synthetic lambda$scheduleHeadlessAppStartCheckOnMain$2$io-sentry-android-core-performance-AppStartMetrics(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    .line 572
    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 667
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 668
    .local v0, "activityCreatedUptimeMillis":J
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/sentry/android/core/CurrentActivityHolder;->setActivity(Landroid/app/Activity;)V

    .line 671
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 677
    .local v4, "nowUptimeMs":J
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 681
    .local v6, "durationSinceAppStartMillis":J
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->isAppLaunchedInForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 682
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartExtension:Lio/sentry/android/core/AppStartExtension;

    .line 683
    invoke-virtual {v2}, Lio/sentry/android/core/AppStartExtension;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 684
    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 685
    iput-boolean v3, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 686
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 687
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 688
    sput-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    .line 689
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 690
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v8, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v2, v8, :cond_4

    .line 693
    if-eqz p2, :cond_2

    .line 694
    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_0

    .line 695
    :cond_2
    iget-wide v8, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-eqz v2, :cond_3

    iget-wide v8, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    .line 696
    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_0

    .line 698
    :cond_3
    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 702
    .end local v4    # "nowUptimeMs":J
    .end local v6    # "durationSinceAppStartMillis":J
    :cond_4
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 703
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 737
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/CurrentActivityHolder;->clearActivity(Landroid/app/Activity;)V

    .line 739
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 740
    .local v0, "remainingActivities":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 741
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 742
    const/4 v0, 0x0

    .line 746
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 748
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 749
    iput-boolean v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 750
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 752
    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 727
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/CurrentActivityHolder;->clearActivity(Landroid/app/Activity;)V

    .line 728
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 722
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/CurrentActivityHolder;->setActivity(Landroid/app/Activity;)V

    .line 723
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 707
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/CurrentActivityHolder;->setActivity(Landroid/app/Activity;)V

    .line 709
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    return-void

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    .line 714
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 713
    invoke-static {p1, v0, v1}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_0

    .line 716
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 732
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/android/core/CurrentActivityHolder;->clearActivity(Landroid/app/Activity;)V

    .line 733
    return-void
.end method

.method public onAppStartSpansSent()V
    .locals 1

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 313
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 314
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartExtension:Lio/sentry/android/core/AppStartExtension;

    invoke-virtual {v0}, Lio/sentry/android/core/AppStartExtension;->clear()V

    .line 316
    return-void
.end method

.method declared-synchronized onFirstFrameDrawn()V
    .locals 2

    monitor-enter p0

    .line 786
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 788
    .local v0, "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 789
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .end local v0    # "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    .end local p0    # "this":Lio/sentry/android/core/performance/AppStartMetrics;
    :cond_0
    monitor-exit p0

    return-void

    .line 785
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerLifecycleCallbacks(Landroid/app/Application;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;

    .line 506
    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    .line 510
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 511
    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 513
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_3

    .line 514
    nop

    .line 515
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 516
    .local v1, "activityManager":Landroid/app/ActivityManager;
    if-eqz v1, :cond_3

    .line 518
    nop

    .line 519
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getHistoricalProcessStartReasons(I)Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, "historicalProcessStartReasons":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationStartInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 521
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationStartInfo;

    .line 522
    .local v3, "info":Landroid/app/ApplicationStartInfo;
    iput-object v3, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    .line 523
    invoke-virtual {v3}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result v4

    if-nez v4, :cond_2

    .line 524
    invoke-virtual {v3}, Landroid/app/ApplicationStartInfo;->getStartType()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 525
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_0

    .line 527
    :cond_1
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 529
    :goto_0
    invoke-virtual {v3}, Landroid/app/ApplicationStartInfo;->getReason()I

    move-result v0

    invoke-static {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->isForegroundStartReason(I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v2    # "historicalProcessStartReasons":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationStartInfo;>;"
    .end local v3    # "info":Landroid/app/ApplicationStartInfo;
    :cond_2
    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 539
    .local v0, "ignored":Ljava/lang/RuntimeException;
    const-string v2, "AppStartMetrics"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 545
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 548
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListener:Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

    if-eqz v0, :cond_6

    .line 549
    :cond_5
    invoke-direct {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->scheduleHeadlessAppStartCheckOnMain()V

    .line 551
    :cond_6
    return-void
.end method

.method public setAppLaunchedInForeground(Z)V
    .locals 1
    .param p1, "appLaunchedInForeground"    # Z

    .line 245
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Ljava/lang/Boolean;

    .line 246
    return-void
.end method

.method public setAppStartBaggageHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "appStartBaggageHeader"    # Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartBaggageHeader:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setAppStartContinuousProfiler(Lio/sentry/IContinuousProfiler;)V
    .locals 0
    .param p1, "appStartContinuousProfiler"    # Lio/sentry/IContinuousProfiler;

    .line 443
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartContinuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 444
    return-void
.end method

.method public setAppStartEndTime(Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "appStartEndTime"    # Lio/sentry/SentryDate;

    .line 287
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartEndTime:Lio/sentry/SentryDate;

    .line 288
    return-void
.end method

.method public setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 0
    .param p1, "appStartProfiler"    # Lio/sentry/ITransactionProfiler;

    .line 434
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    .line 435
    return-void
.end method

.method public setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V
    .locals 0
    .param p1, "appStartSamplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 448
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 449
    return-void
.end method

.method public setAppStartSentryTraceHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "appStartSentryTraceHeader"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSentryTraceHeader:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setAppStartTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;

    .line 263
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartTraceId:Lio/sentry/protocol/SentryId;

    .line 264
    return-void
.end method

.method public setAppStartType(Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;)V
    .locals 0
    .param p1, "appStartType"    # Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 164
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 165
    return-void
.end method

.method public setCachedStartInfo(Landroid/app/ApplicationStartInfo;)V
    .locals 0
    .param p1, "cachedStartInfo"    # Landroid/app/ApplicationStartInfo;

    .line 464
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->cachedStartInfo:Landroid/app/ApplicationStartInfo;

    .line 465
    return-void
.end method

.method public setClassLoadedUptimeMs(J)V
    .locals 0
    .param p1, "classLoadedUptimeMs"    # J

    .line 458
    sput-wide p1, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    .line 459
    return-void
.end method

.method setFirstIdle(J)V
    .locals 0
    .param p1, "firstIdle"    # J

    .line 387
    iput-wide p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstIdle:J

    .line 388
    return-void
.end method

.method public setHeadlessAppStartListener(Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;)V
    .locals 1
    .param p1, "listener"    # Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

    .line 249
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->headlessAppStartListener:Lio/sentry/android/core/performance/AppStartMetrics$HeadlessAppStartListener;

    .line 250
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->scheduleHeadlessAppStartCheckOnMain()V

    .line 256
    :cond_0
    return-void
.end method

.method public shouldSendStartMeasurements()Z
    .locals 1

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements(Z)Z

    move-result v0

    return v0
.end method

.method public shouldSendStartMeasurements(Z)Z
    .locals 1
    .param p1, "ignoreForegroundCheck"    # Z

    .line 319
    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->isAppLaunchedInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
