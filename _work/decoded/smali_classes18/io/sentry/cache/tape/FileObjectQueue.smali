.class final Lio/sentry/cache/tape/FileObjectQueue;
.super Lio/sentry/cache/tape/ObjectQueue;
.source "FileObjectQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;,
        Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/sentry/cache/tape/ObjectQueue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bytes:Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

.field final converter:Lio/sentry/cache/tape/ObjectQueue$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/cache/tape/ObjectQueue$Converter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final queueFile:Lio/sentry/cache/tape/QueueFile;


# direct methods
.method constructor <init>(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)V
    .locals 1
    .param p1, "queueFile"    # Lio/sentry/cache/tape/QueueFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/cache/tape/QueueFile;",
            "Lio/sentry/cache/tape/ObjectQueue$Converter<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    .local p2, "converter":Lio/sentry/cache/tape/ObjectQueue$Converter;, "Lio/sentry/cache/tape/ObjectQueue$Converter<TT;>;"
    invoke-direct {p0}, Lio/sentry/cache/tape/ObjectQueue;-><init>()V

    .line 32
    new-instance v0, Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

    invoke-direct {v0}, Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->bytes:Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

    .line 37
    iput-object p1, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    .line 38
    iput-object p2, p0, Lio/sentry/cache/tape/FileObjectQueue;->converter:Lio/sentry/cache/tape/ObjectQueue$Converter;

    .line 39
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->bytes:Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

    invoke-virtual {v0}, Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;->reset()V

    .line 59
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->converter:Lio/sentry/cache/tape/ObjectQueue$Converter;

    iget-object v1, p0, Lio/sentry/cache/tape/FileObjectQueue;->bytes:Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

    invoke-interface {v0, p1, v1}, Lio/sentry/cache/tape/ObjectQueue$Converter;->toStream(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 60
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    iget-object v1, p0, Lio/sentry/cache/tape/FileObjectQueue;->bytes:Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

    invoke-virtual {v1}, Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;->getArray()[B

    move-result-object v1

    iget-object v2, p0, Lio/sentry/cache/tape/FileObjectQueue;->bytes:Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;

    invoke-virtual {v2}, Lio/sentry/cache/tape/FileObjectQueue$DirectByteArrayOutputStream;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lio/sentry/cache/tape/QueueFile;->add([BII)V

    .line 61
    return-void
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->clear()V

    .line 88
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->close()V

    .line 93
    return-void
.end method

.method public file()Lio/sentry/cache/tape/QueueFile;
    .locals 1

    .line 43
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 53
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    new-instance v0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;

    iget-object v1, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v1}, Lio/sentry/cache/tape/QueueFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;-><init>(Lio/sentry/cache/tape/FileObjectQueue;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->peek()[B

    move-result-object v0

    .line 71
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 72
    :cond_0
    iget-object v1, p0, Lio/sentry/cache/tape/FileObjectQueue;->converter:Lio/sentry/cache/tape/ObjectQueue$Converter;

    invoke-interface {v1, v0}, Lio/sentry/cache/tape/ObjectQueue$Converter;->from([B)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->remove()V

    .line 78
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0, p1}, Lio/sentry/cache/tape/QueueFile;->remove(I)V

    .line 83
    return-void
.end method

.method public size()I
    .locals 1

    .line 48
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->size()I

    move-result v0

    return v0
.end method

.method public sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->sync()V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    .local p0, "this":Lio/sentry/cache/tape/FileObjectQueue;, "Lio/sentry/cache/tape/FileObjectQueue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileObjectQueue{queueFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/tape/FileObjectQueue;->queueFile:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
