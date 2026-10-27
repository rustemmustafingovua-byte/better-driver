.class public final Lio/sentry/cache/tape/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/cache/tape/QueueFile$Element;,
        Lio/sentry/cache/tape/QueueFile$ElementIterator;,
        Lio/sentry/cache/tape/QueueFile$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field static final INITIAL_LENGTH:I = 0x1000

.field private static final VERSIONED_HEADER:I = -0x7fffffff

.field private static final ZEROES:[B


# instance fields
.field private final buffer:[B

.field closed:Z

.field elementCount:I

.field final file:Ljava/io/File;

.field fileLength:J

.field first:Lio/sentry/cache/tape/QueueFile$Element;

.field final headerLength:I

.field private last:Lio/sentry/cache/tape/QueueFile$Element;

.field private final maxElements:I

.field modCount:I

.field raf:Ljava/io/RandomAccessFile;

.field private final synchronousWrites:Z

.field private final zero:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZIZ)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "raf"    # Ljava/io/RandomAccessFile;
    .param p3, "zero"    # Z
    .param p4, "maxElements"    # I
    .param p5, "synchronousWrites"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/16 v0, 0x20

    iput v0, p0, Lio/sentry/cache/tape/QueueFile;->headerLength:I

    .line 133
    new-array v0, v0, [B

    iput-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    .line 190
    iput-object p1, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    .line 191
    iput-object p2, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 192
    iput-boolean p3, p0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    .line 193
    iput p4, p0, Lio/sentry/cache/tape/QueueFile;->maxElements:I

    .line 194
    iput-boolean p5, p0, Lio/sentry/cache/tape/QueueFile;->synchronousWrites:Z

    .line 196
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->readInitialData()V

    .line 197
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 75
    sget-object v0, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/cache/tape/QueueFile;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/cache/tape/QueueFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->resetFile()V

    return-void
.end method

.method private expandIfNecessary(J)V
    .locals 24
    .param p1, "dataLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    move-object/from16 v0, p0

    const-wide/16 v1, 0x4

    add-long v8, p1, v1

    .line 480
    .local v8, "elementLength":J
    invoke-direct {v0}, Lio/sentry/cache/tape/QueueFile;->remainingBytes()J

    move-result-wide v3

    .line 481
    .local v3, "remainingBytes":J
    cmp-long v5, v3, v8

    if-ltz v5, :cond_0

    return-void

    .line 484
    :cond_0
    iget-wide v5, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 488
    .local v5, "previousLength":J
    :goto_0
    add-long v10, v3, v5

    .line 489
    .end local v3    # "remainingBytes":J
    .local v10, "remainingBytes":J
    const/4 v3, 0x1

    shl-long v3, v5, v3

    .line 490
    .local v3, "newLength":J
    move-wide v12, v3

    .line 491
    .end local v5    # "previousLength":J
    .local v12, "previousLength":J
    cmp-long v5, v10, v8

    if-ltz v5, :cond_5

    .line 493
    invoke-direct {v0, v3, v4}, Lio/sentry/cache/tape/QueueFile;->setLength(J)V

    .line 496
    iget-object v5, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v5, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v5, v1

    iget-object v1, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v1, v1

    add-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v14

    .line 497
    .local v14, "endOfLastElement":J
    const-wide/16 v1, 0x0

    .line 499
    .local v1, "count":J
    iget-object v5, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v5, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    cmp-long v5, v14, v5

    if-gtz v5, :cond_2

    .line 500
    iget-object v5, v0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 501
    .local v5, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v22, 0x20

    iget-wide v6, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 502
    sub-long v19, v14, v22

    .line 503
    .end local v1    # "count":J
    .local v19, "count":J
    const-wide/16 v17, 0x20

    move-object/from16 v21, v5

    move-object/from16 v16, v5

    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    .local v16, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {v16 .. v21}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    cmp-long v1, v1, v19

    if-nez v1, :cond_1

    move-wide/from16 v1, v19

    goto :goto_1

    .line 504
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Copied insufficient number of bytes!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 499
    .end local v16    # "channel":Ljava/nio/channels/FileChannel;
    .end local v19    # "count":J
    .restart local v1    # "count":J
    :cond_2
    const-wide/16 v22, 0x20

    .line 509
    :goto_1
    iget-object v5, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v5, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v7, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    move-wide/from16 v16, v1

    .end local v1    # "count":J
    .local v16, "count":J
    iget-wide v1, v7, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    cmp-long v1, v5, v1

    if-gez v1, :cond_3

    .line 510
    iget-wide v1, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget-object v5, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v5, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v1, v5

    sub-long v6, v1, v22

    .line 511
    .local v6, "newLastPosition":J
    move-wide v1, v3

    .end local v3    # "newLength":J
    .local v1, "newLength":J
    iget v3, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v4, v4, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    move-wide/from16 v18, v8

    move-wide/from16 v8, v16

    move-wide/from16 v16, v10

    move-wide/from16 v10, v22

    .end local v10    # "remainingBytes":J
    .local v8, "count":J
    .local v16, "remainingBytes":J
    .local v18, "elementLength":J
    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 512
    new-instance v3, Lio/sentry/cache/tape/QueueFile$Element;

    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v4, v4, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    invoke-direct {v3, v6, v7, v4}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    iput-object v3, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    .line 513
    .end local v6    # "newLastPosition":J
    move-wide v3, v1

    goto :goto_2

    .line 514
    .end local v1    # "newLength":J
    .end local v18    # "elementLength":J
    .restart local v3    # "newLength":J
    .local v8, "elementLength":J
    .restart local v10    # "remainingBytes":J
    .local v16, "count":J
    :cond_3
    move-wide v1, v3

    move-wide/from16 v18, v8

    move-wide/from16 v8, v16

    move-wide/from16 v16, v10

    move-wide/from16 v10, v22

    .end local v3    # "newLength":J
    .end local v10    # "remainingBytes":J
    .restart local v1    # "newLength":J
    .local v8, "count":J
    .local v16, "remainingBytes":J
    .restart local v18    # "elementLength":J
    iget v3, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v4, v4, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v6, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v6, v6, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    move-wide v3, v1

    .line 517
    .end local v1    # "newLength":J
    .restart local v3    # "newLength":J
    :goto_2
    iput-wide v3, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 519
    iget-boolean v1, v0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    if-eqz v1, :cond_4

    .line 520
    invoke-direct {v0, v10, v11, v8, v9}, Lio/sentry/cache/tape/QueueFile;->ringErase(JJ)V

    .line 522
    :cond_4
    return-void

    .line 491
    .end local v14    # "endOfLastElement":J
    .end local v16    # "remainingBytes":J
    .end local v18    # "elementLength":J
    .local v8, "elementLength":J
    .restart local v10    # "remainingBytes":J
    :cond_5
    move-wide/from16 v18, v8

    move-wide/from16 v16, v10

    .end local v8    # "elementLength":J
    .end local v10    # "remainingBytes":J
    .restart local v16    # "remainingBytes":J
    .restart local v18    # "elementLength":J
    move-wide v5, v12

    move-wide/from16 v3, v16

    goto/16 :goto_0
.end method

.method static getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 862
    throw p0
.end method

.method static initializeFromFile(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "synchronousWrites"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "tempFile":Ljava/io/File;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->open(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 165
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x1000

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 166
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 167
    const v4, -0x7fffffff

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 168
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 171
    nop

    .line 174
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Rename failed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 171
    throw v2

    .line 179
    .end local v0    # "tempFile":Ljava/io/File;
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lio/sentry/cache/tape/QueueFile;->open(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    return-object v0
.end method

.method private static open(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "synchronousWrites"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_0

    const-string v1, "rwd"

    goto :goto_0

    :cond_0
    const-string v1, "rw"

    :goto_0
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readInitialData()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 211
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 216
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->readLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 217
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->readInt([BI)I

    move-result v0

    iput v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 218
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->readLong([BI)J

    move-result-wide v0

    .line 219
    .local v0, "firstOffset":J
    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lio/sentry/cache/tape/QueueFile;->readLong([BI)J

    move-result-wide v2

    .line 221
    .local v2, "lastOffset":J
    iget-wide v4, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget-object v6, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 224
    iget-wide v4, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    const-wide/16 v6, 0x20

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 229
    invoke-virtual {p0, v0, v1}, Lio/sentry/cache/tape/QueueFile;->readElement(J)Lio/sentry/cache/tape/QueueFile$Element;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 230
    invoke-virtual {p0, v2, v3}, Lio/sentry/cache/tape/QueueFile;->readElement(J)Lio/sentry/cache/tape/QueueFile$Element;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    .line 231
    return-void

    .line 225
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File is corrupt; length stored in header ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is invalid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File is truncated. Expected length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Actual length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 223
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static readInt([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 253
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static readLong([BI)J
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 276
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private remainingBytes()J
    .locals 4

    .line 465
    iget-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->usedBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private resetFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 235
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 236
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile;->synchronousWrites:Z

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->initializeFromFile(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 237
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->readInitialData()V

    .line 238
    return-void
.end method

.method private ringErase(JJ)V
    .locals 6
    .param p1, "position"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    move-wide v1, p1

    .end local p1    # "position":J
    .local v1, "position":J
    :goto_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    .line 345
    sget-object p1, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    array-length p1, p1

    int-to-long p1, p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int v5, p1

    .line 346
    .local v5, "chunk":I
    sget-object v3, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringWrite(J[BII)V

    .line 347
    int-to-long p1, v5

    sub-long/2addr p3, p1

    .line 348
    int-to-long p1, v5

    add-long/2addr v1, p1

    .line 349
    .end local v5    # "chunk":I
    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method private ringWrite(J[BII)V
    .locals 4
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p1, p2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide p1

    .line 329
    int-to-long v0, p5

    add-long/2addr v0, p1

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 330
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 331
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 335
    :cond_0
    iget-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    .line 336
    .local v0, "beforeEof":I
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 337
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p3, p4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 338
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 339
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p4, v0

    sub-int v3, p5, v0

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 341
    .end local v0    # "beforeEof":I
    :goto_0
    return-void
.end method

.method private setLength(J)V
    .locals 2
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 528
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 529
    return-void
.end method

.method private usedBytes()J
    .locals 9

    .line 446
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    const-wide/16 v1, 0x20

    if-nez v0, :cond_0

    return-wide v1

    .line 448
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    cmp-long v0, v3, v5

    const-wide/16 v3, 0x4

    if-ltz v0, :cond_1

    .line 450
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v7, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v3

    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v3, v0

    add-long/2addr v5, v3

    add-long/2addr v5, v1

    return-wide v5

    .line 456
    :cond_1
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v0, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v0, v3

    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v2, v2, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v2, v2, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private writeHeader(JIJJ)V
    .locals 4
    .param p1, "fileLength"    # J
    .param p3, "elementCount"    # I
    .param p4, "firstPosition"    # J
    .param p6, "lastPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 296
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const v1, -0x7fffffff

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/sentry/cache/tape/QueueFile;->writeInt([BII)V

    .line 297
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Lio/sentry/cache/tape/QueueFile;->writeLong([BIJ)V

    .line 298
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0xc

    invoke-static {v0, v1, p3}, Lio/sentry/cache/tape/QueueFile;->writeInt([BII)V

    .line 299
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0x10

    invoke-static {v0, v1, p4, p5}, Lio/sentry/cache/tape/QueueFile;->writeLong([BIJ)V

    .line 300
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0x18

    invoke-static {v0, v1, p6, p7}, Lio/sentry/cache/tape/QueueFile;->writeLong([BIJ)V

    .line 301
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 302
    return-void
.end method

.method private static writeInt([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 245
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 246
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 247
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 248
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 249
    return-void
.end method

.method private static writeLong([BIJ)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 264
    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 265
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 266
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 267
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 268
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 269
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 270
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 271
    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 272
    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lio/sentry/cache/tape/QueueFile;->add([BII)V

    .line 396
    return-void
.end method

.method public add([BII)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    move/from16 v7, p3

    if-eqz p1, :cond_6

    .line 411
    or-int v1, p2, v7

    if-ltz v1, :cond_5

    array-length v1, p1

    sub-int v1, v1, p2

    if-gt v7, v1, :cond_5

    .line 414
    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v1, :cond_4

    .line 417
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isAtFullCapacity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->remove()V

    .line 421
    :cond_0
    int-to-long v1, v7

    invoke-direct {p0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->expandIfNecessary(J)V

    .line 424
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v8

    .line 426
    .local v8, "wasEmpty":Z
    const-wide/16 v9, 0x4

    if-eqz v8, :cond_1

    const-wide/16 v1, 0x20

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v1, v9

    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    :goto_0
    move-wide v11, v1

    .line 427
    .local v11, "position":J
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Element;

    invoke-direct {v1, v11, v12, v7}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    move-object v13, v1

    .line 430
    .local v13, "newLast":Lio/sentry/cache/tape/QueueFile$Element;
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v7}, Lio/sentry/cache/tape/QueueFile;->writeInt([BII)V

    .line 431
    iget-wide v1, v13, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringWrite(J[BII)V

    .line 434
    iget-wide v0, v13, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long v1, v0, v9

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringWrite(J[BII)V

    .line 437
    if-eqz v8, :cond_2

    iget-wide v1, v13, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    :goto_1
    move-wide v4, v1

    .line 438
    .local v4, "firstPosition":J
    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget v3, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    add-int/lit8 v3, v3, 0x1

    iget-wide v6, v13, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 439
    iput-object v13, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    .line 440
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 441
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    .line 442
    if-eqz v8, :cond_3

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iput-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 443
    :cond_3
    return-void

    .line 414
    .end local v4    # "firstPosition":J
    .end local v8    # "wasEmpty":Z
    .end local v11    # "position":J
    .end local v13    # "newLast":Lio/sentry/cache/tape/QueueFile$Element;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 409
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "data == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    iget-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_2

    .line 713
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 715
    iget-boolean v0, v1, Lio/sentry/cache/tape/QueueFile;->zero:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, v1, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 718
    iget-object v0, v1, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    sget-object v3, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    const/16 v4, 0xfe0

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 721
    :cond_0
    iput v2, v1, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 722
    sget-object v0, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    iput-object v0, v1, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 723
    sget-object v0, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    iput-object v0, v1, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    .line 724
    iget-wide v2, v1, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    const-wide/16 v4, 0x1000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-direct {p0, v4, v5}, Lio/sentry/cache/tape/QueueFile;->setLength(J)V

    .line 725
    :cond_1
    iput-wide v4, v1, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 726
    iget v0, v1, Lio/sentry/cache/tape/QueueFile;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lio/sentry/cache/tape/QueueFile;->modCount:I

    .line 727
    return-void

    .line 710
    :cond_2
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    .line 751
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 752
    return-void
.end method

.method public file()Ljava/io/File;
    .locals 1

    .line 745
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public isAtFullCapacity()Z
    .locals 3

    .line 736
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->maxElements:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 738
    return v2

    .line 740
    :cond_0
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->size()I

    move-result v0

    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->maxElements:I

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 470
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    .line 553
    new-instance v0, Lio/sentry/cache/tape/QueueFile$ElementIterator;

    invoke-direct {v0, p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;-><init>(Lio/sentry/cache/tape/QueueFile;)V

    return-object v0
.end method

.method public peek()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    iget-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_2

    .line 534
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 535
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget v7, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    .line 536
    .local v7, "length":I
    new-array v5, v7, [B

    .line 537
    .local v5, "data":[B
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v2, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    const-wide/16 v8, 0x4

    add-long v3, v2, v8

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result v0

    .line 538
    .local v0, "success":Z
    if-eqz v0, :cond_1

    move-object v1, v5

    :cond_1
    return-object v1

    .line 533
    .end local v0    # "success":Z
    .end local v5    # "data":[B
    .end local v7    # "length":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readElement(J)Lio/sentry/cache/tape/QueueFile$Element;
    .locals 7
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    return-object v0

    .line 306
    :cond_0
    iget-object v4, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v1, p0

    move-wide v2, p1

    .end local p1    # "position":J
    .local v2, "position":J
    invoke-virtual/range {v1 .. v6}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result p1

    .line 307
    .local p1, "success":Z
    if-nez p1, :cond_1

    .line 308
    sget-object p2, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    return-object p2

    .line 310
    :cond_1
    iget-object p2, v1, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lio/sentry/cache/tape/QueueFile;->readInt([BI)I

    move-result p2

    .line 311
    .local p2, "length":I
    new-instance v0, Lio/sentry/cache/tape/QueueFile$Element;

    invoke-direct {v0, v2, v3, p2}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/sentry/cache/tape/QueueFile;->remove(I)V

    .line 655
    return-void
.end method

.method public remove(I)V
    .locals 16
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    move-object/from16 v0, p0

    move/from16 v8, p1

    if-ltz v8, :cond_7

    .line 666
    if-nez v8, :cond_0

    .line 667
    return-void

    .line 669
    :cond_0
    iget v1, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-ne v8, v1, :cond_1

    .line 670
    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->clear()V

    .line 671
    return-void

    .line 673
    :cond_1
    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 676
    iget v1, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-gt v8, v1, :cond_5

    .line 681
    iget-object v1, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v9, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    .line 682
    .local v9, "eraseStartPosition":J
    const-wide/16 v1, 0x0

    .line 685
    .local v1, "eraseTotalLength":J
    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    .line 686
    .local v3, "newFirstPosition":J
    iget-object v5, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget v5, v5, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    .line 687
    .local v5, "newFirstLength":I
    const/4 v6, 0x0

    move-wide v11, v1

    move v13, v5

    move-wide v4, v3

    .end local v1    # "eraseTotalLength":J
    .end local v3    # "newFirstPosition":J
    .end local v5    # "newFirstLength":I
    .local v4, "newFirstPosition":J
    .local v6, "i":I
    .local v11, "eraseTotalLength":J
    .local v13, "newFirstLength":I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 688
    add-int/lit8 v1, v13, 0x4

    int-to-long v1, v1

    add-long/2addr v11, v1

    .line 689
    const-wide/16 v1, 0x4

    add-long/2addr v1, v4

    int-to-long v14, v13

    add-long/2addr v1, v14

    invoke-virtual {v0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 690
    .end local v4    # "newFirstPosition":J
    .local v1, "newFirstPosition":J
    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result v3

    .line 691
    .local v3, "success":Z
    if-nez v3, :cond_2

    .line 692
    return-void

    .line 694
    :cond_2
    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lio/sentry/cache/tape/QueueFile;->readInt([BI)I

    move-result v13

    .line 687
    .end local v3    # "success":Z
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v1

    goto :goto_0

    .line 698
    .end local v1    # "newFirstPosition":J
    .end local v6    # "i":I
    .restart local v4    # "newFirstPosition":J
    :cond_3
    iget-wide v1, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget v3, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    sub-int/2addr v3, v8

    iget-object v6, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v6, v6, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 699
    iget v1, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    sub-int/2addr v1, v8

    iput v1, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 700
    iget v1, v0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    .line 701
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Element;

    invoke-direct {v1, v4, v5, v13}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    iput-object v1, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 703
    iget-boolean v1, v0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    if-eqz v1, :cond_4

    .line 704
    invoke-direct {v0, v9, v10, v11, v12}, Lio/sentry/cache/tape/QueueFile;->ringErase(JJ)V

    .line 706
    :cond_4
    return-void

    .line 677
    .end local v4    # "newFirstPosition":J
    .end local v9    # "eraseStartPosition":J
    .end local v11    # "eraseTotalLength":J
    .end local v13    # "newFirstLength":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove more elements ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") than present in queue ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_6
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 664
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove negative ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") number of elements."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method ringRead(J[BII)Z
    .locals 4
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v0

    move-wide p1, v0

    .line 363
    int-to-long v0, p5

    add-long/2addr v0, p1

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 364
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 365
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    .line 369
    :cond_0
    iget-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    .line 370
    .local v0, "beforeEof":I
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 371
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p3, p4, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 372
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 373
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p4, v0

    sub-int v3, p5, v0

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v0    # "beforeEof":I
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 382
    :catchall_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->resetFile()V

    goto :goto_1

    .line 380
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/EOFException;
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->resetFile()V

    .line 385
    .end local v0    # "e":Ljava/io/EOFException;
    nop

    .line 386
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 645
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    return v0
.end method

.method public sync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->synchronousWrites:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueFile{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wrapPosition(J)J
    .locals 4
    .param p1, "position"    # J

    .line 316
    iget-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x20

    add-long/2addr v0, p1

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method
