.class public Lio/sentry/android/core/SpanFrameMetricsCollector;
.super Ljava/lang/Object;
.source "SpanFrameMetricsCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceContinuousCollector;
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    }
.end annotation


# static fields
.field private static final EMPTY_NANO_TIME:Lio/sentry/SentryNanotimeDate;

.field private static final MAX_FRAMES_COUNT:I = 0xe10

.field private static final ONE_SECOND_NANOS:J


# instance fields
.field private final enabled:Z

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private final frames:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private lastKnownFrameDurationNanos:J

.field private volatile listenerId:Ljava/lang/String;

.field protected final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final runningSpans:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->ONE_SECOND_NANOS:J

    .line 35
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/sentry/SentryNanotimeDate;-><init>(JJ)V

    sput-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->EMPTY_NANO_TIME:Lio/sentry/SentryNanotimeDate;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 44
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 69
    const-wide/32 v0, 0xfe502a

    iput-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    .line 74
    iput-object p2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 76
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    .line 77
    return-void
.end method

.method private static addPendingFrameDelay(Lio/sentry/android/core/SentryFrameMetrics;JJJ)I
    .locals 11
    .param p0, "frameMetrics"    # Lio/sentry/android/core/SentryFrameMetrics;
    .param p1, "frameDurationNanos"    # J
    .param p3, "spanEndNanos"    # J
    .param p5, "nextScheduledFrameNanos"    # J

    .line 295
    sub-long v0, p3, p5

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 296
    .local v5, "pendingDurationNanos":J
    nop

    .line 297
    invoke-static {v5, v6, p1, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result v0

    .line 298
    .local v0, "isSlow":Z
    if-eqz v0, :cond_0

    .line 300
    invoke-static {v5, v6}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v10

    .line 301
    .local v10, "isFrozen":Z
    sub-long v7, v5, p1

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 302
    .local v7, "pendingDelayNanos":J
    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    .line 303
    const/4 v1, 0x1

    return v1

    .line 305
    .end local v7    # "pendingDelayNanos":J
    .end local v10    # "isFrozen":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private captureFrameMetrics(Lio/sentry/ISpan;)V
    .locals 34
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 136
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v3

    .line 137
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 138
    .local v0, "removed":Z
    if-nez v0, :cond_1

    .line 225
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 139
    :cond_0
    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 143
    .local v4, "spanFinishDate":Lio/sentry/SentryDate;
    if-nez v4, :cond_3

    .line 225
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 144
    :cond_2
    return-void

    .line 147
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v5

    invoke-static {v5}, Lio/sentry/android/core/SpanFrameMetricsCollector;->toNanoTime(Lio/sentry/SentryDate;)J

    move-result-wide v5

    .line 148
    .local v5, "spanStartNanos":J
    invoke-static {v4}, Lio/sentry/android/core/SpanFrameMetricsCollector;->toNanoTime(Lio/sentry/SentryDate;)J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v12, v7

    .line 149
    .local v12, "spanEndNanos":J
    sub-long v7, v12, v5

    .line 150
    .local v7, "spanDurationNanos":J
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_5

    .line 225
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 151
    :cond_4
    return-void

    .line 154
    :cond_5
    :try_start_3
    new-instance v11, Lio/sentry/android/core/SentryFrameMetrics;

    invoke-direct {v11}, Lio/sentry/android/core/SentryFrameMetrics;-><init>()V

    move-object v14, v11

    .line 156
    .local v14, "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    iget-wide v9, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    .line 158
    .local v9, "frameDurationNanos":J
    iget-object v11, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 160
    iget-object v11, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v15, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-direct {v15, v5, v6}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    invoke-virtual {v11, v15}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 163
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 164
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    move-object/from16 v23, v15

    .line 166
    .local v23, "frame":Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    cmp-long v15, v15, v12

    if-lez v15, :cond_6

    .line 167
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v32, v5

    move-wide/from16 v26, v9

    goto/16 :goto_2

    .line 170
    :cond_6
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v15, v15, v5

    if-ltz v15, :cond_7

    :try_start_4
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    cmp-long v15, v15, v12

    if-gtz v15, :cond_7

    .line 172
    nop

    .line 173
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$200(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v17

    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$400(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z

    move-result v19

    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$500(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z

    move-result v20

    .line 172
    invoke-virtual/range {v14 .. v20}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v32, v5

    move-wide/from16 v26, v9

    goto/16 :goto_1

    .line 136
    .end local v0    # "removed":Z
    .end local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v5    # "spanStartNanos":J
    .end local v7    # "spanDurationNanos":J
    .end local v9    # "frameDurationNanos":J
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;>;"
    .end local v12    # "spanEndNanos":J
    .end local v14    # "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    .end local v23    # "frame":Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v3

    goto/16 :goto_5

    .line 174
    .restart local v0    # "removed":Z
    .restart local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v5    # "spanStartNanos":J
    .restart local v7    # "spanDurationNanos":J
    .restart local v9    # "frameDurationNanos":J
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;>;"
    .restart local v12    # "spanEndNanos":J
    .restart local v14    # "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    .restart local v23    # "frame":Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    :cond_7
    :try_start_5
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    cmp-long v15, v5, v15

    if-lez v15, :cond_8

    :try_start_6
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v15, v5, v15

    if-ltz v15, :cond_9

    .line 175
    :cond_8
    :try_start_7
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    cmp-long v15, v12, v15

    if-lez v15, :cond_a

    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    cmp-long v15, v12, v15

    if-gez v15, :cond_a

    .line 178
    :cond_9
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .local v24, "ignored":Lio/sentry/ISentryLifecycleToken;
    .local v25, "spanFinishDate":Lio/sentry/SentryDate;
    sub-long v3, v5, v15

    move-wide/from16 v26, v9

    const-wide/16 v9, 0x0

    .end local v9    # "frameDurationNanos":J
    .local v26, "frameDurationNanos":J
    :try_start_8
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 179
    .local v3, "durationBeforeSpan":J
    nop

    .line 180
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    move-wide/from16 v21, v3

    .end local v3    # "durationBeforeSpan":J
    .local v21, "durationBeforeSpan":J
    sub-long v3, v21, v15

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 181
    .local v3, "delayBeforeSpan":J
    nop

    .line 182
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v15

    sub-long v9, v15, v3

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 184
    .local v17, "delayWithinSpan":J
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 185
    .local v9, "frameStart":J
    move-wide/from16 v28, v3

    .end local v3    # "delayBeforeSpan":J
    .local v28, "delayBeforeSpan":J
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 186
    .local v3, "frameEnd":J
    move-wide/from16 v30, v3

    .end local v3    # "frameEnd":J
    .local v30, "frameEnd":J
    sub-long v3, v30, v9

    .line 187
    .local v3, "frameDuration":J
    nop

    .line 190
    move-wide/from16 v32, v5

    .end local v5    # "spanStartNanos":J
    .local v32, "spanStartNanos":J
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result v19

    .line 191
    invoke-static {v3, v4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v20

    .line 187
    move-wide v15, v3

    .end local v3    # "frameDuration":J
    .local v15, "frameDuration":J
    invoke-virtual/range {v14 .. v20}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    goto :goto_1

    .line 175
    .end local v15    # "frameDuration":J
    .end local v17    # "delayWithinSpan":J
    .end local v21    # "durationBeforeSpan":J
    .end local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v26    # "frameDurationNanos":J
    .end local v28    # "delayBeforeSpan":J
    .end local v30    # "frameEnd":J
    .end local v32    # "spanStartNanos":J
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v5    # "spanStartNanos":J
    .local v9, "frameDurationNanos":J
    :cond_a
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v32, v5

    move-wide/from16 v26, v9

    .line 194
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v5    # "spanStartNanos":J
    .end local v9    # "frameDurationNanos":J
    .restart local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v26    # "frameDurationNanos":J
    .restart local v32    # "spanStartNanos":J
    :goto_1
    invoke-static/range {v23 .. v23}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v3

    move-wide v9, v3

    .line 195
    .end local v23    # "frame":Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    .end local v26    # "frameDurationNanos":J
    .restart local v9    # "frameDurationNanos":J
    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-wide/from16 v5, v32

    goto/16 :goto_0

    .line 163
    .end local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v32    # "spanStartNanos":J
    .restart local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v5    # "spanStartNanos":J
    :cond_b
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v32, v5

    move-wide/from16 v26, v9

    .line 198
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v5    # "spanStartNanos":J
    .end local v9    # "frameDurationNanos":J
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;>;"
    .restart local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v26    # "frameDurationNanos":J
    .restart local v32    # "spanStartNanos":J
    :goto_2
    move-wide/from16 v10, v26

    goto :goto_3

    .line 158
    .end local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v26    # "frameDurationNanos":J
    .end local v32    # "spanStartNanos":J
    .restart local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v5    # "spanStartNanos":J
    .restart local v9    # "frameDurationNanos":J
    :cond_c
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v32, v5

    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v4    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v5    # "spanStartNanos":J
    .restart local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .restart local v32    # "spanStartNanos":J
    move-wide v10, v9

    .line 198
    .end local v9    # "frameDurationNanos":J
    .local v10, "frameDurationNanos":J
    :goto_3
    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrozenFrameCount()I

    move-result v3

    .line 200
    .local v3, "totalFrameCount":I
    iget-object v4, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-virtual {v4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getLastKnownFrameStartTimeNanos()J

    move-result-wide v4

    .line 203
    .local v4, "nextScheduledFrameNanos":J
    const-wide/16 v15, -0x1

    cmp-long v6, v4, v15

    if-eqz v6, :cond_d

    .line 204
    nop

    .line 205
    move-object v9, v14

    move-wide v14, v4

    .end local v4    # "nextScheduledFrameNanos":J
    .local v9, "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    .local v14, "nextScheduledFrameNanos":J
    invoke-static/range {v9 .. v15}, Lio/sentry/android/core/SpanFrameMetricsCollector;->addPendingFrameDelay(Lio/sentry/android/core/SentryFrameMetrics;JJJ)I

    move-result v4

    move-wide v5, v14

    move-object v14, v9

    .end local v9    # "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    .local v5, "nextScheduledFrameNanos":J
    .local v14, "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    add-int/2addr v3, v4

    .line 207
    nop

    .line 208
    invoke-static {v14, v10, v11, v7, v8}, Lio/sentry/android/core/SpanFrameMetricsCollector;->interpolateFrameCount(Lio/sentry/android/core/SentryFrameMetrics;JJ)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    .line 203
    .end local v5    # "nextScheduledFrameNanos":J
    .restart local v4    # "nextScheduledFrameNanos":J
    :cond_d
    move-wide v5, v4

    .line 210
    .end local v4    # "nextScheduledFrameNanos":J
    .restart local v5    # "nextScheduledFrameNanos":J
    :goto_4
    nop

    .line 211
    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameDelayNanos()J

    move-result-wide v15

    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameDelayNanos()J

    move-result-wide v17

    move v4, v0

    .end local v0    # "removed":Z
    .local v4, "removed":Z
    add-long v0, v15, v17

    .line 212
    .local v0, "frameDelayNanos":J
    move v9, v3

    move v15, v4

    .end local v3    # "totalFrameCount":I
    .end local v4    # "removed":Z
    .local v9, "totalFrameCount":I
    .local v15, "removed":Z
    long-to-double v3, v0

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    div-double v3, v3, v16

    .line 214
    .local v3, "frameDelayInSeconds":D
    move-wide/from16 v16, v0

    .end local v0    # "frameDelayNanos":J
    .local v16, "frameDelayNanos":J
    const-string v0, "frames.total"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    const-string v0, "frames.slow"

    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string v0, "frames.frozen"

    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v0, "frames.delay"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    instance-of v0, v2, Lio/sentry/ITransaction;

    if-eqz v0, :cond_e

    .line 220
    const-string v0, "frames_total"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 221
    const-string v0, "frames_slow"

    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 222
    const-string v0, "frames_frozen"

    invoke-virtual {v14}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 223
    const-string v0, "frames_delay"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 225
    .end local v3    # "frameDelayInSeconds":D
    .end local v5    # "nextScheduledFrameNanos":J
    .end local v7    # "spanDurationNanos":J
    .end local v9    # "totalFrameCount":I
    .end local v10    # "frameDurationNanos":J
    .end local v12    # "spanEndNanos":J
    .end local v14    # "frameMetrics":Lio/sentry/android/core/SentryFrameMetrics;
    .end local v15    # "removed":Z
    .end local v16    # "frameDelayNanos":J
    .end local v25    # "spanFinishDate":Lio/sentry/SentryDate;
    .end local v32    # "spanStartNanos":J
    :cond_e
    if-eqz v24, :cond_f

    invoke-interface/range {v24 .. v24}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 226
    .end local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_f
    return-void

    .line 136
    .restart local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .end local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v0

    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v24    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :goto_5
    if-eqz v24, :cond_10

    :try_start_9
    invoke-interface/range {v24 .. v24}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    throw v1
.end method

.method private static interpolateFrameCount(Lio/sentry/android/core/SentryFrameMetrics;JJ)I
    .locals 8
    .param p0, "frameMetrics"    # Lio/sentry/android/core/SentryFrameMetrics;
    .param p1, "frameDurationNanos"    # J
    .param p3, "spanDurationNanos"    # J

    .line 282
    invoke-virtual {p0}, Lio/sentry/android/core/SentryFrameMetrics;->getTotalDurationNanos()J

    move-result-wide v0

    .line 283
    .local v0, "frameMetricsDurationNanos":J
    sub-long v2, p3, v0

    .line 284
    .local v2, "nonRenderedDuration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 285
    long-to-double v4, v2

    long-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4

    .line 287
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method static synthetic lambda$new$0(Lio/sentry/ISpan;Lio/sentry/ISpan;)I
    .locals 3
    .param p0, "o1"    # Lio/sentry/ISpan;
    .param p1, "o2"    # Lio/sentry/ISpan;

    .line 47
    if-ne p0, p1, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-interface {p0}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result v0

    .line 51
    .local v0, "timeDiff":I
    if-eqz v0, :cond_1

    .line 52
    return v0

    .line 56
    :cond_1
    invoke-interface {p0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 56
    return v1
.end method

.method private static toNanoTime(Lio/sentry/SentryDate;)J
    .locals 6
    .param p0, "date"    # Lio/sentry/SentryDate;

    .line 318
    instance-of v0, p0, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->EMPTY_NANO_TIME:Lio/sentry/SentryNanotimeDate;

    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    return-wide v0

    .line 324
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    .line 325
    .local v0, "nowUnixInNanos":J
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 326
    .local v2, "shiftInNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    return-wide v4
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 230
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 231
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    .line 236
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 238
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 230
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

.method public onFrameMetricCollected(JJJJZZF)V
    .locals 17
    .param p1, "frameStartNanos"    # J
    .param p3, "frameEndNanos"    # J
    .param p5, "durationNanos"    # J
    .param p7, "delayNanos"    # J
    .param p9, "isSlow"    # Z
    .param p10, "isFrozen"    # Z
    .param p11, "refreshRate"    # F

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v1

    const/16 v2, 0xe10

    if-le v1, v2, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    sget-wide v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->ONE_SECOND_NANOS:J

    long-to-double v1, v1

    move/from16 v3, p11

    float-to-double v4, v3

    div-double/2addr v1, v4

    double-to-long v1, v1

    .line 258
    .local v1, "expectedFrameDurationNanos":J
    iput-wide v1, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    .line 260
    if-nez p9, :cond_2

    if-eqz p10, :cond_1

    goto :goto_0

    :cond_1
    move-wide v15, v1

    goto :goto_1

    .line 261
    :cond_2
    :goto_0
    iget-object v4, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v5, v4

    new-instance v4, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-wide v15, v1

    move-object v1, v5

    move-wide/from16 v5, p1

    .end local v1    # "expectedFrameDurationNanos":J
    .local v15, "expectedFrameDurationNanos":J
    invoke-direct/range {v4 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_1
    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 6
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 102
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    if-eqz v0, :cond_1

    .line 107
    return-void

    .line 110
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    if-eqz v0, :cond_2

    .line 111
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 116
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_4

    .line 119
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 117
    :cond_3
    return-void

    .line 119
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 121
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_5
    invoke-direct {p0, p1}, Lio/sentry/android/core/SpanFrameMetricsCollector;->captureFrameMetrics(Lio/sentry/ISpan;)V

    .line 123
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 124
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {p0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->clear()V

    goto :goto_0

    .line 128
    :cond_6
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 129
    .local v1, "oldestSpan":Lio/sentry/ISpan;
    iget-object v2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v3, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-interface {v1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/android/core/SpanFrameMetricsCollector;->toNanoTime(Lio/sentry/SentryDate;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v1    # "oldestSpan":Lio/sentry/ISpan;
    :goto_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 132
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_7
    return-void

    .line 123
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw v1

    .line 115
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_9

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v1
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 3
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 81
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    if-eqz v0, :cond_1

    .line 85
    return-void

    .line 87
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    if-eqz v0, :cond_2

    .line 88
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 92
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 95
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-virtual {v1, p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 98
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    return-void

    .line 91
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
.end method
