.class public Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fromOffset:D

.field toOffset:D

.field private final uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

.field private final uniDirApproximatorReverse:Lcom/graphhopper/routing/weighting/WeightApproximator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/WeightApproximator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->reverse()Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorReverse:Lcom/graphhopper/routing/weighting/WeightApproximator;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WeightApproximator cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public approximate(IZ)D
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorReverse:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v2, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    if-eqz p2, :cond_0

    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->fromOffset:D

    sub-double/2addr p0, v0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->toOffset:D

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    return-object p0
.end method

.method public getSlack()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/WeightApproximator;->getSlack()D

    move-result-wide v0

    return-wide v0
.end method

.method public setFromTo(II)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorReverse:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->setTo(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v0, p2}, Lcom/graphhopper/routing/weighting/WeightApproximator;->setTo(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->fromOffset:D

    iget-object p1, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorReverse:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p1, p2}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide p1

    mul-double/2addr p1, v2

    iput-wide p1, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->toOffset:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->uniDirApproximatorForward:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
