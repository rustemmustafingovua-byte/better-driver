.class public Lcom/graphhopper/reader/osm/pbf/PbfDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final blobResults:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;",
            ">;"
        }
    .end annotation
.end field

.field private final dataWaitCondition:Ljava/util/concurrent/locks/Condition;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final maxPendingBlobs:I

.field private final sink:Lcom/graphhopper/reader/osm/pbf/Sink;

.field private final skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

.field private final streamSplitter:Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;Ljava/util/concurrent/ExecutorService;ILcom/graphhopper/reader/osm/pbf/Sink;Lcom/graphhopper/reader/osm/SkipOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->streamSplitter:Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput p3, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->maxPendingBlobs:I

    iput-object p4, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->sink:Lcom/graphhopper/reader/osm/pbf/Sink;

    iput-object p5, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->dataWaitCondition:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->blobResults:Ljava/util/Queue;

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->signalUpdate()V

    return-void
.end method

.method private processBlobs()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->streamSplitter:Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->streamSplitter:Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->next()Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;

    invoke-direct {v1}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;-><init>()V

    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->blobResults:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;

    invoke-direct {v2, p0, v1}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;-><init>(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;)V

    new-instance v1, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;->getData()[B

    move-result-object v0

    iget-object v4, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;-><init>(Ljava/lang/String;[BLcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;Lcom/graphhopper/reader/osm/SkipOptions;)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->maxPendingBlobs:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->sendResultsToSink(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->sendResultsToSink(I)V

    return-void
.end method

.method private sendResultsToSink(I)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->blobResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->blobResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;

    :goto_1
    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->waitForUpdate()V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :try_start_0
    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/reader/ReaderElement;

    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->sink:Lcom/graphhopper/reader/osm/pbf/Sink;

    invoke-interface {v2, v1}, Lcom/graphhopper/reader/osm/pbf/Sink;->process(Lcom/graphhopper/reader/ReaderElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0

    :goto_3
    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "A PBF decoding worker thread failed, aborting."

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    return-void
.end method

.method private signalUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->dataWaitCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method

.method private waitForUpdate()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->dataWaitCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Thread was interrupted."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->processBlobs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
