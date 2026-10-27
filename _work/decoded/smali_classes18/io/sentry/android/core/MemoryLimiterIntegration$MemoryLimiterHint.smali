.class public final Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "MemoryLimiterIntegration.java"

# interfaces
.implements Lio/sentry/hints/Backfillable;
.implements Lio/sentry/hints/AbnormalExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/MemoryLimiterIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryLimiterHint"
.end annotation


# instance fields
.field private final epochTimestampMs:J

.field private final shouldEnrich:Z


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;JZ)V
    .locals 0
    .param p1, "flushTimeoutMillis"    # J
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "epochTimestampMs"    # J
    .param p6, "shouldEnrich"    # Z

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    .line 391
    iput-wide p4, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;->epochTimestampMs:J

    .line 392
    iput-boolean p6, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;->shouldEnrich:Z

    .line 393
    return-void
.end method


# virtual methods
.method public ignoreCurrentThread()Z
    .locals 1

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public isFlushable(Lio/sentry/protocol/SentryId;)Z
    .locals 1
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public mechanism()Ljava/lang/String;
    .locals 1

    .line 402
    const-string v0, "memory_limiter"

    return-object v0
.end method

.method public setFlushable(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;

    .line 421
    return-void
.end method

.method public shouldEnrich()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;->shouldEnrich:Z

    return v0
.end method

.method public timestamp()Ljava/lang/Long;
    .locals 2

    .line 397
    iget-wide v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;->epochTimestampMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
