.class public final Lio/sentry/util/UUIDStringUtils;
.super Ljava/lang/Object;
.source "UUIDStringUtils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final HEX_VALUES:[J

.field private static final SENTRY_SPAN_UUID_STRING_LENGTH:I = 0x10

.field private static final SENTRY_UUID_STRING_LENGTH:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    .line 46
    const/16 v0, 0x80

    new-array v0, v0, [J

    sput-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    .line 49
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 51
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    aput-wide v1, v0, v3

    .line 52
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x1

    const/16 v3, 0x31

    aput-wide v1, v0, v3

    .line 53
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x2

    const/16 v3, 0x32

    aput-wide v1, v0, v3

    .line 54
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x3

    const/16 v3, 0x33

    aput-wide v1, v0, v3

    .line 55
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x4

    const/16 v3, 0x34

    aput-wide v1, v0, v3

    .line 56
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x5

    const/16 v3, 0x35

    aput-wide v1, v0, v3

    .line 57
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x6

    const/16 v3, 0x36

    aput-wide v1, v0, v3

    .line 58
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x7

    const/16 v3, 0x37

    aput-wide v1, v0, v3

    .line 59
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x8

    const/16 v3, 0x38

    aput-wide v1, v0, v3

    .line 60
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, 0x9

    const/16 v3, 0x39

    aput-wide v1, v0, v3

    .line 62
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x61

    const-wide/16 v2, 0xa

    aput-wide v2, v0, v1

    .line 63
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x62

    const-wide/16 v4, 0xb

    aput-wide v4, v0, v1

    .line 64
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x63

    const-wide/16 v6, 0xc

    aput-wide v6, v0, v1

    .line 65
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x64

    const-wide/16 v8, 0xd

    aput-wide v8, v0, v1

    .line 66
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x65

    const-wide/16 v10, 0xe

    aput-wide v10, v0, v1

    .line 67
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x66

    const-wide/16 v12, 0xf

    aput-wide v12, v0, v1

    .line 69
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x41

    aput-wide v2, v0, v1

    .line 70
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x42

    aput-wide v4, v0, v1

    .line 71
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x43

    aput-wide v6, v0, v1

    .line 72
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x44

    aput-wide v8, v0, v1

    .line 73
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x45

    aput-wide v10, v0, v1

    .line 74
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const/16 v1, 0x46

    aput-wide v12, v0, v1

    .line 75
    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillMostSignificantBits([CJ)V
    .locals 6
    .param p0, "uuidChars"    # [C
    .param p1, "mostSignificantBits"    # J

    .line 126
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v1, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v1, p1

    const/16 v3, 0x3c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/4 v1, 0x0

    aput-char v0, p0, v1

    .line 127
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v1, 0xf00000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/4 v1, 0x1

    aput-char v0, p0, v1

    .line 128
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v1, 0xf0000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x34

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/4 v1, 0x2

    aput-char v0, p0, v1

    .line 129
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v1, 0xf000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x30

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/4 v1, 0x3

    aput-char v0, p0, v1

    .line 130
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v1, 0xf00000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x2c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/4 v1, 0x4

    aput-char v0, p0, v1

    .line 131
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v2, 0xf0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/4 v2, 0x5

    aput-char v0, p0, v2

    .line 132
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v2, 0xf000000000L

    and-long/2addr v2, p1

    const/16 v4, 0x24

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/4 v2, 0x6

    aput-char v0, p0, v2

    .line 133
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v2, 0xf00000000L

    and-long/2addr v2, p1

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/4 v2, 0x7

    aput-char v0, p0, v2

    .line 134
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v2, 0xf0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1c

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/16 v2, 0x8

    aput-char v0, p0, v2

    .line 135
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v3, 0xf000000

    and-long/2addr v3, p1

    const/16 v5, 0x18

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v0, v0, v3

    const/16 v3, 0x9

    aput-char v0, p0, v3

    .line 136
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v3, 0xf00000

    and-long/2addr v3, p1

    const/16 v5, 0x14

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v0, v0, v3

    const/16 v3, 0xa

    aput-char v0, p0, v3

    .line 137
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v3, 0xf0000

    and-long/2addr v3, p1

    const/16 v5, 0x10

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v0, v0, v3

    const/16 v3, 0xb

    aput-char v0, p0, v3

    .line 138
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v3, 0xf000

    and-long/2addr v3, p1

    const/16 v5, 0xc

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v0, v0, v3

    aput-char v0, p0, v5

    .line 139
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/16 v3, 0xf00

    and-long/2addr v3, p1

    ushr-long v2, v3, v2

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/16 v2, 0xd

    aput-char v0, p0, v2

    .line 140
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/16 v2, 0xf0

    and-long/2addr v2, p1

    ushr-long v1, v2, v1

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/16 v1, 0xe

    aput-char v0, p0, v1

    .line 141
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/16 v1, 0xf

    and-long/2addr v1, p1

    long-to-int v1, v1

    aget-char v0, v0, v1

    const/16 v1, 0xf

    aput-char v0, p0, v1

    .line 142
    return-void
.end method

.method public static toSentryIdString(JJ)Ljava/lang/String;
    .locals 8
    .param p0, "mostSignificantBits"    # J
    .param p2, "leastSignificantBits"    # J

    .line 86
    const/16 v0, 0x20

    new-array v1, v0, [C

    .line 88
    .local v1, "uuidChars":[C
    invoke-static {v1, p0, p1}, Lio/sentry/util/UUIDStringUtils;->fillMostSignificantBits([CJ)V

    .line 90
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v3, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v3, p2

    const/16 v5, 0x3c

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v2, v2, v3

    const/16 v3, 0x10

    aput-char v2, v1, v3

    .line 91
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v4, 0xf00000000000000L

    and-long/2addr v4, p2

    const/16 v6, 0x38

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v2, v2, v4

    const/16 v4, 0x11

    aput-char v2, v1, v4

    .line 92
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v4, 0xf0000000000000L

    and-long/2addr v4, p2

    const/16 v6, 0x34

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v2, v2, v4

    const/16 v4, 0x12

    aput-char v2, v1, v4

    .line 93
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, p2

    const/16 v6, 0x30

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v2, v2, v4

    const/16 v4, 0x13

    aput-char v2, v1, v4

    .line 94
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v4, 0xf00000000000L

    and-long/2addr v4, p2

    const/16 v6, 0x2c

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v2, v2, v4

    const/16 v4, 0x14

    aput-char v2, v1, v4

    .line 95
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v5, 0xf0000000000L

    and-long/2addr v5, p2

    const/16 v7, 0x28

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    aget-char v2, v2, v5

    const/16 v5, 0x15

    aput-char v2, v1, v5

    .line 96
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v5, 0xf000000000L

    and-long/2addr v5, p2

    const/16 v7, 0x24

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    aget-char v2, v2, v5

    const/16 v5, 0x16

    aput-char v2, v1, v5

    .line 97
    sget-object v2, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v5, 0xf00000000L

    and-long/2addr v5, p2

    ushr-long/2addr v5, v0

    long-to-int v0, v5

    aget-char v0, v2, v0

    const/16 v2, 0x17

    aput-char v0, v1, v2

    .line 98
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide v5, 0xf0000000L

    and-long/2addr v5, p2

    const/16 v2, 0x1c

    ushr-long/2addr v5, v2

    long-to-int v5, v5

    aget-char v0, v0, v5

    const/16 v5, 0x18

    aput-char v0, v1, v5

    .line 99
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v6, 0xf000000

    and-long/2addr v6, p2

    ushr-long v5, v6, v5

    long-to-int v5, v5

    aget-char v0, v0, v5

    const/16 v5, 0x19

    aput-char v0, v1, v5

    .line 100
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v5, 0xf00000

    and-long/2addr v5, p2

    ushr-long v4, v5, v4

    long-to-int v4, v4

    aget-char v0, v0, v4

    const/16 v4, 0x1a

    aput-char v0, v1, v4

    .line 101
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v4, 0xf0000

    and-long/2addr v4, p2

    ushr-long v3, v4, v3

    long-to-int v3, v3

    aget-char v0, v0, v3

    const/16 v3, 0x1b

    aput-char v0, v1, v3

    .line 102
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/32 v3, 0xf000

    and-long/2addr v3, p2

    const/16 v5, 0xc

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 103
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/16 v2, 0xf00

    and-long/2addr v2, p2

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/16 v2, 0x1d

    aput-char v0, v1, v2

    .line 104
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/16 v2, 0xf0

    and-long/2addr v2, p2

    const/4 v4, 0x4

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/16 v2, 0x1e

    aput-char v0, v1, v2

    .line 105
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/16 v2, 0xf

    and-long/2addr v2, p2

    long-to-int v2, v2

    aget-char v0, v0, v2

    const/16 v2, 0x1f

    aput-char v0, v1, v2

    .line 107
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toSentryIdString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 5
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 79
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 80
    .local v0, "mostSignificantBits":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 82
    .local v2, "leastSignificantBits":J
    invoke-static {v0, v1, v2, v3}, Lio/sentry/util/UUIDStringUtils;->toSentryIdString(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toSentrySpanIdString(J)Ljava/lang/String;
    .locals 2
    .param p0, "mostSignificantBits"    # J

    .line 117
    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 119
    .local v0, "uuidChars":[C
    invoke-static {v0, p0, p1}, Lio/sentry/util/UUIDStringUtils;->fillMostSignificantBits([CJ)V

    .line 121
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static toSentrySpanIdString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 112
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 113
    .local v0, "mostSignificantBits":J
    invoke-static {v0, v1}, Lio/sentry/util/UUIDStringUtils;->toSentrySpanIdString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
