.class Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/GHLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/NativeFSLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeLock"
.end annotation


# instance fields
.field private failedReason:Ljava/lang/Exception;

.field private final lockDir:Ljava/io/File;

.field private final lockFile:Ljava/io/File;

.field private final name:Ljava/lang/String;

.field private tmpChannel:Ljava/nio/channels/FileChannel;

.field private tmpLock:Ljava/nio/channels/FileLock;

.field private tmpRaFile:Ljava/io/RandomAccessFile;

.field private final writeLock:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockFile:Ljava/io/File;

    iput-boolean p3, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->writeLock:Z

    return-void
.end method

.method private declared-synchronized lockExists()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getObtainFailedReason()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->failedReason:Ljava/lang/Exception;

    return-object p0
.end method

.method public declared-synchronized isLocked()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockExists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    xor-int/2addr v0, v2

    monitor-exit p0

    return v0

    :catch_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockExists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->failedReason:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_0
    :try_start_8
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_1
    :try_start_a
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_3
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_d
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_2
    :try_start_e
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_4
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_3
    :try_start_10
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :catchall_5
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_15
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :goto_4
    :try_start_16
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catchall_6
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_17
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :goto_5
    :try_start_18
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :catchall_7
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_1b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :goto_6
    :try_start_1c
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_0
    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized tryLock()Z
    .locals 11

    const-string v0, "lockDir has to be a directory: "

    const-string v1, "Directory "

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockExists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockDir:Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockFile:Ljava/io/File;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist and cannot be created to place lock file there: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->failedReason:Ljava/lang/Exception;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockFile:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v0, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-boolean v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->writeLock:Z

    xor-int/lit8 v10, v0, 0x1

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_3

    :try_start_5
    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    :goto_1
    invoke-static {v0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->failedReason:Ljava/lang/Exception;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :cond_3
    :goto_2
    :try_start_8
    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    :cond_4
    invoke-direct {p0}, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockExists()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    :try_start_9
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpLock:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    :cond_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    :try_start_a
    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpChannel:Ljava/nio/channels/FileChannel;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->close(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->tmpRaFile:Ljava/io/RandomAccessFile;

    :cond_6
    throw v0

    :catch_1
    move-exception v0

    iput-object v0, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->failedReason:Ljava/lang/Exception;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return v3

    :cond_7
    :try_start_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/graphhopper/storage/NativeFSLockFactory$NativeLock;->lockDir:Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_5
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method
