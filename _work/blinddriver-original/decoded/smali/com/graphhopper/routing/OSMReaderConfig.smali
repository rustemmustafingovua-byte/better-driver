.class public Lcom/graphhopper/routing/OSMReaderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private defaultElevation:D

.field private elevationMaxWayPointDistance:D

.field private ignoredHighways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private longEdgeSamplingDistance:D

.field private maxWayPointDistance:D

.field private parseWayNames:Z

.field private preferredLanguage:Ljava/lang/String;

.field private ramerElevationSmoothingMax:I

.field private smoothElevation:Ljava/lang/String;

.field private smoothElevationAverageWindowSize:D

.field private workerThreads:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->ignoredHighways:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->parseWayNames:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->preferredLanguage:Ljava/lang/String;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    iput-wide v1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->maxWayPointDistance:D

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->elevationMaxWayPointDistance:D

    iput-object v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->smoothElevation:Ljava/lang/String;

    const-wide v3, 0x4062c00000000000L    # 150.0

    iput-wide v3, p0, Lcom/graphhopper/routing/OSMReaderConfig;->smoothElevationAverageWindowSize:D

    const/4 v0, 0x5

    iput v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->ramerElevationSmoothingMax:I

    iput-wide v1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->longEdgeSamplingDistance:D

    const/4 v0, 0x2

    iput v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->workerThreads:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->defaultElevation:D

    return-void
.end method


# virtual methods
.method public getDefaultElevation()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->defaultElevation:D

    return-wide v0
.end method

.method public getElevationMaxWayPointDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->elevationMaxWayPointDistance:D

    return-wide v0
.end method

.method public getElevationSmoothing()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->smoothElevation:Ljava/lang/String;

    return-object p0
.end method

.method public getElevationSmoothingRamerMax()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->ramerElevationSmoothingMax:I

    return p0
.end method

.method public getIgnoredHighways()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->ignoredHighways:Ljava/util/List;

    return-object p0
.end method

.method public getLongEdgeSamplingDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->longEdgeSamplingDistance:D

    return-wide v0
.end method

.method public getMaxWayPointDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->maxWayPointDistance:D

    return-wide v0
.end method

.method public getPreferredLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->preferredLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getSmoothElevationAverageWindowSize()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->smoothElevationAverageWindowSize:D

    return-wide v0
.end method

.method public getWorkerThreads()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->workerThreads:I

    return p0
.end method

.method public isParseWayNames()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/OSMReaderConfig;->parseWayNames:Z

    return p0
.end method

.method public setDefaultElevation(D)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->defaultElevation:D

    return-object p0
.end method

.method public setElevationMaxWayPointDistance(D)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->elevationMaxWayPointDistance:D

    return-object p0
.end method

.method public setElevationSmoothing(Ljava/lang/String;)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->smoothElevation:Ljava/lang/String;

    return-object p0
.end method

.method public setElevationSmoothingRamerMax(I)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->ramerElevationSmoothingMax:I

    return-object p0
.end method

.method public setIgnoredHighways(Ljava/util/List;)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/routing/OSMReaderConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->ignoredHighways:Ljava/util/List;

    return-object p0
.end method

.method public setLongEdgeSamplingDistance(D)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->longEdgeSamplingDistance:D

    return-object p0
.end method

.method public setMaxWayPointDistance(D)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->maxWayPointDistance:D

    return-object p0
.end method

.method public setParseWayNames(Z)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->parseWayNames:Z

    return-object p0
.end method

.method public setPreferredLanguage(Ljava/lang/String;)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->preferredLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setSmoothElevationAverageWindowSize(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->smoothElevationAverageWindowSize:D

    return-void
.end method

.method public setWorkerThreads(I)Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/OSMReaderConfig;->workerThreads:I

    return-object p0
.end method
