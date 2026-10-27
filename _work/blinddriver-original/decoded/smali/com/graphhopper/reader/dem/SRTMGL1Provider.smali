.class public Lcom/graphhopper/reader/dem/SRTMGL1Provider;
.super Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;
.source "SourceFile"


# instance fields
.field private final latDegree:I

.field private final lonDegree:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/tmp/srtmgl1"

    :cond_0
    move-object v2, p1

    const/16 v5, 0x3c

    const/16 v6, 0xe11

    .line 3
    const-string v1, "https://cloud.sdsc.edu/v1/AUTH_opentopography/Raster/SRTM_GL1/SRTM_GL1_srtm/"

    const-string v3, "GraphHopper SRTMReader"

    const/16 v4, -0x38

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 p0, 0x1

    .line 4
    iput p0, v0, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->latDegree:I

    .line 5
    iput p0, v0, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->lonDegree:I

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
    .locals 5

    new-instance p0, Lcom/graphhopper/reader/dem/SRTMGL1Provider;

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4048f99285a921cdL    # 49.949784

    const-wide v3, 0x4027267caea747d8L    # 11.57517

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4048fbfd50225743L    # 49.968668

    const-wide v3, 0x402726770bd017dbL    # 11.575127

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4048fbfdc5931ca8L    # 49.968682

    const-wide v3, 0x40272651b0ccbc06L    # 11.574842

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, -0x3fc97796e158750cL    # -22.532854

    const-wide v3, -0x3fafb8edfe75bc45L    # -65.110474

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043085ec3dab5c4L    # 38.065392

    const-wide v3, -0x3faa39a00192a737L    # -87.099609

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    const-wide v3, -0x3fa5b16d535511aaL    # -105.2277023

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043ffffffea8671L    # 39.99999999

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043ffffff29406bL    # 39.9999999

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4043fffff79c8430L    # 39.999999

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4047bbfd50225743L    # 47.468668

    const-wide v3, 0x402d26770bd017dbL    # 14.575127

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x4047bbdf548ecd8eL    # 47.467753

    const-wide v3, 0x402d25d7a99fa11bL    # 14.573911

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x40473c02c9081c2eL    # 46.468835

    const-wide v3, 0x40292855757d5a9fL    # 12.578777

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x40483c0c38f36695L    # 48.469123

    const-wide v3, 0x4023271cfbb94962L    # 9.576393

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getEle(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(D)V

    return-void
.end method


# virtual methods
.method public getDownloadURL(DD)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getMinLonForTile(D)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getMinLatForTile(D)I

    move-result p4

    invoke-direct {p0, p4}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getNorthString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    cmpl-double p1, p1, v1

    if-ltz p1, :cond_0

    const-string p1, "North/North_30_60/"

    goto :goto_0

    :cond_0
    const-string p1, "North/North_0_29/"

    goto :goto_0

    :cond_1
    const-string p1, "South/"

    :goto_0
    invoke-virtual {p0, p4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getPaddedLatString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getEastString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getPaddedLonString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".hgt"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName(DD)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getMinLonForTile(D)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getMinLatForTile(D)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getNorthString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getPaddedLatString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;->getEastString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getPaddedLonString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinLatForTile(D)I
    .locals 2

    const-wide v0, 0x4056800000000000L    # 90.0

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x5a

    return p0
.end method

.method public getMinLonForTile(D)I
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    add-int/lit16 p0, p0, -0xb4

    return p0
.end method

.method public readFile(Ljava/io/File;)[B
    .locals 3

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v0, 0xffff

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "srtmgl1"

    return-object p0
.end method
