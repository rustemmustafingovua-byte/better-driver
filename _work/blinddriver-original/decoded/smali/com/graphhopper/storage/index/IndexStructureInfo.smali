.class public Lcom/graphhopper/storage/index/IndexStructureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bounds:Lcom/graphhopper/util/shapes/BBox;

.field private final entries:[I

.field private final keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

.field private final parts:I

.field private final pixelGridTraversal:Lcom/graphhopper/storage/index/PixelGridTraversal;

.field private final shifts:[B


# direct methods
.method public constructor <init>([I[BLcom/graphhopper/storage/index/PixelGridTraversal;Lcom/graphhopper/geohash/SpatialKeyAlgo;Lcom/graphhopper/util/shapes/BBox;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->entries:[I

    iput-object p2, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->shifts:[B

    iput-object p3, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->pixelGridTraversal:Lcom/graphhopper/storage/index/PixelGridTraversal;

    iput-object p4, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    iput-object p5, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iput p6, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->parts:I

    return-void
.end method

.method public static create(Lcom/graphhopper/util/shapes/BBox;I)Lcom/graphhopper/storage/index/IndexStructureInfo;
    .locals 12

    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/BBox;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/graphhopper/util/shapes/BBox;

    const-wide/high16 v6, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct/range {v1 .. v9}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p0

    :goto_0
    iget-wide v0, v7, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, v7, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, v7, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v4, v7, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    const-wide v8, 0x4183167eecbc8011L    # 4.003017359204114E7

    mul-double/2addr v2, v8

    iget-wide v8, v7, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v10, v7, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr v8, v10

    div-double/2addr v8, v4

    sget-object p0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/DistanceCalcEarth;->calcCircumference(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    mul-double/2addr v0, v0

    new-instance p0, Lcom/carrotsearch/hppc/x;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    const/16 v4, 0x10

    goto :goto_2

    :cond_1
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    move v4, p1

    :goto_2
    invoke-virtual {p0, v4}, Lcom/carrotsearch/hppc/x;->add(I)V

    int-to-double v4, v4

    div-double/2addr v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->toArray()[I

    move-result-object v3

    array-length p0, v3

    const/4 p1, 0x1

    if-lt p0, p1, :cond_7

    array-length p0, v3

    new-array v4, p0, [B

    const/4 p1, 0x0

    aget v0, v3, p1

    move v1, p1

    :goto_3
    if-ge v1, p0, :cond_4

    aget v2, v3, v1

    if-lt v0, v2, :cond_3

    invoke-static {v2}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getShift(I)B

    move-result v0

    aput-byte v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "entries should decrease or stay but was:"

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-wide/16 v0, 0x1

    move-wide v1, v0

    move v0, p1

    :goto_4
    if-ge p1, p0, :cond_5

    aget-byte v5, v4, p1

    add-int/2addr v0, v5

    aget v5, v3, p1

    int-to-long v5, v5

    mul-long/2addr v1, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    const/16 p0, 0x40

    if-gt v0, p0, :cond_6

    long-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-long p0, p0

    new-instance v2, Lcom/graphhopper/storage/index/IndexStructureInfo;

    new-instance v5, Lcom/graphhopper/storage/index/PixelGridTraversal;

    long-to-int v8, p0

    invoke-direct {v5, v8, v7}, Lcom/graphhopper/storage/index/PixelGridTraversal;-><init>(ILcom/graphhopper/util/shapes/BBox;)V

    new-instance v6, Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-direct {v6, v0, v7}, Lcom/graphhopper/geohash/SpatialKeyAlgo;-><init>(ILcom/graphhopper/util/shapes/BBox;)V

    invoke-direct/range {v2 .. v8}, Lcom/graphhopper/storage/index/IndexStructureInfo;-><init>([I[BLcom/graphhopper/storage/index/PixelGridTraversal;Lcom/graphhopper/geohash/SpatialKeyAlgo;Lcom/graphhopper/util/shapes/BBox;I)V

    return-object v2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sum of all shifts does not fit into a long variable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "depth needs to be at least 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getShift(I)B
    .locals 4

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    if-lez p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid shift:"

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBounds()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->bounds:Lcom/graphhopper/util/shapes/BBox;

    return-object p0
.end method

.method public getDeltaLat()D
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v1, v0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v3, v0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr v1, v3

    iget p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->parts:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getDeltaLon()D
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v1, v0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v3, v0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr v1, v3

    iget p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->parts:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getEntries()[I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->entries:[I

    return-object p0
.end method

.method public getKeyAlgo()Lcom/graphhopper/geohash/SpatialKeyAlgo;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    return-object p0
.end method

.method public getParts()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->parts:I

    return p0
.end method

.method public getPixelGridTraversal()Lcom/graphhopper/storage/index/PixelGridTraversal;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->pixelGridTraversal:Lcom/graphhopper/storage/index/PixelGridTraversal;

    return-object p0
.end method

.method public getShifts()[B
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/IndexStructureInfo;->shifts:[B

    return-object p0
.end method
