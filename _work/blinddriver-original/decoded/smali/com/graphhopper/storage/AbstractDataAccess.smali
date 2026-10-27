.class public abstract Lcom/graphhopper/storage/AbstractDataAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/DataAccess;


# static fields
.field protected static final EMPTY:[B

.field protected static final HEADER_OFFSET:I = 0x64

.field private static final SEGMENT_SIZE_DEFAULT:I = 0x100000

.field protected static final SEGMENT_SIZE_MIN:I = 0x80


# instance fields
.field protected final bitUtil:Lcom/graphhopper/util/BitUtil;

.field protected final byteOrder:Ljava/nio/ByteOrder;

.field protected closed:Z

.field protected header:[I

.field protected indexDivisor:I

.field private final location:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected segmentSizeInBytes:I

.field protected segmentSizePower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/graphhopper/storage/AbstractDataAccess;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iput-object v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->header:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->closed:Z

    iput-object p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Create DataAccess object via its corresponding Directory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/graphhopper/storage/AbstractDataAccess;->location:Ljava/lang/String;

    if-gez p3, :cond_2

    const/high16 p3, 0x100000

    :cond_2
    invoke-virtual {p0, p3}, Lcom/graphhopper/storage/AbstractDataAccess;->setSegmentSize(I)Lcom/graphhopper/storage/DataAccess;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->closed:Z

    return-void
.end method

.method public copyHeader(Lcom/graphhopper/storage/DataAccess;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->header:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/AbstractDataAccess;->getHeader(I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->location:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->name:Ljava/lang/String;

    invoke-static {v0, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeader(I)I
    .locals 0

    shr-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->header:[I

    aget p0, p0, p1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSegmentSize()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->closed:Z

    return p0
.end method

.method public isIntBased()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStoring()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public readHeader(Ljava/io/RandomAccessFile;)J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/graphhopper/storage/AbstractDataAccess;->setSegmentSize(I)Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/storage/AbstractDataAccess;->header:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Not a GraphHopper file "

    const-string v2, "! Expected \'GH\' as file marker but was "

    invoke-static {v1, p0, v2, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeader(II)V
    .locals 0

    shr-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/graphhopper/storage/AbstractDataAccess;->header:[I

    aput p2, p0, p1

    return-void
.end method

.method public setSegmentSize(I)Lcom/graphhopper/storage/DataAccess;
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-lez p1, :cond_0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int p1, v2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int p1, v2

    const/16 v2, 0x80

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    :cond_0
    iget p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    double-to-int p1, v2

    iput p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizePower:I

    iget p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->segmentSizeInBytes:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/graphhopper/storage/AbstractDataAccess;->indexDivisor:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/storage/AbstractDataAccess;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeHeader(Ljava/io/RandomAccessFile;JI)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v0, "GH"

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p1, p4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/graphhopper/storage/AbstractDataAccess;->header:[I

    array-length p4, p3

    if-ge p2, p4, :cond_0

    aget p3, p3, p2

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
