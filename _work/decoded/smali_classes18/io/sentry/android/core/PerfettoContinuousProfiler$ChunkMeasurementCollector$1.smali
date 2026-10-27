.class Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;
.super Ljava/lang/Object;
.source "PerfettoContinuousProfiler.java"

# interfaces
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->start(Lio/sentry/CompositePerformanceCollector;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastRefreshRate:F

.field final synthetic this$0:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;


# direct methods
.method constructor <init>(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)V
    .locals 1
    .param p1, "this$0"    # Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->this$0:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->lastRefreshRate:F

    return-void
.end method


# virtual methods
.method public onFrameMetricCollected(JJJJZZF)V
    .locals 11
    .param p1, "frameStartNanos"    # J
    .param p3, "frameEndNanos"    # J
    .param p5, "durationNanos"    # J
    .param p7, "delayNanos"    # J
    .param p9, "isSlow"    # Z
    .param p10, "isFrozen"    # Z
    .param p11, "refreshRate"    # F

    .line 619
    move/from16 v0, p11

    new-instance v1, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    invoke-virtual {v1}, Lio/sentry/SentryNanotimeDate;->nanoTimestamp()J

    move-result-wide v1

    .line 625
    .local v1, "timestampNanos":J
    nop

    .line 626
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, p3, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 627
    .local v3, "frameEndElapsedRealtimeNanos":J
    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->this$0:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    .line 628
    invoke-static {v5}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->access$000(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 632
    .local v5, "frameTimestampRelativeNanos":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 633
    return-void

    .line 635
    :cond_0
    if-eqz p10, :cond_1

    .line 636
    iget-object v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->this$0:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    invoke-static {v7}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->access$100(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v7

    new-instance v8, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 638
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 636
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_1
    if-eqz p9, :cond_2

    .line 640
    iget-object v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->this$0:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    invoke-static {v7}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->access$200(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v7

    new-instance v8, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 642
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 640
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 644
    :cond_2
    :goto_0
    iget v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->lastRefreshRate:F

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_3

    .line 645
    iput v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->lastRefreshRate:F

    .line 646
    iget-object v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;->this$0:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    invoke-static {v7}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->access$300(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v7

    new-instance v8, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 648
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v8, v9, v10, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 646
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 650
    :cond_3
    return-void
.end method
