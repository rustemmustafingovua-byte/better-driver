.class public final Lio/sentry/SentryNanotimeDate;
.super Lio/sentry/SentryDate;
.source "SentryNanotimeDate.java"


# instance fields
.field private final nanos:J

.field private final unixDateMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lio/sentry/SentryNanotimeDate;-><init>(JJ)V

    .line 28
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "unixDateMillis"    # J
    .param p3, "nanos"    # J

    .line 39
    invoke-direct {p0}, Lio/sentry/SentryDate;-><init>()V

    .line 40
    iput-wide p1, p0, Lio/sentry/SentryNanotimeDate;->unixDateMillis:J

    .line 41
    iput-wide p3, p0, Lio/sentry/SentryNanotimeDate;->nanos:J

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;J)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "nanos"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lio/sentry/SentryNanotimeDate;-><init>(JJ)V

    .line 37
    return-void
.end method

.method private nanotimeDiff(Lio/sentry/SentryNanotimeDate;Lio/sentry/SentryNanotimeDate;)J
    .locals 4
    .param p1, "earlierDate"    # Lio/sentry/SentryNanotimeDate;
    .param p2, "laterDate"    # Lio/sentry/SentryNanotimeDate;

    .line 91
    iget-wide v0, p2, Lio/sentry/SentryNanotimeDate;->nanos:J

    iget-wide v2, p1, Lio/sentry/SentryNanotimeDate;->nanos:J

    sub-long/2addr v0, v2

    .line 92
    .local v0, "nanoDiff":J
    invoke-virtual {p1}, Lio/sentry/SentryNanotimeDate;->nanoTimestamp()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public compareTo(Lio/sentry/SentryDate;)I
    .locals 9
    .param p1, "otherDate"    # Lio/sentry/SentryDate;

    .line 75
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_1

    .line 76
    move-object v0, p1

    check-cast v0, Lio/sentry/SentryNanotimeDate;

    .line 77
    .local v0, "otherNanoDate":Lio/sentry/SentryNanotimeDate;
    iget-wide v1, p0, Lio/sentry/SentryNanotimeDate;->unixDateMillis:J

    .line 78
    .local v1, "thisDateMillis":J
    iget-wide v3, v0, Lio/sentry/SentryNanotimeDate;->unixDateMillis:J

    .line 79
    .local v3, "otherDateMillis":J
    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 80
    iget-wide v5, p0, Lio/sentry/SentryNanotimeDate;->nanos:J

    iget-wide v7, v0, Lio/sentry/SentryNanotimeDate;->nanos:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v5

    return v5

    .line 82
    :cond_0
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v5

    return v5

    .line 85
    .end local v0    # "otherNanoDate":Lio/sentry/SentryNanotimeDate;
    .end local v1    # "thisDateMillis":J
    .end local v3    # "otherDateMillis":J
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lio/sentry/SentryDate;

    invoke-virtual {p0, p1}, Lio/sentry/SentryNanotimeDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result p1

    return p1
.end method

.method public diff(Lio/sentry/SentryDate;)J
    .locals 5
    .param p1, "otherDate"    # Lio/sentry/SentryDate;

    .line 46
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p1

    check-cast v0, Lio/sentry/SentryNanotimeDate;

    .line 48
    .local v0, "otherNanoDate":Lio/sentry/SentryNanotimeDate;
    iget-wide v1, p0, Lio/sentry/SentryNanotimeDate;->nanos:J

    iget-wide v3, v0, Lio/sentry/SentryNanotimeDate;->nanos:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 50
    .end local v0    # "otherNanoDate":Lio/sentry/SentryNanotimeDate;
    :cond_0
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J
    .locals 3
    .param p1, "otherDate"    # Lio/sentry/SentryDate;

    .line 60
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_1

    .line 61
    move-object v0, p1

    check-cast v0, Lio/sentry/SentryNanotimeDate;

    .line 62
    .local v0, "otherNanoDate":Lio/sentry/SentryNanotimeDate;
    invoke-virtual {p0, p1}, Lio/sentry/SentryNanotimeDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result v1

    if-gez v1, :cond_0

    .line 63
    invoke-direct {p0, p0, v0}, Lio/sentry/SentryNanotimeDate;->nanotimeDiff(Lio/sentry/SentryNanotimeDate;Lio/sentry/SentryNanotimeDate;)J

    move-result-wide v1

    return-wide v1

    .line 65
    :cond_0
    invoke-direct {p0, v0, p0}, Lio/sentry/SentryNanotimeDate;->nanotimeDiff(Lio/sentry/SentryNanotimeDate;Lio/sentry/SentryNanotimeDate;)J

    move-result-wide v1

    return-wide v1

    .line 68
    .end local v0    # "otherNanoDate":Lio/sentry/SentryNanotimeDate;
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTimestamp()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lio/sentry/SentryNanotimeDate;->unixDateMillis:J

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
