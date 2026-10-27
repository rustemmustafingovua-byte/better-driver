.class public abstract Lcb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789abcdef"

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcb/a;->a:[B

    const/16 v0, 0x14

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcb/a;->b:[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x2540be3ffL
        0x174876e7ffL
        0xe8d4a50fffL
        0x9184e729fffL
        0x5af3107a3fffL
        0x38d7ea4c67fffL
        0x2386f26fc0ffffL
        0x16345785d89ffffL
        0xde0b6b3a763ffffL
        0x7fffffffffffffffL
    .end array-data
.end method

.method public static final a(Lbb/g;J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lbb/g;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    sget-object p1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4, p1}, Lbb/g;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lbb/g;->skip(J)V

    return-object p1

    :cond_0
    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lbb/g;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Lbb/g;->skip(J)V

    return-object p1
.end method

.method public static final b(Lbb/g;Lbb/n;Z)I
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "options"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v1, v1, Lbb/g;->l:Lbb/q;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_4

    :cond_0
    return v2

    :cond_1
    iget-object v3, v1, Lbb/q;->a:[B

    iget v4, v1, Lbb/q;->b:I

    iget v5, v1, Lbb/q;->c:I

    iget-object v0, v0, Lbb/n;->m:[I

    const/4 v6, 0x0

    move-object v8, v1

    move v9, v2

    move v7, v6

    :goto_0
    add-int/lit8 v10, v7, 0x1

    aget v11, v0, v7

    add-int/lit8 v7, v7, 0x2

    aget v10, v0, v10

    if-eq v10, v2, :cond_2

    move v9, v10

    :cond_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    if-gez v11, :cond_a

    mul-int/lit8 v11, v11, -0x1

    add-int v12, v11, v7

    :goto_1
    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v13, v7, 0x1

    aget v7, v0, v7

    if-eq v4, v7, :cond_4

    goto :goto_7

    :cond_4
    if-ne v13, v12, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    if-ne v11, v5, :cond_8

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, v8, Lbb/q;->f:Lbb/q;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v5, v3, Lbb/q;->b:I

    iget-object v7, v3, Lbb/q;->a:[B

    iget v8, v3, Lbb/q;->c:I

    if-ne v3, v1, :cond_7

    if-eqz v4, :cond_6

    move-object v3, v7

    move-object v7, v10

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    :goto_4
    const/4 v0, -0x2

    return v0

    :cond_7
    move-object v15, v7

    move-object v7, v3

    move-object v3, v15

    goto :goto_5

    :cond_8
    move-object v7, v8

    move v8, v5

    move v5, v11

    :goto_5
    if-eqz v4, :cond_9

    aget v4, v0, v13

    move v15, v8

    move-object v8, v7

    move v7, v15

    goto :goto_8

    :cond_9
    move v4, v5

    move v5, v8

    move-object v8, v7

    move v7, v13

    goto :goto_1

    :cond_a
    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int v13, v7, v11

    :goto_6
    if-ne v7, v13, :cond_c

    :cond_b
    :goto_7
    return v9

    :cond_c
    aget v14, v0, v7

    if-ne v4, v14, :cond_10

    add-int/2addr v7, v11

    aget v4, v0, v7

    if-ne v12, v5, :cond_e

    iget-object v8, v8, Lbb/q;->f:Lbb/q;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v3, v8, Lbb/q;->b:I

    iget-object v5, v8, Lbb/q;->a:[B

    iget v7, v8, Lbb/q;->c:I

    if-ne v8, v1, :cond_d

    move-object v8, v5

    move v5, v3

    move-object v3, v8

    move-object v8, v10

    goto :goto_8

    :cond_d
    move-object v15, v5

    move v5, v3

    move-object v3, v15

    goto :goto_8

    :cond_e
    move v7, v5

    move v5, v12

    :goto_8
    if-ltz v4, :cond_f

    return v4

    :cond_f
    neg-int v4, v4

    move v15, v7

    move v7, v4

    move v4, v5

    move v5, v15

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method
