.class public Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
.super Ljava/lang/Object;
.source "ActivityLifecycleSpanHelper.java"


# static fields
.field private static final APP_METRICS_ACTIVITIES_OP:Ljava/lang/String; = "activity.load"


# instance fields
.field private final activityName:Ljava/lang/String;

.field private onCreateSpan:Lio/sentry/ISpan;

.field private onCreateStartTimestamp:Lio/sentry/SentryDate;

.field private onStartSpan:Lio/sentry/ISpan;

.field private onStartStartTimestamp:Lio/sentry/SentryDate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateStartTimestamp:Lio/sentry/SentryDate;

    .line 24
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartStartTimestamp:Lio/sentry/SentryDate;

    .line 25
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    .line 26
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    .line 29
    iput-object p1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->activityName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private createLifecycleSpan(Lio/sentry/ISpan;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 2
    .param p1, "parentSpan"    # Lio/sentry/ISpan;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "startTimestamp"    # Lio/sentry/SentryDate;

    .line 113
    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 114
    const-string v1, "activity.load"

    invoke-interface {p1, v1, p2, p3, v0}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v0

    .line 116
    .local v0, "span":Lio/sentry/ISpan;
    invoke-direct {p0, v0}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->setDefaultStartSpanData(Lio/sentry/ISpan;)V

    .line 117
    return-object v0
.end method

.method private setDefaultStartSpanData(Lio/sentry/ISpan;)V
    .locals 2
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 133
    nop

    .line 135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 133
    const-string v1, "thread.id"

    invoke-interface {p1, v1, v0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "thread.name"

    const-string v1, "main"

    invoke-interface {p1, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ui.contributes_to_ttid"

    invoke-interface {p1, v1, v0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v1, "ui.contributes_to_ttfd"

    invoke-interface {p1, v1, v0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 122
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    invoke-interface {v0}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-interface {v0, v1}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    .line 126
    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    invoke-interface {v1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    sget-object v2, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-interface {v1, v2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    .line 129
    :cond_1
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    .line 130
    return-void
.end method

.method public createAndStopOnCreateSpan(Lio/sentry/ISpan;)V
    .locals 2
    .param p1, "parentSpan"    # Lio/sentry/ISpan;

    .line 41
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateStartTimestamp:Lio/sentry/SentryDate;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateStartTimestamp:Lio/sentry/SentryDate;

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->createLifecycleSpan(Lio/sentry/ISpan;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    .line 44
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    .line 46
    :cond_0
    return-void
.end method

.method public createAndStopOnStartSpan(Lio/sentry/ISpan;)V
    .locals 2
    .param p1, "parentSpan"    # Lio/sentry/ISpan;

    .line 49
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartStartTimestamp:Lio/sentry/SentryDate;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartStartTimestamp:Lio/sentry/SentryDate;

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->createLifecycleSpan(Lio/sentry/ISpan;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    .line 52
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    .line 54
    :cond_0
    return-void
.end method

.method public getOnCreateSpan()Lio/sentry/ISpan;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    return-object v0
.end method

.method public getOnCreateStartTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateStartTimestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public getOnStartSpan()Lio/sentry/ISpan;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    return-object v0
.end method

.method public getOnStartStartTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartStartTimestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public saveSpanToAppStartMetrics()V
    .locals 35

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 76
    :cond_0
    iget-object v1, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    invoke-interface {v1}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v1

    .line 77
    .local v1, "onCreateFinishDate":Lio/sentry/SentryDate;
    iget-object v2, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    invoke-interface {v2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2

    .line 78
    .local v2, "onStartFinishDate":Lio/sentry/SentryDate;
    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    goto/16 :goto_0

    .line 81
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 82
    .local v3, "now":J
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v5

    .line 83
    .local v5, "nowDate":Lio/sentry/SentryDate;
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    .line 84
    invoke-interface {v7}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 85
    .local v6, "onCreateShiftMs":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    invoke-virtual {v5, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 87
    .local v8, "onCreateStopShiftMs":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v11, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    .line 88
    invoke-interface {v11}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v11

    invoke-virtual {v5, v11}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 89
    .local v10, "onStartShiftMs":J
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 91
    .local v12, "onStartStopShiftMs":J
    new-instance v14, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    invoke-direct {v14}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;-><init>()V

    .line 92
    .local v14, "activityLifecycleTimeSpan":Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;
    nop

    .line 93
    invoke-virtual {v14}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v15

    move-object/from16 v23, v1

    .end local v1    # "onCreateFinishDate":Lio/sentry/SentryDate;
    .local v23, "onCreateFinishDate":Lio/sentry/SentryDate;
    iget-object v1, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    .line 95
    invoke-interface {v1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object v16

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v24, v2

    .end local v2    # "onStartFinishDate":Lio/sentry/SentryDate;
    .local v24, "onStartFinishDate":Lio/sentry/SentryDate;
    iget-object v2, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateSpan:Lio/sentry/ISpan;

    .line 96
    invoke-interface {v2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v2

    move-wide/from16 v25, v3

    .end local v3    # "now":J
    .local v25, "now":J
    invoke-virtual {v2}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v17

    sub-long v19, v25, v6

    sub-long v21, v25, v8

    .line 94
    invoke-virtual/range {v15 .. v22}, Lio/sentry/android/core/performance/TimeSpan;->setup(Ljava/lang/String;JJJ)V

    .line 99
    nop

    .line 100
    invoke-virtual {v14}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v27

    iget-object v1, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    .line 102
    invoke-interface {v1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object v28

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartSpan:Lio/sentry/ISpan;

    .line 103
    invoke-interface {v2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v29

    sub-long v31, v25, v10

    sub-long v33, v25, v12

    .line 101
    invoke-virtual/range {v27 .. v34}, Lio/sentry/android/core/performance/TimeSpan;->setup(Ljava/lang/String;JJJ)V

    .line 106
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v1

    invoke-virtual {v1, v14}, Lio/sentry/android/core/performance/AppStartMetrics;->addActivityLifecycleTimeSpans(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)V

    .line 107
    return-void

    .line 78
    .end local v5    # "nowDate":Lio/sentry/SentryDate;
    .end local v6    # "onCreateShiftMs":J
    .end local v8    # "onCreateStopShiftMs":J
    .end local v10    # "onStartShiftMs":J
    .end local v12    # "onStartStopShiftMs":J
    .end local v14    # "activityLifecycleTimeSpan":Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;
    .end local v23    # "onCreateFinishDate":Lio/sentry/SentryDate;
    .end local v24    # "onStartFinishDate":Lio/sentry/SentryDate;
    .end local v25    # "now":J
    .restart local v1    # "onCreateFinishDate":Lio/sentry/SentryDate;
    .restart local v2    # "onStartFinishDate":Lio/sentry/SentryDate;
    :cond_2
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    .line 79
    .end local v1    # "onCreateFinishDate":Lio/sentry/SentryDate;
    .end local v2    # "onStartFinishDate":Lio/sentry/SentryDate;
    .restart local v23    # "onCreateFinishDate":Lio/sentry/SentryDate;
    .restart local v24    # "onStartFinishDate":Lio/sentry/SentryDate;
    :goto_0
    return-void

    .line 74
    .end local v23    # "onCreateFinishDate":Lio/sentry/SentryDate;
    .end local v24    # "onStartFinishDate":Lio/sentry/SentryDate;
    :cond_3
    :goto_1
    return-void
.end method

.method public setOnCreateStartTimestamp(Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "onCreateStartTimestamp"    # Lio/sentry/SentryDate;

    .line 33
    iput-object p1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onCreateStartTimestamp:Lio/sentry/SentryDate;

    .line 34
    return-void
.end method

.method public setOnStartStartTimestamp(Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "onStartStartTimestamp"    # Lio/sentry/SentryDate;

    .line 37
    iput-object p1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->onStartStartTimestamp:Lio/sentry/SentryDate;

    .line 38
    return-void
.end method
