.class public abstract Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;
.super Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
.source "SourceFile"


# instance fields
.field private final HEIGHT:I

.field final LAT_DEGREE:I

.field final LON_DEGREE:I

.field private final WIDTH:I

.field private final cacheData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/reader/dem/HeightTile;",
            ">;"
        }
    .end annotation
.end field

.field final precision:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->cacheData:Ljava/util/Map;

    const-wide v0, 0x416312d000000000L    # 1.0E7

    iput-wide v0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->precision:D

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    new-instance p1, Lcom/graphhopper/util/Downloader;

    invoke-direct {p1, p3}, Lcom/graphhopper/util/Downloader;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Lcom/graphhopper/util/Downloader;->setTimeout(I)Lcom/graphhopper/util/Downloader;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->downloader:Lcom/graphhopper/util/Downloader;

    iput p4, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->WIDTH:I

    iput p5, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->HEIGHT:I

    iput p6, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    iput p7, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LON_DEGREE:I

    return-void
.end method

.method private downloadToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

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
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    :try_start_1
    iget-wide v1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->sleep:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private fillDataAccessWithElevationData(Ljava/awt/image/Raster;Lcom/graphhopper/storage/DataAccess;I)V
    .locals 9

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_3

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v2, v4}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v4

    aget v4, v4, v1

    int-to-short v4, v4

    const/16 v5, -0x3e8

    if-lt v4, v5, :cond_0

    const/16 v5, 0x2ee0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v4, -0x8000

    :cond_1
    int-to-long v5, v2

    int-to-long v7, p3

    mul-long/2addr v5, v7

    int-to-long v7, v3

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    invoke-interface {p2, v5, v6, v4}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/graphhopper/storage/DataAccess;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Problem at x:"

    const-string p3, ", y:"

    invoke-static {p2, v3, p3, v2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract getDownloadURL(DD)Ljava/lang/String;
.end method

.method public getEle(DD)D
    .locals 22

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->isOutsideSupportedArea(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v20, 0x0

    goto/16 :goto_4

    :cond_0
    const-wide v4, 0x416312d000000000L    # 1.0E7

    mul-double v6, p1, v4

    double-to-int v0, v6

    int-to-double v6, v0

    div-double/2addr v6, v4

    mul-double v8, p3, v4

    double-to-int v0, v8

    int-to-double v8, v0

    div-double/2addr v8, v4

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getFileName(DD)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->cacheData:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/reader/dem/HeightTile;

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1, v6, v7}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getMinLatForTile(D)I

    move-result v12

    invoke-virtual {v1, v8, v9}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getMinLonForTile(D)I

    move-result v13

    new-instance v11, Lcom/graphhopper/reader/dem/HeightTile;

    iget v14, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->WIDTH:I

    iget v15, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->HEIGHT:I

    iget v0, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LON_DEGREE:I

    const-wide/16 v20, 0x0

    int-to-double v2, v0

    mul-double v16, v2, v4

    iget v2, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    move/from16 v18, v0

    move/from16 v19, v2

    invoke-direct/range {v11 .. v19}, Lcom/graphhopper/reader/dem/HeightTile;-><init>(IIIIDII)V

    iget-boolean v0, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->interpolate:Z

    invoke-virtual {v11, v0}, Lcom/graphhopper/reader/dem/HeightTile;->setInterpolate(Z)Lcom/graphhopper/reader/dem/HeightTile;

    iget-object v0, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->cacheData:Ljava/util/Map;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".gh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/graphhopper/reader/dem/HeightTile;->setHeights(Lcom/graphhopper/storage/DataAccess;)V

    :try_start_0
    invoke-interface {v2}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->logger:Lnc/b;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lnc/b;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getFileNameOfLocalFile(DD)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getDownloadURL(DD)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->downloadToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/graphhopper/reader/dem/HeightTile;->setSeaLevel(Z)Lcom/graphhopper/reader/dem/HeightTile;

    const-wide/16 v0, 0xa

    invoke-interface {v2, v0, v1}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-wide v20

    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SSL problem with elevation provider "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    :goto_2
    iget v3, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->WIDTH:I

    int-to-long v3, v3

    const-wide/16 v12, 0x2

    mul-long/2addr v3, v12

    iget v5, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->HEIGHT:I

    int-to-long v12, v5

    mul-long/2addr v3, v12

    invoke-interface {v2, v3, v4}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tif"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/awt/image/Raster;

    move-result-object v0

    iget v3, v1, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->WIDTH:I

    invoke-direct {v1, v0, v2, v3}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->fillDataAccessWithElevationData(Ljava/awt/image/Raster;Lcom/graphhopper/storage/DataAccess;I)V

    :cond_3
    move-object v0, v11

    goto :goto_3

    :cond_4
    const-wide/16 v20, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/graphhopper/reader/dem/HeightTile;->isSeaLevel()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_4
    return-wide v20

    :cond_5
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/graphhopper/reader/dem/HeightTile;->getHeight(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getFileName(DD)Ljava/lang/String;
.end method

.method public abstract getFileNameOfLocalFile(DD)Ljava/lang/String;
.end method

.method public abstract getMinLatForTile(D)I
.end method

.method public abstract getMinLonForTile(D)I
.end method

.method public abstract isOutsideSupportedArea(DD)Z
.end method

.method public abstract readFile(Ljava/io/File;Ljava/lang/String;)Ljava/awt/image/Raster;
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->cacheData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

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
