.class public Lcom/graphhopper/reader/dem/SkadiProvider;
.super Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/dem/SkadiProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/tmp/srtm"

    :cond_0
    move-object v2, p1

    const/16 v5, 0x5a

    const/16 v6, 0xe11

    .line 3
    const-string v1, "https://elevation-tiles-prod.s3.amazonaws.com/skadi/"

    const-string v3, "GraphHopper SRTMReader"

    const/16 v4, -0x5a

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method private getLatString(D)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-gez p1, :cond_0

    const-string p2, "S"

    goto :goto_0

    :cond_0
    const-string p2, "N"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getPaddedLatString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLonString(D)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-gez p1, :cond_0

    const-string p2, "W"

    goto :goto_0

    :cond_0
    const-string p2, "E"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->getPaddedLonString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    new-instance p0, Lcom/graphhopper/reader/dem/SkadiProvider;

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/SkadiProvider;-><init>()V

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
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/dem/SkadiProvider;->getLatString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/graphhopper/reader/dem/SkadiProvider;->getLonString(D)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".hgt.gz"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName(DD)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/dem/SkadiProvider;->getLatString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/graphhopper/reader/dem/SkadiProvider;->getLonString(D)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readFile(Ljava/io/File;)[B
    .locals 1

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    const/16 v0, 0x2000

    invoke-direct {p1, p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance p0, Ljava/io/BufferedInputStream;

    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/high16 v0, 0x10000

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0, p1}, Lwa/h;->y(Ljava/io/FilterInputStream;Ljava/io/OutputStream;)V

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "skadi"

    return-object p0
.end method
