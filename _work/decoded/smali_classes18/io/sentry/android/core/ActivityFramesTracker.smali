.class public final Lio/sentry/android/core/ActivityFramesTracker;
.super Ljava/lang/Object;
.source "ActivityFramesTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    }
.end annotation


# instance fields
.field private final activityMeasurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/protocol/SentryId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final androidXAvailable:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final frameCountAtStartSnapshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Landroidx/core/app/FrameMetricsAggregator;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lio/sentry/android/core/MainLooperHandler;

.field protected lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 64
    new-instance v0, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v0}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;)V
    .locals 2
    .param p1, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "handler"    # Lio/sentry/android/core/MainLooperHandler;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameCountAtStartSnapshots:Ljava/util/Map;

    .line 43
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 52
    nop

    .line 54
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 53
    const-string v1, "androidx.core.app.FrameMetricsAggregator"

    invoke-virtual {p1, v1, v0}, Lio/sentry/util/LoadClass;->isClassAvailableLazy(Ljava/lang/String;Lio/sentry/ILogger;)Lio/sentry/util/LazyEvaluator;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->androidXAvailable:Lio/sentry/util/LazyEvaluator;

    .line 55
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    .line 57
    iput-object p2, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 58
    iput-object p3, p0, Lio/sentry/android/core/ActivityFramesTracker;->handler:Lio/sentry/android/core/MainLooperHandler;

    .line 59
    return-void
.end method

.method constructor <init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;Landroidx/core/app/FrameMetricsAggregator;)V
    .locals 2
    .param p1, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "handler"    # Lio/sentry/android/core/MainLooperHandler;
    .param p4, "frameMetricsAggregator"    # Landroidx/core/app/FrameMetricsAggregator;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;)V

    .line 75
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p4}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;-><init>(Landroidx/core/app/FrameMetricsAggregator;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    .line 76
    return-void
.end method

.method private calculateCurrentFrameCounts()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    .locals 10

    .line 106
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    return-object v1

    .line 110
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->androidXAvailable:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    return-object v1

    .line 114
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v0

    .line 116
    .local v0, "framesRates":[Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    .line 117
    .local v2, "totalFrames":I
    const/4 v3, 0x0

    .line 118
    .local v3, "slowFrames":I
    const/4 v4, 0x0

    .line 120
    .local v4, "frozenFrames":I
    if-eqz v0, :cond_4

    array-length v5, v0

    if-lez v5, :cond_4

    .line 121
    const/4 v5, 0x0

    aget-object v5, v0, v5

    .line 122
    .local v5, "totalIndexArray":Landroid/util/SparseIntArray;
    if-eqz v5, :cond_4

    .line 123
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 124
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 125
    .local v7, "frameTime":I
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 126
    .local v8, "numFrames":I
    add-int/2addr v2, v8

    .line 128
    const/16 v9, 0x2bc

    if-le v7, v9, :cond_2

    .line 130
    add-int/2addr v4, v8

    goto :goto_1

    .line 131
    :cond_2
    const/16 v9, 0x10

    if-le v7, v9, :cond_3

    .line 133
    add-int/2addr v3, v8

    .line 123
    .end local v7    # "frameTime":I
    .end local v8    # "numFrames":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    .end local v5    # "totalIndexArray":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    :cond_4
    new-instance v5, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    invoke-direct {v5, v2, v3, v4, v1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(IIILio/sentry/android/core/ActivityFramesTracker$1;)V

    return-object v5
.end method

.method private diffFrameCountsAtEnd(Landroid/app/Activity;)Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 186
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameCountAtStartSnapshots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 187
    .local v0, "frameCountsAtStart":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return-object v1

    .line 191
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityFramesTracker;->calculateCurrentFrameCounts()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    move-result-object v2

    .line 192
    .local v2, "frameCountsAtEnd":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    if-nez v2, :cond_1

    .line 193
    return-object v1

    .line 196
    :cond_1
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v3

    invoke-static {v0}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 197
    .local v3, "diffTotalFrames":I
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v4

    invoke-static {v0}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 198
    .local v4, "diffSlowFrames":I
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v5

    invoke-static {v0}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 200
    .local v5, "diffFrozenFrames":I
    new-instance v6, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    invoke-direct {v6, v3, v4, v5, v1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(IIILio/sentry/android/core/ActivityFramesTracker$1;)V

    return-object v6
.end method

.method static synthetic lambda$new$0()Landroidx/core/app/FrameMetricsAggregator;
    .locals 1

    .line 55
    new-instance v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-direct {v0}, Landroidx/core/app/FrameMetricsAggregator;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroidx/core/app/FrameMetricsAggregator;)Landroidx/core/app/FrameMetricsAggregator;
    .locals 0
    .param p0, "frameMetricsAggregator"    # Landroidx/core/app/FrameMetricsAggregator;

    .line 75
    return-object p0
.end method

.method private runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "tag"    # Ljava/lang/String;

    .line 231
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->handler:Lio/sentry/android/core/MainLooperHandler;

    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "ignored":Ljava/lang/Throwable;
    if-eqz p2, :cond_1

    .line 247
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method private snapshotFrameCountsAtStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 99
    invoke-direct {p0}, Lio/sentry/android/core/ActivityFramesTracker;->calculateCurrentFrameCounts()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    move-result-object v0

    .line 100
    .local v0, "frameCounts":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameCountAtStartSnapshots:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 87
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 88
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 89
    :cond_0
    return-void

    .line 92
    :cond_1
    :try_start_1
    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;)V

    const-string v2, "FrameMetricsAggregator.add"

    invoke-direct {p0, v1, v2}, Lio/sentry/android/core/ActivityFramesTracker;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->snapshotFrameCountsAtStart(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 96
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 87
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
.end method

.method public isFrameMetricsAggregatorAvailable()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->androidXAvailable:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 81
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 82
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0
.end method

.method synthetic lambda$addActivity$2$io-sentry-android-core-ActivityFramesTracker(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 93
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0, p1}, Landroidx/core/app/FrameMetricsAggregator;->add(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$runSafelyOnUiThread$5$io-sentry-android-core-ActivityFramesTracker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "tag"    # Ljava/lang/String;

    .line 237
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    .local v0, "ignored":Ljava/lang/Throwable;
    if-eqz p2, :cond_0

    .line 240
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$setMetrics$3$io-sentry-android-core-ActivityFramesTracker(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 159
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0, p1}, Landroidx/core/app/FrameMetricsAggregator;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    return-void
.end method

.method synthetic lambda$stop$4$io-sentry-android-core-ActivityFramesTracker()V
    .locals 1

    .line 222
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->stop()[Landroid/util/SparseIntArray;

    return-void
.end method

.method public setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "transactionId"    # Lio/sentry/protocol/SentryId;

    .line 144
    const-string v0, "none"

    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 145
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 182
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 146
    :cond_0
    return-void

    .line 159
    :cond_1
    :try_start_1
    new-instance v2, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lio/sentry/android/core/ActivityFramesTracker;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->diffFrameCountsAtEnd(Landroid/app/Activity;)Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    move-result-object v2

    .line 163
    .local v2, "frameCounts":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    if-eqz v2, :cond_4

    .line 164
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v3

    if-nez v3, :cond_2

    .line 165
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v3

    if-nez v3, :cond_2

    .line 166
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    new-instance v3, Lio/sentry/protocol/MeasurementValue;

    .line 171
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 172
    .local v3, "tfValues":Lio/sentry/protocol/MeasurementValue;
    new-instance v4, Lio/sentry/protocol/MeasurementValue;

    .line 173
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 174
    .local v4, "sfValues":Lio/sentry/protocol/MeasurementValue;
    new-instance v5, Lio/sentry/protocol/MeasurementValue;

    .line 175
    invoke-static {v2}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 176
    .local v5, "ffValues":Lio/sentry/protocol/MeasurementValue;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    const-string v6, "frames_total"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v6, "frames_slow"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v6, "frames_frozen"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v6, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    nop

    .end local v0    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    .end local v2    # "frameCounts":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    .end local v3    # "tfValues":Lio/sentry/protocol/MeasurementValue;
    .end local v4    # "sfValues":Lio/sentry/protocol/MeasurementValue;
    .end local v5    # "ffValues":Lio/sentry/protocol/MeasurementValue;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 183
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 182
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v2    # "frameCounts":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 167
    :cond_5
    return-void

    .line 144
    .end local v2    # "frameCounts":Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v0
.end method

.method public stop()V
    .locals 3

    .line 219
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 220
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/ActivityFramesTracker;)V

    const-string v2, "FrameMetricsAggregator.stop"

    invoke-direct {p0, v1, v2}, Lio/sentry/android/core/ActivityFramesTracker;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v1}, Landroidx/core/app/FrameMetricsAggregator;->reset()[Landroid/util/SparseIntArray;

    .line 225
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 227
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 219
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

.method public takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;
    .locals 3
    .param p1, "transactionId"    # Lio/sentry/protocol/SentryId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryId;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 206
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 207
    nop

    .line 214
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 207
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 210
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    .line 211
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 212
    .local v1, "stringMeasurementValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    iget-object v2, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    nop

    .line 214
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 213
    :cond_2
    return-object v1

    .line 205
    .end local v1    # "stringMeasurementValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
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
.end method
