.class public Lcom/graphhopper/routing/InstructionsFromEdges;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/Path$EdgeVisitor;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_U_TURN_DISTANCE:I = 0x23


# instance fields
.field private final allExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private doublePrevLat:D

.field private doublePrevLon:D

.field private final lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

.field private final maxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private final outEdgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private prevDestinationAndRef:Ljava/lang/String;

.field private prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

.field private prevInRoundabout:Z

.field private prevInstruction:Lcom/graphhopper/util/Instruction;

.field private prevInstructionName:Ljava/lang/String;

.field private prevInstructionPrevOrientation:D

.field private prevLat:D

.field private prevLon:D

.field private prevName:Ljava/lang/String;

.field private prevNode:I

.field private prevOrientation:D

.field private prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

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

.field private final roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private final roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final ways:Lcom/graphhopper/util/InstructionList;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/InstructionList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionPrevOrientation:D

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const-string p2, "roundabout"

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    const-string p2, "road_environment"

    const-class v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-interface {p3, p2, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string p2, "road_class"

    const-class v0, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-interface {p3, p2, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string p2, "road_class_link"

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    const-string p2, "max_speed"

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->maxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const-string p2, "lanes"

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getIntEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/IntEncodedValue;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput-object p4, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->ways:Lcom/graphhopper/util/InstructionList;

    const/4 p2, -0x1

    iput p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevNode:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInRoundabout:Z

    iput-object v1, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v1, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string p2, "car"

    invoke-static {p2}, Lcom/graphhopper/routing/ev/VehicleAccess;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p2

    new-instance p3, Lcom/graphhopper/routing/h;

    invoke-direct {p3, p2}, Lcom/graphhopper/routing/h;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    invoke-interface {p1, p3}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->outEdgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->allExplorer:Lcom/graphhopper/util/EdgeExplorer;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/InstructionsFromEdges;->lambda$new$0(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static calcInstructions(Lcom/graphhopper/routing/Path;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/Translation;)Lcom/graphhopper/util/InstructionList;
    .locals 1

    new-instance v0, Lcom/graphhopper/util/InstructionList;

    invoke-direct {v0, p4}, Lcom/graphhopper/util/InstructionList;-><init>(Lcom/graphhopper/util/Translation;)V

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getEdgeCount()I

    move-result p4

    if-nez p4, :cond_0

    new-instance p2, Lcom/graphhopper/util/FinishInstruction;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getEndNode()I

    move-result p0

    invoke-direct {p2, p1, p0}, Lcom/graphhopper/util/FinishInstruction;-><init>(Lcom/graphhopper/util/PointAccess;I)V

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p4, Lcom/graphhopper/routing/InstructionsFromEdges;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/graphhopper/routing/InstructionsFromEdges;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/InstructionList;)V

    invoke-virtual {p0, p4}, Lcom/graphhopper/routing/Path;->forEveryEdge(Lcom/graphhopper/routing/Path$EdgeVisitor;)V

    :cond_1
    return-object v0
.end method

.method private getTurn(Lcom/graphhopper/util/EdgeIteratorState;IIILjava/lang/String;Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v14, p5

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v0, -0x62

    return v0

    :cond_0
    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-static {v3, v1}, Lcom/graphhopper/routing/InstructionsHelper;->getPointForOrientationCalculation(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v10

    sget-object v15, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    iget-wide v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    iget-wide v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v12, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    move-wide/from16 v16, v1

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    move-wide/from16 v22, v12

    invoke-virtual/range {v15 .. v23}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v12

    iput-wide v12, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    iget-wide v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    move-wide v8, v6

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    invoke-static/range {v4 .. v13}, Lcom/graphhopper/routing/InstructionsHelper;->calculateSign(DDDDD)I

    move-result v15

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    new-instance v1, Lcom/graphhopper/routing/InstructionsOutgoingEdges;

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->maxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iget-object v7, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    iget-object v9, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->allExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iget-object v10, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    move/from16 v12, p2

    move/from16 v11, p3

    move/from16 v13, p4

    invoke-direct/range {v1 .. v13}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;-><init>(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/IntEncodedValue;Lcom/graphhopper/util/EdgeExplorer;Lcom/graphhopper/storage/NodeAccess;III)V

    move-object v12, v3

    invoke-virtual {v1}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->getAllowedTurns()I

    move-result v2

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v12, v3}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const/16 v20, 0x9

    const/high16 v21, -0x80000000

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v13, v2}, Lcom/graphhopper/routing/InstructionsHelper;->isToFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v20

    :cond_1
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->getVisibleTurns()I

    move-result v2

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->mergedOrSplitWay()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v23, v15

    goto/16 :goto_2

    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v13, v0}, Lcom/graphhopper/routing/InstructionsHelper;->isFromFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v21

    :cond_5
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_9

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v13, v2}, Lcom/graphhopper/routing/InstructionsHelper;->isToFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v20

    :cond_6
    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->outgoingEdgesAreSlowerByFactor(D)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v0, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v13, v0}, Lcom/graphhopper/routing/InstructionsHelper;->isFromFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->mergedOrSplitWay()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    return v21

    :cond_9
    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->outgoingEdgesAreSlowerByFactor(D)Z

    move-result v22

    iget-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->getOtherContinue(DDD)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v2

    move-object v4, v2

    iget-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    move-object v6, v4

    iget-wide v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    iget-wide v10, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    move/from16 v23, v15

    move-wide/from16 v8, v18

    move-object v15, v6

    move-wide/from16 v6, v16

    invoke-static/range {v2 .. v11}, Lcom/graphhopper/routing/InstructionsHelper;->calculateOrientationDelta(DDDDD)D

    move-result-wide v2

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v13, v4}, Lcom/graphhopper/routing/InstructionsHelper;->isToFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z

    move-result v4

    if-eqz v4, :cond_b

    return v20

    :cond_b
    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v13, v4}, Lcom/graphhopper/routing/InstructionsHelper;->isFromFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    return v5

    :cond_c
    if-eqz v15, :cond_13

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevDestinationAndRef:Ljava/lang/String;

    move-object/from16 v6, p6

    invoke-static {v6, v4}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v15}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    if-nez v22, :cond_13

    :cond_d
    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v12, v1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/ev/RoadClass;

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v4, v6}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/ev/RoadClass;

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v15, v6}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/routing/ev/RoadClass;

    iget-object v7, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v12, v7}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v7

    iget-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v9, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v8, v9}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v8

    iget-object v9, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadClassLinkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v15, v9}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v9

    sget-object v10, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq v1, v10, :cond_e

    sget-object v10, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq v1, v10, :cond_e

    sget-object v10, Lcom/graphhopper/routing/ev/RoadClass;->PRIMARY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq v1, v10, :cond_e

    sget-object v10, Lcom/graphhopper/routing/ev/RoadClass;->SECONDARY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq v1, v10, :cond_e

    sget-object v10, Lcom/graphhopper/routing/ev/RoadClass;->TERTIARY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne v1, v10, :cond_10

    :cond_e
    if-ne v1, v4, :cond_10

    if-ne v7, v8, :cond_10

    if-ne v6, v4, :cond_f

    if-eq v9, v8, :cond_10

    :cond_f
    return v21

    :cond_10
    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-static {v15, v1}, Lcom/graphhopper/routing/InstructionsHelper;->getPointForOrientationCalculation(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v1

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v19

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v21

    iget-wide v10, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-wide/from16 v23, v10

    invoke-static/range {v15 .. v24}, Lcom/graphhopper/routing/InstructionsHelper;->calculateOrientationDelta(DDDDD)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v8, v10

    if-gez v1, :cond_11

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fc3333333333333L    # 0.15

    cmpl-double v1, v8, v10

    if-lez v1, :cond_11

    iget-object v0, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v5

    :cond_11
    cmpg-double v0, v6, v2

    if-gez v0, :cond_12

    const/4 v0, -0x7

    return v0

    :cond_12
    const/4 v0, 0x7

    return v0

    :cond_13
    if-nez v22, :cond_15

    invoke-virtual {v1}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->mergedOrSplitWay()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_14

    iget-object v0, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    invoke-virtual {v1, v0, v14}, Lcom/graphhopper/routing/InstructionsOutgoingEdges;->isLeavingCurrentStreet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_2
    return v23

    :cond_15
    return v21
.end method

.method private static synthetic lambda$new$0(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    return p0
.end method

.method private updatePointsAndInstruction(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/PointList;)V
    .locals 6

    invoke-virtual {p2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v3}, Lcom/graphhopper/util/Instruction;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    iget-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {p2}, Lcom/graphhopper/util/Instruction;->getDistance()D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Lcom/graphhopper/util/Instruction;->setDistance(D)Lcom/graphhopper/util/Instruction;

    iget-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p2

    invoke-static {v2, p1, v1, p2}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide p1

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/Instruction;->setTime(J)Lcom/graphhopper/util/Instruction;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, p1, v1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getTime()J

    move-result-wide p0

    add-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Lcom/graphhopper/util/Instruction;->setTime(J)Lcom/graphhopper/util/Instruction;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 12

    iget-boolean v0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInRoundabout:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    iget-wide v4, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    iget-wide v6, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v8, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    invoke-virtual/range {v1 .. v9}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/graphhopper/util/AngleCalc;->alignOrientation(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    check-cast v2, Lcom/graphhopper/util/RoundaboutInstruction;

    invoke-virtual {v2, v0, v1}, Lcom/graphhopper/util/RoundaboutInstruction;->setRadian(D)Lcom/graphhopper/util/RoundaboutInstruction;

    :cond_0
    new-instance v0, Lcom/graphhopper/util/FinishInstruction;

    iget-object v1, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iget-object v2, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/FinishInstruction;-><init>(Lcom/graphhopper/util/PointAccess;I)V

    sget-object v3, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v4, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    iget-wide v6, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    iget-wide v8, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v10, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    invoke-virtual/range {v3 .. v11}, Lcom/graphhopper/util/AngleCalc;->calcAzimuth(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "last_heading"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/graphhopper/routing/InstructionsFromEdges;->ways:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public next(Lcom/graphhopper/util/EdgeIteratorState;II)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    iget v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevNode:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    :cond_0
    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v4}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v7

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v4}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v9

    sget-object v3, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v11

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v12

    invoke-virtual {v11}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-gt v3, v13, :cond_1

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v14}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    invoke-virtual {v11, v14}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v15

    move-wide/from16 v22, v5

    move-wide/from16 v24, v15

    :goto_0
    const-string v3, "street_name"

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string v15, "street_ref"

    invoke-interface {v1, v15}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "street_destination"

    invoke-interface {v1, v6}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    const-string v13, "street_destination_ref"

    invoke-interface {v1, v13}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v26, v9

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    const-string v10, "motorway_junction"

    invoke-interface {v1, v10}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v28, v7

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {v1, v8}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v8

    check-cast v8, Lcom/graphhopper/routing/ev/RoadEnvironment;

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    move/from16 v16, v12

    const-string v12, "ferry"

    move-object/from16 v30, v11

    if-nez v1, :cond_2

    if-nez v16, :cond_2

    new-instance v1, Lcom/graphhopper/util/Instruction;

    new-instance v4, Lcom/graphhopper/util/PointList;

    iget-object v11, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v11}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v11

    move/from16 v31, v2

    const/16 v2, 0xa

    invoke-direct {v4, v2, v11}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v4}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v15, v3}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v6, v14}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v13, v9}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v10, v7}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v8, v2}, Lcom/graphhopper/routing/InstructionsHelper;->createFerryInfo(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    move/from16 v2, v31

    invoke-interface {v1, v2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v18

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v1, v2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v20

    sget-object v17, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    invoke-virtual/range {v17 .. v25}, Lcom/graphhopper/util/AngleCalc;->calcAzimuth(DDDD)D

    move-result-wide v3

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    const/4 v6, 0x2

    invoke-static {v3, v4, v6}, Lcom/graphhopper/util/Helper;->round(DI)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "heading"

    invoke-virtual {v1, v4, v3}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->ways:Lcom/graphhopper/util/InstructionList;

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iput-object v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v14, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevDestinationAndRef:Ljava/lang/String;

    move-object/from16 v1, p1

    :goto_1
    move-object/from16 v2, v30

    goto/16 :goto_b

    :cond_2
    if-eqz v16, :cond_9

    iget-boolean v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInRoundabout:Z

    if-nez v1, :cond_6

    new-instance v1, Lcom/graphhopper/util/RoundaboutInstruction;

    new-instance v3, Lcom/graphhopper/util/PointList;

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v4}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v4

    const/16 v6, 0xa

    invoke-direct {v3, v6, v4}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    const/4 v4, 0x6

    invoke-direct {v1, v4, v5, v3}, Lcom/graphhopper/util/RoundaboutInstruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    iget-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    iput-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionPrevOrientation:D

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->outEdgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v3, v2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    iget v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevNode:I

    if-eq v4, v5, :cond_3

    iget-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v3, v4}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/graphhopper/util/RoundaboutInstruction;->increaseExitNumber()Lcom/graphhopper/util/RoundaboutInstruction;

    :cond_4
    sget-object v17, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    iget-wide v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    iget-wide v10, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v12, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    move-object/from16 v5, v17

    invoke-virtual/range {v5 .. v13}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    iget-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v17 .. v25}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v3

    move-object/from16 v5, v17

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/graphhopper/util/AngleCalc;->alignOrientation(DD)D

    move-result-wide v3

    iget-wide v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    sub-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/graphhopper/util/RoundaboutInstruction;->setDirOfRotation(D)Lcom/graphhopper/util/RoundaboutInstruction;

    goto :goto_2

    :cond_5
    sget-object v17, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    move-wide/from16 v18, v3

    move-wide/from16 v20, v6

    invoke-virtual/range {v17 .. v25}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    iput-object v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v14, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevDestinationAndRef:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->ways:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->outEdgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface/range {p1 .. p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    check-cast v1, Lcom/graphhopper/util/RoundaboutInstruction;

    invoke-virtual {v1}, Lcom/graphhopper/util/RoundaboutInstruction;->increaseExitNumber()Lcom/graphhopper/util/RoundaboutInstruction;

    :cond_8
    move-object/from16 v1, p1

    move/from16 v31, v2

    goto/16 :goto_1

    :cond_9
    iget-boolean v11, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInRoundabout:Z

    if-eqz v11, :cond_a

    invoke-virtual {v1, v5}, Lcom/graphhopper/util/Instruction;->setName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v15, v3}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v6, v14}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v13, v9}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1, v10, v7}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v8, v3}, Lcom/graphhopper/routing/InstructionsHelper;->createFerryInfo(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v31, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    move-wide/from16 v18, v3

    move-wide/from16 v20, v6

    move-object/from16 v17, v31

    invoke-virtual/range {v17 .. v25}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v3

    move-object/from16 v1, v17

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    invoke-virtual {v1, v6, v7, v3, v4}, Lcom/graphhopper/util/AngleCalc;->alignOrientation(DD)D

    move-result-wide v3

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    sub-double v6, v3, v6

    iget-wide v10, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    iget-wide v12, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    move/from16 v19, v2

    iget-wide v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    move-wide/from16 v36, v1

    iget-wide v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    move-wide/from16 v38, v1

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    invoke-virtual/range {v31 .. v39}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v1

    move-object/from16 v10, v31

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/graphhopper/util/AngleCalc;->alignOrientation(DD)D

    move-result-wide v3

    sub-double/2addr v3, v1

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    check-cast v1, Lcom/graphhopper/util/RoundaboutInstruction;

    invoke-virtual {v1, v6, v7}, Lcom/graphhopper/util/RoundaboutInstruction;->setRadian(D)Lcom/graphhopper/util/RoundaboutInstruction;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/graphhopper/util/RoundaboutInstruction;->setDirOfRotation(D)Lcom/graphhopper/util/RoundaboutInstruction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/RoundaboutInstruction;->setExited()Lcom/graphhopper/util/RoundaboutInstruction;

    move-result-object v1

    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionName:Ljava/lang/String;

    iput-object v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v14, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevDestinationAndRef:Ljava/lang/String;

    move-object/from16 v1, p1

    move/from16 v31, v19

    goto/16 :goto_1

    :cond_a
    move/from16 v19, v2

    move-object v1, v3

    iget v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevNode:I

    move-object v2, v6

    invoke-static {v14, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v12

    move-object v12, v2

    move/from16 v2, v19

    move-object/from16 v19, v11

    move-object v11, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/InstructionsFromEdges;->getTurn(Lcom/graphhopper/util/EdgeIteratorState;IIILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_14

    move-object v4, v7

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionPrevOrientation:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v6}, Lcom/graphhopper/util/Instruction;->getDistance()D

    move-result-wide v6

    const-wide v20, 0x4041800000000000L    # 35.0

    cmpg-double v6, v6, v20

    if-gez v6, :cond_d

    if-gez v3, :cond_b

    const/4 v6, 0x1

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    :goto_3
    iget-object v7, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v7}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v7

    if-gez v7, :cond_c

    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    :goto_4
    if-ne v6, v7, :cond_d

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_f

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v20, v4

    :cond_e
    move-object/from16 v21, v5

    goto/16 :goto_7

    :cond_f
    :goto_5
    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v6}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v6}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v6}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    :cond_10
    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    iget-object v7, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    move-object/from16 v20, v4

    const/4 v4, 0x1

    invoke-interface {v7, v1, v4}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isFinite(D)Z

    move-result v7

    if-eq v6, v7, :cond_e

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionName:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/graphhopper/routing/InstructionsHelper;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-static {v1, v6}, Lcom/graphhopper/routing/InstructionsHelper;->getPointForOrientationCalculation(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v36

    invoke-virtual {v6}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v38

    sget-object v31, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    move-object/from16 v21, v5

    iget-wide v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    const/16 v40, 0x0

    move-wide/from16 v34, v4

    move-wide/from16 v32, v6

    invoke-virtual/range {v31 .. v40}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDDZ)D

    move-result-wide v4

    iget-wide v6, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionPrevOrientation:D

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x40069e9565708efcL    # 2.827433388230814

    cmpl-double v6, v4, v6

    if-lez v6, :cond_12

    const-wide v6, 0x400ba5614317cb35L    # 3.455751918948773

    cmpg-double v4, v4, v6

    if-gez v4, :cond_12

    if-gez v3, :cond_11

    const/4 v4, -0x8

    :goto_6
    const/16 v18, 0x1

    goto :goto_8

    :cond_11
    const/16 v4, 0x8

    goto :goto_6

    :cond_12
    :goto_7
    const/16 v4, -0x62

    const/16 v18, 0x0

    :goto_8
    if-eqz v18, :cond_13

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v3, v4}, Lcom/graphhopper/util/Instruction;->setSign(I)V

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Lcom/graphhopper/util/Instruction;->setName(Ljava/lang/String;)V

    move/from16 v31, v2

    goto :goto_9

    :cond_13
    move-object/from16 v5, v21

    new-instance v4, Lcom/graphhopper/util/Instruction;

    new-instance v6, Lcom/graphhopper/util/PointList;

    iget-object v7, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v7}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v7

    move/from16 v31, v2

    const/16 v2, 0xa

    invoke-direct {v6, v2, v7}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    invoke-direct {v4, v3, v5, v6}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    iput-object v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevOrientation:D

    iput-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionPrevOrientation:D

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstructionName:Ljava/lang/String;

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->ways:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_9
    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v2, v15, v11}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v2, v12, v14}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    invoke-virtual {v2, v13, v9}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    move-object/from16 v4, v20

    invoke-virtual {v2, v10, v4}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInstruction:Lcom/graphhopper/util/Instruction;

    iget-object v3, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v8, v3}, Lcom/graphhopper/routing/InstructionsHelper;->createFerryInfo(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-virtual {v2, v4, v3}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    move/from16 v31, v2

    :goto_a
    iput-object v5, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevName:Ljava/lang/String;

    iput-object v8, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevRoadEnv:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v14, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevDestinationAndRef:Ljava/lang/String;

    goto/16 :goto_1

    :goto_b
    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/InstructionsFromEdges;->updatePointsAndInstruction(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/PointList;)V

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    const/4 v7, 0x2

    if-gt v3, v7, :cond_15

    iget-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    iput-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    iget-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    iput-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    :goto_c
    move/from16 v2, v16

    goto :goto_d

    :cond_15
    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLat:D

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->doublePrevLon:D

    goto :goto_c

    :goto_d
    iput-boolean v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevInRoundabout:Z

    move/from16 v2, v31

    iput v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevNode:I

    move-wide/from16 v2, v28

    iput-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLat:D

    move-wide/from16 v2, v26

    iput-wide v2, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevLon:D

    iput-object v1, v0, Lcom/graphhopper/routing/InstructionsFromEdges;->prevEdge:Lcom/graphhopper/util/EdgeIteratorState;

    return-void
.end method
