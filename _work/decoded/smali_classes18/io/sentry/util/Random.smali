.class public final Lio/sentry/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DOUBLE_MASK:D = 9.007199254740992E15

.field private static final FLOAT_UNIT:F = 1.6777216E7f

.field private static final INTEGER_MASK:J = 0xffffffffL

.field private static final MULT_64:J = 0x5851f42d4c957f2dL

.field static final UNIQUE_SEED:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J = -0x3b17280853ac0e52L


# instance fields
.field private gausAvailable:Z

.field private inc:J

.field private nextGaus:D

.field private state:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lio/sentry/util/Random;->UNIQUE_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-static {}, Lio/sentry/util/Random;->getRandomSeed()J

    move-result-wide v0

    invoke-static {}, Lio/sentry/util/Random;->getRandomSeed()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lio/sentry/util/Random;-><init>(JJ)V

    .line 71
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "seed"    # J
    .param p3, "streamNumber"    # J

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/util/Random;->setSeed(JJ)V

    .line 90
    return-void
.end method

.method private constructor <init>(JJZ)V
    .locals 0
    .param p1, "initialState"    # J
    .param p3, "increment"    # J
    .param p5, "dummy"    # Z

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-direct {p0, p1, p2}, Lio/sentry/util/Random;->setState(J)V

    .line 94
    invoke-direct {p0, p3, p4}, Lio/sentry/util/Random;->setInc(J)V

    .line 95
    return-void
.end method

.method private static getRandomSeed()J
    .locals 6

    .line 336
    nop

    :goto_0
    sget-object v0, Lio/sentry/util/Random;->UNIQUE_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 337
    .local v0, "current":J
    move-wide v2, v0

    .line 338
    .local v2, "next":J
    const/16 v4, 0xc

    shr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 339
    const/16 v4, 0x19

    shl-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 340
    const/16 v4, 0x1b

    shr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 341
    const-wide v4, 0x2545f4914f6cdd1dL

    mul-long/2addr v2, v4

    .line 342
    sget-object v4, Lio/sentry/util/Random;->UNIQUE_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2

    .line 343
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_0
    goto :goto_0
.end method

.method private setInc(J)V
    .locals 4
    .param p1, "increment"    # J

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2

    rem-long v2, p1, v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 326
    iput-wide p1, p0, Lio/sentry/util/Random;->inc:J

    .line 327
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increment may not be 0 or even. Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setState(J)V
    .locals 0
    .param p1, "state"    # J

    .line 330
    iput-wide p1, p0, Lio/sentry/util/Random;->state:J

    .line 331
    return-void
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 6

    .line 197
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 198
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v2, 0x16

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x16

    add-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x1f

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBoolean(D)Z
    .locals 14
    .param p1, "probability"    # D

    .line 203
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-gtz v4, :cond_3

    .line 207
    cmpl-double v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    cmpl-double v0, p1, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 210
    :cond_1
    iget-wide v3, p0, Lio/sentry/util/Random;->state:J

    const-wide v5, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v3, v5

    iget-wide v7, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lio/sentry/util/Random;->state:J

    .line 211
    iget-wide v3, p0, Lio/sentry/util/Random;->state:J

    const/16 v0, 0x16

    ushr-long/2addr v3, v0

    iget-wide v7, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v3, v7

    iget-wide v7, p0, Lio/sentry/util/Random;->state:J

    const/16 v9, 0x3d

    ushr-long/2addr v7, v9

    const-wide/16 v10, 0x16

    add-long/2addr v7, v10

    long-to-int v7, v7

    ushr-long/2addr v3, v7

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    .line 213
    .local v3, "l":J
    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v12, v5

    iget-wide v5, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v12, v5

    iput-wide v12, p0, Lio/sentry/util/Random;->state:J

    .line 215
    const/4 v5, 0x6

    ushr-long v5, v3, v5

    const/16 v12, 0x1b

    shl-long/2addr v5, v12

    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v12, v0

    iget-wide v1, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v1, v12

    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v12, v9

    add-long/2addr v12, v10

    long-to-int v9, v12

    ushr-long/2addr v1, v9

    and-long/2addr v1, v7

    const/4 v7, 0x5

    ushr-long/2addr v1, v7

    add-long/2addr v5, v1

    long-to-double v1, v5

    const-wide/high16 v5, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr v1, v5

    cmpg-double v1, v1, p1

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 204
    .end local v3    # "l":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "probability must be between 0.0 and 1.0 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextByte()B
    .locals 6

    .line 122
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 123
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v2, 0x16

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x16

    add-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 7
    .param p1, "b"    # [B

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 128
    iget-wide v1, p0, Lio/sentry/util/Random;->state:J

    const-wide v3, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/util/Random;->state:J

    .line 129
    iget-wide v1, p0, Lio/sentry/util/Random;->state:J

    const/16 v3, 0x16

    ushr-long/2addr v1, v3

    iget-wide v3, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v1, v3

    iget-wide v3, p0, Lio/sentry/util/Random;->state:J

    const/16 v5, 0x3d

    ushr-long/2addr v3, v5

    const-wide/16 v5, 0x16

    add-long/2addr v3, v5

    long-to-int v3, v3

    ushr-long/2addr v1, v3

    const/16 v3, 0x18

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public nextChar()C
    .locals 6

    .line 134
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 136
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v2, 0x16

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x16

    add-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public nextDouble()D
    .locals 14

    .line 256
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 257
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x16

    ushr-long/2addr v0, v4

    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v5

    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    const/16 v7, 0x3d

    ushr-long/2addr v5, v7

    const-wide/16 v8, 0x16

    add-long/2addr v5, v8

    long-to-int v5, v5

    ushr-long/2addr v0, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    .line 258
    .local v0, "l":J
    iget-wide v10, p0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v10, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lio/sentry/util/Random;->state:J

    .line 259
    const/4 v2, 0x6

    ushr-long v2, v0, v2

    const/16 v10, 0x1b

    shl-long/2addr v2, v10

    iget-wide v10, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v10, v4

    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v12, v7

    add-long/2addr v12, v8

    long-to-int v4, v12

    ushr-long v7, v10, v4

    and-long v4, v7, v5

    const/4 v6, 0x5

    ushr-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public nextDouble(ZZ)D
    .locals 20
    .param p1, "includeZero"    # Z
    .param p2, "includeOne"    # Z

    .line 265
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 267
    .local v1, "d":D
    :goto_0
    iget-wide v3, v0, Lio/sentry/util/Random;->state:J

    const-wide v5, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v3, v5

    iget-wide v7, v0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v3, v7

    iput-wide v3, v0, Lio/sentry/util/Random;->state:J

    .line 268
    iget-wide v3, v0, Lio/sentry/util/Random;->state:J

    const/16 v7, 0x16

    ushr-long/2addr v3, v7

    iget-wide v8, v0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v3, v8

    iget-wide v8, v0, Lio/sentry/util/Random;->state:J

    const/16 v10, 0x3d

    ushr-long/2addr v8, v10

    const-wide/16 v11, 0x16

    add-long/2addr v8, v11

    long-to-int v8, v8

    ushr-long/2addr v3, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v3, v8

    .line 269
    .local v3, "l":J
    iget-wide v13, v0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v13, v5

    move-wide v15, v5

    iget-wide v5, v0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v13, v5

    iput-wide v13, v0, Lio/sentry/util/Random;->state:J

    .line 270
    const/4 v5, 0x6

    ushr-long v5, v3, v5

    const/16 v13, 0x1b

    shl-long/2addr v5, v13

    iget-wide v13, v0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v13, v7

    move/from16 v17, v7

    move-wide/from16 v18, v8

    iget-wide v7, v0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v7, v13

    iget-wide v13, v0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v13, v10

    add-long/2addr v13, v11

    long-to-int v9, v13

    ushr-long/2addr v7, v9

    and-long v7, v7, v18

    const/4 v9, 0x5

    ushr-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-double v5, v5

    const-wide/high16 v7, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr v5, v7

    .line 276
    .end local v1    # "d":D
    .local v5, "d":D
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_0

    .line 278
    iget-wide v7, v0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v7, v15

    iget-wide v13, v0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v7, v13

    iput-wide v7, v0, Lio/sentry/util/Random;->state:J

    .line 279
    iget-wide v7, v0, Lio/sentry/util/Random;->state:J

    ushr-long v7, v7, v17

    iget-wide v13, v0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v7, v13

    iget-wide v13, v0, Lio/sentry/util/Random;->state:J

    ushr-long v9, v13, v10

    add-long/2addr v9, v11

    long-to-int v9, v9

    ushr-long/2addr v7, v9

    and-long v7, v7, v18

    const/16 v9, 0x1f

    ushr-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 280
    add-double/2addr v5, v1

    .line 284
    .end local v3    # "l":J
    :cond_0
    cmpl-double v1, v5, v1

    if-gtz v1, :cond_2

    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    cmpl-double v1, v5, v1

    if-eqz v1, :cond_2

    .line 287
    :cond_1
    return-wide v5

    .line 267
    :cond_2
    move-wide v1, v5

    goto/16 :goto_0
.end method

.method public nextFloat()F
    .locals 6

    .line 291
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 292
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v2, 0x16

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x16

    add-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x4b800000    # 1.6777216E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public nextFloat(ZZ)F
    .locals 13
    .param p1, "includeZero"    # Z
    .param p2, "includeOne"    # Z

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "d":F
    :goto_0
    iget-wide v1, p0, Lio/sentry/util/Random;->state:J

    const-wide v3, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v1, v3

    iget-wide v5, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lio/sentry/util/Random;->state:J

    .line 300
    iget-wide v1, p0, Lio/sentry/util/Random;->state:J

    const/16 v5, 0x16

    ushr-long/2addr v1, v5

    iget-wide v6, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v1, v6

    iget-wide v6, p0, Lio/sentry/util/Random;->state:J

    const/16 v8, 0x3d

    ushr-long/2addr v6, v8

    const-wide/16 v9, 0x16

    add-long/2addr v6, v9

    long-to-int v6, v6

    ushr-long/2addr v1, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v1, v6

    const/16 v11, 0x8

    ushr-long/2addr v1, v11

    long-to-float v1, v1

    const/high16 v2, 0x4b800000    # 1.6777216E7f

    div-float/2addr v1, v2

    .line 309
    .end local v0    # "d":F
    .local v1, "d":F
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 311
    iget-wide v11, p0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v11, v3

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v11, v2

    iput-wide v11, p0, Lio/sentry/util/Random;->state:J

    .line 312
    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v2, v5

    iget-wide v4, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v4, v8

    add-long/2addr v4, v9

    long-to-int v4, v4

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 313
    add-float/2addr v1, v0

    .line 316
    :cond_0
    cmpl-float v0, v1, v0

    if-gtz v0, :cond_2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 319
    :cond_1
    return v1

    .line 299
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public nextInt()I
    .locals 6

    .line 156
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 158
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v2, 0x16

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x16

    add-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextInt(I)I
    .locals 14
    .param p1, "n"    # I

    .line 170
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 171
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x16

    ushr-long/2addr v0, v4

    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v5

    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    const/16 v7, 0x3d

    ushr-long/2addr v5, v7

    const-wide/16 v8, 0x16

    add-long/2addr v5, v8

    long-to-int v5, v5

    ushr-long/2addr v0, v5

    long-to-int v0, v0

    ushr-int/lit8 v0, v0, 0x1

    .line 172
    .local v0, "r":I
    add-int/lit8 v1, p1, -0x1

    .line 173
    .local v1, "m":I
    and-int v5, p1, v1

    if-nez v5, :cond_0

    .line 174
    int-to-long v2, p1

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const/16 v4, 0x1f

    shr-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_1

    .line 176
    :cond_0
    move v5, v0

    .local v5, "u":I
    :goto_0
    rem-int v6, v5, p1

    move v0, v6

    sub-int v6, v5, v6

    add-int/2addr v6, v1

    if-gez v6, :cond_1

    .line 177
    iget-wide v10, p0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v10, v2

    iget-wide v12, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lio/sentry/util/Random;->state:J

    .line 178
    iget-wide v10, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v10, v4

    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v12, v7

    add-long/2addr v12, v8

    long-to-int v6, v12

    ushr-long/2addr v10, v6

    long-to-int v6, v10

    ushr-int/lit8 v5, v6, 0x1

    goto :goto_0

    .line 181
    .end local v5    # "u":I
    :cond_1
    :goto_1
    return v0
.end method

.method public nextLong()J
    .locals 10

    .line 223
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 225
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x16

    ushr-long/2addr v0, v4

    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v5

    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    const/16 v7, 0x3d

    ushr-long/2addr v5, v7

    const-wide/16 v8, 0x16

    add-long/2addr v5, v8

    long-to-int v5, v5

    ushr-long/2addr v0, v5

    .line 227
    .local v0, "l":J
    iget-wide v5, p0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v5, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lio/sentry/util/Random;->state:J

    .line 228
    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v4, v7

    add-long/2addr v4, v8

    long-to-int v4, v4

    ushr-long/2addr v2, v4

    .line 233
    .local v2, "j":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    long-to-int v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public nextLong(J)J
    .locals 12
    .param p1, "n"    # J

    .line 237
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const-wide v4, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v2, v4

    iget-wide v6, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lio/sentry/util/Random;->state:J

    .line 244
    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v6, 0x16

    ushr-long/2addr v2, v6

    iget-wide v7, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v2, v7

    iget-wide v7, p0, Lio/sentry/util/Random;->state:J

    const/16 v9, 0x3d

    ushr-long/2addr v7, v9

    const-wide/16 v10, 0x16

    add-long/2addr v7, v10

    long-to-int v7, v7

    ushr-long/2addr v2, v7

    .line 246
    .local v2, "l":J
    iget-wide v7, p0, Lio/sentry/util/Random;->state:J

    mul-long/2addr v7, v4

    iget-wide v4, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v7, v4

    iput-wide v7, p0, Lio/sentry/util/Random;->state:J

    .line 247
    iget-wide v4, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v4, v6

    iget-wide v6, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lio/sentry/util/Random;->state:J

    ushr-long/2addr v6, v9

    add-long/2addr v6, v10

    long-to-int v6, v6

    ushr-long/2addr v4, v6

    .line 249
    .local v4, "j":J
    const/16 v6, 0x20

    shl-long v6, v2, v6

    long-to-int v8, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    .line 250
    .local v6, "bits":J
    rem-long v2, v6, p1

    .line 251
    .end local v4    # "j":J
    .local v2, "val":J
    sub-long v4, v6, v2

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    add-long/2addr v4, v8

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    .line 252
    return-wide v2

    .line 237
    .end local v2    # "val":J
    .end local v6    # "bits":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n has to be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextShort()S
    .locals 6

    .line 140
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 141
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const/16 v2, 0x16

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->state:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x16

    add-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public setSeed(JJ)V
    .locals 4
    .param p1, "seed"    # J
    .param p3, "streamNumber"    # J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 112
    const/4 v0, 0x1

    shl-long v0, p3, v0

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->inc:J

    .line 113
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/util/Random;->inc:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 114
    iget-wide v0, p0, Lio/sentry/util/Random;->state:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/sentry/util/Random;->state:J

    .line 119
    return-void
.end method
