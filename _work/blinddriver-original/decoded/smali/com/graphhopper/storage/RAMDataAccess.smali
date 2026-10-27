.class public Lcom/graphhopper/storage/RAMDataAccess;
.super Lcom/graphhopper/storage/AbstractDataAccess;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INT:Ljava/lang/invoke/VarHandle;

.field private static final SHORT:Ljava/lang/invoke/VarHandle;


# instance fields
.field private segments:[[B

.field private store:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {}, Lb/b;->q()Ljava/lang/invoke/VarHandle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/VarHandle;->withInvokeExactBehavior()Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/storage/RAMDataAccess;->INT:Ljava/lang/invoke/VarHandle;

    invoke-static {}, Lb/b;->B()Ljava/lang/invoke/VarHandle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/VarHandle;->withInvokeExactBehavior()Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/storage/RAMDataAccess;->SHORT:Ljava/lang/invoke/VarHandle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/graphhopper/storage/AbstractDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    iput-boolean p3, p0, Lcom/graphhopper/storage/RAMDataAccess;->store:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->closed:Z

    return-void
.end method

.method public bridge synthetic create(J)Lcom/graphhopper/storage/DataAccess;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/RAMDataAccess;->create(J)Lcom/graphhopper/storage/RAMDataAccess;

    move-result-object p0

    return-object p0
.end method

.method public create(J)Lcom/graphhopper/storage/RAMDataAccess;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    array-length v0, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x28

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/RAMDataAccess;->ensureCapacity(J)Z

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

    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMDataAccess;->getCapacity()J

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
    iget-object v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    array-length v1, v0

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v1, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    array-length v1, v1

    :goto_0
    array-length v4, v0

    const/4 v6, 0x1

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    shl-int v4, v6, v4

    new-array v4, v4, [B

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_1
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

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
    .locals 4

    iget-boolean v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->closed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->store:Z

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
    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMDataAccess;->getCapacity()J

    move-result-wide v1

    iget v3, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/graphhopper/storage/AbstractDataAccess;->writeHeader(Ljava/io/RandomAccessFile;JI)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Couldn\'t store bytes to "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getByte(J)B
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p0, p0, v0

    aget-byte p0, p0, p1

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

    iget-object p2, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p2, p2, v0

    add-int v1, p1, p4

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    sub-int/2addr p4, v1

    invoke-static {p2, p1, p3, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0, v2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    invoke-static {p2, p1, p3, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getCapacity()J
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMDataAccess;->getSegments()I

    move-result v0

    int-to-long v0, v0

    iget p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getInt(J)I
    .locals 5

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    add-int/lit8 p2, p1, 0x3

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt p2, v1, :cond_2

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p2, p0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-object p0, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 v4, p1, 0x2

    if-lt v4, v1, :cond_1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0

    :cond_1
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    aget-byte v1, p2, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p0, v1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0

    :cond_2
    sget-object p2, Lcom/graphhopper/storage/RAMDataAccess;->INT:Ljava/lang/invoke/VarHandle;

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p0, p0, v0

    invoke-polymorphic {p2, p0, p1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, ([BI)I

    move-result p0

    return p0
.end method

.method public getSegments()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    array-length p0, p0

    return p0
.end method

.method public final getShort(J)S
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    add-int/lit8 p2, p1, 0x1

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt p2, v1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    add-int/lit8 p2, v0, 0x1

    aget-object p2, p0, p2

    const/4 v1, 0x0

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    aget-object p0, p0, v0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_0
    sget-object p2, Lcom/graphhopper/storage/RAMDataAccess;->SHORT:Ljava/lang/invoke/VarHandle;

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p0, p0, v0

    invoke-polymorphic {p2, p0, p1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, ([BI)S

    move-result p0

    return p0
.end method

.method public getType()Lcom/graphhopper/storage/DAType;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/storage/RAMDataAccess;->isStoring()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM_STORE:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM:Lcom/graphhopper/storage/DAType;

    return-object p0
.end method

.method public isStoring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->store:Z

    return p0
.end method

.method public loadExisting()Z
    .locals 10

    iget-object v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    array-length v0, v0

    if-gtz v0, :cond_8

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/graphhopper/storage/RAMDataAccess;->store:Z

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

    goto/16 :goto_4

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

    goto :goto_3

    :cond_2
    :try_start_3
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v6, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-long v7, v6

    div-long v7, v2, v7

    long-to-int v7, v7

    int-to-long v8, v6

    rem-long/2addr v2, v8

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    new-array v2, v7, [[B

    iput-object v2, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    :goto_0
    if-ge v1, v7, :cond_5

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "segment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is empty? "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Problem while loading "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :goto_4
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

.method public final setByte(JB)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p0, p0, v0

    aput-byte p3, p0, p1

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

    iget-object p2, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p2, p2, v0

    add-int v1, p1, p4

    iget v2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    sub-int/2addr p4, v1

    invoke-static {p3, v2, p2, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p3, p4, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    invoke-static {p3, v2, p2, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final setInt(JI)V
    .locals 4

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    add-int/lit8 p2, p1, 0x3

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-object p2, p2, v0

    add-int/lit8 v0, p1, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    ushr-int/lit8 v0, p3, 0x8

    invoke-virtual {p0, p2, v0, v3}, Lcom/graphhopper/util/BitUtil;->fromUInt3([BII)V

    int-to-byte p0, p3

    aput-byte p0, v2, p1

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    ushr-int/lit8 v1, p3, 0x10

    int-to-short v1, v1

    invoke-virtual {v0, p2, v1, v3}, Lcom/graphhopper/util/BitUtil;->fromShort([BSI)V

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    int-to-short p2, p3

    invoke-virtual {p0, v2, p2, p1}, Lcom/graphhopper/util/BitUtil;->fromShort([BSI)V

    return-void

    :cond_1
    ushr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p0, v2, p3, p1}, Lcom/graphhopper/util/BitUtil;->fromUInt3([BII)V

    return-void

    :cond_2
    sget-object p2, Lcom/graphhopper/storage/RAMDataAccess;->INT:Ljava/lang/invoke/VarHandle;

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p0, p0, v0

    invoke-polymorphic {p2, p0, p1, p3}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, ([BII)V

    return-void
.end method

.method public final setShort(JS)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    ushr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    int-to-long v1, v1

    and-long/2addr p1, v1

    long-to-int p1, p1

    add-int/lit8 p2, p1, 0x1

    iget v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    if-lt p2, v1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p2, p0, v0

    int-to-byte v1, p3

    aput-byte v1, p2, p1

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    ushr-int/lit8 p1, p3, 0x8

    int-to-byte p1, p1

    const/4 p2, 0x0

    aput-byte p1, p0, p2

    return-void

    :cond_0
    sget-object p2, Lcom/graphhopper/storage/RAMDataAccess;->SHORT:Ljava/lang/invoke/VarHandle;

    iget-object p0, p0, Lcom/graphhopper/storage/RAMDataAccess;->segments:[[B

    aget-object p0, p0, v0

    invoke-polymorphic {p2, p0, p1, p3}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, ([BIS)V

    return-void
.end method

.method public store(Z)Lcom/graphhopper/storage/RAMDataAccess;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/storage/RAMDataAccess;->store:Z

    return-object p0
.end method
