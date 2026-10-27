.class Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:J

.field private mean:D

.field private varianceHelper:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addObservation(J)V
    .locals 6

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->count:J

    long-to-double p1, p1

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->mean:D

    sub-double v4, p1, v2

    long-to-double v0, v0

    div-double v0, v4, v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->mean:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->varianceHelper:D

    mul-double/2addr v4, p1

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->varianceHelper:D

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->count:J

    return-wide v0
.end method

.method public getMean()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->mean:D

    return-wide v0
.end method

.method public getVariance()D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->varianceHelper:D

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->count:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->count:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->mean:D

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/OnFlyStatisticsCalculator;->varianceHelper:D

    return-void
.end method
