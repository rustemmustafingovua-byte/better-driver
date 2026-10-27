.class public final Lio/sentry/util/UUIDGenerator;
.super Ljava/lang/Object;
.source "UUIDGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static randomHalfLengthUUID()J
    .locals 10

    .line 33
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v0

    .line 34
    .local v0, "ng":Lio/sentry/util/Random;
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 35
    .local v2, "randomBytes":[B
    invoke-virtual {v0, v2}, Lio/sentry/util/Random;->nextBytes([B)V

    .line 37
    const/4 v3, 0x6

    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 39
    aget-byte v4, v2, v3

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .local v3, "msb":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 42
    shl-long v6, v3, v1

    aget-byte v8, v2, v5

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v3, v6, v8

    .line 41
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    .end local v5    # "i":I
    :cond_0
    return-wide v3
.end method

.method public static randomUUID()Ljava/util/UUID;
    .locals 13

    .line 49
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v0

    .line 50
    .local v0, "ng":Lio/sentry/util/Random;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 51
    .local v2, "randomBytes":[B
    invoke-virtual {v0, v2}, Lio/sentry/util/Random;->nextBytes([B)V

    .line 53
    const/4 v3, 0x6

    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 55
    aget-byte v4, v2, v3

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 57
    const/16 v3, 0x8

    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 59
    aget-byte v4, v2, v3

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .local v4, "msb":J
    const-wide/16 v6, 0x0

    .line 62
    .local v6, "lsb":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_0

    .line 63
    shl-long v9, v4, v3

    aget-byte v11, v2, v8

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    or-long v4, v9, v11

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 65
    .end local v8    # "i":I
    :cond_0
    const/16 v8, 0x8

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v1, :cond_1

    .line 66
    shl-long v9, v6, v3

    aget-byte v11, v2, v8

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    or-long v6, v9, v11

    .line 65
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 68
    .end local v8    # "i":I
    :cond_1
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method
