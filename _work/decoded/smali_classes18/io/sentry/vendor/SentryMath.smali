.class final Lio/sentry/vendor/SentryMath;
.super Ljava/lang/Object;
.source "SentryMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static floorDiv(JJ)J
    .locals 7
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 26
    div-long v0, p0, p2

    .line 27
    .local v0, "quotient":J
    mul-long v2, p2, v0

    sub-long v2, p0, v2

    .line 29
    .local v2, "remainder":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 30
    return-wide v0

    .line 33
    :cond_0
    xor-long v4, p0, p2

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    long-to-int v4, v4

    or-int/lit8 v4, v4, 0x1

    .line 34
    .local v4, "signum":I
    if-gez v4, :cond_1

    int-to-long v5, v4

    add-long/2addr v5, v0

    goto :goto_0

    :cond_1
    move-wide v5, v0

    :goto_0
    return-wide v5
.end method

.method static floorMod(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 38
    invoke-static {p0, p1, p2, p3}, Lio/sentry/vendor/SentryMath;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method
