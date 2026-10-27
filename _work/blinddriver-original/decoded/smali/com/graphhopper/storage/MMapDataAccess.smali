.class public final Lcom/graphhopper/storage/MMapDataAccess;
.super Lcom/graphhopper/storage/AbstractDataAccess;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final allowWrites:Z

.field private raFile:Ljava/io/RandomAccessFile;

.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/MappedByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/graphhopper/storage/AbstractDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    iput-boolean p3, p0, Lcom/graphhopper/storage/MMapDataAccess;->allowWrites:Z

    return-void
.end method

.method private clean(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/graphhopper/storage/MMapDataAccess;->cleanMappedByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cleanMappedByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4

    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invokeCleaner"

    const-class v3, Ljava/nio/ByteBuffer;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to unmap the mapped buffer"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private initRandomAccessFile()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/graphhopper/storage/MMapDataAccess;->allowWrites:Z

    if-eqz v2, :cond_1

    const-string v2, "rw"

    goto :goto_0

    :cond_1
    const-string v2, "r"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private mapIt(JJ)Z
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    invoke-virtual {v1}, Lcom/graphhopper/storage/MMapDataAccess;->getCapacity()J

    move-result-wide v8

    cmp-long v0, v4, v8

    const/4 v8, 0x0

    if-gtz v0, :cond_0

    return v8

    :cond_0
    iget v0, v1, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-long v9, v0

    div-long v11, v4, v9

    long-to-int v0, v11

    if-ltz v0, :cond_4

    rem-long v11, v4, v9

    cmp-long v6, v11, v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v6, v0

    if-eqz v6, :cond_3

    int-to-long v11, v6

    mul-long/2addr v11, v9

    add-long/2addr v11, v2

    :try_start_0
    iget-object v0, v1, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v13, v0

    mul-long/2addr v13, v9

    add-long/2addr v13, v2

    :try_start_1
    iget-object v0, v1, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v6, v0

    :goto_0
    if-ge v8, v0, :cond_2

    iget-object v7, v1, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-direct {v1, v13, v14, v9, v10}, Lcom/graphhopper/storage/MMapDataAccess;->newByteBuffer(JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-long/2addr v13, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    move-wide v13, v2

    :goto_1
    new-instance v7, Ljava/lang/RuntimeException;

    iget-object v1, v1, Lcom/graphhopper/storage/AbstractDataAccess;->name:Ljava/lang/String;

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, " of "

    move-object/from16 v17, v7

    const-string v7, " with "

    move-object/from16 p0, v15

    const-string v15, "Couldn\'t map buffer "

    invoke-static {v15, v8, v0, v6, v7}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at position "

    invoke-static {v0, v1, v13, v14, v6}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes with offset "

    const-string v4, ", new fileLength:"

    invoke-static {v0, v1, v2, v3, v4}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "0 segments are not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many segments needs to be allocated. Increase segmentSize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new capacity has to be strictly positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newByteBuffer(JJ)Ljava/nio/MappedByteBuffer;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iget-boolean v3, p0, Lcom/graphhopper/storage/MMapDataAccess;->allowWrites:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    :try_start_1
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-wide v6, p1

    move-wide v8, p3

    move-object v5, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide v6, p1

    move-wide v8, p3

    goto :goto_4

    :cond_0
    :try_start_2
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :goto_2
    :try_start_3
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide v6, p1

    move-wide v8, p3

    goto :goto_3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const-wide/16 p1, 0x5

    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    move-wide p1, v6

    move-wide p3, v8

    goto :goto_0

    :catch_3
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_5
    if-nez v1, :cond_3

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "internal problem as the exception \'ioex\' shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    throw v0

    :cond_3
    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->close()V

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/graphhopper/storage/MMapDataAccess;->clean(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public bridge synthetic create(J)Lcom/graphhopper/storage/DataAccess;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/MMapDataAccess;->create(J)Lcom/graphhopper/storage/MMapDataAccess;

    move-result-object p0

    return-object p0
.end method

.method public create(J)Lcom/graphhopper/storage/MMapDataAccess;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/graphhopper/storage/MMapDataAccess;->initRandomAccessFile()V

    const-wide/16 v0, 0x28

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/MMapDataAccess;->ensureCapacity(J)Z

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "already created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureCapacity(J)Z
    .locals 2

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/graphhopper/storage/MMapDataAccess;->mapIt(JJ)Z

    move-result p0

    return p0
.end method

.method public flush()V
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iget v3, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/graphhopper/storage/AbstractDataAccess;->writeHeader(Ljava/io/RandomAccessFile;JI)V

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getByte(J)B
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public getBytes(J[BI)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    add-int p2, p1, p4

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int/2addr p4, p2

    invoke-static {v1, p1, p3, v2, p4}, Lwa/h;->e(Ljava/nio/ByteBuffer;I[BII)V

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0, v2, p3, p4, p2}, Lwa/h;->e(Ljava/nio/ByteBuffer;I[BII)V

    return-void

    :cond_0
    invoke-static {v1, p1, p3, v2, p4}, Lwa/h;->e(Ljava/nio/ByteBuffer;I[BII)V

    return-void
.end method

.method public getCapacity()J
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getInt(J)I
    .locals 5

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    iget p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    const/4 v3, 0x0

    const v4, 0xffff

    if-lt v1, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    and-int/2addr p0, v4

    shl-int/lit8 p0, p0, 0x10

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    :goto_1
    or-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 v2, p1, 0x2

    if-lt v2, p0, :cond_1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    and-int/2addr p0, v4

    shl-int/lit8 p0, p0, 0x10

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    and-int/2addr p1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getSegments()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getShort(J)S
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt v1, v2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

.method public getType()Lcom/graphhopper/storage/DAType;
    .locals 0

    sget-object p0, Lcom/graphhopper/storage/DAType;->MMAP:Lcom/graphhopper/storage/DAType;

    return-object p0
.end method

.method public load(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Percentage for MMapDataAccess.load for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be in [0,100] but was "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadExisting()Z
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/storage/MMapDataAccess;->initRandomAccessFile()V

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/MMapDataAccess;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/AbstractDataAccess;->readHeader(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    const-wide/16 v2, 0x64

    sub-long/2addr v0, v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/graphhopper/storage/MMapDataAccess;->mapIt(JJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Problem while loading "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setByte(JB)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setBytes(J[BI)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    add-int p2, p1, p4

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int/2addr p4, p2

    invoke-static {v1, p1, p3, v2, p4}, Lwa/h;->f(Ljava/nio/ByteBuffer;I[BII)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p3, v2, p4}, Lwa/h;->f(Ljava/nio/ByteBuffer;I[BII)V

    :goto_0
    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0, v2, p3, p4, p2}, Lwa/h;->f(Ljava/nio/ByteBuffer;I[BII)V

    :cond_1
    return-void
.end method

.method public setInt(JI)V
    .locals 4

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    iget p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    const/4 v3, 0x0

    if-lt v1, p0, :cond_0

    ushr-int/lit8 p0, p3, 0x10

    int-to-short p0, p0

    invoke-virtual {v0, v2, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p0, p3, 0x8

    int-to-byte p0, p0

    invoke-virtual {v0, v3, p0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    int-to-byte p0, p3

    invoke-virtual {p2, p1, p0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    add-int/lit8 v2, p1, 0x2

    if-lt v2, p0, :cond_1

    ushr-int/lit8 p0, p3, 0x10

    int-to-short p0, p0

    invoke-virtual {v0, v3, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    int-to-short p0, p3

    invoke-virtual {p2, p1, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    ushr-int/lit8 p0, p3, 0x18

    int-to-byte p0, p0

    invoke-virtual {v0, v3, p0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p0, p3, 0x8

    int-to-short p0, p0

    invoke-virtual {p2, v1, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    int-to-byte p0, p3

    invoke-virtual {p2, p1, p0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setShort(JS)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt v1, v2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/MMapDataAccess;->segments:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    int-to-byte v0, p3

    invoke-virtual {p2, p1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p3, 0x8

    int-to-byte p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method
