.class public final synthetic Lcom/graphhopper/routing/weighting/custom/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/weighting/custom/a;->l:I

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/a;->m:Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcMax()D
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/weighting/custom/a;->l:I

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/a;->m:Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->calcMaxPriority()D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->calcMaxSpeed()D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public get(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/a;->m:Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;

    invoke-virtual/range {p0 .. p5}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->getTurnPenalty(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D

    move-result-wide p0

    return-wide p0
.end method

.method public get(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 1

    .line 2
    iget v0, p0, Lcom/graphhopper/routing/weighting/custom/a;->l:I

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/a;->m:Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->getPriority(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->getSpeed(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
