.class public Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/WeightApproximator;


# instance fields
.field private distanceCalc:Lcom/graphhopper/util/DistanceCalc;

.field private epsilon:D

.field private final minWeightPerDistance:D

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private toLat:D

.field private toLon:D

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    iput-object v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->distanceCalc:Lcom/graphhopper/util/DistanceCalc;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->epsilon:D

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcMinWeightPerDistance()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->minWeightPerDistance:D

    return-void
.end method


# virtual methods
.method public approximate(I)D
    .locals 10

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v6

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v8

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->distanceCalc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v2, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->toLat:D

    iget-wide v4, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->toLon:D

    invoke-interface/range {v1 .. v9}, Lcom/graphhopper/util/DistanceCalc;->calcDist(DDDD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->minWeightPerDistance:D

    mul-double/2addr v2, v0

    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->epsilon:D

    mul-double/2addr v2, p0

    return-wide v2
.end method

.method public getSlack()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public reverse()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->distanceCalc:Lcom/graphhopper/util/DistanceCalc;

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->epsilon:D

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setEpsilon(D)Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p0

    return-object p0
.end method

.method public setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->distanceCalc:Lcom/graphhopper/util/DistanceCalc;

    return-object p0
.end method

.method public setEpsilon(D)Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->epsilon:D

    return-object p0
.end method

.method public setTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->toLat:D

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->toLon:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "beeline"

    return-object p0
.end method
