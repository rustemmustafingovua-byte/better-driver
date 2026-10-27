.class public abstract Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/dem/ElevationProvider;


# instance fields
.field autoRemoveTemporary:Z

.field baseUrl:Ljava/lang/String;

.field final cacheDir:Ljava/io/File;

.field daType:Lcom/graphhopper/storage/DAType;

.field dir:Lcom/graphhopper/storage/Directory;

.field downloader:Lcom/graphhopper/util/Downloader;

.field interpolate:Z

.field final logger:Lnc/b;

.field sleep:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->logger:Lnc/b;

    sget-object v0, Lcom/graphhopper/storage/DAType;->MMAP:Lcom/graphhopper/storage/DAType;

    iput-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->daType:Lcom/graphhopper/storage/DAType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->interpolate:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->autoRemoveTemporary:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->sleep:J

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cache path has to be a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public canInterpolate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->interpolate:Z

    return p0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public getDirectory()Lcom/graphhopper/storage/Directory;
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->dir:Lcom/graphhopper/storage/Directory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->logger:Lnc/b;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->daType:Lcom/graphhopper/storage/DAType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->interpolate:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Elevation Provider, from: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", as: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using interpolate: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    new-instance v0, Lcom/graphhopper/storage/GHDirectory;

    iget-object v1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->daType:Lcom/graphhopper/storage/DAType;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/storage/GHDirectory;-><init>(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V

    iput-object v0, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->dir:Lcom/graphhopper/storage/Directory;

    return-object v0
.end method

.method public setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->autoRemoveTemporary:Z

    return-object p0
.end method

.method public setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->baseUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseUrl cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->daType:Lcom/graphhopper/storage/DAType;

    return-object p0
.end method

.method public setDownloader(Lcom/graphhopper/util/Downloader;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->downloader:Lcom/graphhopper/util/Downloader;

    return-object p0
.end method

.method public setInterpolate(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->interpolate:Z

    return-object p0
.end method

.method public setSleep(J)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->sleep:J

    return-void
.end method
