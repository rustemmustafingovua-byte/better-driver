.class public final Lio/sentry/PerformanceCollectionData;
.super Ljava/lang/Object;
.source "PerformanceCollectionData.java"


# instance fields
.field private cpuUsagePercentage:D

.field private hasCpuUsagePercentage:Z

.field private hasUsedHeapMemory:Z

.field private hasUsedNativeMemory:Z

.field private final nanoTimestamp:J

.field private usedHeapMemory:J

.field private usedNativeMemory:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "nanoTimestamp"    # J

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lio/sentry/PerformanceCollectionData;->nanoTimestamp:J

    .line 24
    return-void
.end method


# virtual methods
.method public getCpuUsagePercentage()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lio/sentry/PerformanceCollectionData;->cpuUsagePercentage:D

    return-wide v0
.end method

.method public getNanoTimestamp()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lio/sentry/PerformanceCollectionData;->nanoTimestamp:J

    return-wide v0
.end method

.method public getUsedHeapMemory()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lio/sentry/PerformanceCollectionData;->usedHeapMemory:J

    return-wide v0
.end method

.method public getUsedNativeMemory()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lio/sentry/PerformanceCollectionData;->usedNativeMemory:J

    return-wide v0
.end method

.method public hasCpuUsagePercentage()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lio/sentry/PerformanceCollectionData;->hasCpuUsagePercentage:Z

    return v0
.end method

.method public hasUsedHeapMemory()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lio/sentry/PerformanceCollectionData;->hasUsedHeapMemory:Z

    return v0
.end method

.method public hasUsedNativeMemory()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lio/sentry/PerformanceCollectionData;->hasUsedNativeMemory:Z

    return v0
.end method

.method public setCpuUsagePercentage(D)V
    .locals 1
    .param p1, "cpuUsagePercentage"    # D

    .line 28
    iput-wide p1, p0, Lio/sentry/PerformanceCollectionData;->cpuUsagePercentage:D

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/PerformanceCollectionData;->hasCpuUsagePercentage:Z

    .line 30
    return-void
.end method

.method public setUsedHeapMemory(J)V
    .locals 1
    .param p1, "usedHeapMemory"    # J

    .line 42
    iput-wide p1, p0, Lio/sentry/PerformanceCollectionData;->usedHeapMemory:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/PerformanceCollectionData;->hasUsedHeapMemory:Z

    .line 44
    return-void
.end method

.method public setUsedNativeMemory(J)V
    .locals 1
    .param p1, "usedNativeMemory"    # J

    .line 56
    iput-wide p1, p0, Lio/sentry/PerformanceCollectionData;->usedNativeMemory:J

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/PerformanceCollectionData;->hasUsedNativeMemory:Z

    .line 58
    return-void
.end method
