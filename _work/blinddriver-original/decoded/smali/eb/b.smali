.class public final Leb/b;
.super Leb/d;
.source "SourceFile"


# instance fields
.field public n:Ljava/io/InputStream;

.field public o:J

.field public p:Ljava/util/ArrayList;

.field public q:I

.field public r:Z


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Leb/b;->o:J

    return-wide v0
.end method

.method public final n(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Leb/b;->o:J

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MemoryCacheSeekableStream0"

    invoke-static {p1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read()I
    .locals 6

    .line 1
    iget-wide v0, p0, Leb/b;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Leb/b;->t(J)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Leb/b;->p:Ljava/util/ArrayList;

    iget-wide v4, p0, Leb/b;->o:J

    const/16 v1, 0x9

    shr-long/2addr v4, v1

    long-to-int v1, v4

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5
    iget-wide v4, p0, Leb/b;->o:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Leb/b;->o:J

    const-wide/16 v1, 0x1ff

    and-long/2addr v1, v4

    long-to-int p0, v1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 5

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 7
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_0
    iget-wide v0, p0, Leb/b;->o:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Leb/b;->t(J)J

    move-result-wide v0

    .line 9
    iget-wide v2, p0, Leb/b;->o:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_1
    iget-object v0, p0, Leb/b;->p:Ljava/util/ArrayList;

    const/16 v1, 0x9

    shr-long v1, v2, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 11
    iget-wide v1, p0, Leb/b;->o:J

    const-wide/16 v3, 0x1ff

    and-long/2addr v1, v3

    long-to-int v1, v1

    rsub-int v1, v1, 0x200

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-wide v1, p0, Leb/b;->o:J

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-wide p1, p0, Leb/b;->o:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Leb/b;->o:J

    return p3

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final t(J)J
    .locals 5

    iget v0, p0, Leb/b;->q:I

    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    return-wide p1

    :cond_0
    iget-boolean v3, p0, Leb/b;->r:Z

    if-eqz v3, :cond_1

    return-wide v1

    :cond_1
    const/16 v1, 0x9

    shr-long/2addr p1, v1

    long-to-int p1, p1

    shr-int/lit8 p2, v0, 0x9

    :goto_0
    if-gt p2, p1, :cond_4

    const/16 v0, 0x200

    new-array v1, v0, [B

    iget-object v2, p0, Leb/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1
    if-lez v0, :cond_3

    iget-object v3, p0, Leb/b;->n:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Leb/b;->r:Z

    iget p0, p0, Leb/b;->q:I

    :goto_2
    int-to-long p0, p0

    return-wide p0

    :cond_2
    add-int/2addr v2, v3

    sub-int/2addr v0, v3

    iget v4, p0, Leb/b;->q:I

    add-int/2addr v4, v3

    iput v4, p0, Leb/b;->q:I

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget p0, p0, Leb/b;->q:I

    goto :goto_2
.end method
