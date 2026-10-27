.class public final Lio/sentry/android/core/AndroidCpuCollector;
.super Ljava/lang/Object;
.source "AndroidCpuCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceSnapshotCollector;


# static fields
.field private static final NANOSECONDS_PER_MILLISECOND:J = 0xf4240L


# instance fields
.field private isEnabled:Z

.field private lastCpuNanos:J

.field private lastRealtimeNanos:J

.field private numCores:J


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 2
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    .line 25
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    .line 27
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    .line 32
    const-string v0, "Logger is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private readTotalCpuNanos()J
    .locals 4

    .line 64
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public collect(Lio/sentry/PerformanceCollectionData;)V
    .locals 14
    .param p1, "performanceCollectionData"    # Lio/sentry/PerformanceCollectionData;

    .line 45
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 49
    .local v0, "nowNanos":J
    iget-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    sub-long v2, v0, v2

    .line 50
    .local v2, "realTimeNanosDiff":J
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    .line 51
    invoke-direct {p0}, Lio/sentry/android/core/AndroidCpuCollector;->readTotalCpuNanos()J

    move-result-wide v4

    .line 52
    .local v4, "cpuNanos":J
    iget-wide v6, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    sub-long v6, v4, v6

    .line 53
    .local v6, "cpuNanosDiff":J
    iput-wide v4, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    .line 57
    long-to-double v8, v6

    long-to-double v10, v2

    div-double/2addr v8, v10

    .line 59
    .local v8, "cpuUsagePercentage":D
    iget-wide v10, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    long-to-double v10, v10

    div-double v10, v8, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-virtual {p1, v10, v11}, Lio/sentry/PerformanceCollectionData;->setCpuUsagePercentage(D)V

    .line 61
    return-void
.end method

.method public setup()V
    .locals 2

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    .line 38
    sget v0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    .line 40
    invoke-direct {p0}, Lio/sentry/android/core/AndroidCpuCollector;->readTotalCpuNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    .line 41
    return-void
.end method
