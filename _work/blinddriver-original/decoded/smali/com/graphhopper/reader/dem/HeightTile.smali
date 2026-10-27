.class public Lcom/graphhopper/reader/dem/HeightTile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final MAX_ELEVATION_METERS:D

.field private final MIN_ELEVATION_METERS:D

.field private final height:I

.field private heights:Lcom/graphhopper/storage/DataAccess;

.field private final horizontalDegree:I

.field private interpolate:Z

.field private final latHigherBound:D

.field private final lonHigherBound:D

.field private final lowerBound:D

.field private final minLat:I

.field private final minLon:I

.field private final verticalDegree:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIIDII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x3f38900000000000L    # -12000.0

    iput-wide v0, p0, Lcom/graphhopper/reader/dem/HeightTile;->MIN_ELEVATION_METERS:D

    const-wide v0, 0x40c1940000000000L    # 9000.0

    iput-wide v0, p0, Lcom/graphhopper/reader/dem/HeightTile;->MAX_ELEVATION_METERS:D

    iput p1, p0, Lcom/graphhopper/reader/dem/HeightTile;->minLat:I

    iput p2, p0, Lcom/graphhopper/reader/dem/HeightTile;->minLon:I

    iput p3, p0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    iput p4, p0, Lcom/graphhopper/reader/dem/HeightTile;->height:I

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    div-double/2addr p1, p5

    iput-wide p1, p0, Lcom/graphhopper/reader/dem/HeightTile;->lowerBound:D

    int-to-double p1, p7

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    div-double/2addr p3, p5

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/graphhopper/reader/dem/HeightTile;->lonHigherBound:D

    int-to-double p1, p8

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/graphhopper/reader/dem/HeightTile;->latHigherBound:D

    iput p7, p0, Lcom/graphhopper/reader/dem/HeightTile;->horizontalDegree:I

    iput p8, p0, Lcom/graphhopper/reader/dem/HeightTile;->verticalDegree:I

    return-void
.end method

.method private getHeightSample(II)S
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/reader/dem/HeightTile;->heights:Lcom/graphhopper/storage/DataAccess;

    int-to-long v1, p2

    iget p0, p0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    int-to-long v3, p0

    mul-long/2addr v1, v3

    int-to-long p0, p1

    add-long/2addr v1, p0

    const-wide/16 p0, 0x2

    mul-long/2addr v1, p0

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    return p0
.end method

.method private isValidElevation(D)Z
    .locals 2

    const-wide v0, -0x3f38900000000000L    # -12000.0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private linearInterpolate(DDD)D
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/dem/HeightTile;->isValidElevation(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/graphhopper/reader/dem/HeightTile;->isValidElevation(D)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide p1

    :cond_1
    move-wide v6, p1

    move-wide v2, p1

    move-wide v0, p3

    move-wide v4, p5

    invoke-static/range {v0 .. v7}, Lm/a;->b(DDDD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getHeight(DD)D
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget v5, v0, Lcom/graphhopper/reader/dem/HeightTile;->minLat:I

    int-to-double v5, v5

    sub-double v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget v7, v0, Lcom/graphhopper/reader/dem/HeightTile;->minLon:I

    int-to-double v7, v7

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/graphhopper/reader/dem/HeightTile;->latHigherBound:D

    cmpl-double v9, v5, v9

    const-string v10, ", this:"

    const-string v11, ","

    if-gtz v9, :cond_5

    iget-wide v12, v0, Lcom/graphhopper/reader/dem/HeightTile;->lowerBound:D

    cmpg-double v9, v5, v12

    if-ltz v9, :cond_5

    iget-wide v14, v0, Lcom/graphhopper/reader/dem/HeightTile;->lonHigherBound:D

    cmpl-double v9, v7, v14

    if-gtz v9, :cond_4

    cmpg-double v9, v7, v12

    if-ltz v9, :cond_4

    iget-boolean v1, v0, Lcom/graphhopper/reader/dem/HeightTile;->interpolate:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    mul-double/2addr v1, v7

    iget v3, v0, Lcom/graphhopper/reader/dem/HeightTile;->horizontalDegree:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, v0, Lcom/graphhopper/reader/dem/HeightTile;->height:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    iget v7, v0, Lcom/graphhopper/reader/dem/HeightTile;->verticalDegree:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    mul-double/2addr v7, v3

    double-to-int v3, v1

    double-to-int v9, v7

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v9, 0x1

    invoke-direct {v0, v3, v9}, Lcom/graphhopper/reader/dem/HeightTile;->getHeightSample(II)S

    move-result v6

    int-to-double v10, v6

    invoke-direct {v0, v3, v5}, Lcom/graphhopper/reader/dem/HeightTile;->getHeightSample(II)S

    move-result v6

    int-to-double v12, v6

    invoke-direct {v0, v4, v9}, Lcom/graphhopper/reader/dem/HeightTile;->getHeightSample(II)S

    move-result v6

    int-to-double v14, v6

    invoke-direct {v0, v4, v5}, Lcom/graphhopper/reader/dem/HeightTile;->getHeightSample(II)S

    move-result v4

    int-to-double v4, v4

    move-wide/from16 p1, v1

    int-to-double v0, v3

    sub-double v1, p1, v0

    move-wide/from16 v16, v4

    move-wide v5, v1

    move-wide v1, v10

    move-wide/from16 v10, v16

    move-object/from16 v0, p0

    move-wide v3, v14

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/dem/HeightTile;->linearInterpolate(DDD)D

    move-result-wide v14

    move-wide v3, v10

    move-wide v1, v12

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/dem/HeightTile;->linearInterpolate(DDD)D

    move-result-wide v3

    int-to-double v0, v9

    sub-double v5, v7, v0

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/dem/HeightTile;->linearInterpolate(DDD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    iget v2, v0, Lcom/graphhopper/reader/dem/HeightTile;->horizontalDegree:I

    div-int v2, v1, v2

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    if-lt v2, v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    :cond_1
    iget v1, v0, Lcom/graphhopper/reader/dem/HeightTile;->height:I

    add-int/lit8 v3, v1, -0x1

    iget v4, v0, Lcom/graphhopper/reader/dem/HeightTile;->verticalDegree:I

    div-int/2addr v1, v4

    int-to-double v7, v1

    mul-double/2addr v7, v5

    double-to-int v1, v7

    sub-int/2addr v3, v1

    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-direct {v0, v2, v3}, Lcom/graphhopper/reader/dem/HeightTile;->getHeightSample(II)S

    move-result v1

    int-to-double v1, v1

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/dem/HeightTile;->isValidElevation(D)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v1

    :cond_3
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/graphhopper/reader/dem/HeightTile;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "longitude not in boundary of this file:"

    invoke-static {v1, v2, v6, v11}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/graphhopper/reader/dem/HeightTile;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "latitude not in boundary of this file:"

    invoke-static {v1, v2, v6, v11}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getImageFromArray([III)Ljava/awt/image/BufferedImage;
    .locals 8

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 p0, 0x3

    invoke-direct {v0, p2, p3, p0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v7, p2

    move-object v5, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    return-object v0
.end method

.method public isSeaLevel()Z
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/dem/HeightTile;->heights:Lcom/graphhopper/storage/DataAccess;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public makeARGB()Ljava/awt/image/BufferedImage;
    .locals 13

    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    iget v2, p0, Lcom/graphhopper/reader/dem/HeightTile;->height:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    iget v3, p0, Lcom/graphhopper/reader/dem/HeightTile;->height:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    iget v6, p0, Lcom/graphhopper/reader/dem/HeightTile;->width:I

    rem-int v6, v5, v6

    iget v7, p0, Lcom/graphhopper/reader/dem/HeightTile;->height:I

    div-int v7, v5, v7

    iget-object v8, p0, Lcom/graphhopper/reader/dem/HeightTile;->heights:Lcom/graphhopper/storage/DataAccess;

    mul-int/lit8 v9, v5, 0x2

    int-to-long v9, v9

    invoke-interface {v8, v9, v10}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0xff

    if-nez v8, :cond_0

    new-instance v8, Ljava/awt/Color;

    invoke-direct {v8, v9, v4, v4, v9}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v1, v8}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    goto :goto_2

    :cond_0
    move v10, v4

    :goto_1
    if-le v8, v9, :cond_1

    div-int/lit8 v8, v8, 0xa

    add-int/lit8 v10, v10, 0x32

    goto :goto_1

    :cond_1
    if-le v10, v9, :cond_2

    move v10, v9

    :cond_2
    new-instance v11, Ljava/awt/Color;

    const/16 v12, 0x7a

    invoke-direct {v11, v10, v8, v12, v9}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v1, v11}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    :goto_2
    invoke-virtual {v1, v6, v7, v6, v7}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/awt/Graphics;->dispose()V

    return-object v0
.end method

.method public setHeights(Lcom/graphhopper/storage/DataAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/dem/HeightTile;->heights:Lcom/graphhopper/storage/DataAccess;

    return-void
.end method

.method public setInterpolate(Z)Lcom/graphhopper/reader/dem/HeightTile;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/reader/dem/HeightTile;->interpolate:Z

    return-object p0
.end method

.method public setSeaLevel(Z)Lcom/graphhopper/reader/dem/HeightTile;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/dem/HeightTile;->heights:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    return-object p0
.end method

.method public toImage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/reader/dem/HeightTile;->makeARGB()Ljava/awt/image/BufferedImage;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "PNG"

    invoke-static {p0, p1, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/graphhopper/reader/dem/HeightTile;->minLat:I

    iget p0, p0, Lcom/graphhopper/reader/dem/HeightTile;->minLon:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
