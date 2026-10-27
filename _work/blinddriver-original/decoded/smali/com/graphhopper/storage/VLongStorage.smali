.class public Lcom/graphhopper/storage/VLongStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private pointer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/graphhopper/storage/VLongStorage;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/VLongStorage;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    .line 5
    iput-object p1, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    return-object p0
.end method

.method public getLength()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget p0, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public readByte()B
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    iget v1, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    return v0
.end method

.method public readVLong()J
    .locals 8

    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    int-to-long v0, v0

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/16 v7, 0xe

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/16 v7, 0x15

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_3

    return-wide v0

    :cond_3
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_4

    return-wide v0

    :cond_4
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_6

    return-wide v0

    :cond_6
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result v4

    int-to-long v5, v4

    and-long/2addr v5, v2

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    if-ltz v4, :cond_7

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lcom/graphhopper/storage/VLongStorage;->readByte()B

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    if-ltz p0, :cond_8

    return-wide v0

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid vLong detected (negative values disallowed)"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seek(J)V
    .locals 0

    long-to-int p1, p1

    iput p1, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    return-void
.end method

.method public trimToSize()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    if-le v1, v2, :cond_0

    new-array v1, v2, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    :cond_0
    return-void
.end method

.method public writeByte(B)V
    .locals 2

    iget v0, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    iget-object v1, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/VLongStorage;->bytes:[B

    iget v1, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/storage/VLongStorage;->pointer:I

    return-void
.end method

.method public final writeVLong(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/VLongStorage;->writeByte(B)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/VLongStorage;->writeByte(B)V

    return-void
.end method
