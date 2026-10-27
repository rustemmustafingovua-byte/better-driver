.class public Lcom/graphhopper/reader/dem/CGIARProvider;
.super Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;
.source "SourceFile"


# instance fields
.field private final invPrecision:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/dem/CGIARProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/tmp/cgiar"

    :cond_0
    move-object v2, p1

    const/4 v6, 0x5

    const/4 v7, 0x5

    .line 3
    const-string v1, "https://srtm.csi.cgiar.org/wp-content/uploads/files/srtm_5x5/TIFF/"

    const-string v3, "GraphHopper CGIARReader"

    const/16 v4, 0x1770

    const/16 v5, 0x1770

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    const-wide p0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 4
    iput-wide p0, v0, Lcom/graphhopper/reader/dem/CGIARProvider;->invPrecision:D

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    new-instance p0, Lcom/graphhopper/reader/dem/CGIARProvider;

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/CGIARProvider;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v1, 0x4047000000000000L    # 46.0

    const-wide/high16 v3, -0x3fcc000000000000L    # -20.0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4048f99285a921cdL    # 49.949784

    const-wide v3, 0x4027267caea747d8L    # 11.57517

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4048fbfd50225743L    # 49.968668

    const-wide v3, 0x402726770bd017dbL    # 11.575127

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4048fbfdc5931ca8L    # 49.968682

    const-wide v3, 0x40272651b0ccbc06L    # 11.574842

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, -0x3fc97796e158750cL    # -22.532854

    const-wide v3, -0x3fafb8edfe75bc45L    # -65.110474

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043085ec3dab5c4L    # 38.065392

    const-wide v3, -0x3faa39a00192a737L    # -87.099609

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    const-wide v3, -0x3fa5b16d535511aaL    # -105.2277023

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043ffffffea8671L    # 39.99999999

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043ffffff29406bL    # 39.9999999

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043fffff79c8430L    # 39.999999

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x403dd73471f79421L    # 29.840644

    const-wide v3, -0x3fba8e0000000000L    # -42.890625

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x40483c0c38f36695L    # 48.469123

    const-wide v3, 0x4023271cfbb94962L    # 9.576393

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    return-void
.end method


# virtual methods
.method public down(D)I
    .locals 3

    iget p0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    int-to-double v0, p0

    div-double v0, p1, v0

    double-to-int v0, v0

    mul-int/2addr v0, p0

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-gez v1, :cond_0

    int-to-double v1, v0

    sub-double/2addr v1, p1

    const-wide p1, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double p1, v1, p1

    if-ltz p1, :cond_0

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getDownloadURL(DD)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/CGIARProvider;->getFileName(DD)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName(DD)Ljava/lang/String;
    .locals 6

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p3, v0

    iget v0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    int-to-double v1, v0

    div-double/2addr p3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v1

    double-to-int p3, p3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    sub-double/2addr v3, p1

    int-to-double p1, v0

    div-double/2addr v3, p1

    add-double/2addr v3, v1

    double-to-int p1, v3

    int-to-double v0, p1

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget p0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    int-to-double v2, p0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    div-double/2addr v4, v2

    cmpg-double p0, v0, v4

    if-gez p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/16 p0, 0xa

    if-ge p3, p0, :cond_1

    const-string p2, "0"

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    const-string p4, "srtm_"

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-ge p1, p0, :cond_2

    const-string p0, "_0"

    goto :goto_1

    :cond_2
    const-string p0, "_"

    :goto_1
    invoke-static {p2, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileNameOfLocalFile(DD)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/CGIARProvider;->getDownloadURL(DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinLatForTile(D)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/CGIARProvider;->down(D)I

    move-result p0

    return p0
.end method

.method public getMinLonForTile(D)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/CGIARProvider;->down(D)I

    move-result p0

    return p0
.end method

.method public isOutsideSupportedArea(DD)Z
    .locals 0

    const-wide/high16 p3, 0x404e000000000000L    # 60.0

    cmpl-double p0, p1, p3

    if-gez p0, :cond_1

    const-wide/high16 p3, -0x3fb4000000000000L    # -56.0

    cmpg-double p0, p1, p3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public readFile(Ljava/io/File;Ljava/lang/String;)Ljava/awt/image/Raster;
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-static {p1}, Leb/d;->q(Ljava/io/InputStream;)Leb/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lg5/c;

    new-instance v1, Ldb/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    invoke-direct {v0, v2, p1, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg5/c;->f()V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_4

    :goto_2
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_3
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "cgiar"

    return-object p0
.end method
