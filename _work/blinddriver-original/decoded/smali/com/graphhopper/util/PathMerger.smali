.class public Lcom/graphhopper/util/PathMerger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RDP:Lcom/graphhopper/util/RamerDouglasPeucker;


# instance fields
.field private calcPoints:Z

.field private enableInstructions:Z

.field private favoredHeading:D

.field private final graph:Lcom/graphhopper/storage/Graph;

.field private pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

.field private ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

.field private requestedPathDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private simplifyResponse:Z

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-direct {v0}, Lcom/graphhopper/util/RamerDouglasPeucker;-><init>()V

    sput-object v0, Lcom/graphhopper/util/PathMerger;->RDP:Lcom/graphhopper/util/RamerDouglasPeucker;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    iput-boolean v0, p0, Lcom/graphhopper/util/PathMerger;->simplifyResponse:Z

    sget-object v1, Lcom/graphhopper/util/PathMerger;->RDP:Lcom/graphhopper/util/RamerDouglasPeucker;

    iput-object v1, p0, Lcom/graphhopper/util/PathMerger;->ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

    iput-boolean v0, p0, Lcom/graphhopper/util/PathMerger;->calcPoints:Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/util/PathMerger;->requestedPathDetails:Ljava/util/List;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/graphhopper/util/PathMerger;->favoredHeading:D

    iput-object p1, p0, Lcom/graphhopper/util/PathMerger;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/Graph;->wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/PathMerger;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method private calcAscendDescend(Lcom/graphhopper/ResponsePath;Lcom/graphhopper/util/PointList;)V
    .locals 10

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p0, 0x1

    move-wide v4, v2

    :goto_0
    invoke-virtual {p2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    if-ge p0, v6, :cond_1

    invoke-virtual {p2, p0}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v6

    sub-double v8, v6, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v0, v6, v0

    if-lez v0, :cond_0

    add-double/2addr v2, v8

    goto :goto_1

    :cond_0
    add-double/2addr v4, v8

    :goto_1
    add-int/lit8 p0, p0, 0x1

    move-wide v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/graphhopper/ResponsePath;->setAscend(D)Lcom/graphhopper/ResponsePath;

    invoke-virtual {p1, v4, v5}, Lcom/graphhopper/ResponsePath;->setDescend(D)Lcom/graphhopper/ResponsePath;

    return-void
.end method

.method private updateInstructionsWithContext(Lcom/graphhopper/util/InstructionList;)Lcom/graphhopper/util/InstructionList;
    .locals 11

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object v1

    const/16 v2, -0x62

    const-wide v3, 0x4076800000000000L    # 360.0

    const-string v5, "heading"

    if-nez v0, :cond_0

    iget-wide v6, p0, Lcom/graphhopper/util/PathMerger;->favoredHeading:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/graphhopper/util/PathMerger;->favoredHeading:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    rem-double/2addr v6, v3

    const-wide v8, 0x4065400000000000L    # 170.0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_0

    const-wide v8, 0x4067c00000000000L    # 190.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    invoke-virtual {v1, v2}, Lcom/graphhopper/util/Instruction;->setSign(I)V

    :cond_0
    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    const-string v8, "last_heading"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v1, v6, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    rem-double/2addr v7, v3

    const-wide v3, 0x4066600000000000L    # 179.0

    cmpl-double v1, v7, v3

    if-lez v1, :cond_2

    const-wide v3, 0x4066a00000000000L    # 181.0

    cmpg-double v1, v7, v3

    if-gez v1, :cond_2

    invoke-virtual {v6, v2}, Lcom/graphhopper/util/Instruction;->setSign(I)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public doWork(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/Translation;)Lcom/graphhopper/ResponsePath;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/PointList;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/util/Translation;",
            ")",
            "Lcom/graphhopper/ResponsePath;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    new-instance v3, Lcom/graphhopper/ResponsePath;

    invoke-direct {v3}, Lcom/graphhopper/ResponsePath;-><init>()V

    new-instance v4, Lcom/graphhopper/util/InstructionList;

    invoke-direct {v4, v2}, Lcom/graphhopper/util/InstructionList;-><init>(Lcom/graphhopper/util/Translation;)V

    sget-object v5, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-wide v14, v11

    const/4 v8, 0x0

    const/16 v16, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x1

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_9

    move-object/from16 v13, p2

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Lcom/graphhopper/routing/Path;

    invoke-virtual {v13}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_0
    move-wide/from16 v17, v9

    invoke-virtual {v13}, Lcom/graphhopper/routing/Path;->getDescription()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v9

    add-long v9, v9, v17

    invoke-virtual {v13}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v17

    add-double v11, v17, v11

    invoke-virtual {v13}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v17

    add-double v14, v17, v14

    move-wide/from16 v25, v9

    iget-boolean v9, v0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/graphhopper/util/PathMerger;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v10, v0, Lcom/graphhopper/util/PathMerger;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    move-wide/from16 v27, v11

    move-object/from16 v11, p3

    invoke-static {v13, v9, v10, v11, v2}, Lcom/graphhopper/routing/InstructionsFromEdges;->calcInstructions(Lcom/graphhopper/routing/Path;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/Translation;)Lcom/graphhopper/util/InstructionList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v9, v8, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    new-instance v10, Lcom/graphhopper/util/ViaInstruction;

    invoke-virtual {v4}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/graphhopper/util/ViaInstruction;-><init>(Lcom/graphhopper/util/Instruction;)V

    invoke-virtual {v10, v9}, Lcom/graphhopper/util/ViaInstruction;->setViaCount(I)V

    invoke-virtual {v4}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v9, v10}, Lcom/graphhopper/util/InstructionList;->set(ILcom/graphhopper/util/Instruction;)Lcom/graphhopper/util/Instruction;

    goto :goto_1

    :cond_1
    move-wide/from16 v27, v11

    move-object/from16 v11, p3

    :cond_2
    :goto_1
    iget-boolean v9, v0, Lcom/graphhopper/util/PathMerger;->calcPoints:Z

    if-nez v9, :cond_4

    iget-boolean v9, v0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v17, v13

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v13}, Lcom/graphhopper/routing/Path;->calcPoints()Lcom/graphhopper/util/PointList;

    move-result-object v9

    invoke-virtual {v5}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v5, Lcom/graphhopper/util/PointList;

    invoke-virtual {v9}, Lcom/graphhopper/util/PointList;->size()I

    move-result v10

    invoke-virtual {v9}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v12

    invoke-direct {v5, v10, v12}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    :cond_5
    add-int/lit8 v10, v8, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_6

    invoke-virtual {v9}, Lcom/graphhopper/util/PointList;->removeLastPoint()V

    :cond_6
    invoke-virtual {v5, v9}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointList;)V

    iget-object v9, v0, Lcom/graphhopper/util/PathMerger;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v10, v0, Lcom/graphhopper/util/PathMerger;->requestedPathDetails:Ljava/util/List;

    iget-object v12, v0, Lcom/graphhopper/util/PathMerger;->pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    iget-object v2, v0, Lcom/graphhopper/util/PathMerger;->graph:Lcom/graphhopper/storage/Graph;

    move-object/from16 v23, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    invoke-static/range {v17 .. v23}, Lcom/graphhopper/util/details/PathDetailsFromEdges;->calcDetails(Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/weighting/Weighting;Ljava/util/List;Lcom/graphhopper/util/details/PathDetailsBuilderFactory;ILcom/graphhopper/storage/Graph;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/graphhopper/ResponsePath;->addPathDetails(Ljava/util/Map;)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_7

    invoke-virtual {v5}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v5}, Lcom/graphhopper/util/PointList;->size()I

    move-result v22

    :goto_3
    if-eqz v16, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v2, v24

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    move/from16 v16, v2

    move-wide/from16 v9, v25

    move-wide/from16 v11, v27

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v17, v9

    invoke-virtual {v5}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, v5, Lcom/graphhopper/util/PointList;->is3D:Z

    if-eqz v2, :cond_a

    invoke-direct {v0, v3, v5}, Lcom/graphhopper/util/PathMerger;->calcAscendDescend(Lcom/graphhopper/ResponsePath;Lcom/graphhopper/util/PointList;)V

    :cond_a
    iget-boolean v2, v0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    if-eqz v2, :cond_b

    invoke-direct {v0, v4}, Lcom/graphhopper/util/PathMerger;->updateInstructionsWithContext(Lcom/graphhopper/util/InstructionList;)Lcom/graphhopper/util/InstructionList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/graphhopper/ResponsePath;->setInstructions(Lcom/graphhopper/util/InstructionList;)V

    :cond_b
    if-nez v16, :cond_c

    new-instance v2, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;

    const-string v4, "Connection between locations not found"

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, v4, v8}, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v2}, Lcom/graphhopper/ResponsePath;->addError(Ljava/lang/Throwable;)Lcom/graphhopper/ResponsePath;

    :cond_c
    if-eqz v16, :cond_e

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_e

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v9

    invoke-virtual {v5, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v19

    cmpl-double v4, v9, v19

    if-nez v4, :cond_d

    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    invoke-virtual {v5, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v19

    cmpl-double v2, v9, v19

    if-nez v2, :cond_d

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "waypoints are not included in points, or waypoint indices are wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v3, v6}, Lcom/graphhopper/ResponsePath;->setDescription(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/graphhopper/ResponsePath;->setPoints(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/graphhopper/ResponsePath;->setRouteWeight(D)Lcom/graphhopper/ResponsePath;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Lcom/graphhopper/ResponsePath;->setDistance(D)Lcom/graphhopper/ResponsePath;

    move-result-object v2

    move-wide/from16 v9, v17

    invoke-virtual {v2, v9, v10}, Lcom/graphhopper/ResponsePath;->setTime(J)Lcom/graphhopper/ResponsePath;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/graphhopper/ResponsePath;->setWaypoints(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/graphhopper/ResponsePath;->setWaypointIndices(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    if-eqz v16, :cond_10

    iget-boolean v1, v0, Lcom/graphhopper/util/PathMerger;->simplifyResponse:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/graphhopper/util/PathMerger;->calcPoints:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    if-eqz v1, :cond_10

    :cond_f
    iget-object v1, v0, Lcom/graphhopper/util/PathMerger;->ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

    iget-boolean v0, v0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    invoke-static {v3, v1, v0}, Lcom/graphhopper/util/PathSimplification;->simplify(Lcom/graphhopper/ResponsePath;Lcom/graphhopper/util/RamerDouglasPeucker;Z)Lcom/graphhopper/util/PointList;

    :cond_10
    return-object v3
.end method

.method public setCalcPoints(Z)Lcom/graphhopper/util/PathMerger;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/util/PathMerger;->calcPoints:Z

    return-object p0
.end method

.method public setEnableInstructions(Z)Lcom/graphhopper/util/PathMerger;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/util/PathMerger;->enableInstructions:Z

    return-object p0
.end method

.method public setFavoredHeading(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/util/PathMerger;->favoredHeading:D

    return-void
.end method

.method public setPathDetailsBuilders(Lcom/graphhopper/util/details/PathDetailsBuilderFactory;Ljava/util/List;)Lcom/graphhopper/util/PathMerger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/details/PathDetailsBuilderFactory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/util/PathMerger;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/util/PathMerger;->pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    iput-object p2, p0, Lcom/graphhopper/util/PathMerger;->requestedPathDetails:Ljava/util/List;

    return-object p0
.end method

.method public setRamerDouglasPeucker(Lcom/graphhopper/util/RamerDouglasPeucker;)Lcom/graphhopper/util/PathMerger;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/PathMerger;->ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

    return-object p0
.end method

.method public setSimplifyResponse(Z)Lcom/graphhopper/util/PathMerger;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/util/PathMerger;->simplifyResponse:Z

    return-object p0
.end method
