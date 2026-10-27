.class public abstract Lcom/graphhopper/routing/util/tour/TourStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final overallDistance:D

.field protected final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->random:Ljava/util/Random;

    iput-wide p2, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->overallDistance:D

    return-void
.end method


# virtual methods
.method public abstract getDistanceForIteration(I)D
.end method

.method public abstract getHeadingForIteration(I)D
.end method

.method public abstract getNumberOfGeneratedPoints()I
.end method

.method public slightlyModifyDistance(D)D
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-object p0, p0, Lcom/graphhopper/routing/util/tour/TourStrategy;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    if-eqz p0, :cond_0

    neg-double v0, v0

    :cond_0
    add-double/2addr p1, v0

    return-wide p1
.end method
