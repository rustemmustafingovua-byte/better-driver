.class Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->processBlobs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

.field final synthetic val$blobResult:Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->val$blobResult:Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->val$blobResult:Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->storeSuccessResult(Ljava/util/List;)V

    iget-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->b(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->val$blobResult:Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->storeFailureResult(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->b(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfDecoder$1;->this$0:Lcom/graphhopper/reader/osm/pbf/PbfDecoder;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/pbf/PbfDecoder;->a(Lcom/graphhopper/reader/osm/pbf/PbfDecoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
