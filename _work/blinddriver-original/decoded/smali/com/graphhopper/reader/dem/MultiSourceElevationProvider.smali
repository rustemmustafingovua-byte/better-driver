.class public Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;
.super Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
.source "SourceFile"


# instance fields
.field private final globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

.field private final srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    new-instance v0, Lcom/graphhopper/reader/dem/CGIARProvider;

    invoke-direct {v0}, Lcom/graphhopper/reader/dem/CGIARProvider;-><init>()V

    new-instance v1, Lcom/graphhopper/reader/dem/GMTEDProvider;

    invoke-direct {v1}, Lcom/graphhopper/reader/dem/GMTEDProvider;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;-><init>(Lcom/graphhopper/reader/dem/TileBasedElevationProvider;Lcom/graphhopper/reader/dem/TileBasedElevationProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/reader/dem/TileBasedElevationProvider;Lcom/graphhopper/reader/dem/TileBasedElevationProvider;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    .line 3
    iput-object p2, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/graphhopper/reader/dem/CGIARProvider;

    invoke-direct {v0, p1}, Lcom/graphhopper/reader/dem/CGIARProvider;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/graphhopper/reader/dem/GMTEDProvider;

    invoke-direct {v1, p1}, Lcom/graphhopper/reader/dem/GMTEDProvider;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;-><init>(Lcom/graphhopper/reader/dem/TileBasedElevationProvider;Lcom/graphhopper/reader/dem/TileBasedElevationProvider;)V

    return-void
.end method


# virtual methods
.method public canInterpolate()Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->canInterpolate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {p0}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->canInterpolate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getEle(DD)D
    .locals 2

    const-wide v0, 0x404dffdf3b645a1dL    # 59.999

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, -0x3fb4000000000000L    # -56.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/ElevationProvider;->getEle(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/dem/ElevationProvider;->getEle(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-interface {v0}, Lcom/graphhopper/reader/dem/ElevationProvider;->release()V

    iget-object p0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-interface {p0}, Lcom/graphhopper/reader/dem/ElevationProvider;->release()V

    return-void
.end method

.method public setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    .line 3
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    return-object p0
.end method

.method public bridge synthetic setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;

    move-result-object p0

    return-object p0
.end method

.method public setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;
    .locals 2

    .line 2
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    .line 5
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The base url must consist of two urls separated by a \';\'. The first for cgiar, the second for gmted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;

    move-result-object p0

    return-object p0
.end method

.method public setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    .line 3
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    return-object p0
.end method

.method public bridge synthetic setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;

    move-result-object p0

    return-object p0
.end method

.method public setInterpolate(Z)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->srtmProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setInterpolate(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    .line 3
    iget-object v0, p0, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->globalProvider:Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v0, p1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setInterpolate(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    return-object p0
.end method

.method public bridge synthetic setInterpolate(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;->setInterpolate(Z)Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "multi"

    return-object p0
.end method
