.class public Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/TurnCostProvider;


# instance fields
.field private final edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private final turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

.field private final turnPenaltyMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;

.field private final turnRestrictionEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final uTurnCosts:D

.field private final uTurnCostsInt:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/util/TurnCostsConfig;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lcom/graphhopper/util/TurnCostsConfig;->getUTurnCosts()I

    move-result p3

    iput p3, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->uTurnCostsInt:I

    if-gez p3, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "u-turn costs must be positive, or equal to -1 (=infinite costs)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1

    :cond_2
    int-to-double v0, p3

    :goto_1
    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->uTurnCosts:D

    invoke-interface {p2}, Lcom/graphhopper/storage/Graph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object p3

    if-eqz p3, :cond_3

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->turnRestrictionEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p2}, Lcom/graphhopper/storage/Graph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-interface {p2}, Lcom/graphhopper/storage/Graph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-interface {p2}, Lcom/graphhopper/storage/Graph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getEdgeAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    iput-object p4, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->turnPenaltyMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No storage set to calculate turn weight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calcTurnMillis(III)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 6

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->uTurnCosts:D

    return-wide p0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->turnRestrictionEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/graphhopper/storage/TurnCostStorage;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->turnPenaltyMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;->get(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;->uTurnCostsInt:I

    const-string v0, "default_tcp_"

    invoke-static {p0, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
