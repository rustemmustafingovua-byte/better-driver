.class Lcom/graphhopper/storage/RAMIntDataAccess;
.super Lcom/graphhopper/storage/AbstractDataAccess;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private segmentSizeIntsPower:I

.field private segments:[[I

.field private store:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/graphhopper/storage/AbstractDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    iput-boolean p1, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->closed:Z

    iput-boolean p3, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->store:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->closed:Z

    return-void
.end method

.method public bridge synthetic create(J)Lcom/graphhopper/storage/DataAccess;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/RAMIntDataAccess;->create(J)Lcom/graphhopper/storage/RAMIntDataAccess;

    move-result-object p0

    return-object p0
.end method

.method public create(J)Lcom/graphhopper/storage/RAMIntDataAccess;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length v0, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x28

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/RAMIntDataAccess;->ensureCapacity(J)Z

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "already created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureCapacity(J)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMIntDataAccess;->getCapacity()J

    move-result-wide v2

    sub-long/2addr p1, v2

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v4, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-long v5, v4

    div-long v5, p1, v5

    long-to-int v5, v5

    int-to-long v6, v4

    rem-long v6, p1, v6

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length v1, v0

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget-object v1, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length v1, v1

    :goto_0
    array-length v4, v0

    const/4 v6, 0x1

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    shl-int v4, v6, v4

    new-array v4, v4, [I

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_1
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length p0, p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - problem when allocating new memory. Old capacity: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", new bytes:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", segmentSizeIntsPower:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", new segments:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", existing:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "new capacity has to be strictly positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 10

    iget-boolean v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->closed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->store:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMIntDataAccess;->getCapacity()J

    move-result-wide v1

    iget v3, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/graphhopper/storage/AbstractDataAccess;->writeHeader(Ljava/io/RandomAccessFile;JI)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    array-length v4, v3

    mul-int/lit8 v5, v4, 0x4

    new-array v5, v5, [B

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    iget-object v7, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    aget v8, v3, v6

    mul-int/lit8 v9, v6, 0x4

    invoke-virtual {v7, v5, v8, v9}, Lcom/graphhopper/util/BitUtil;->fromInt([BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Couldn\'t store integers to "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getByte(J)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, " does not support byte based acccess. Use RAMDataAccess instead"

    invoke-static {p0, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes(J[BI)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, " does not support byte based acccess. Use RAMDataAccess instead"

    invoke-static {p0, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCapacity()J
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMIntDataAccess;->getSegments()I

    move-result v0

    int-to-long v0, v0

    iget p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getInt(J)I
    .locals 3

    const/4 v0, 0x2

    ushr-long/2addr p1, v0

    iget v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getSegments()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length p0, p0

    return p0
.end method

.method public final getShort(J)S
    .locals 7

    const-wide/16 v0, 0x4

    rem-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    const-string v0, "bytePos of wrong multiple for RAMInt "

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x2

    shr-long v2, p1, v2

    iget v4, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    shr-long v4, v2, v4

    long-to-int v4, v4

    iget v5, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v5, v5

    and-long/2addr v5, v2

    long-to-int v5, v5

    mul-long/2addr v2, v0

    cmp-long p1, v2, p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    aget-object p0, p0, v4

    aget p0, p0, v5

    int-to-long p0, p0

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    :goto_1
    int-to-short p0, p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    aget-object p0, p0, v4

    aget p0, p0, v5

    shr-int/lit8 p0, p0, 0x10

    goto :goto_1
.end method

.method public getType()Lcom/graphhopper/storage/DAType;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMIntDataAccess;->isStoring()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM_INT_STORE:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM_INT:Lcom/graphhopper/storage/DAType;

    return-object p0
.end method

.method public isIntBased()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStoring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->store:Z

    return p0
.end method

.method public loadExisting()Z
    .locals 11

    iget-object v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    array-length v0, v0

    if-gtz v0, :cond_8

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->store:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/AbstractDataAccess;->readHeader(Ljava/io/RandomAccessFile;)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x64

    sub-long/2addr v2, v6

    cmp-long v8, v2, v4

    if-gez v8, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    :try_start_3
    iget v8, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    new-array v8, v8, [B

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v6, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-long v9, v6

    div-long v9, v2, v9

    long-to-int v7, v9

    int-to-long v9, v6

    rem-long/2addr v2, v9

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    new-array v2, v7, [[I

    iput-object v2, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_5

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    new-array v4, v3, [I

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    mul-int/lit8 v9, v5, 0x4

    invoke-virtual {v6, v8, v9}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    aput-object v4, v3, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Problem while loading "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :goto_5
    return v1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseSegment(I)Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    const/4 v0, 0x0

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public setByte(JB)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, " does not support byte based acccess. Use RAMDataAccess instead"

    invoke-static {p0, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBytes(J[BI)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, " does not support byte based acccess. Use RAMDataAccess instead"

    invoke-static {p0, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 3

    const/4 v0, 0x2

    ushr-long/2addr p1, v0

    iget v0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    aget-object p0, p0, v0

    aput p3, p0, p1

    return-void
.end method

.method public setSegmentSize(I)Lcom/graphhopper/storage/DataAccess;
    .locals 4

    invoke-super {p0, p1}, Lcom/graphhopper/storage/AbstractDataAccess;->setSegmentSize(I)Lcom/graphhopper/storage/DataAccess;

    iget p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    div-int/lit8 p1, p1, 0x4

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    iget p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    return-object p0
.end method

.method public final setShort(JS)V
    .locals 7

    const-wide/16 v0, 0x4

    rem-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    const-string p3, "bytePos of wrong multiple for RAMInt "

    invoke-static {p1, p2, p3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x2

    ushr-long v2, p1, v2

    iget v4, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segmentSizeIntsPower:I

    ushr-long v4, v2, v4

    long-to-int v4, v4

    iget v5, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v5, v5

    and-long/2addr v5, v2

    long-to-int v5, v5

    iget-object p0, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->segments:[[I

    aget-object p0, p0, v4

    aget v4, p0, v5

    mul-long/2addr v2, v0

    cmp-long p1, v2, p1

    const p2, 0xffff

    if-nez p1, :cond_2

    const/high16 p1, -0x10000

    and-int/2addr p1, v4

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    aput p1, p0, v5

    return-void

    :cond_2
    and-int p1, v4, p2

    shl-int/lit8 p2, p3, 0x10

    or-int/2addr p1, p2

    aput p1, p0, v5

    return-void
.end method

.method public setStore(Z)Lcom/graphhopper/storage/RAMIntDataAccess;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/storage/RAMIntDataAccess;->store:Z

    return-object p0
.end method
