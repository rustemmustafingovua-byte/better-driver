.class public final Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "TombstoneIntegration.java"

# interfaces
.implements Lio/sentry/hints/Backfillable;
.implements Lio/sentry/hints/NativeCrashExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/TombstoneIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TombstoneHint"
.end annotation


# instance fields
.field private final shouldEnrich:Z

.field private final tombstoneTimestamp:J


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;JZ)V
    .locals 0
    .param p1, "flushTimeoutMillis"    # J
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "tombstoneTimestamp"    # J
    .param p6, "shouldEnrich"    # Z

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    .line 342
    iput-wide p4, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->tombstoneTimestamp:J

    .line 343
    iput-boolean p6, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->shouldEnrich:Z

    .line 344
    return-void
.end method


# virtual methods
.method public isFlushable(Lio/sentry/protocol/SentryId;)Z
    .locals 1
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public setFlushable(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;

    .line 363
    return-void
.end method

.method public shouldEnrich()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->shouldEnrich:Z

    return v0
.end method

.method public timestamp()Ljava/lang/Long;
    .locals 2

    .line 349
    iget-wide v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->tombstoneTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
