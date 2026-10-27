.class public final Lf8/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public final f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p4, 0x7fffffff

    iput p4, p0, Lf8/k;->h:I

    iput-object p1, p0, Lf8/k;->b:[B

    add-int/2addr p3, p2

    iput p3, p0, Lf8/k;->c:I

    iput p2, p0, Lf8/k;->e:I

    iput p2, p0, Lf8/k;->f:I

    return-void
.end method

.method public static c([BIIZ)Lf8/k;
    .locals 1

    new-instance v0, Lf8/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lf8/k;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v0, p2}, Lf8/k;->e(I)I
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget p0, p0, Lf8/k;->g:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lf8/h4;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lf8/k;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lf8/k;->e:I

    iget p0, p0, Lf8/k;->f:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lf8/k;->h:I

    invoke-virtual {p0}, Lf8/k;->r()V

    return-void
.end method

.method public final e(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lf8/k;->e:I

    iget v1, p0, Lf8/k;->f:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Lf8/k;->h:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Lf8/k;->h:I

    invoke-virtual {p0}, Lf8/k;->r()V

    return p1

    :cond_0
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lf8/h4;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Z
    .locals 4

    invoke-virtual {p0}, Lf8/k;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lf8/j;
    .locals 4

    invoke-virtual {p0}, Lf8/k;->l()I

    move-result v0

    iget-object v1, p0, Lf8/k;->b:[B

    if-lez v0, :cond_0

    iget v2, p0, Lf8/k;->c:I

    iget v3, p0, Lf8/k;->e:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    invoke-static {v1, v3, v0}, Lf8/j;->c([BII)Lf8/j;

    move-result-object v1

    iget v2, p0, Lf8/k;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lf8/k;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lf8/j;->n:Lf8/j;

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    iget v2, p0, Lf8/k;->c:I

    iget v3, p0, Lf8/k;->e:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    add-int/2addr v0, v3

    iput v0, p0, Lf8/k;->e:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object p0, Lf8/f4;->c:[B

    :goto_0
    sget-object v0, Lf8/j;->n:Lf8/j;

    new-instance v0, Lf8/j;

    invoke-direct {v0, p0}, Lf8/j;-><init>([B)V

    return-object v0

    :cond_3
    new-instance p0, Lf8/h4;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0
.end method

.method public final h(ILf8/n4;Lf8/h3;)V
    .locals 2

    iget v0, p0, Lf8/k;->a:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf8/k;->a:I

    invoke-interface {p2, p0, p3}, Lf8/n4;->k(Lf8/k;Lf8/h3;)Lf8/n4;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lf8/k;->a(I)V

    iget p1, p0, Lf8/k;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lf8/k;->a:I

    return-void

    :cond_0
    new-instance p0, Lf8/h4;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lf8/r4;Lf8/h3;)Lf8/o4;
    .locals 3

    invoke-virtual {p0}, Lf8/k;->l()I

    move-result v0

    iget v1, p0, Lf8/k;->a:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lf8/k;->e(I)I

    move-result v0

    iget v1, p0, Lf8/k;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf8/k;->a:I

    invoke-interface {p1, p0, p2}, Lf8/r4;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/o4;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lf8/k;->a(I)V

    iget p2, p0, Lf8/k;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lf8/k;->a:I

    invoke-virtual {p0, v0}, Lf8/k;->d(I)V

    return-object p1

    :cond_0
    new-instance p0, Lf8/h4;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()I
    .locals 3

    iget v0, p0, Lf8/k;->e:I

    iget v1, p0, Lf8/k;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lf8/k;->e:I

    iget-object p0, p0, Lf8/k;->b:[B

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0

    :cond_0
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0
.end method

.method public final k()J
    .locals 9

    iget v0, p0, Lf8/k;->e:I

    iget v1, p0, Lf8/k;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lf8/k;->e:I

    iget-object p0, p0, Lf8/k;->b:[B

    aget-byte v1, p0, v0

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    shl-long v1, v7, v2

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x10

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x28

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, p0, v0

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long v0, v1, v3

    return-wide v0

    :cond_0
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0
.end method

.method public final l()I
    .locals 7

    iget v0, p0, Lf8/k;->e:I

    iget v1, p0, Lf8/k;->c:I

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lf8/k;->b:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_1

    iput v2, p0, Lf8/k;->e:I

    return v4

    :cond_1
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_3

    xor-int/lit8 v0, v2, -0x80

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    aget-byte v2, v3, v2

    shl-int/lit8 v5, v2, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v2, :cond_7

    add-int/lit8 v2, v0, 0x6

    aget-byte v4, v3, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x7

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    add-int/lit8 v2, v0, 0x8

    aget-byte v4, v3, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x9

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v3, v4

    if-gez v2, :cond_6

    :goto_2
    invoke-virtual {p0}, Lf8/k;->n()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_6
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :goto_3
    iput v1, p0, Lf8/k;->e:I

    return v0
.end method

.method public final m()J
    .locals 12

    iget v0, p0, Lf8/k;->e:I

    iget v1, p0, Lf8/k;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lf8/k;->b:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_1

    iput v2, p0, Lf8/k;->e:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_3

    xor-int/lit8 v0, v2, -0x80

    int-to-long v2, v0

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    :goto_0
    move-wide v10, v0

    move v1, v2

    move-wide v2, v10

    goto/16 :goto_4

    :cond_5
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    aget-byte v2, v3, v2

    int-to-long v6, v2

    const/16 v2, 0x1c

    shl-long/2addr v6, v2

    xor-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6

    const-wide/32 v2, 0xfe03f80

    :goto_1
    xor-long/2addr v2, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v0, 0x6

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    const-wide v0, -0x7f01fc080L

    :goto_2
    xor-long/2addr v0, v4

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v0, 0x7

    aget-byte v2, v3, v2

    int-to-long v8, v2

    const/16 v2, 0x2a

    shl-long/2addr v8, v2

    xor-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_8

    const-wide v2, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v0, 0x8

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_9

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v0, 0x9

    aget-byte v2, v3, v2

    int-to-long v8, v2

    const/16 v2, 0x38

    shl-long/2addr v8, v2

    xor-long/2addr v4, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-gez v2, :cond_b

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v3, v1

    int-to-long v1, v1

    cmp-long v1, v1, v6

    if-gez v1, :cond_a

    :goto_3
    invoke-virtual {p0}, Lf8/k;->n()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    :cond_b
    move-wide v2, v4

    :goto_4
    iput v1, p0, Lf8/k;->e:I

    return-wide v2
.end method

.method public final n()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lf8/k;->e:I

    iget v4, p0, Lf8/k;->c:I

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lf8/k;->e:I

    iget-object v4, p0, Lf8/k;->b:[B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Lf8/h4;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o()I
    .locals 1

    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final p()J
    .locals 6

    invoke-virtual {p0}, Lf8/k;->m()J

    move-result-wide v0

    const/4 p0, 0x1

    ushr-long v2, v0, p0

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final q()I
    .locals 2

    iget v0, p0, Lf8/k;->e:I

    iget v1, p0, Lf8/k;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lf8/k;->g:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result v0

    iput v0, p0, Lf8/k;->g:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lf8/h4;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r()V
    .locals 3

    iget v0, p0, Lf8/k;->c:I

    iget v1, p0, Lf8/k;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lf8/k;->c:I

    iget v1, p0, Lf8/k;->f:I

    sub-int v1, v0, v1

    iget v2, p0, Lf8/k;->h:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lf8/k;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lf8/k;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lf8/k;->d:I

    return-void
.end method

.method public final s(I)Z
    .locals 6

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v3}, Lf8/k;->t(I)V

    return v2

    :cond_0
    sget p0, Lf8/h4;->m:I

    new-instance p0, Lf8/g4;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lf8/k;->q()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lf8/k;->s(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lf8/k;->a(I)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lf8/k;->t(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lf8/k;->t(I)V

    return v2

    :cond_6
    iget p1, p0, Lf8/k;->c:I

    iget v0, p0, Lf8/k;->e:I

    sub-int/2addr p1, v0

    const-string v0, "CodedInputStream encountered a malformed varint."

    iget-object v3, p0, Lf8/k;->b:[B

    const/16 v4, 0xa

    if-lt p1, v4, :cond_9

    :goto_0
    if-ge v1, v4, :cond_8

    iget p1, p0, Lf8/k;->e:I

    add-int/lit8 v5, p1, 0x1

    iput v5, p0, Lf8/k;->e:I

    aget-byte p1, v3, p1

    if-ltz p1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    new-instance p0, Lf8/h4;

    invoke-direct {p0, v0}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    if-ge v1, v4, :cond_c

    iget p1, p0, Lf8/k;->e:I

    iget v5, p0, Lf8/k;->c:I

    if-eq p1, v5, :cond_b

    add-int/lit8 v5, p1, 0x1

    iput v5, p0, Lf8/k;->e:I

    aget-byte p1, v3, p1

    if-ltz p1, :cond_a

    :goto_2
    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_c
    new-instance p0, Lf8/h4;

    invoke-direct {p0, v0}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lf8/k;->c:I

    iget v1, p0, Lf8/k;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lf8/k;->e:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    new-instance p0, Lf8/h4;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0
.end method
