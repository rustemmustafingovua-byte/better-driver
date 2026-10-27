.class public Lcom/graphhopper/routing/lm/PrepareLandmarks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lnc/b;


# instance fields
.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private final lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

.field private final lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

.field private prepared:Z

.field private totalPrepareTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/routing/lm/PrepareLandmarks;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/Directory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->prepared:Z

    iput-object p2, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p4, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

    new-instance v1, Lcom/graphhopper/routing/lm/LandmarkStorage;

    move-object v4, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/graphhopper/routing/lm/LandmarkStorage;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/storage/Directory;Lcom/graphhopper/routing/lm/LMConfig;I)V

    iput-object v1, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->close()V

    return-void
.end method

.method public doWork()V
    .locals 12

    iget-boolean v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->prepared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->prepared:Z

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/routing/lm/PrepareLandmarks;->LOGGER:Lnc/b;

    iget-object v3, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v3}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLandmarkCount()I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLmSelectionWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Start calculating "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " landmarks, weighting:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lnc/b;->k(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createLandmarks()V

    iget-object v4, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/LandmarkStorage;->flush()V

    iget-object v4, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getSubnetworksWithLandmarks()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v0

    float-to-int v0, v0

    iget-object v5, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v5}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLandmarksAsGeoJSON()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v6}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLandmarkCount()I

    move-result v6

    iget-object v7, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v7}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v7

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, " subnetworks, took:"

    const-string v10, "s => "

    const-string v11, "Calculated landmarks for "

    invoke-static {v11, v4, v9, v0, v10}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", stored weights:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", nodes:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->totalPrepareTime:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call doWork only once!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

    return-object p0
.end method

.method public getLandmarkStorage()Lcom/graphhopper/routing/lm/LandmarkStorage;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    return-object p0
.end method

.method public getTotalPrepareTime()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->totalPrepareTime:J

    return-wide v0
.end method

.method public isPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->prepared:Z

    return p0
.end method

.method public loadExisting()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->loadExisting()Z

    move-result p0

    return p0
.end method

.method public setAreaIndex(Lcom/graphhopper/routing/util/AreaIndex;)Lcom/graphhopper/routing/lm/PrepareLandmarks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/lm/SplitArea;",
            ">;)",
            "Lcom/graphhopper/routing/lm/PrepareLandmarks;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setAreaIndex(Lcom/graphhopper/routing/util/AreaIndex;)V

    return-object p0
.end method

.method public setLMSelectionWeighting(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setLMSelectionWeighting(Lcom/graphhopper/routing/weighting/Weighting;)V

    return-void
.end method

.method public setLandmarkSuggestions(Ljava/util/List;)Lcom/graphhopper/routing/lm/PrepareLandmarks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LandmarkSuggestion;",
            ">;)",
            "Lcom/graphhopper/routing/lm/PrepareLandmarks;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setLandmarkSuggestions(Ljava/util/List;)Lcom/graphhopper/routing/lm/LandmarkStorage;

    return-object p0
.end method

.method public setLogDetails(Z)Lcom/graphhopper/routing/lm/PrepareLandmarks;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setLogDetails(Z)V

    return-object p0
.end method

.method public setMaximumWeight(D)Lcom/graphhopper/routing/lm/PrepareLandmarks;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setMaximumWeight(D)Lcom/graphhopper/routing/lm/LandmarkStorage;

    return-object p0
.end method

.method public setMinimumNodes(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/PrepareLandmarks;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setMinimumNodes(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minimum node count must be at least 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
