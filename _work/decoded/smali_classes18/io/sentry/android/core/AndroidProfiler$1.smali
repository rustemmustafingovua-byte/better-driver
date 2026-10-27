.class Lio/sentry/android/core/AndroidProfiler$1;
.super Ljava/lang/Object;
.source "AndroidProfiler.java"

# interfaces
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/AndroidProfiler;->start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastRefreshRate:F

.field final synthetic this$0:Lio/sentry/android/core/AndroidProfiler;


# direct methods
.method constructor <init>(Lio/sentry/android/core/AndroidProfiler;)V
    .locals 1
    .param p1, "this$0"    # Lio/sentry/android/core/AndroidProfiler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lio/sentry/android/core/AndroidProfiler$1;->this$0:Lio/sentry/android/core/AndroidProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/AndroidProfiler$1;->lastRefreshRate:F

    return-void
.end method


# virtual methods
.method public onFrameMetricCollected(JJJJZZF)V
    .locals 9
    .param p1, "frameStartNanos"    # J
    .param p3, "frameEndNanos"    # J
    .param p5, "durationNanos"    # J
    .param p7, "delayNanos"    # J
    .param p9, "isSlow"    # Z
    .param p10, "isFrozen"    # Z
    .param p11, "refreshRate"    # F

    .line 159
    move/from16 v0, p11

    new-instance v1, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    invoke-virtual {v1}, Lio/sentry/SentryNanotimeDate;->nanoTimestamp()J

    move-result-wide v1

    .line 160
    .local v1, "timestampNanos":J
    nop

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, p3, v3

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lio/sentry/android/core/AndroidProfiler$1;->this$0:Lio/sentry/android/core/AndroidProfiler;

    .line 164
    invoke-static {v5}, Lio/sentry/android/core/AndroidProfiler;->access$000(Lio/sentry/android/core/AndroidProfiler;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 168
    .local v3, "frameTimestampRelativeNanos":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    if-eqz p10, :cond_1

    .line 172
    iget-object v5, p0, Lio/sentry/android/core/AndroidProfiler$1;->this$0:Lio/sentry/android/core/AndroidProfiler;

    invoke-static {v5}, Lio/sentry/android/core/AndroidProfiler;->access$100(Lio/sentry/android/core/AndroidProfiler;)Ljava/util/ArrayDeque;

    move-result-object v5

    new-instance v6, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 174
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 172
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_1
    if-eqz p9, :cond_2

    .line 176
    iget-object v5, p0, Lio/sentry/android/core/AndroidProfiler$1;->this$0:Lio/sentry/android/core/AndroidProfiler;

    invoke-static {v5}, Lio/sentry/android/core/AndroidProfiler;->access$200(Lio/sentry/android/core/AndroidProfiler;)Ljava/util/ArrayDeque;

    move-result-object v5

    new-instance v6, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 178
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 176
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 180
    :cond_2
    :goto_0
    iget v5, p0, Lio/sentry/android/core/AndroidProfiler$1;->lastRefreshRate:F

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_3

    .line 181
    iput v0, p0, Lio/sentry/android/core/AndroidProfiler$1;->lastRefreshRate:F

    .line 182
    iget-object v5, p0, Lio/sentry/android/core/AndroidProfiler$1;->this$0:Lio/sentry/android/core/AndroidProfiler;

    invoke-static {v5}, Lio/sentry/android/core/AndroidProfiler;->access$300(Lio/sentry/android/core/AndroidProfiler;)Ljava/util/ArrayDeque;

    move-result-object v5

    new-instance v6, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 184
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 182
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 186
    :cond_3
    return-void
.end method
