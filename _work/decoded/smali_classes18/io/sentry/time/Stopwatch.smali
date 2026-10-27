.class public final Lio/sentry/time/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private final startNanos:J

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method private constructor <init>(Lio/sentry/time/MonotonicTicker;)V
    .locals 2
    .param p1, "ticker"    # Lio/sentry/time/MonotonicTicker;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/sentry/time/Stopwatch;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 21
    invoke-interface {p1}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/time/Stopwatch;->startNanos:J

    .line 22
    return-void
.end method

.method public static started(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Stopwatch;
    .locals 1
    .param p0, "ticker"    # Lio/sentry/time/MonotonicTicker;

    .line 25
    new-instance v0, Lio/sentry/time/Stopwatch;

    invoke-direct {v0, p0}, Lio/sentry/time/Stopwatch;-><init>(Lio/sentry/time/MonotonicTicker;)V

    return-object v0
.end method


# virtual methods
.method public elapsed(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {p0}, Lio/sentry/time/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedNanos()J
    .locals 4

    .line 29
    iget-object v0, p0, Lio/sentry/time/Stopwatch;->ticker:Lio/sentry/time/MonotonicTicker;

    invoke-interface {v0}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/time/Stopwatch;->startNanos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
