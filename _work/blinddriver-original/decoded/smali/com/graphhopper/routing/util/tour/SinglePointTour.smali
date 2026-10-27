.class public Lcom/graphhopper/routing/util/tour/SinglePointTour;
.super Lcom/graphhopper/routing/util/tour/TourStrategy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Random;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/tour/TourStrategy;-><init>(Ljava/util/Random;D)V

    return-void
.end method


# virtual methods
.method public getDistanceForIteration(I)D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->overallDistance:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/routing/util/tour/TourStrategy;->slightlyModifyDistance(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getHeadingForIteration(I)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->random:Ljava/util/Random;

    const/16 p1, 0x168

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public getNumberOfGeneratedPoints()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
