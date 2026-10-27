.class public final Lio/sentry/cache/tape/QueueFile$Builder;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field size:I

.field synchronousWrites:Z

.field zero:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/cache/tape/QueueFile$Builder;->zero:Z

    .line 806
    const/4 v1, -0x1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->size:I

    .line 807
    iput-boolean v0, p0, Lio/sentry/cache/tape/QueueFile$Builder;->synchronousWrites:Z

    .line 811
    if-eqz p1, :cond_0

    .line 814
    iput-object p1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->file:Ljava/io/File;

    .line 815
    return-void

    .line 812
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lio/sentry/cache/tape/QueueFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$Builder;->file:Ljava/io/File;

    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->synchronousWrites:Z

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->initializeFromFile(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 844
    .local v4, "raf":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 846
    .local v1, "qf":Lio/sentry/cache/tape/QueueFile;
    :try_start_0
    new-instance v2, Lio/sentry/cache/tape/QueueFile;

    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile$Builder;->file:Ljava/io/File;

    iget-boolean v5, p0, Lio/sentry/cache/tape/QueueFile$Builder;->zero:Z

    iget v6, p0, Lio/sentry/cache/tape/QueueFile$Builder;->size:I

    iget-boolean v7, p0, Lio/sentry/cache/tape/QueueFile$Builder;->synchronousWrites:Z

    invoke-direct/range {v2 .. v7}, Lio/sentry/cache/tape/QueueFile;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    .end local v1    # "qf":Lio/sentry/cache/tape/QueueFile;
    .local v2, "qf":Lio/sentry/cache/tape/QueueFile;
    nop

    .line 849
    nop

    .line 847
    return-object v2

    .line 849
    .end local v2    # "qf":Lio/sentry/cache/tape/QueueFile;
    .restart local v1    # "qf":Lio/sentry/cache/tape/QueueFile;
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 850
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 852
    :cond_0
    throw v0
.end method

.method public size(I)Lio/sentry/cache/tape/QueueFile$Builder;
    .locals 0
    .param p1, "size"    # I

    .line 825
    iput p1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->size:I

    .line 826
    return-object p0
.end method

.method public synchronousWrites(Z)Lio/sentry/cache/tape/QueueFile$Builder;
    .locals 0
    .param p1, "synchronousWrites"    # Z

    .line 834
    iput-boolean p1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->synchronousWrites:Z

    .line 835
    return-object p0
.end method

.method public zero(Z)Lio/sentry/cache/tape/QueueFile$Builder;
    .locals 0
    .param p1, "zero"    # Z

    .line 819
    iput-boolean p1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->zero:Z

    .line 820
    return-object p0
.end method
