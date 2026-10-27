.class public Lio/sentry/android/core/AndroidMemoryCollector;
.super Ljava/lang/Object;
.source "AndroidMemoryCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceSnapshotCollector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lio/sentry/PerformanceCollectionData;)V
    .locals 6
    .param p1, "performanceCollectionData"    # Lio/sentry/PerformanceCollectionData;

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 18
    .local v0, "usedMemory":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 19
    .local v2, "usedNativeMemory":J
    invoke-virtual {p1, v0, v1}, Lio/sentry/PerformanceCollectionData;->setUsedHeapMemory(J)V

    .line 20
    invoke-virtual {p1, v2, v3}, Lio/sentry/PerformanceCollectionData;->setUsedNativeMemory(J)V

    .line 21
    return-void
.end method

.method public setup()V
    .locals 0

    .line 13
    return-void
.end method
