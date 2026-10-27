.class public Lcom/graphhopper/reader/dem/GMTEDProvider;
.super Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;
.source "SourceFile"


# instance fields
.field private final FILE_NAME_END:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/dem/GMTEDProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/tmp/gmted"

    :cond_0
    move-object v2, p1

    const/16 v6, 0x14

    const/16 v7, 0x1e

    .line 3
    const-string v1, "https://edcintl.cr.usgs.gov/downloads/sciweb1/shared/topo/downloads/GMTED/Global_tiles_GMTED/075darcsec/mea/"

    const-string v3, "GraphHopper GMTEDReader"

    const/16 v4, 0x3840

    const/16 v5, 0x2580

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 4
    const-string p0, "_20101117_gmted_mea075"

    iput-object p0, v0, Lcom/graphhopper/reader/dem/GMTEDProvider;->FILE_NAME_END:Ljava/lang/String;

    return-void
.end method

.method private getEastString(I)Ljava/lang/String;
    .locals 0

    if-gez p1, :cond_0

    const-string p0, "W"

    return-object p0

    :cond_0
    const-string p0, "E"

    return-object p0
.end method

.method private getLatString(I)Ljava/lang/String;
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

.method private getLonString(I)Ljava/lang/String;
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

.method private getNorthString(I)Ljava/lang/String;
    .locals 0

    if-gez p1, :cond_0

    const-string p0, "S"

    return-object p0

    :cond_0
    const-string p0, "N"

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    new-instance p0, Lcom/graphhopper/reader/dem/GMTEDProvider;

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/GMTEDProvider;-><init>()V

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

    const-wide v1, 0x4047bbfd50225743L    # 47.468668

    const-wide v3, 0x402d26770bd017dbL    # 14.575127

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4047bbdf548ecd8eL    # 47.467753

    const-wide v3, 0x402d25d7a99fa11bL    # 14.573911

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v5, 0x40473c02c9081c2eL    # 46.468835

    const-wide v7, 0x40292855757d5a9fL    # 12.578777

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v5, 0x40483c0c38f36695L    # 48.469123

    const-wide v7, 0x4023271cfbb94962L    # 9.576393

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintStream;->println(D)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setInterpolate(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x403dd73471f79421L    # 29.840644

    const-wide v3, -0x3fba8e0000000000L    # -42.890625

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    return-void
.end method


# virtual methods
.method public getDownloadURL(DD)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getMinLonForTile(D)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getMinLatForTile(D)I

    move-result p1

    invoke-direct {p0, p3}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getEastString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getLonString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getLatString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getNorthString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, p0, p3, p2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_20101117_gmted_mea075.tif"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName(DD)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getMinLonForTile(D)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getMinLatForTile(D)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getLatString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getNorthString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getLonString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p3}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getEastString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_20101117_gmted_mea075"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileNameOfLocalFile(DD)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/GMTEDProvider;->getFileName(DD)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".tif"

    invoke-static {p0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinLatForTile(D)I
    .locals 2

    const-wide v0, 0x4056800000000000L    # 90.0

    add-double/2addr p1, v0

    iget v0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    int-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget p0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LAT_DEGREE:I

    int-to-double v0, p0

    mul-double/2addr p1, v0

    double-to-int p0, p1

    add-int/lit8 p0, p0, -0x5a

    return p0
.end method

.method public getMinLonForTile(D)I
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p1, v0

    iget v0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LON_DEGREE:I

    int-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget p0, p0, Lcom/graphhopper/reader/dem/AbstractTiffElevationProvider;->LON_DEGREE:I

    int-to-double v0, p0

    mul-double/2addr p1, v0

    double-to-int p0, p1

    add-int/lit16 p0, p0, -0xb4

    return p0
.end method

.method public isOutsideSupportedArea(DD)Z
    .locals 0

    const-wide/high16 p3, 0x4055000000000000L    # 84.0

    cmpl-double p0, p1, p3

    if-gtz p0, :cond_1

    const-wide p3, -0x3fae800000000000L    # -70.0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

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
    .locals 5

    const-string p0, "Can\'t decode "

    const/4 p2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Leb/d;->q(Ljava/io/InputStream;)Leb/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lg5/c;

    new-instance v2, Ldb/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v3, v0, v2}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg5/c;->f()V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object p2, v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    :cond_0
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "gmted"

    return-object p0
.end method
