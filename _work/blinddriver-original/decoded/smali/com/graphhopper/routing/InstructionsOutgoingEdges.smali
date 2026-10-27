.class Lcom/graphhopper/routing/InstructionsOutgoingEdges;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private final allowedAlternativeTurns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field

.field private final baseNode:I

.field private final currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

.field private final lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

.field private final maxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private final prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

.field private final roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;"
        }
    .end annotation
.end field

.field private final roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final visibleAlternativeTurns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/IntEncodedValue;Lcom/graphhopper/util/EdgeExplorer;Lcom/graphhopper/storage/NodeAccess;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            "Lcom/graphhopper/routing/weighting/Weighting;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Lcom/graphhopper/routing/ev/IntEncodedValue;",
            "Lcom/graphhopper/util/EdgeExplorer;",
            "Lcom/graphhopper/storage/NodeAccess;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iput-object p3, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->maxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p6, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p7, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    iput-object p9, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput p11, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->baseNode:I

    iput-object p8, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allExplorer:Lcom/graphhopper/util/EdgeExplorer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->visibleAlternativeTurns:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allowedAlternativeTurns:Ljava/util/List;

    invoke-interface {p8, p11}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p2

    if-eq p2, p10, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p2

    if-eq p2, p12, :cond_0

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isFinite(D)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    iget-object p4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allowedAlternativeTurns:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->visibleAlternativeTurns:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    invoke-interface {p3, p1, p4}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isFinite(D)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->visibleAlternativeTurns:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getSpeed(Lcom/graphhopper/util/EdgeIteratorState;)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->maxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr v0, p0

    const-wide p0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method private isTheSameRoadClassAndLink(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p2, v1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p2, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAllowedTurns()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allowedAlternativeTurns:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getOtherContinue(DDD)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 13

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allowedAlternativeTurns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-static {v1, v2}, Lcom/graphhopper/routing/InstructionsHelper;->getPointForOrientationCalculation(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v11, p5

    invoke-static/range {v3 .. v12}, Lcom/graphhopper/routing/InstructionsHelper;->calculateSign(DDDDD)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibleTurns()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->visibleAlternativeTurns:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLeavingCurrentStreet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p2, p1}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-direct {p0, v0, v2}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->isTheSameRoadClassAndLink(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allowedAlternativeTurns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-direct {p0, v5, v3}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->isTheSameRoadClassAndLink(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2, v4}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-direct {p0, v4, v3}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->isTheSameRoadClassAndLink(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    :goto_0
    return v6

    :cond_4
    return v1
.end method

.method public mergedOrSplitWay()Z
    .locals 9

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v3, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v2, v3}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/routing/ev/RoadClass;

    iget-object v3, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v3, v4}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iget v4, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->baseNode:I

    invoke-interface {v3, v4}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v5

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v5

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v3, v5}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v5

    if-ne v2, v5, :cond_2

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v5, v3, v1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v5, v3, v6}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    if-eqz v4, :cond_4

    return v1

    :cond_4
    invoke-interface {v3, v1}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v4

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v0, v2, v6}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v0, v2, v6}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, v4, v1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, v4, v6}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {v0, v2}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result v0

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {v4, v2}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {v0, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result p0

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v6, :cond_a

    return v6

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v0, v2, v6}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, v4, v1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, v4, v6}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {v0, v2}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result v0

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v3, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {v2, v3}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result v2

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {v4, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result p0

    add-int/2addr p0, v2

    sub-int/2addr v0, p0

    if-gt v0, v6, :cond_f

    return v6

    :cond_f
    :goto_1
    return v1
.end method

.method public outgoingEdgesAreSlowerByFactor(D)Z
    .locals 9

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->currentEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->getSpeed(Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-direct {p0, v2}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->getSpeed(Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide v2

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v4

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->allowedAlternativeTurns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-direct {p0, v6}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->getSpeed(Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-lez v8, :cond_1

    move-wide v4, v6

    goto :goto_0

    :cond_2
    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-gez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
