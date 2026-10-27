.class public final Lio/sentry/time/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"


# instance fields
.field private final epochNanos:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "epochNanos"    # J

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lio/sentry/time/Timestamp;->epochNanos:J

    .line 27
    return-void
.end method

.method public static ofEpochNanos(J)Lio/sentry/time/Timestamp;
    .locals 1
    .param p0, "epochNanos"    # J

    .line 30
    new-instance v0, Lio/sentry/time/Timestamp;

    invoke-direct {v0, p0, p1}, Lio/sentry/time/Timestamp;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public epochNanos()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lio/sentry/time/Timestamp;->epochNanos:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 40
    return v0

    .line 42
    :cond_0
    instance-of v1, p1, Lio/sentry/time/Timestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 43
    return v2

    .line 45
    :cond_1
    iget-wide v3, p0, Lio/sentry/time/Timestamp;->epochNanos:J

    move-object v1, p1

    check-cast v1, Lio/sentry/time/Timestamp;

    iget-wide v5, v1, Lio/sentry/time/Timestamp;->epochNanos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 50
    iget-wide v0, p0, Lio/sentry/time/Timestamp;->epochNanos:J

    iget-wide v2, p0, Lio/sentry/time/Timestamp;->epochNanos:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timestamp{epochNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/time/Timestamp;->epochNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
