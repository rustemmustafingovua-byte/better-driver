.class Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;
.super Ljava/lang/Object;
.source "PerfettoContinuousProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/PerfettoContinuousProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChunkMeasurementCollector"
.end annotation


# instance fields
.field private chunkId:Ljava/lang/String;

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private frameMetricsListenerId:Ljava/lang/String;

.field private final frozenFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private performanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private profileStartElapsedRealtimeNanos:J

.field private final screenFrameRateMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private final slowFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 2
    .param p1, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsListenerId:Ljava/lang/String;

    .line 575
    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 576
    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->chunkId:Ljava/lang/String;

    .line 578
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->slowFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 580
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frozenFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 582
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->screenFrameRateMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 588
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->profileStartElapsedRealtimeNanos:J

    .line 591
    iput-object p1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 592
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    .line 572
    iget-wide v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->profileStartElapsedRealtimeNanos:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    .line 572
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frozenFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    .line 572
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->slowFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method static synthetic access$300(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    .line 572
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->screenFrameRateMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method private addFrameDataToMeasurements(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 692
    .local p1, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->slowFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const-string v1, "nanosecond"

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->slowFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v2, "slow_frame_renders"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frozenFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frozenFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v1, "frozen_frame_renders"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->screenFrameRateMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 706
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->screenFrameRateMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "hz"

    invoke-direct {v0, v2, v1}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v1, "screen_frame_rates"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_2
    return-void
.end method

.method private static addPerformanceDataToMeasurements(Ljava/util/List;Ljava/util/Map;JJJ)V
    .locals 19
    .param p2, "wallClockNowNanos"    # J
    .param p4, "elapsedRealtimeNowNanos"    # J
    .param p6, "profileStartElapsedRealtimeNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;JJJ)V"
        }
    .end annotation

    .line 719
    .local p0, "performanceData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .local p1, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    move-object/from16 v1, p1

    if-eqz p0, :cond_8

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 722
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    .line 723
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    move-object v2, v0

    .line 724
    .local v2, "cpuUsageMeasurements":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    .line 725
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    move-object v3, v0

    .line 726
    .local v3, "memoryUsageMeasurements":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    .line 727
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    move-object v4, v0

    .line 731
    .local v4, "nativeMemoryUsageMeasurements":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    monitor-enter p0

    .line 732
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/PerformanceCollectionData;

    .line 736
    .local v5, "data":Lio/sentry/PerformanceCollectionData;
    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->getNanoTimestamp()J

    move-result-wide v6

    .line 737
    .local v6, "nanoTimestamp":J
    sub-long v8, p2, v6

    .line 738
    .local v8, "nanosSinceSample":J
    sub-long v10, p4, v8

    .line 739
    .local v10, "sampleElapsedRealtimeNanos":J
    sub-long v12, v10, p6

    .line 741
    .local v12, "relativeStartNs":J
    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->hasCpuUsagePercentage()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 742
    new-instance v14, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 744
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->getCpuUsagePercentage()D

    move-result-wide v16

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v14, v15, v0, v6, v7}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 742
    invoke-virtual {v2, v14}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 741
    :cond_1
    move-object/from16 v18, v0

    .line 746
    :goto_1
    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->hasUsedHeapMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 749
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->getUsedHeapMemory()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v14, v15, v6, v7}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 747
    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 751
    :cond_2
    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->hasUsedNativeMemory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 754
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->getUsedNativeMemory()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v0, v14, v15, v6, v7}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 752
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 756
    .end local v5    # "data":Lio/sentry/PerformanceCollectionData;
    .end local v6    # "nanoTimestamp":J
    .end local v8    # "nanosSinceSample":J
    .end local v10    # "sampleElapsedRealtimeNanos":J
    .end local v12    # "relativeStartNs":J
    :cond_3
    move-object/from16 v0, v18

    goto :goto_0

    .line 757
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 760
    const-string v0, "cpu_usage"

    new-instance v5, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v6, "percent"

    invoke-direct {v5, v6, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 765
    const-string v0, "memory_footprint"

    new-instance v5, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v6, "byte"

    invoke-direct {v5, v6, v3}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 770
    const-string v0, "memory_native_footprint"

    new-instance v5, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v6, "byte"

    invoke-direct {v5, v6, v4}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_7
    return-void

    .line 757
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 720
    .end local v2    # "cpuUsageMeasurements":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    .end local v3    # "memoryUsageMeasurements":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    .end local v4    # "nativeMemoryUsageMeasurements":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method start(Lio/sentry/CompositePerformanceCollector;Ljava/lang/String;)V
    .locals 2
    .param p1, "performanceCollector"    # Lio/sentry/CompositePerformanceCollector;
    .param p2, "chunkId"    # Ljava/lang/String;

    .line 597
    iput-object p1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 598
    iput-object p2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->chunkId:Ljava/lang/String;

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->profileStartElapsedRealtimeNanos:J

    .line 602
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->slowFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 603
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frozenFrameRenderMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 604
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->screenFrameRateMeasurements:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 605
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    new-instance v1, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;

    invoke-direct {v1, p0}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector$1;-><init>(Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;)V

    .line 606
    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsListenerId:Ljava/lang/String;

    .line 654
    if-eqz p1, :cond_0

    .line 655
    invoke-interface {p1, p2}, Lio/sentry/CompositePerformanceCollector;->start(Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void
.end method

.method stop()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 667
    .local v2, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsListenerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->frameMetricsListenerId:Ljava/lang/String;

    .line 669
    invoke-direct {p0, v2}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->addFrameDataToMeasurements(Ljava/util/Map;)V

    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, "performanceData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->chunkId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 674
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->chunkId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lio/sentry/CompositePerformanceCollector;->stop(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 675
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 676
    .local v3, "wallClockNowNanos":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 677
    .local v5, "elapsedRealtimeNowNanos":J
    iget-wide v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->profileStartElapsedRealtimeNanos:J

    invoke-static/range {v1 .. v8}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->addPerformanceDataToMeasurements(Ljava/util/List;Ljava/util/Map;JJJ)V

    .line 684
    .end local v3    # "wallClockNowNanos":J
    .end local v5    # "elapsedRealtimeNowNanos":J
    :cond_0
    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 685
    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->chunkId:Ljava/lang/String;

    .line 687
    return-object v2
.end method
