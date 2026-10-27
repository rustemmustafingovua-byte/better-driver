.class public final Lio/sentry/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToSeconds(Ljava/util/Date;)D
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 154
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToSeconds(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static doubleToBigDecimal(D)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # D

    .line 162
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x6

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDateTime()Ljava/util/Date;
    .locals 1

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getDateTime(J)Ljava/util/Date;
    .locals 1
    .param p0, "millis"    # J

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static getDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-static {p0}, Lio/sentry/vendor/SentryIso8601Utils;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp is not ISO format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDateTimeWithMillisPrecision(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 53
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    .line 52
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp is not millis format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 66
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getTimestampFromMillis(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimestampFromMillis(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .line 76
    invoke-static {p0, p1}, Lio/sentry/vendor/SentryIso8601Utils;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToNanos(J)J
    .locals 2
    .param p0, "millis"    # J

    .line 101
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static millisToSeconds(D)D
    .locals 2
    .param p0, "millis"    # D

    .line 97
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static nanosToDate(J)Ljava/util/Date;
    .locals 4
    .param p0, "nanos"    # J

    .line 121
    long-to-double v0, p0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToMillis(D)D

    move-result-wide v0

    .line 122
    .local v0, "millis":D
    double-to-long v2, v0

    invoke-static {v2, v3}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static nanosToMillis(D)D
    .locals 2
    .param p0, "nanos"    # D

    .line 111
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static nanosToSeconds(J)D
    .locals 4
    .param p0, "nanos"    # J

    .line 143
    long-to-double v0, p0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static secondsToNanos(J)J
    .locals 2
    .param p0, "seconds"    # J

    .line 158
    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;
    .locals 1
    .param p0, "sentryDate"    # Lio/sentry/SentryDate;

    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-static {p0}, Lio/sentry/DateUtils;->toUtilDateNotNull(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toUtilDateNotNull(Lio/sentry/SentryDate;)Ljava/util/Date;
    .locals 2
    .param p0, "sentryDate"    # Lio/sentry/SentryDate;

    .line 133
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
