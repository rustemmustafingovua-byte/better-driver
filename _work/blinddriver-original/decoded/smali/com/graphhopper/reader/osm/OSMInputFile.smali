.class public Lcom/graphhopper/reader/osm/OSMInputFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/pbf/Sink;
.implements Lcom/graphhopper/reader/osm/OSMInput;


# static fields
.field private static final MAX_BATCH_SIZE:I = 0x3e8


# instance fields
.field private binary:Z

.field private final bis:Ljava/io/InputStream;

.field private eof:Z

.field private fileheader:Lcom/graphhopper/reader/osm/OSMFileHeader;

.field private hasIncomingData:Z

.field private final itemBatch:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;"
        }
    .end annotation
.end field

.field private final itemQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;"
        }
    .end annotation
.end field

.field private pbfReader:Lcom/graphhopper/reader/osm/pbf/PbfReader;

.field private pbfReaderThread:Ljava/lang/Thread;

.field private skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

.field private workerThreads:I

.field private xmlParser:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->binary:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->workerThreads:I

    invoke-static {}, Lcom/graphhopper/reader/osm/SkipOptions;->none()Lcom/graphhopper/reader/osm/SkipOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMInputFile;->decode(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->bis:Ljava/io/InputStream;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const v0, 0xc350

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemBatch:Ljava/util/Queue;

    return-void
.end method

.method private decode(Ljava/io/File;)Ljava/io/InputStream;
    .locals 10

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const v3, 0xc350

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    const/4 v4, 0x6

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const-string v6, "Input file is not of valid type "

    if-ltz v5, :cond_8

    const/4 v5, 0x0

    aget-byte v5, v4, v5

    const/16 v7, 0x1f

    const/4 v8, 0x1

    if-ne v5, v7, :cond_0

    aget-byte v7, v4, v8

    const/16 v9, -0x75

    if-ne v7, v9, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p0

    :cond_0
    if-nez v5, :cond_2

    aget-byte v3, v4, v8

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-byte v3, v4, v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    aget-byte v3, v4, v3

    if-ne v3, v2, :cond_2

    const/4 v2, 0x5

    aget-byte v2, v4, v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    aget-byte v2, v4, v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    iput-boolean v8, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->binary:Z

    return-object v1

    :cond_2
    const/16 p0, 0x50

    if-ne v5, p0, :cond_3

    aget-byte p0, v4, v8

    const/16 v2, 0x4b

    if-ne p0, v2, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    return-object p0

    :cond_3
    const-string p0, ".osm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, ".bz2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, ".bzip2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    const-string p0, "org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream"

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    const-class p1, Ljava/io/InputStream;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p1, v0}, [Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot instantiate org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    return-object v1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getNextPBF()Lcom/graphhopper/reader/ReaderElement;
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemBatch:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->hasIncomingData:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemBatch:Ljava/util/Queue;

    const/16 v3, 0x3e8

    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/reader/ReaderElement;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemBatch:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/reader/ReaderElement;

    return-object p0
.end method

.method private getNextXML()Lcom/graphhopper/reader/ReaderElement;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->fileheader:Lcom/graphhopper/reader/osm/OSMFileHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->fileheader:Lcom/graphhopper/reader/osm/OSMFileHeader;

    return-object v1

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    const-string v1, "id"

    invoke-interface {v0, v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_3

    const/16 v1, 0x72

    if-eq v3, v1, :cond_2

    const/16 v1, 0x77

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->createWay(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderWay;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->createRelation(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderRelation;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v3, "node"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->createNode(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderNode;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->close()V

    return-object v2
.end method

.method private openPBFReader(Ljava/io/InputStream;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->hasIncomingData:Z

    iget v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->workerThreads:I

    if-gtz v1, :cond_0

    iput v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->workerThreads:I

    :cond_0
    new-instance v0, Lcom/graphhopper/reader/osm/pbf/PbfReader;

    iget v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->workerThreads:I

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/graphhopper/reader/osm/pbf/PbfReader;-><init>(Ljava/io/InputStream;Lcom/graphhopper/reader/osm/pbf/Sink;ILcom/graphhopper/reader/osm/SkipOptions;)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReader:Lcom/graphhopper/reader/osm/pbf/PbfReader;

    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReader:Lcom/graphhopper/reader/osm/pbf/PbfReader;

    const-string v1, "PBF Reader"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReaderThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private openXMLStream(Ljava/io/InputStream;)V
    .locals 2

    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, p1, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "osm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    const-string v0, "osmosis_replication_timestamp"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "timestamp"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Lcom/graphhopper/reader/osm/OSMFileHeader;

    invoke-direct {v1}, Lcom/graphhopper/reader/osm/OSMFileHeader;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->fileheader:Lcom/graphhopper/reader/osm/OSMFileHeader;

    invoke-virtual {v1, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->eof:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File is not a valid OSM stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->binary:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReader:Lcom/graphhopper/reader/osm/pbf/PbfReader;

    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/pbf/PbfReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->xmlParser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->eof:Z

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->bis:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReaderThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->eof:Z

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->bis:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->pbfReaderThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v1
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->hasIncomingData:Z

    return-void
.end method

.method public getNext()Lcom/graphhopper/reader/ReaderElement;
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->eof:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->binary:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/OSMInputFile;->getNextPBF()Lcom/graphhopper/reader/ReaderElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/reader/osm/OSMInputFile;->getNextXML()Lcom/graphhopper/reader/ReaderElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->eof:Z

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EOF reached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnprocessedElements()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemBatch:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isEOF()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->eof:Z

    return p0
.end method

.method public open()Lcom/graphhopper/reader/osm/OSMInputFile;
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->binary:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->bis:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMInputFile;->openPBFReader(Ljava/io/InputStream;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->bis:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMInputFile;->openXMLStream(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public process(Lcom/graphhopper/reader/ReaderElement;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->itemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setSkipOptions(Lcom/graphhopper/reader/osm/SkipOptions;)Lcom/graphhopper/reader/osm/OSMInputFile;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    return-object p0
.end method

.method public setWorkerThreads(I)Lcom/graphhopper/reader/osm/OSMInputFile;
    .locals 0

    iput p1, p0, Lcom/graphhopper/reader/osm/OSMInputFile;->workerThreads:I

    return-object p0
.end method
