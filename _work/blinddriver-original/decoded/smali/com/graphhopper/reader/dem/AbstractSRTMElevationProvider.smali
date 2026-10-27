.class public abstract Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;
.super Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
.source "SourceFile"


# instance fields
.field private final DEFAULT_WIDTH:I

.field private final DEGREE:I

.field private final MAX_LAT:I

.field private final MIN_LAT:I

.field private final WIDTH_BYTE_INDEX:I

.field private final cacheData:Lcom/graphhopper/coll/GHIntObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/coll/GHIntObjectHashMap<",
            "Lcom/graphhopper/reader/dem/HeightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final invPrecision:D

.field private final precision:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->WIDTH_BYTE_INDEX:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->DEGREE:I

    new-instance p2, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {p2}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->cacheData:Lcom/graphhopper/coll/GHIntObjectHashMap;

    const-wide v0, 0x416312d000000000L    # 1.0E7

    iput-wide v0, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->precision:D

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    iput-wide v0, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->invPrecision:D

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    new-instance p1, Lcom/graphhopper/util/Downloader;

    invoke-direct {p1, p3}, Lcom/graphhopper/util/Downloader;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Lcom/graphhopper/util/Downloader;->setTimeout(I)Lcom/graphhopper/util/Downloader;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->downloader:Lcom/graphhopper/util/Downloader;

    iput p6, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->DEFAULT_WIDTH:I

    iput p4, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->MIN_LAT:I

    iput p5, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->MAX_LAT:I

    return-void
.end method

.method private downloadToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->downloader:Lcom/graphhopper/util/Downloader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/graphhopper/util/Downloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, ".hgt.zip"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "hgt.zip"

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    throw v1

    :catch_1
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method private updateHeightsFromFile(DDLcom/graphhopper/storage/DataAccess;)V
    .locals 7

    const-string v0, ","

    :try_start_0
    iget-object v1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getDownloadURL(DD)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->downloadToFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->readFile(Ljava/io/File;)[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-interface {p5, v2, v3}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v1, v3}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->toShort([BI)S

    move-result v4

    const/16 v5, -0x3e8

    if-lt v4, v5, :cond_1

    const/16 v5, 0x2ee0

    if-le v4, v5, :cond_2

    :cond_1
    const/16 v4, -0x8000

    :cond_2
    int-to-long v5, v3

    invoke-interface {p5, v5, v6, v4}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p5, v2, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    invoke-interface {p5}, Lcom/graphhopper/storage/DataAccess;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an issue with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " looking up the coordinates "

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    iget-object p0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->logger:Lnc/b;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " for the coordinates "

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public calcIntKey(DD)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->down(D)I

    move-result p1

    add-int/lit8 p1, p1, 0x5a

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->down(D)I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0xb4

    return p0
.end method

.method public down(D)I
    .locals 2

    double-to-int p0, p1

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-gez v0, :cond_1

    int-to-double v0, p0

    sub-double/2addr v0, p1

    const-wide p1, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :cond_1
    :goto_0
    return p0
.end method

.method public abstract getDownloadURL(DD)Ljava/lang/String;
.end method

.method public getEle(DD)D
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->MAX_LAT:I

    int-to-double v2, v0

    cmpl-double v0, p1, v2

    const-wide/16 v7, 0x0

    if-gez v0, :cond_7

    iget v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->MIN_LAT:I

    int-to-double v2, v0

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v4, p1, v2

    double-to-int v0, v4

    int-to-double v4, v0

    div-double/2addr v4, v2

    mul-double v9, p3, v2

    double-to-int v0, v9

    int-to-double v9, v0

    div-double/2addr v9, v2

    invoke-virtual {v1, v4, v5, v9, v10}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->calcIntKey(DD)I

    move-result v11

    iget-object v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->cacheData:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v0, v11}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/reader/dem/HeightTile;

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1, v4, v5}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->down(D)I

    move-result v13

    invoke-virtual {v1, v9, v10}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->down(D)I

    move-result v14

    invoke-virtual {v1, v4, v5, v9, v10}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getFileName(DD)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dem"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v6

    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v6}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->logger:Lnc/b;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "cannot load dem"

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", error:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lnc/b;->l(Ljava/lang/String;)V

    move v0, v12

    :goto_0
    if-nez v0, :cond_3

    move-wide v2, v4

    move-wide v4, v9

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->updateHeightsFromFile(DDLcom/graphhopper/storage/DataAccess;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance v12, Lcom/graphhopper/reader/dem/HeightTile;

    iget v15, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->DEFAULT_WIDTH:I

    iget v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->DEFAULT_WIDTH:I

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-wide v17, 0x416312d000000000L    # 1.0E7

    move/from16 v16, v0

    invoke-direct/range {v12 .. v20}, Lcom/graphhopper/reader/dem/HeightTile;-><init>(IIIIDII)V

    iget-object v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->cacheData:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v0, v11, v12}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v6}, Lcom/graphhopper/reader/dem/HeightTile;->setHeights(Lcom/graphhopper/storage/DataAccess;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/graphhopper/reader/dem/HeightTile;->setSeaLevel(Z)Lcom/graphhopper/reader/dem/HeightTile;

    const-wide/16 v0, 0xa

    invoke-interface {v6, v0, v1}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-wide v7

    :cond_3
    move-wide v2, v4

    move-wide v4, v9

    :goto_1
    invoke-interface {v6, v12}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v15

    double-to-int v0, v9

    if-nez v0, :cond_4

    iget v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->DEFAULT_WIDTH:I

    :cond_4
    move v15, v0

    new-instance v12, Lcom/graphhopper/reader/dem/HeightTile;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-wide v17, 0x416312d000000000L    # 1.0E7

    move/from16 v16, v15

    invoke-direct/range {v12 .. v20}, Lcom/graphhopper/reader/dem/HeightTile;-><init>(IIIIDII)V

    iget-object v0, v1, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->cacheData:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v0, v11, v12}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->interpolate:Z

    invoke-virtual {v12, v0}, Lcom/graphhopper/reader/dem/HeightTile;->setInterpolate(Z)Lcom/graphhopper/reader/dem/HeightTile;

    invoke-virtual {v12, v6}, Lcom/graphhopper/reader/dem/HeightTile;->setHeights(Lcom/graphhopper/storage/DataAccess;)V

    move-object v0, v12

    goto :goto_2

    :cond_5
    move-wide v2, v4

    move-wide v4, v9

    :goto_2
    invoke-virtual {v0}, Lcom/graphhopper/reader/dem/HeightTile;->isSeaLevel()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/graphhopper/reader/dem/HeightTile;->getHeight(DD)D

    move-result-wide v0

    return-wide v0

    :cond_7
    :goto_3
    return-wide v7
.end method

.method public abstract getFileName(DD)Ljava/lang/String;
.end method

.method public getPaddedLatString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0xa

    if-ge p0, p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddedLonString(I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x64

    const-string v0, "0"

    if-ge p0, p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 v1, 0xa

    if-ge p0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract readFile(Ljava/io/File;)[B
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->cacheData:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/n0;->clear()V

    iget-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->dir:Lcom/graphhopper/storage/Directory;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->autoRemoveTemporary:Z

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/graphhopper/storage/Directory;->clear()V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/graphhopper/storage/Directory;->close()V

    :cond_1
    return-void
.end method

.method public final toShort([BI)S
    .locals 0

    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method
