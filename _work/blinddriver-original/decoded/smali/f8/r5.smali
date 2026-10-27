.class public final Lf8/r5;
.super Lf8/v4;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf8/r5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static q([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lf8/q5;->e([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lf8/q5;->e([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lf8/s5;->c(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lf8/q5;->e([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lf8/s5;->b(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lf8/s5;->a:Lf8/v4;

    const/16 p0, -0xc

    if-le p1, p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return p1
.end method


# virtual methods
.method public final h([BII)Ljava/lang/String;
    .locals 9

    iget p0, p0, Lf8/r5;->c:I

    packed-switch p0, :pswitch_data_0

    or-int p0, p2, p3

    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_9

    add-int p0, p2, p3

    new-array v4, p3, [C

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge p2, p0, :cond_0

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lf8/q5;->e([BJ)B

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_1
    if-ge p2, p0, :cond_8

    add-int/lit8 v0, p2, 0x1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lf8/q5;->e([BJ)B

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 p2, v5, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v5

    :goto_2
    if-ge v0, p0, :cond_1

    int-to-long v1, v0

    invoke-static {p1, v1, v2}, Lf8/q5;->e([BJ)B

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    int-to-char v1, v1

    aput-char v1, v4, p2

    move p2, v2

    goto :goto_2

    :cond_1
    move v5, p2

    move p2, v0

    goto :goto_1

    :cond_2
    const/16 v2, -0x20

    if-ge v1, v2, :cond_4

    if-ge v0, p0, :cond_3

    add-int/lit8 p2, p2, 0x2

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lf8/q5;->e([BJ)B

    move-result v0

    add-int/lit8 v2, v5, 0x1

    invoke-static {v1, v0, v4, v5}, Lf8/v4;->c(BB[CI)V

    move v5, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_4
    const/16 v2, -0x10

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, p0, -0x1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, p2, 0x2

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lf8/q5;->e([BJ)B

    move-result v0

    add-int/lit8 p2, p2, 0x3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lf8/q5;->e([BJ)B

    move-result v2

    add-int/lit8 v3, v5, 0x1

    invoke-static {v1, v0, v2, v4, v5}, Lf8/v4;->d(BBB[CI)V

    move v5, v3

    goto :goto_1

    :cond_5
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 v2, p0, -0x2

    if-ge v0, v2, :cond_7

    add-int/lit8 v2, p2, 0x2

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lf8/q5;->e([BJ)B

    move-result v0

    add-int/lit8 v3, p2, 0x3

    int-to-long v6, v2

    invoke-static {p1, v6, v7}, Lf8/q5;->e([BJ)B

    move-result v2

    add-int/lit8 p2, p2, 0x4

    int-to-long v6, v3

    invoke-static {p1, v6, v7}, Lf8/q5;->e([BJ)B

    move-result v3

    move v8, v1

    move v1, v0

    move v0, v8

    invoke-static/range {v0 .. v5}, Lf8/v4;->b(BBBB[CI)V

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, p3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    or-int p0, p2, p3

    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_13

    add-int p0, p2, p3

    new-array v4, p3, [C

    const/4 p3, 0x0

    move v0, p3

    :goto_3
    if-ge p2, p0, :cond_a

    aget-byte v1, p1, p2

    if-ltz v1, :cond_a

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v0

    move v0, v2

    goto :goto_3

    :cond_a
    move v5, v0

    :goto_4
    if-ge p2, p0, :cond_12

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    aget-byte v0, p1, p2

    if-ltz v0, :cond_c

    add-int/lit8 p2, v5, 0x1

    int-to-char v0, v0

    aput-char v0, v4, v5

    move v0, v1

    :goto_5
    if-ge v0, p0, :cond_b

    aget-byte v1, p1, v0

    if-ltz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    int-to-char v1, v1

    aput-char v1, v4, p2

    move p2, v2

    goto :goto_5

    :cond_b
    move v5, p2

    move p2, v0

    goto :goto_4

    :cond_c
    const/16 v2, -0x20

    if-ge v0, v2, :cond_e

    if-ge v1, p0, :cond_d

    add-int/lit8 p2, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v1, v4, v5}, Lf8/v4;->c(BB[CI)V

    move v5, v2

    goto :goto_4

    :cond_d
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_e
    const/16 v2, -0x10

    if-ge v0, v2, :cond_10

    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_f

    add-int/lit8 v2, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte v2, p1, v2

    add-int/lit8 v3, v5, 0x1

    invoke-static {v0, v1, v2, v4, v5}, Lf8/v4;->d(BBB[CI)V

    move v5, v3

    goto :goto_4

    :cond_f
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_10
    add-int/lit8 v2, p0, -0x2

    if-ge v1, v2, :cond_11

    add-int/lit8 v2, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x3

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x4

    aget-byte v3, p1, v3

    invoke-static/range {v0 .. v5}, Lf8/v4;->b(BBBB[CI)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_11
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, p3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n([BII)I
    .locals 12

    iget p0, p0, Lf8/r5;->c:I

    packed-switch p0, :pswitch_data_0

    or-int p0, p2, p3

    array-length v0, p1

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_10

    int-to-long v0, p2

    int-to-long p2, p3

    sub-long/2addr p2, v0

    long-to-int p0, p2

    const/16 p2, 0x10

    const/4 p3, 0x0

    const-wide/16 v2, 0x1

    if-ge p0, p2, :cond_0

    move p2, p3

    goto :goto_1

    :cond_0
    move p2, p3

    move-wide v4, v0

    :goto_0
    if-ge p2, p0, :cond_2

    add-long v6, v4, v2

    invoke-static {p1, v4, v5}, Lf8/q5;->e([BJ)B

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move-wide v4, v6

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_1
    sub-int/2addr p0, p2

    int-to-long v4, p2

    add-long/2addr v0, v4

    :cond_3
    :goto_2
    move p2, p3

    :goto_3
    if-lez p0, :cond_5

    add-long v4, v0, v2

    invoke-static {p1, v0, v1}, Lf8/q5;->e([BJ)B

    move-result p2

    if-ltz p2, :cond_4

    add-int/lit8 p0, p0, -0x1

    move-wide v0, v4

    goto :goto_3

    :cond_4
    move-wide v0, v4

    :cond_5
    if-nez p0, :cond_6

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v4, p0, -0x1

    const/16 v5, -0x20

    const/16 v6, -0x41

    if-ge p2, v5, :cond_9

    if-nez v4, :cond_7

    move p3, p2

    goto/16 :goto_5

    :cond_7
    add-int/lit8 p0, p0, -0x2

    const/16 v4, -0x3e

    if-lt p2, v4, :cond_f

    add-long v4, v0, v2

    invoke-static {p1, v0, v1}, Lf8/q5;->e([BJ)B

    move-result p2

    if-le p2, v6, :cond_8

    goto :goto_4

    :cond_8
    move-wide v0, v4

    goto :goto_2

    :cond_9
    const/16 v7, -0x10

    const-wide/16 v8, 0x2

    if-ge p2, v7, :cond_d

    const/4 v7, 0x2

    if-ge v4, v7, :cond_a

    invoke-static {p1, p2, v0, v1, v4}, Lf8/r5;->q([BIJI)I

    move-result p3

    goto :goto_5

    :cond_a
    add-int/lit8 p0, p0, -0x3

    add-long v10, v0, v2

    invoke-static {p1, v0, v1}, Lf8/q5;->e([BJ)B

    move-result v4

    if-gt v4, v6, :cond_f

    const/16 v7, -0x60

    if-ne p2, v5, :cond_b

    if-lt v4, v7, :cond_f

    :cond_b
    const/16 v5, -0x13

    if-ne p2, v5, :cond_c

    if-ge v4, v7, :cond_f

    :cond_c
    add-long/2addr v0, v8

    invoke-static {p1, v10, v11}, Lf8/q5;->e([BJ)B

    move-result p2

    if-le p2, v6, :cond_3

    goto :goto_4

    :cond_d
    const/4 v5, 0x3

    if-ge v4, v5, :cond_e

    invoke-static {p1, p2, v0, v1, v4}, Lf8/r5;->q([BIJI)I

    move-result p3

    goto :goto_5

    :cond_e
    add-int/lit8 p0, p0, -0x4

    add-long v4, v0, v2

    invoke-static {p1, v0, v1}, Lf8/q5;->e([BJ)B

    move-result v7

    if-gt v7, v6, :cond_f

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 v7, v7, 0x70

    add-int/2addr v7, p2

    shr-int/lit8 p2, v7, 0x1e

    if-nez p2, :cond_f

    add-long/2addr v8, v0

    invoke-static {p1, v4, v5}, Lf8/q5;->e([BJ)B

    move-result p2

    if-gt p2, v6, :cond_f

    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    invoke-static {p1, v8, v9}, Lf8/q5;->e([BJ)B

    move-result p2

    if-le p2, v6, :cond_3

    :cond_f
    :goto_4
    const/4 p3, -0x1

    :goto_5
    return p3

    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    :pswitch_0
    if-ge p2, p3, :cond_11

    aget-byte p0, p1, p2

    if-ltz p0, :cond_11

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_11
    if-lt p2, p3, :cond_12

    goto :goto_8

    :cond_12
    :goto_7
    if-lt p2, p3, :cond_13

    :goto_8
    const/4 p0, 0x0

    goto/16 :goto_a

    :cond_13
    add-int/lit8 p0, p2, 0x1

    aget-byte v0, p1, p2

    if-gez v0, :cond_1c

    const/16 v1, -0x20

    const/16 v2, -0x41

    if-ge v0, v1, :cond_15

    if-lt p0, p3, :cond_14

    move p0, v0

    goto :goto_a

    :cond_14
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_1b

    add-int/lit8 p2, p2, 0x2

    aget-byte p0, p1, p0

    if-le p0, v2, :cond_12

    goto :goto_9

    :cond_15
    const/16 v3, -0x10

    if-ge v0, v3, :cond_19

    add-int/lit8 v3, p3, -0x1

    if-lt p0, v3, :cond_16

    invoke-static {p1, p0, p3}, Lf8/s5;->a([BII)I

    move-result p0

    goto :goto_a

    :cond_16
    add-int/lit8 v3, p2, 0x2

    aget-byte p0, p1, p0

    if-gt p0, v2, :cond_1b

    const/16 v4, -0x60

    if-ne v0, v1, :cond_17

    if-lt p0, v4, :cond_1b

    :cond_17
    const/16 v1, -0x13

    if-ne v0, v1, :cond_18

    if-ge p0, v4, :cond_1b

    :cond_18
    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p1, v3

    if-le p0, v2, :cond_12

    goto :goto_9

    :cond_19
    add-int/lit8 v1, p3, -0x2

    if-lt p0, v1, :cond_1a

    invoke-static {p1, p0, p3}, Lf8/s5;->a([BII)I

    move-result p0

    goto :goto_a

    :cond_1a
    add-int/lit8 v1, p2, 0x2

    aget-byte p0, p1, p0

    if-gt p0, v2, :cond_1b

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_1b

    add-int/lit8 p0, p2, 0x3

    aget-byte v0, p1, v1

    if-gt v0, v2, :cond_1b

    add-int/lit8 p2, p2, 0x4

    aget-byte p0, p1, p0

    if-le p0, v2, :cond_12

    :cond_1b
    :goto_9
    const/4 p0, -0x1

    :goto_a
    return p0

    :cond_1c
    move p2, p0

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
