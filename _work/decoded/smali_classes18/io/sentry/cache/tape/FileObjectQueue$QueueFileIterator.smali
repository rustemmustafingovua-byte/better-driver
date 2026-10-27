.class final Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;
.super Ljava/lang/Object;
.source "FileObjectQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/FileObjectQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/cache/tape/FileObjectQueue;


# direct methods
.method constructor <init>(Lio/sentry/cache/tape/FileObjectQueue;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "[B>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>.QueueFileIterator;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    iput-object p1, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->this$0:Lio/sentry/cache/tape/FileObjectQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    .line 119
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 123
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>.QueueFileIterator;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>.QueueFileIterator;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 131
    .local v0, "data":[B
    :try_start_0
    iget-object v1, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->this$0:Lio/sentry/cache/tape/FileObjectQueue;

    iget-object v1, v1, Lio/sentry/cache/tape/FileObjectQueue;->converter:Lio/sentry/cache/tape/ObjectQueue$Converter;

    invoke-interface {v1, v0}, Lio/sentry/cache/tape/ObjectQueue$Converter;->from([B)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Error;

    throw v2
.end method

.method public remove()V
    .locals 1

    .line 139
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>.QueueFileIterator;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 140
    return-void
.end method
