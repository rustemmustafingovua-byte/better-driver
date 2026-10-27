.class public Lcom/graphhopper/util/Unzipper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVerifiedFile(Ljava/io/File;Ljava/util/zip/ZipEntry;)Ljava/io/File;
    .locals 3

    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Zip Entry is outside of the target dir: "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/util/function/LongConsumer;)V
    .locals 11

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    const/16 v1, 0x2000

    .line 11
    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/util/Unzipper;->getVerifiedFile(Ljava/io/File;Ljava/util/zip/ZipEntry;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 14
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    goto :goto_1

    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 16
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/util/Unzipper;->getVerifiedFile(Ljava/io/File;Ljava/util/zip/ZipEntry;)Ljava/io/File;

    move-result-object p1

    .line 17
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_3
    :goto_2
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_4

    const/4 v9, 0x0

    .line 19
    invoke-virtual {v8, v1, v9, p1}, Ljava/io/FileOutputStream;->write([BII)V

    long-to-double v4, v4

    int-to-double v9, p1

    mul-double/2addr v9, v6

    add-double/2addr v9, v4

    double-to-long v4, v9

    if-eqz p3, :cond_3

    .line 20
    invoke-interface {p3, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 21
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 22
    :goto_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_0

    .line 23
    :goto_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 24
    throw p0

    .line 25
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 27
    throw p0
.end method

.method public unzip(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/graphhopper/util/Helper;->pruneFileEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/graphhopper/util/Unzipper;->unzip(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/graphhopper/util/Unzipper;->unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/util/function/LongConsumer;)V

    if-eqz p3, :cond_1

    .line 6
    invoke-static {v0}, Lcom/graphhopper/util/Helper;->removeDir(Ljava/io/File;)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
