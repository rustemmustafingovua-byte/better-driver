.class public final Lw5/l;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public final l:Lw5/d;

.field public m:Ljava/io/InputStream;

.field public n:[B

.field public o:I

.field public p:I

.field public final q:Z

.field public r:C

.field public s:I

.field public t:I

.field public final u:Z

.field public v:[C


# direct methods
.method public constructor <init>(Lw5/d;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lw5/l;->r:C

    iput-object p1, p0, Lw5/l;->l:Lw5/d;

    iput-object p2, p0, Lw5/l;->m:Ljava/io/InputStream;

    iput-object p3, p0, Lw5/l;->n:[B

    iput p4, p0, Lw5/l;->o:I

    iput p5, p0, Lw5/l;->p:I

    iput-boolean p6, p0, Lw5/l;->q:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lw5/l;->u:Z

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    iget v0, p0, Lw5/l;->t:I

    add-int/2addr v0, p1

    iget p0, p0, Lw5/l;->s:I

    new-instance v1, Ljava/io/CharConversionException;

    const-string v2, ", needed 4, at char #"

    const-string v3, ", byte #"

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-static {v4, p1, v2, p0, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-static {v0, p1, p0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lw5/l;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lw5/l;->m:Ljava/io/InputStream;

    iget-object v2, p0, Lw5/l;->n:[B

    if-eqz v2, :cond_0

    iput-object v1, p0, Lw5/l;->n:[B

    iget-object p0, p0, Lw5/l;->l:Lw5/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Lw5/d;->e([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lw5/l;->v:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-array v0, v1, [C

    iput-object v0, p0, Lw5/l;->v:[C

    .line 3
    :cond_0
    iget-object v0, p0, Lw5/l;->v:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lw5/l;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 4
    :cond_1
    iget-object p0, p0, Lw5/l;->v:[C

    aget-char p0, p0, v2

    return p0
.end method

.method public final read([CII)I
    .locals 12

    .line 5
    iget-object v0, p0, Lw5/l;->n:[B

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_12

    add-int v2, p2, p3

    .line 6
    array-length v3, p1

    if-gt v2, v3, :cond_12

    .line 7
    iget-char p3, p0, Lw5/l;->r:C

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 8
    aput-char p3, p1, p2

    .line 9
    iput-char v3, p0, Lw5/l;->r:C

    goto/16 :goto_3

    .line 10
    :cond_2
    iget p3, p0, Lw5/l;->p:I

    iget v5, p0, Lw5/l;->o:I

    sub-int v6, p3, v5

    if-ge v6, v4, :cond_c

    .line 11
    iget-object v7, p0, Lw5/l;->m:Ljava/io/InputStream;

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    .line 12
    iget v9, p0, Lw5/l;->t:I

    sub-int/2addr p3, v6

    add-int/2addr p3, v9

    iput p3, p0, Lw5/l;->t:I

    .line 13
    const-string p3, "Strange I/O stream, returned 0 bytes on read"

    iget-object v9, p0, Lw5/l;->l:Lw5/d;

    iget-boolean v10, p0, Lw5/l;->u:Z

    if-lez v6, :cond_4

    if-lez v5, :cond_3

    .line 14
    invoke-static {v0, v5, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput v3, p0, Lw5/l;->o:I

    .line 16
    :cond_3
    iput v6, p0, Lw5/l;->p:I

    goto :goto_0

    .line 17
    :cond_4
    iput v3, p0, Lw5/l;->o:I

    .line 18
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 19
    iput v3, p0, Lw5/l;->p:I

    if-gez v0, :cond_5

    if-eqz v10, :cond_a

    .line 20
    iget-object p1, p0, Lw5/l;->n:[B

    if-eqz p1, :cond_a

    .line 21
    iput-object v8, p0, Lw5/l;->n:[B

    if-eqz v9, :cond_a

    .line 22
    invoke-virtual {v9, p1}, Lw5/d;->e([B)V

    goto :goto_1

    .line 23
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_6
    iput v0, p0, Lw5/l;->p:I

    .line 25
    :goto_0
    iget v0, p0, Lw5/l;->p:I

    if-ge v0, v4, :cond_c

    .line 26
    iget-object v3, p0, Lw5/l;->m:Ljava/io/InputStream;

    iget-object v5, p0, Lw5/l;->n:[B

    array-length v6, v5

    sub-int/2addr v6, v0

    invoke-virtual {v3, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ge v0, v1, :cond_9

    if-gez v0, :cond_8

    if-eqz v10, :cond_7

    .line 27
    iget-object p1, p0, Lw5/l;->n:[B

    if-eqz p1, :cond_7

    .line 28
    iput-object v8, p0, Lw5/l;->n:[B

    if-eqz v9, :cond_7

    .line 29
    invoke-virtual {v9, p1}, Lw5/d;->e([B)V

    .line 30
    :cond_7
    iget p1, p0, Lw5/l;->p:I

    invoke-virtual {p0, p1}, Lw5/l;->b(I)V

    throw v8

    .line 31
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_9
    iget v3, p0, Lw5/l;->p:I

    add-int/2addr v3, v0

    iput v3, p0, Lw5/l;->p:I

    goto :goto_0

    :cond_a
    :goto_1
    if-nez v6, :cond_b

    :goto_2
    const/4 p0, -0x1

    return p0

    .line 33
    :cond_b
    iget p1, p0, Lw5/l;->p:I

    iget p2, p0, Lw5/l;->o:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lw5/l;->b(I)V

    throw v8

    :cond_c
    move v0, p2

    .line 34
    :goto_3
    iget p3, p0, Lw5/l;->p:I

    sub-int/2addr p3, v4

    :goto_4
    if-ge v0, v2, :cond_11

    .line 35
    iget v3, p0, Lw5/l;->o:I

    if-gt v3, p3, :cond_11

    .line 36
    iget-boolean v4, p0, Lw5/l;->q:Z

    if-eqz v4, :cond_d

    .line 37
    iget-object v4, p0, Lw5/l;->n:[B

    aget-byte v5, v4, v3

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    .line 38
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v3, 0x3

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    goto :goto_5

    .line 39
    :cond_d
    iget-object v4, p0, Lw5/l;->n:[B

    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    .line 40
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x3

    aget-byte v4, v4, v7

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    move v11, v5

    move v5, v4

    move v4, v11

    :goto_5
    add-int/lit8 v3, v3, 0x4

    .line 41
    iput v3, p0, Lw5/l;->o:I

    if-eqz v5, :cond_10

    const v3, 0xffff

    and-int/2addr v3, v5

    add-int/lit8 v5, v3, -0x1

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    if-gt v3, v6, :cond_f

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v4, 0xa

    const v6, 0xd800

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 42
    aput-char v5, p1, v0

    and-int/lit16 v0, v4, 0x3ff

    const v5, 0xdc00

    or-int/2addr v0, v5

    if-lt v3, v2, :cond_e

    int-to-char p1, v4

    .line 43
    iput-char p1, p0, Lw5/l;->r:C

    move v0, v3

    goto :goto_7

    :cond_e
    move v4, v0

    move v0, v3

    goto :goto_6

    :cond_f
    sub-int/2addr v0, p2

    const p1, 0x10ffff

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, " (above 0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget p2, p0, Lw5/l;->t:I

    iget p3, p0, Lw5/l;->o:I

    add-int/2addr p2, p3

    sub-int/2addr p2, v1

    iget p0, p0, Lw5/l;->s:I

    add-int/2addr p0, v0

    .line 46
    new-instance p3, Ljava/io/CharConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-32 character 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at char #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", byte #"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_10
    :goto_6
    add-int/lit8 v3, v0, 0x1

    int-to-char v4, v4

    .line 47
    aput-char v4, p1, v0

    move v0, v3

    goto/16 :goto_4

    :cond_11
    :goto_7
    sub-int/2addr v0, p2

    .line 48
    iget p1, p0, Lw5/l;->s:I

    add-int/2addr p1, v0

    iput p1, p0, Lw5/l;->s:I

    return v0

    .line 49
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 51
    const-string p2, "read(buf,%d,%d), cbuf[%d]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
