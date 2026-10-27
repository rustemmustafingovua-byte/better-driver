.class public Lcom/graphhopper/reader/osm/pbf/PbfReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private final sink:Lcom/graphhopper/reader/osm/pbf/Sink;

.field private final skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

.field private throwable:Ljava/lang/Throwable;

.field private final workers:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/graphhopper/reader/osm/pbf/Sink;ILcom/graphhopper/reader/osm/SkipOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->inputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->sink:Lcom/graphhopper/reader/osm/pbf/Sink;

    iput p3, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->workers:I

    iput-object p4, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to read PBF file."

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public run()V
    .locals 7

    iget v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->workers:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v2, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;-><init>(Ljava/io/DataInputStream;)V

    :try_start_0
    new-instance v1, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    iget v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->workers:I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->sink:Lcom/graphhopper/reader/osm/pbf/Sink;

    iget-object v6, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-direct/range {v1 .. v6}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;-><init>(Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;Ljava/util/concurrent/ExecutorService;ILcom/graphhopper/reader/osm/pbf/Sink;Lcom/graphhopper/reader/osm/SkipOptions;)V

    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->sink:Lcom/graphhopper/reader/osm/pbf/Sink;

    invoke-interface {p0}, Lcom/graphhopper/reader/osm/pbf/Sink;->complete()V

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-virtual {v2}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    iput-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->throwable:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfReader;->sink:Lcom/graphhopper/reader/osm/pbf/Sink;

    invoke-interface {p0}, Lcom/graphhopper/reader/osm/pbf/Sink;->complete()V

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-virtual {v2}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->release()V

    throw v0
.end method
