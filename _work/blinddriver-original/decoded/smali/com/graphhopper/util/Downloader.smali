.class public Lcom/graphhopper/util/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private timeout:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://graphhopper.com"

    iput-object v0, p0, Lcom/graphhopper/util/Downloader;->referrer:Ljava/lang/String;

    const-string v0, "gzip, deflate"

    iput-object v0, p0, Lcom/graphhopper/util/Downloader;->acceptEncoding:Ljava/lang/String;

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/graphhopper/util/Downloader;->timeout:I

    iput-object p1, p0, Lcom/graphhopper/util/Downloader;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/util/Downloader;->lambda$main$0(J)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/LongConsumer;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/util/Downloader;->lambda$downloadAndUnzip$1(Ljava/util/function/LongConsumer;IJ)V

    return-void
.end method

.method private static synthetic lambda$downloadAndUnzip$1(Ljava/util/function/LongConsumer;IJ)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    int-to-long v0, p1

    div-long/2addr p2, v0

    long-to-int p1, p2

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method private static synthetic lambda$main$0(J)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance p0, Lcom/graphhopper/util/Downloader;

    const-string v0, "GraphHopper Downloader"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/Downloader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/graphhopper/util/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "http://graphhopper.com/public/maps/0.1/europe_germany_berlin.ghz"

    const-string v2, "somefolder"

    invoke-virtual {p0, v1, v2, v0}, Lcom/graphhopper/util/Downloader;->downloadAndUnzip(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/LongConsumer;)V

    return-void
.end method


# virtual methods
.method public createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v0, "Referrer"

    iget-object v1, p0, Lcom/graphhopper/util/Downloader;->referrer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/graphhopper/util/Downloader;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    iget-object v1, p0, Lcom/graphhopper/util/Downloader;->acceptEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/graphhopper/util/Downloader;->timeout:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget p0, p0, Lcom/graphhopper/util/Downloader;->timeout:I

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-object p1
.end method

.method public downloadAndUnzip(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/LongConsumer;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/Downloader;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/graphhopper/util/Downloader;->fetch(Ljava/net/HttpURLConnection;Z)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Lcom/graphhopper/util/Unzipper;

    invoke-direct {p1}, Lcom/graphhopper/util/Unzipper;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/graphhopper/util/c;

    invoke-direct {p2, p3, v0}, Lcom/graphhopper/util/c;-><init>(Ljava/util/function/LongConsumer;I)V

    invoke-virtual {p1, p0, v1, p2}, Lcom/graphhopper/util/Unzipper;->unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public downloadAsString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/Downloader;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/Downloader;->fetch(Ljava/net/HttpURLConnection;Z)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/Downloader;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/Downloader;->fetch(Ljava/net/HttpURLConnection;Z)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2000

    invoke-direct {p1, v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    invoke-static {v0, p1}, Lwa/h;->y(Ljava/io/FilterInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    throw p2
.end method

.method public fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 17
    invoke-virtual {p0, p1}, Lcom/graphhopper/util/Downloader;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/util/Downloader;->fetch(Ljava/net/HttpURLConnection;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public fetch(Ljava/net/HttpURLConnection;Z)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p2, 0x190

    if-lt p0, p2, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2000

    if-eqz p1, :cond_1

    .line 6
    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    const-string v0, "deflate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, p0, v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object p0

    .line 10
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Stream is null. Message:"

    .line 11
    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/graphhopper/util/Downloader;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/Downloader;->referrer:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeout(I)Lcom/graphhopper/util/Downloader;
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/Downloader;->timeout:I

    return-object p0
.end method
