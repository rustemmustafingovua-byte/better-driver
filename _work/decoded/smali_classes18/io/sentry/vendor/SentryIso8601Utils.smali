.class public final Lio/sentry/vendor/SentryIso8601Utils;
.super Ljava/lang/Object;
.source "SentryIso8601Utils.java"


# static fields
.field private static final DAYS_0000_TO_1970:I = 0xafa6c

.field private static final GREGORIAN_CUTOVER_MILLIS:J = -0xb1d069b5400L

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MILLIS_PER_HOUR:J = 0x36ee80L

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final MILLIS_PER_SECOND:J = 0x3e8L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static dateOnlyEpochMillis(III)J
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 175
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static dateOnlyEpochMillisWithTimezone(Ljava/lang/String;IIIII)J
    .locals 10
    .param p0, "timestamp"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "offset"    # I
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .line 187
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "timezoneIndicator":C
    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "timezoneOffsetMillis":I
    add-int/2addr p2, v2

    .line 191
    const/4 v2, 0x1

    move v8, v1

    move v9, v2

    .local v2, "allowTrailingCharacters":Z
    goto :goto_2

    .line 192
    .end local v1    # "timezoneOffsetMillis":I
    .end local v2    # "allowTrailingCharacters":Z
    :cond_0
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid time zone indicator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_2
    :goto_0
    if-ne v0, v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    .line 194
    .local v1, "sign":I
    :goto_1
    add-int/2addr p2, v2

    .line 195
    add-int/lit8 v2, p2, 0x2

    .end local p2    # "offset":I
    .local v2, "offset":I
    invoke-static {p0, p2, v2}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result p2

    .line 196
    .local p2, "timezoneHour":I
    const/4 v3, 0x0

    .line 197
    .local v3, "timezoneMinute":I
    const/16 v4, 0x3a

    invoke-static {p0, v2, v4}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 200
    :cond_4
    add-int/lit8 v4, v2, 0x2

    if-lt p1, v4, :cond_5

    .line 201
    add-int/lit8 v4, v2, 0x2

    .end local v2    # "offset":I
    .local v4, "offset":I
    invoke-static {p0, v2, v4}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    move v2, v4

    .line 203
    .end local v4    # "offset":I
    .restart local v2    # "offset":I
    :cond_5
    invoke-static {p2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->validateTimezone(II)V

    .line 204
    int-to-long v4, p2

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    int-to-long v6, v3

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/2addr v4, v1

    .line 206
    .local v4, "timezoneOffsetMillis":I
    const/4 p2, 0x0

    .line 207
    .end local v1    # "sign":I
    .end local v3    # "timezoneMinute":I
    .local p2, "allowTrailingCharacters":Z
    move v9, p2

    move p2, v2

    move v8, v4

    .line 211
    .end local v2    # "offset":I
    .end local v4    # "timezoneOffsetMillis":I
    .local v8, "timezoneOffsetMillis":I
    .local v9, "allowTrailingCharacters":Z
    .local p2, "offset":I
    :goto_2
    if-nez v9, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_3

    .line 212
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid trailing characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_7
    :goto_3
    invoke-static {p3, p4, p5}, Lio/sentry/vendor/SentryIso8601Utils;->isBeforeGregorianCutover(III)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 216
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p3

    move v2, p4

    move v3, p5

    .end local p3    # "year":I
    .end local p4    # "month":I
    .end local p5    # "day":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "day":I
    invoke-static/range {v1 .. v8}, Lio/sentry/vendor/SentryIso8601Utils;->epochMillisWithCalendar(IIIIIIII)J

    move-result-wide p3

    return-wide p3

    .line 218
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day":I
    .restart local p3    # "year":I
    .restart local p4    # "month":I
    .restart local p5    # "day":I
    :cond_8
    move v1, p3

    move v2, p4

    move v3, p5

    .end local p3    # "year":I
    .end local p4    # "month":I
    .end local p5    # "day":I
    .restart local v1    # "year":I
    .restart local v2    # "month":I
    .restart local v3    # "day":I
    invoke-static {v1, v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->validateDate(III)V

    .line 219
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lio/sentry/vendor/SentryIso8601Utils;->epochMillis(IIIIIIII)J

    move-result-wide p3

    return-wide p3
.end method

.method private static daysFromYearMonthDay(III)J
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 283
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr p0, v2

    .line 284
    int-to-long v2, p0

    const-wide/16 v4, 0x190

    invoke-static {v2, v3, v4, v5}, Lio/sentry/vendor/SentryMath;->floorDiv(JJ)J

    move-result-wide v2

    .line 285
    .local v2, "era":J
    int-to-long v6, p0

    mul-long/2addr v4, v2

    sub-long/2addr v6, v4

    long-to-int v4, v6

    .line 286
    .local v4, "yearOfEra":I
    if-le p1, v1, :cond_1

    const/4 v5, -0x3

    goto :goto_1

    :cond_1
    const/16 v5, 0x9

    :goto_1
    add-int/2addr v5, p1

    mul-int/lit16 v5, v5, 0x99

    add-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v5, p2

    sub-int/2addr v5, v0

    .line 287
    .local v5, "dayOfYear":I
    mul-int/lit16 v0, v4, 0x16d

    div-int/lit8 v1, v4, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, v4, 0x64

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    .line 288
    .local v0, "dayOfEra":I
    const-wide/32 v6, 0x23ab1

    mul-long/2addr v6, v2

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/32 v8, 0xafa6c

    sub-long/2addr v6, v8

    return-wide v6
.end method

.method private static daysInMonth(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 335
    sparse-switch p1, :sswitch_data_0

    .line 344
    const/16 v0, 0x1f

    return v0

    .line 342
    :sswitch_0
    const/16 v0, 0x1e

    return v0

    .line 337
    :sswitch_1
    invoke-static {p0}, Lio/sentry/vendor/SentryIso8601Utils;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private static epochDayToYearMonthDay(J)[I
    .locals 11
    .param p0, "epochDay"    # J

    .line 292
    const-wide/32 v0, 0xafa6c

    add-long/2addr p0, v0

    .line 293
    const-wide/32 v0, 0x23ab1

    invoke-static {p0, p1, v0, v1}, Lio/sentry/vendor/SentryMath;->floorDiv(JJ)J

    move-result-wide v2

    .line 294
    .local v2, "era":J
    mul-long/2addr v0, v2

    sub-long v0, p0, v0

    long-to-int v0, v0

    .line 295
    .local v0, "dayOfEra":I
    div-int/lit16 v1, v0, 0x5b4

    sub-int v1, v0, v1

    const v4, 0x8eac

    div-int v4, v0, v4

    add-int/2addr v1, v4

    const v4, 0x23ab0

    div-int v4, v0, v4

    sub-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x16d

    .line 296
    .local v1, "yearOfEra":I
    int-to-long v4, v1

    const-wide/16 v6, 0x190

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    .line 297
    .local v4, "year":I
    mul-int/lit16 v5, v1, 0x16d

    div-int/lit8 v6, v1, 0x4

    add-int/2addr v5, v6

    div-int/lit8 v6, v1, 0x64

    sub-int/2addr v5, v6

    sub-int v5, v0, v5

    .line 298
    .local v5, "dayOfYear":I
    mul-int/lit8 v6, v5, 0x5

    const/4 v7, 0x2

    add-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x99

    .line 299
    .local v6, "monthPrime":I
    mul-int/lit16 v8, v6, 0x99

    add-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x5

    sub-int v8, v5, v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 300
    .local v8, "day":I
    const/16 v10, 0xa

    if-ge v6, v10, :cond_0

    add-int/lit8 v10, v6, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v6, -0x9

    .line 301
    .local v10, "month":I
    :goto_0
    if-gt v10, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    add-int/2addr v9, v4

    filled-new-array {v9, v10, v8}, [I

    move-result-object v7

    return-object v7
.end method

.method private static epochMillis(IIIIIIII)J
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "millisecond"    # I
    .param p7, "timezoneOffsetMillis"    # I

    .line 274
    invoke-static {p0, p1, p2}, Lio/sentry/vendor/SentryIso8601Utils;->daysFromYearMonthDay(III)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    int-to-long v2, p3

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p4

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p6

    add-long/2addr v0, v2

    int-to-long v2, p7

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static epochMillisWithCalendar(IIIIIIII)J
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "millisecond"    # I
    .param p7, "timezoneOffsetMillis"    # I

    .line 231
    new-instance v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    invoke-direct {v1, p7, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 232
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 234
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 235
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 236
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 237
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 238
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 239
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 240
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static formatTimestamp(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .line 141
    const-wide v0, -0xb1d069b5400L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 142
    invoke-static {p0, p1}, Lio/sentry/vendor/SentryIso8601Utils;->formatTimestampWithCalendar(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    const-wide/32 v0, 0x5265c00

    invoke-static {p0, p1, v0, v1}, Lio/sentry/vendor/SentryMath;->floorDiv(JJ)J

    move-result-wide v2

    .line 146
    .local v2, "epochDay":J
    invoke-static {p0, p1, v0, v1}, Lio/sentry/vendor/SentryMath;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 148
    .local v0, "millisOfDay":I
    invoke-static {v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->epochDayToYearMonthDay(J)[I

    move-result-object v1

    .line 149
    .local v1, "yearMonthDay":[I
    const v4, 0x36ee80

    div-int v5, v0, v4

    .line 150
    .local v5, "hour":I
    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 151
    const v4, 0xea60

    div-int v6, v0, v4

    .line 152
    .local v6, "minute":I
    mul-int/2addr v4, v6

    sub-int/2addr v0, v4

    .line 153
    div-int/lit16 v4, v0, 0x3e8

    .line 154
    .local v4, "second":I
    mul-int/lit16 v7, v4, 0x3e8

    sub-int v7, v0, v7

    .line 156
    .local v7, "millisecond":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "yyyy-MM-ddThh:mm:ss.sssZ"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v8, "timestamp":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    aget v9, v1, v9

    const-string v10, "yyyy"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v8, v9, v10}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 158
    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const/4 v10, 0x1

    aget v10, v1, v10

    const-string v11, "MM"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v8, v10, v11}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 160
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    const/4 v9, 0x2

    aget v9, v1, v9

    const-string v10, "dd"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v8, v9, v10}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 162
    const/16 v9, 0x54

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const-string v9, "hh"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v5, v9}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 164
    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    const-string v10, "mm"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v8, v6, v10}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 166
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    const-string v9, "ss"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v4, v9}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 168
    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const-string v9, "sss"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v7, v9}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 170
    const/16 v9, 0x5a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static formatTimestampWithCalendar(J)Ljava/lang/String;
    .locals 5
    .param p0, "millis"    # J

    .line 244
    new-instance v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "UTC"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 245
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yyyy-MM-ddThh:mm:ss.sssZ"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .local v1, "timestamp":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const-string v4, "yyyy"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v3, v4}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 249
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    const-string v2, "MM"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v4, v2}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const-string v3, "dd"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 253
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const-string v3, "hh"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 255
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const-string v4, "mm"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v3, v4}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const-string v3, "ss"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 259
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const-string v3, "sss"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 261
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 389
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 391
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 389
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    return v0

    .line 395
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static isBeforeGregorianCutover(III)Z
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 305
    const/16 v0, 0x62e

    if-lt p0, v0, :cond_1

    if-ne p0, v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/16 v0, 0xf

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 349
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .line 376
    if-gez p1, :cond_0

    .line 377
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    neg-int v0, p1

    invoke-static {p0, v0, p2}, Lio/sentry/vendor/SentryIso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 379
    return-void

    .line 381
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 383
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    return-void
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 359
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-ge p1, p2, :cond_2

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "result":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 365
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 366
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    .line 369
    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v4, v2

    add-int/lit8 v0, v4, -0x30

    .line 364
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .restart local v2    # "c":C
    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_1
    return v0

    .line 360
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseTimestamp(Ljava/lang/String;)J
    .locals 21
    .param p0, "timestamp"    # Ljava/lang/String;

    .line 26
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 27
    .local v1, "length":I
    const/4 v2, 0x0

    .line 29
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x4

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-static {v0, v2, v3}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    .line 30
    .local v4, "year":I
    const/16 v2, 0x2d

    invoke-static {v0, v3, v2}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 34
    :cond_0
    add-int/lit8 v5, v3, 0x2

    .end local v3    # "offset":I
    .local v5, "offset":I
    invoke-static {v0, v3, v5}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .line 35
    .local v3, "month":I
    invoke-static {v0, v5, v2}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 39
    :cond_1
    add-int/lit8 v6, v5, 0x2

    .end local v5    # "offset":I
    .local v6, "offset":I
    invoke-static {v0, v5, v6}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 41
    .local v5, "day":I
    const/16 v7, 0x54

    invoke-static {v0, v6, v7}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    const/16 v8, 0x5a

    const/16 v9, 0x2b

    if-nez v7, :cond_5

    .line 42
    if-ne v6, v1, :cond_2

    .line 43
    invoke-static {v4, v3, v5}, Lio/sentry/vendor/SentryIso8601Utils;->dateOnlyEpochMillis(III)J

    move-result-wide v7

    return-wide v7

    .line 45
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 46
    .local v7, "timezoneIndicator":C
    if-eq v7, v8, :cond_4

    if-eq v7, v9, :cond_4

    if-ne v7, v2, :cond_3

    goto :goto_0

    .line 49
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid date separator"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_4
    :goto_0
    move v2, v4

    move v4, v3

    move v3, v2

    move v2, v6

    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    .local v3, "year":I
    .local v4, "month":I
    invoke-static/range {v0 .. v5}, Lio/sentry/vendor/SentryIso8601Utils;->dateOnlyEpochMillisWithTimezone(Ljava/lang/String;IIIII)J

    move-result-wide v8

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    .end local v2    # "offset":I
    .local v3, "offset":I
    .local v4, "year":I
    .local v5, "month":I
    .local v6, "day":I
    return-wide v8

    .line 51
    .end local v7    # "timezoneIndicator":C
    .local v3, "month":I
    .local v5, "day":I
    .local v6, "offset":I
    :cond_5
    move/from16 v20, v5

    move v5, v3

    move v3, v6

    move/from16 v6, v20

    .local v3, "offset":I
    .local v5, "month":I
    .local v6, "day":I
    invoke-static {v4, v5, v6}, Lio/sentry/vendor/SentryIso8601Utils;->validateDate(III)V

    .line 52
    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 54
    add-int/lit8 v10, v3, 0x2

    .end local v3    # "offset":I
    .local v10, "offset":I
    invoke-static {v0, v3, v10}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .line 55
    .local v3, "hour":I
    const/16 v11, 0x3a

    invoke-static {v0, v10, v11}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 59
    :cond_6
    add-int/lit8 v12, v10, 0x2

    .end local v10    # "offset":I
    .local v12, "offset":I
    invoke-static {v0, v10, v12}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v10

    .line 60
    .local v10, "minute":I
    invoke-static {v0, v12, v11}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 61
    add-int/lit8 v12, v12, 0x1

    .line 64
    :cond_7
    const/4 v13, 0x0

    .line 65
    .local v13, "second":I
    const/4 v14, 0x0

    .line 66
    .local v14, "millisecond":I
    if-le v1, v12, :cond_c

    .line 67
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 68
    .local v15, "c":C
    if-eq v15, v8, :cond_b

    if-eq v15, v9, :cond_b

    if-eq v15, v2, :cond_b

    .line 69
    move/from16 v16, v7

    add-int/lit8 v7, v12, 0x2

    .end local v12    # "offset":I
    .local v7, "offset":I
    invoke-static {v0, v12, v7}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    .line 70
    .end local v13    # "second":I
    .local v12, "second":I
    const/16 v13, 0x3b

    if-le v12, v13, :cond_8

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_8

    .line 71
    const/16 v12, 0x3b

    move v13, v12

    goto :goto_1

    .line 73
    :cond_8
    move v13, v12

    .end local v12    # "second":I
    .restart local v13    # "second":I
    :goto_1
    const/16 v12, 0x2e

    invoke-static {v0, v7, v12}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    invoke-static {v0, v7}, Lio/sentry/vendor/SentryIso8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v12

    .line 76
    .local v12, "endOffset":I
    if-eq v12, v7, :cond_9

    .line 79
    add-int/lit8 v11, v7, 0x3

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 80
    .local v11, "parseEndOffset":I
    invoke-static {v0, v7, v11}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v18

    .line 81
    .local v18, "fraction":I
    sub-int v19, v11, v7

    packed-switch v19, :pswitch_data_0

    .line 89
    move/from16 v14, v18

    goto :goto_2

    .line 86
    :pswitch_0
    mul-int/lit8 v14, v18, 0xa

    .line 87
    goto :goto_2

    .line 83
    :pswitch_1
    mul-int/lit8 v14, v18, 0x64

    .line 84
    nop

    .line 92
    :goto_2
    move v7, v12

    goto :goto_3

    .line 77
    .end local v11    # "parseEndOffset":I
    .end local v18    # "fraction":I
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "Missing millisecond digits"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    .end local v12    # "endOffset":I
    :cond_a
    move v12, v7

    goto :goto_3

    .line 68
    .end local v7    # "offset":I
    .local v12, "offset":I
    :cond_b
    move/from16 v16, v7

    goto :goto_3

    .line 66
    .end local v15    # "c":C
    :cond_c
    move/from16 v16, v7

    .line 96
    :goto_3
    invoke-static {v3, v10, v13, v14}, Lio/sentry/vendor/SentryIso8601Utils;->validateTime(IIII)V

    .line 98
    if-le v1, v12, :cond_16

    .line 104
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 105
    .local v15, "timezoneIndicator":C
    if-ne v15, v8, :cond_d

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "timezoneOffsetMillis":I
    add-int/lit8 v12, v12, 0x1

    .line 108
    const/4 v7, 0x1

    move v11, v7

    move v7, v3

    move v3, v11

    move v11, v2

    .local v7, "allowTrailingCharacters":Z
    goto :goto_7

    .line 109
    .end local v2    # "timezoneOffsetMillis":I
    .end local v7    # "allowTrailingCharacters":Z
    :cond_d
    if-eq v15, v9, :cond_f

    if-ne v15, v2, :cond_e

    goto :goto_4

    .line 125
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid time zone indicator"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_f
    :goto_4
    if-ne v15, v9, :cond_10

    move/from16 v2, v16

    goto :goto_5

    :cond_10
    const/4 v2, -0x1

    .line 111
    .local v2, "sign":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 112
    add-int/lit8 v7, v12, 0x2

    .end local v12    # "offset":I
    .local v7, "offset":I
    invoke-static {v0, v12, v7}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 113
    .local v8, "timezoneHour":I
    const/4 v9, 0x0

    .line 114
    .local v9, "timezoneMinute":I
    const/16 v11, 0x3a

    invoke-static {v0, v7, v11}, Lio/sentry/vendor/SentryIso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 115
    add-int/lit8 v7, v7, 0x1

    .line 117
    :cond_11
    add-int/lit8 v11, v7, 0x2

    if-lt v1, v11, :cond_12

    .line 118
    add-int/lit8 v11, v7, 0x2

    .end local v7    # "offset":I
    .local v11, "offset":I
    invoke-static {v0, v7, v11}, Lio/sentry/vendor/SentryIso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    move v12, v11

    goto :goto_6

    .line 117
    .end local v11    # "offset":I
    .restart local v7    # "offset":I
    :cond_12
    move v12, v7

    .line 120
    .end local v7    # "offset":I
    .restart local v12    # "offset":I
    :goto_6
    invoke-static {v8, v9}, Lio/sentry/vendor/SentryIso8601Utils;->validateTimezone(II)V

    .line 121
    move v11, v2

    move v7, v3

    .end local v2    # "sign":I
    .end local v3    # "hour":I
    .local v7, "hour":I
    .local v11, "sign":I
    int-to-long v2, v8

    const-wide/32 v16, 0x36ee80

    mul-long v2, v2, v16

    move-wide/from16 v16, v2

    int-to-long v2, v9

    const-wide/32 v18, 0xea60

    mul-long v2, v2, v18

    add-long v2, v16, v2

    long-to-int v2, v2

    mul-int/2addr v2, v11

    .line 123
    .local v2, "timezoneOffsetMillis":I
    const/4 v3, 0x0

    .line 124
    .end local v8    # "timezoneHour":I
    .end local v9    # "timezoneMinute":I
    .end local v11    # "sign":I
    .local v3, "allowTrailingCharacters":Z
    move v11, v2

    .line 128
    .end local v2    # "timezoneOffsetMillis":I
    .local v11, "timezoneOffsetMillis":I
    :goto_7
    if-nez v3, :cond_14

    if-ne v12, v1, :cond_13

    goto :goto_8

    .line 129
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid trailing characters"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_14
    :goto_8
    invoke-static {v4, v5, v6}, Lio/sentry/vendor/SentryIso8601Utils;->isBeforeGregorianCutover(III)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 133
    move v8, v10

    move v9, v13

    move v10, v14

    .end local v13    # "second":I
    .end local v14    # "millisecond":I
    .local v8, "minute":I
    .local v9, "second":I
    .local v10, "millisecond":I
    invoke-static/range {v4 .. v11}, Lio/sentry/vendor/SentryIso8601Utils;->epochMillisWithCalendar(IIIIIIII)J

    move-result-wide v13

    return-wide v13

    .line 137
    .end local v8    # "minute":I
    .end local v9    # "second":I
    .local v10, "minute":I
    .restart local v13    # "second":I
    .restart local v14    # "millisecond":I
    :cond_15
    move v8, v10

    move v9, v13

    move v10, v14

    .end local v13    # "second":I
    .end local v14    # "millisecond":I
    .restart local v8    # "minute":I
    .restart local v9    # "second":I
    .local v10, "millisecond":I
    invoke-static/range {v4 .. v11}, Lio/sentry/vendor/SentryIso8601Utils;->epochMillis(IIIIIIII)J

    move-result-wide v13

    return-wide v13

    .line 99
    .end local v7    # "hour":I
    .end local v8    # "minute":I
    .end local v9    # "second":I
    .end local v11    # "timezoneOffsetMillis":I
    .end local v15    # "timezoneIndicator":C
    .local v3, "hour":I
    .local v10, "minute":I
    .restart local v13    # "second":I
    .restart local v14    # "millisecond":I
    :cond_16
    move v7, v3

    .end local v3    # "hour":I
    .restart local v7    # "hour":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No time zone indicator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static validateDate(III)V
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 309
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    if-lt p1, v0, :cond_0

    const/16 v1, 0xc

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    invoke-static {p0, p1}, Lio/sentry/vendor/SentryIso8601Utils;->daysInMonth(II)I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 312
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateTime(IIII)V
    .locals 2
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "millisecond"    # I

    .line 316
    if-ltz p0, :cond_0

    const/16 v0, 0x17

    if-gt p0, v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0x3e7

    if-gt p3, v0, :cond_0

    .line 326
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateTimezone(II)V
    .locals 2
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 329
    if-ltz p0, :cond_0

    const/16 v0, 0x17

    if-gt p0, v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    .line 332
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time zone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
