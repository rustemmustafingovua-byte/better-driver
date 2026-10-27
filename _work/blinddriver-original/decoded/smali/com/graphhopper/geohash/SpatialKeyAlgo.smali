.class public Lcom/graphhopper/geohash/SpatialKeyAlgo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final MortonTable256:[I

.field private final MortonTable256DecodeX:[I

.field private final MortonTable256DecodeY:[I

.field private final allBits:I

.field private final bbox:Lcom/graphhopper/util/shapes/BBox;

.field private final deltaX:D

.field private final deltaY:D

.field private final parts:I


# direct methods
.method public constructor <init>(ILcom/graphhopper/util/shapes/BBox;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->MortonTable256:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->MortonTable256DecodeX:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->MortonTable256DecodeY:[I

    const/16 v0, 0x30

    if-gt p1, v0, :cond_1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->allBits:I

    div-int/lit8 p1, p1, 0x2

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->parts:I

    iput-object p2, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v0, p2, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v2, p2, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->deltaY:D

    iget-wide v0, p2, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v2, p2, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr v0, v2

    int-to-double p1, p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->deltaX:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "allBits must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "allBits is too big for this implementation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x6
        0x7
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xa
        0xb
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
        0x3
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x6
        0x6
        0x7
        0x7
        0x4
        0x4
        0x5
        0x5
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x6
        0x6
        0x7
        0x7
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
        0x3
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x6
        0x6
        0x7
        0x7
        0x4
        0x4
        0x5
        0x5
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xb
        0xb
        0x8
        0x8
        0x9
        0x9
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0xe
        0xe
        0xf
        0xf
        0xc
        0xc
        0xd
        0xd
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0xe
        0xe
        0xf
        0xf
        0x8
        0x8
        0x9
        0x9
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xb
        0xb
        0x8
        0x8
        0x9
        0x9
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0xe
        0xe
        0xf
        0xf
        0xc
        0xc
        0xd
        0xd
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0xe
        0xe
        0xf
        0xf
    .end array-data
.end method

.method private static decodeHelper(J[I)I
    .locals 10

    const-wide v0, 0x401c71c720000000L    # 7.111111164093018

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    cmp-long v6, v2, v0

    if-gez v6, :cond_0

    const-wide/16 v6, 0x8

    mul-long/2addr v6, v2

    long-to-int v6, v6

    shr-long v6, p0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    aget v6, p2, v6

    const-wide/16 v7, 0x4

    mul-long/2addr v7, v2

    long-to-int v7, v7

    shl-int/2addr v6, v7

    int-to-long v6, v6

    or-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    :cond_0
    long-to-int p0, v4

    return p0
.end method


# virtual methods
.method public decode(J)[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    long-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->MortonTable256DecodeX:[I

    invoke-static {p1, p2, v1}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->decodeHelper(J[I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object p0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->MortonTable256DecodeY:[I

    invoke-static {p1, p2, p0}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->decodeHelper(J[I)I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    :cond_0
    return-object v0
.end method

.method public down(J)J
    .locals 6

    const-wide v0, -0x5555555555555556L

    and-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long p0, p1, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public encode(II)J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->MortonTable256:[I

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x11

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 p2, p2, 0xff

    aget p2, p0, p2

    shl-int/lit8 p2, p2, 0x1

    or-int/2addr p2, v0

    and-int/lit16 p1, p1, 0xff

    aget p0, p0, p1

    or-int/2addr p0, p2

    int-to-long p0, p0

    return-wide p0
.end method

.method public final encodeLatLon(DD)J
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->x(D)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->y(D)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->encode(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBits()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->allBits:I

    return p0
.end method

.method public left(J)J
    .locals 6

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide v2, -0x5555555555555556L

    and-long p0, p1, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public right(J)J
    .locals 6

    const-wide v0, -0x5555555555555556L

    or-long v2, p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, v4

    and-long p0, p1, v0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public up(J)J
    .locals 6

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    or-long v2, p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide v4, -0x5555555555555556L

    and-long/2addr v2, v4

    and-long p0, p1, v0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public x(D)I
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v0, v0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->deltaX:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    iget p0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->parts:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public y(D)I
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v0, v0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->deltaY:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    iget p0, p0, Lcom/graphhopper/geohash/SpatialKeyAlgo;->parts:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
