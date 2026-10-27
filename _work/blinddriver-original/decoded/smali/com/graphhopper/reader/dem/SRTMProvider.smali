.class public Lcom/graphhopper/reader/dem/SRTMProvider;
.super Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;
.source "SourceFile"


# instance fields
.field private final areas:Lcom/graphhopper/coll/GHIntObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/coll/GHIntObjectHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/dem/SRTMProvider;-><init>(Ljava/lang/String;)V

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

    const/16 v5, 0x3c

    const/16 v6, 0x4b1

    .line 3
    const-string v1, "https://srtm.kurviger.de/SRTM3/"

    const-string v3, "GraphHopper SRTMReader"

    const/16 v4, -0x38

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 4
    new-instance p0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {p0}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>()V

    iput-object p0, v0, Lcom/graphhopper/reader/dem/SRTMProvider;->areas:Lcom/graphhopper/coll/GHIntObjectHashMap;

    .line 5
    invoke-direct {v0}, Lcom/graphhopper/reader/dem/SRTMProvider;->init()Lcom/graphhopper/reader/dem/SRTMProvider;

    return-void
.end method

.method private init()Lcom/graphhopper/reader/dem/SRTMProvider;
    .locals 10

    :try_start_0
    const-string v0, "Africa"

    const-string v1, "Australia"

    const-string v2, "Eurasia"

    const-string v3, "Islands"

    const-string v4, "North_America"

    const-string v5, "South_America"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_names.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/graphhopper/util/Helper;->readFile(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x53

    if-ne v7, v9, :cond_0

    neg-int v8, v8

    :cond_0
    const/4 v7, 0x7

    const/4 v9, 0x4

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x57

    if-ne v5, v6, :cond_1

    neg-int v7, v7

    :cond_1
    int-to-double v5, v8

    int-to-double v7, v7

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->calcIntKey(DD)I

    move-result v5

    iget-object v6, p0, Lcom/graphhopper/reader/dem/SRTMProvider;->areas:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v6, v5, v3}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do not overwrite existing! key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load area names from classpath"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    new-instance p0, Lcom/graphhopper/reader/dem/SRTMProvider;

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/SRTMProvider;-><init>()V

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/SRTMProvider;->getFileName(DD)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".hgt.zip"

    invoke-static {p0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName(DD)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->calcIntKey(DD)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/reader/dem/SRTMProvider;->areas:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v1, v0}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->down(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/dem/AbstractSRTMElevationProvider;->down(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_1

    const-string p1, "N"

    invoke-static {v0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "S"

    invoke-static {v0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 p2, 0xa

    const-string v0, "0"

    if-ge v1, p2, :cond_2

    invoke-static {p1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    cmpl-double p3, p3, v2

    if-ltz p3, :cond_3

    const-string p3, "E"

    invoke-static {p1, p3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p3, "W"

    invoke-static {p1, p3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-ge p0, p2, :cond_4

    invoke-static {p1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/16 p2, 0x64

    if-ge p0, p2, :cond_5

    invoke-static {p1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readFile(Ljava/io/File;)[B
    .locals 3

    const-string p0, "No entry found in zip file "

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p0

    const-wide/32 v1, 0x10000

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0, p1}, Lwa/h;->y(Ljava/io/FilterInputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "srtm"

    return-object p0
.end method
