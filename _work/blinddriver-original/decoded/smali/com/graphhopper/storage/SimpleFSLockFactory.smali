.class public Lcom/graphhopper/storage/SimpleFSLockFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/LockFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/SimpleFSLockFactory$SimpleLock;
    }
.end annotation


# instance fields
.field private lockDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/storage/SimpleFSLockFactory;->lockDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public declared-synchronized create(Ljava/lang/String;Z)Lcom/graphhopper/storage/GHLock;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/graphhopper/storage/SimpleFSLockFactory;->lockDir:Ljava/io/File;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/graphhopper/storage/SimpleFSLockFactory$SimpleLock;

    invoke-direct {v0, p2, p1}, Lcom/graphhopper/storage/SimpleFSLockFactory$SimpleLock;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Set lockDir before creating locks"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized forceRemove(Ljava/lang/String;Z)V
    .locals 2

    const-string p2, "Cannot delete "

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/SimpleFSLockFactory;->lockDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/graphhopper/storage/SimpleFSLockFactory;->lockDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLockDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/storage/SimpleFSLockFactory;->lockDir:Ljava/io/File;

    return-void
.end method
