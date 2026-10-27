.class public final Lio/sentry/time/Deadline;
.super Ljava/lang/Object;
.source "Deadline.java"


# instance fields
.field private final deadlineNanos:J

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method private constructor <init>(Lio/sentry/time/MonotonicTicker;J)V
    .locals 0
    .param p1, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p2, "deadlineNanos"    # J

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 23
    iput-wide p2, p0, Lio/sentry/time/Deadline;->deadlineNanos:J

    .line 24
    return-void
.end method

.method public static after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;
    .locals 5
    .param p0, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p1, "amount"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 38
    invoke-static {p0}, Lio/sentry/time/Deadline;->passed(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Deadline;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lio/sentry/time/Deadline;

    invoke-interface {p0}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, p0, v1, v2}, Lio/sentry/time/Deadline;-><init>(Lio/sentry/time/MonotonicTicker;J)V

    return-object v0
.end method

.method public static passed(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Deadline;
    .locals 3
    .param p0, "ticker"    # Lio/sentry/time/MonotonicTicker;

    .line 51
    new-instance v0, Lio/sentry/time/Deadline;

    invoke-interface {p0}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/sentry/time/Deadline;-><init>(Lio/sentry/time/MonotonicTicker;J)V

    return-object v0
.end method


# virtual methods
.method public hasPassed()Z
    .locals 4

    .line 56
    iget-object v0, p0, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    invoke-interface {v0}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/time/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAfter(Lio/sentry/time/Deadline;)Z
    .locals 4
    .param p1, "other"    # Lio/sentry/time/Deadline;

    .line 85
    iget-object v0, p0, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    iget-object v1, p1, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    if-ne v0, v1, :cond_1

    .line 92
    iget-wide v0, p0, Lio/sentry/time/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/sentry/time/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare deadlines from different tickers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remaining(Ljava/util/concurrent/TimeUnit;)J
    .locals 12
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 67
    iget-wide v0, p0, Lio/sentry/time/Deadline;->deadlineNanos:J

    iget-object v2, p0, Lio/sentry/time/Deadline;->ticker:Lio/sentry/time/MonotonicTicker;

    invoke-interface {v2}, Lio/sentry/time/MonotonicTicker;->tickNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 68
    .local v0, "remainingNanos":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 69
    return-wide v2

    .line 71
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 72
    .local v6, "unitNanos":J
    div-long v8, v0, v6

    .line 73
    .local v8, "whole":J
    rem-long v10, v0, v6

    cmp-long v2, v10, v2

    if-nez v2, :cond_1

    move-wide v4, v8

    goto :goto_0

    :cond_1
    add-long/2addr v4, v8

    :goto_0
    return-wide v4
.end method
