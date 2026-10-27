.class final Lio/sentry/time/InstantEpochNanos;
.super Ljava/lang/Object;
.source "InstantEpochNanos.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read()J
    .locals 5

    .line 21
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 23
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->secondsToNanos(J)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1
.end method
