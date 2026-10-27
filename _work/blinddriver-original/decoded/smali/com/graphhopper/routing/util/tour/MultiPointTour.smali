.class public Lcom/graphhopper/routing/util/tour/MultiPointTour;
.super Lcom/graphhopper/routing/util/tour/TourStrategy;
.source "SourceFile"


# instance fields
.field private final allPoints:I

.field private final initialHeading:D


# direct methods
.method public constructor <init>(Ljava/util/Random;DI)V
    .locals 7

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/util/tour/MultiPointTour;-><init>(Ljava/util/Random;DID)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;DID)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/tour/TourStrategy;-><init>(Ljava/util/Random;D)V

    .line 3
    iput p4, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->allPoints:I

    .line 4
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x168

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->initialHeading:D

    return-void

    .line 6
    :cond_0
    iput-wide p5, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->initialHeading:D

    return-void
.end method


# virtual methods
.method public getDistanceForIteration(I)D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->overallDistance:D

    iget p1, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->allPoints:I

    add-int/lit8 p1, p1, 0x1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/routing/util/tour/TourStrategy;->slightlyModifyDistance(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getHeadingForIteration(I)D
    .locals 6

    if-nez p1, :cond_0

    iget-wide p0, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->initialHeading:D

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->initialHeading:D

    const-wide v2, 0x4076800000000000L    # 360.0

    int-to-double v4, p1

    mul-double/2addr v4, v2

    iget p0, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->allPoints:I

    int-to-double p0, p0

    div-double/2addr v4, p0

    add-double/2addr v4, v0

    return-wide v4
.end method

.method public getNumberOfGeneratedPoints()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/util/tour/MultiPointTour;->allPoints:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
