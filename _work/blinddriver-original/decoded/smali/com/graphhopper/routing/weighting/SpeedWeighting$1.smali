.class Lcom/graphhopper/routing/weighting/SpeedWeighting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/TurnCostProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/weighting/SpeedWeighting;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/storage/TurnCostStorage;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/weighting/SpeedWeighting;

.field final synthetic val$turnCostEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field final synthetic val$turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

.field final synthetic val$uTurnCosts:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/SpeedWeighting;Lcom/graphhopper/storage/TurnCostStorage;Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->this$0:Lcom/graphhopper/routing/weighting/SpeedWeighting;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    iput-object p3, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$turnCostEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-wide p4, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$uTurnCosts:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcTurnMillis(III)J
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->calcTurnWeight(III)D

    move-result-wide p0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 2

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$turnCostEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/graphhopper/storage/TurnCostStorage;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;III)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$uTurnCosts:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;->val$turnCostEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/graphhopper/storage/TurnCostStorage;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;III)D

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method
