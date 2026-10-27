.class public abstract Leb/d;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field public l:J

.field public final m:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Leb/d;->l:J

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Leb/d;->m:[B

    return-void
.end method

.method public static q(Ljava/io/InputStream;)Leb/d;
    .locals 4

    :try_start_0
    new-instance v0, Leb/a;

    invoke-direct {v0}, Leb/d;-><init>()V

    const/16 v1, 0x400

    iput v1, v0, Leb/a;->q:I

    new-array v1, v1, [B

    iput-object v1, v0, Leb/a;->r:[B

    iput-object p0, v0, Leb/a;->n:Ljava/io/InputStream;

    const-string v1, "jai-FCSS-"

    const-string v2, ".tmp"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Leb/a;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Leb/a;->p:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Leb/b;

    invoke-direct {v0}, Leb/d;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Leb/b;->p:Ljava/util/ArrayList;

    iput-object p0, v0, Leb/b;->n:Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract c()J
.end method

.method public final d()I
    .locals 4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v3, v0, v1

    or-int/2addr v3, v2

    or-int/2addr v3, p0

    if-ltz v3, :cond_0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final e()J
    .locals 12

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    int-to-long v6, p0

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long p0, v8, v10

    if-ltz p0, :cond_0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    const/16 p0, 0x10

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    const/16 p0, 0x8

    shl-long v2, v4, p0

    add-long/2addr v0, v2

    add-long/2addr v0, v6

    return-wide v0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final k()J
    .locals 9

    iget-object v0, p0, Leb/d;->m:[B

    invoke-virtual {p0, v0}, Leb/d;->readFully([B)V

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v1, p0

    const/4 p0, 0x1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v3, p0

    const/4 p0, 0x2

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/4 p0, 0x3

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v7, p0

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    const/16 p0, 0x10

    shl-long/2addr v5, p0

    add-long/2addr v7, v5

    const/16 p0, 0x8

    shl-long/2addr v3, p0

    add-long/2addr v7, v3

    add-long/2addr v7, v1

    return-wide v7
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v1, v0, p0

    if-ltz v1, :cond_0

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Leb/d;->c()J

    move-result-wide v0

    iput-wide v0, p0, Leb/d;->l:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const-wide/16 v0, -0x1

    :try_start_1
    iput-wide v0, p0, Leb/d;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    invoke-virtual {p0}, Leb/d;->b()Z

    move-result p0

    return p0
.end method

.method public abstract n(J)V
.end method

.method public abstract read([BII)I
.end method

.method public final readBoolean()Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readByte()B
    .locals 0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readChar()C
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v1, v0, p0

    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p0

    int-to-char p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readDouble()D
    .locals 2

    invoke-virtual {p0}, Leb/d;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 0

    invoke-virtual {p0}, Leb/d;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final readFully([B)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Leb/d;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Leb/d;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    return-void

    .line 3
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readInt()I
    .locals 4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v3, v0, v1

    or-int/2addr v3, v2

    or-int/2addr v3, p0

    if-ltz v3, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v6, 0xd

    if-eq v3, v6, :cond_0

    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Leb/d;->c()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v6, v7}, Leb/d;->n(J)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readLong()J
    .locals 6

    invoke-virtual {p0}, Leb/d;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Leb/d;->readInt()I

    move-result p0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v1, v0, p0

    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readUnsignedByte()I
    .locals 0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v1, v0, p0

    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p0

    return v0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Leb/d;->l:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Leb/d;->n(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final skipBytes(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
