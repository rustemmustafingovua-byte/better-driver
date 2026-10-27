.class public final Lio/sentry/time/AnchoredClock;
.super Ljava/lang/Object;
.source "AnchoredClock.java"


# instance fields
.field private final anchorTick:J

.field private final epochNanos:J

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method private constructor <init>(Lio/sentry/time/MonotonicTicker;JJ)V
    .locals 0
    .param p1, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p2, "epochNanos"    # J
    .param p4, "anchorTick"    # J

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/sentry/time/AnchoredClock;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 31
    iput-wide p2, p0, Lio/sentry/time/AnchoredClock;->epochNanos:J

    .line 32
    iput-wide p4, p0, Lio/sentry/time/AnchoredClock;->anchorTick:J

    .line 33
    return-void
.end method

.method private at(J)Lio/sentry/time/Timestamp;
    .locals 4
    .param p1, "tickNanos"    # J

    .line 55
    iget-wide v0, p0, Lio/sentry/time/AnchoredClock;->epochNanos:J

    iget-wide v2, p0, Lio/sentry/time/AnchoredClock;->anchorTick:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/sentry/time/Timestamp;->ofEpochNanos(J)Lio/sentry/time/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/sentry/time/EpochClock;Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/AnchoredClock;
    .locals 6
    .param p0, "epoch"    # Lio/sentry/time/EpochClock;
    .param p1, "ticker"    # Lio/sentry/time/MonotonicTicker;

    .line 38
    new-instance v0, Lio/sentry/time/AnchoredClock;

    invoke-interface {p0}, Lio/sentry/time/EpochClock;->now()Lio/sentry/time/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/time/Timestamp;->epochNanos()J

    move-result-wide v2

    invoke-interface {p1}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v4

    move-object v1, p1

    .end local p1    # "ticker":Lio/sentry/time/MonotonicTicker;
    .local v1, "ticker":Lio/sentry/time/MonotonicTicker;
    invoke-direct/range {v0 .. v5}, Lio/sentry/time/AnchoredClock;-><init>(Lio/sentry/time/MonotonicTicker;JJ)V

    return-object v0
.end method


# virtual methods
.method public now()Lio/sentry/time/Timestamp;
    .locals 2

    .line 51
    iget-object v0, p0, Lio/sentry/time/AnchoredClock;->ticker:Lio/sentry/time/MonotonicTicker;

    invoke-interface {v0}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/time/AnchoredClock;->at(J)Lio/sentry/time/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public startTime()Lio/sentry/time/Timestamp;
    .locals 2

    .line 46
    iget-wide v0, p0, Lio/sentry/time/AnchoredClock;->epochNanos:J

    invoke-static {v0, v1}, Lio/sentry/time/Timestamp;->ofEpochNanos(J)Lio/sentry/time/Timestamp;

    move-result-object v0

    return-object v0
.end method
