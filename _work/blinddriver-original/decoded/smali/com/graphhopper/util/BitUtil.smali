.class public Lcom/graphhopper/util/BitUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LITTLE:Lcom/graphhopper/util/BitUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/util/BitUtil;

    invoke-direct {v0}, Lcom/graphhopper/util/BitUtil;-><init>()V

    sput-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countBitValue(I)I
    .locals 2

    if-ltz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxTurnCosts cannot be negative "

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toSignedInt(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public fromBitString(Ljava/lang/String;)[B
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    rem-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v2, v0, [B

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v0, :cond_3

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v1, :cond_2

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    if-ge v4, p0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_1

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    aput-byte v6, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final fromDouble([BD)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/util/BitUtil;->fromDouble([BDI)V

    return-void
.end method

.method public final fromDouble([BDI)V
    .locals 0

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/util/BitUtil;->fromLong([BJI)V

    return-void
.end method

.method public final fromDouble(D)[B
    .locals 2

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/graphhopper/util/BitUtil;->fromDouble([BDI)V

    return-object v0
.end method

.method public final fromFloat([BF)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/util/BitUtil;->fromFloat([BFI)V

    return-void
.end method

.method public final fromFloat([BFI)V
    .locals 0

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/util/BitUtil;->fromInt([BII)V

    return-void
.end method

.method public final fromFloat(F)[B
    .locals 2

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lcom/graphhopper/util/BitUtil;->fromFloat([BFI)V

    return-object v0
.end method

.method public final fromInt([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/util/BitUtil;->fromInt([BII)V

    return-void
.end method

.method public final fromInt([BII)V
    .locals 1

    add-int/lit8 p0, p3, 0x3

    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p0

    add-int/lit8 p0, p3, 0x2

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p1, p0

    add-int/lit8 p0, p3, 0x1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 6
    aput-byte v0, p1, p0

    int-to-byte p0, p2

    .line 7
    aput-byte p0, p1, p3

    return-void
.end method

.method public final fromInt(I)[B
    .locals 2

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lcom/graphhopper/util/BitUtil;->fromInt([BII)V

    return-object v0
.end method

.method public final fromLong([BJ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/util/BitUtil;->fromLong([BJI)V

    return-void
.end method

.method public final fromLong([BJI)V
    .locals 2

    add-int/lit8 p0, p4, 0x7

    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p0

    add-int/lit8 p0, p4, 0x6

    const/16 v0, 0x30

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p1, p0

    add-int/lit8 p0, p4, 0x5

    const/16 v0, 0x28

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 6
    aput-byte v0, p1, p0

    add-int/lit8 p0, p4, 0x4

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p1, p0

    add-int/lit8 p0, p4, 0x3

    const/16 v0, 0x18

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p1, p0

    add-int/lit8 p0, p4, 0x2

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 9
    aput-byte v0, p1, p0

    add-int/lit8 p0, p4, 0x1

    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 10
    aput-byte v0, p1, p0

    long-to-int p0, p2

    int-to-byte p0, p0

    .line 11
    aput-byte p0, p1, p4

    return-void
.end method

.method public final fromLong(J)[B
    .locals 2

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/graphhopper/util/BitUtil;->fromLong([BJI)V

    return-object v0
.end method

.method public final fromShort([BS)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/util/BitUtil;->fromShort([BSI)V

    return-void
.end method

.method public fromShort([BSI)V
    .locals 1

    add-int/lit8 p0, p3, 0x1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p0

    int-to-byte p0, p2

    .line 5
    aput-byte p0, p1, p3

    return-void
.end method

.method public final fromShort(S)[B
    .locals 2

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lcom/graphhopper/util/BitUtil;->fromShort([BSI)V

    return-object v0
.end method

.method public final fromUInt3([BII)V
    .locals 1

    add-int/lit8 p0, p3, 0x2

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p3, 0x1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    int-to-byte p0, p2

    aput-byte p0, p1, p3

    return-void
.end method

.method public final getIntHigh(J)I
    .locals 0

    const/16 p0, 0x20

    shr-long p0, p1, p0

    long-to-int p0, p0

    return p0
.end method

.method public final getIntLow(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    long-to-int p0, p0

    return p0
.end method

.method public final toBitString(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/util/BitUtil;->toBitString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toBitString(JI)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x30

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v1, 0x31

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x1

    shl-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toBitString([B)Ljava/lang/String;
    .locals 5

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 8
    aget-byte v2, p1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    and-int/lit8 v4, v2, -0x80

    if-nez v4, :cond_0

    const/16 v4, 0x30

    .line 9
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v4, 0x31

    .line 10
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toDouble([B)D
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/BitUtil;->toDouble([BI)D

    move-result-wide p0

    return-wide p0
.end method

.method public final toDouble([BI)D
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->toLong([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final toFloat([B)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/BitUtil;->toFloat([BI)F

    move-result p0

    return p0
.end method

.method public final toFloat([BI)F
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final toInt([B)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result p0

    return p0
.end method

.method public final toInt([BI)I
    .locals 1

    add-int/lit8 p0, p2, 0x3

    .line 2
    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public toLastBitString(JI)Ljava/lang/String;
    .locals 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v0, p3, -0x1

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    and-long v3, p1, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x1

    shl-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toLong(II)J
    .locals 4

    .line 1
    int-to-long v0, p2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final toLong([B)J
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/BitUtil;->toLong([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toLong([BI)J
    .locals 4

    add-int/lit8 v0, p2, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final toShort([B)S
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/BitUtil;->toShort([BI)S

    move-result p0

    return p0
.end method

.method public final toShort([BI)S
    .locals 0

    add-int/lit8 p0, p2, 0x1

    .line 2
    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public final toUInt3([BI)I
    .locals 1

    add-int/lit8 p0, p2, 0x2

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method
