.class public final Leb/a;
.super Leb/d;
.source "SourceFile"


# instance fields
.field public n:Ljava/io/InputStream;

.field public o:Ljava/io/File;

.field public p:Ljava/io/RandomAccessFile;

.field public q:I

.field public r:[B

.field public s:J

.field public t:J

.field public u:Z


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Leb/a;->t:J

    return-wide v0
.end method

.method public final close()V
    .locals 1

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Leb/a;->p:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object p0, p0, Leb/a;->o:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final n(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Leb/a;->t:J

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "FileCacheSeekableStream0"

    invoke-static {p1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read()I
    .locals 7

    .line 1
    iget-object v0, p0, Leb/a;->p:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Leb/a;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 2
    invoke-virtual {p0, v1, v2}, Leb/a;->t(J)J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-ltz v1, :cond_0

    .line 3
    iget-wide v1, p0, Leb/a;->t:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Leb/a;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 7

    .line 5
    iget-object v0, p0, Leb/a;->p:Ljava/io/RandomAccessFile;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    .line 7
    array-length v2, p1

    if-gt v1, v2, :cond_2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_0
    iget-wide v1, p0, Leb/a;->t:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Leb/a;->t(J)J

    move-result-wide v1

    .line 9
    iget-wide v5, p0, Leb/a;->t:J

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    if-lez p3, :cond_1

    .line 10
    iget-wide v1, p0, Leb/a;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 12
    iget-wide p1, p0, Leb/a;->t:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Leb/a;->t:J

    return p3

    :cond_1
    const/4 p0, -0x1

    return p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final t(J)J
    .locals 11

    iget-object v0, p0, Leb/a;->r:[B

    iget-object v1, p0, Leb/a;->p:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Leb/a;->s:J

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Leb/a;->u:Z

    if-eqz v4, :cond_1

    return-wide v2

    :cond_1
    sub-long v4, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Leb/a;->n:Ljava/io/InputStream;

    iget v3, p0, Leb/a;->q:I

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Leb/a;->u:Z

    iget-wide p0, p0, Leb/a;->s:J

    return-wide p0

    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    sub-long/2addr v4, v9

    iget-wide v2, p0, Leb/a;->s:J

    add-long/2addr v2, v9

    iput-wide v2, p0, Leb/a;->s:J

    goto :goto_0

    :cond_3
    :goto_1
    return-wide p1
.end method
