.class public Lcom/graphhopper/util/Instructions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Lcom/graphhopper/util/InstructionList;DDD)Lcom/graphhopper/util/Instruction;
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/util/Instruction;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v9

    invoke-virtual {v3, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v11

    sget-object v13, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object v4, v13

    invoke-interface/range {v4 .. v12}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(DDDD)D

    move-result-wide v13

    invoke-virtual {v0}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_8

    move v3, v1

    move v5, v3

    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/util/Instruction;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v6

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide v7, v13

    move v9, v1

    :goto_1
    invoke-virtual {v6}, Lcom/graphhopper/util/PointList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-virtual {v6, v9}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v18

    invoke-virtual {v6, v9}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v20

    if-nez v3, :cond_1

    if-eqz v9, :cond_5

    :cond_1
    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-object v13, v4

    invoke-interface/range {v13 .. v25}, Lcom/graphhopper/util/DistanceCalc;->validEdgeDistance(DDDDDD)Z

    move-result v4

    if-eqz v4, :cond_3

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    invoke-interface/range {v13 .. v25}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedEdgeDistance(DDDDDD)D

    move-result-wide v10

    if-lez v9, :cond_2

    add-int/lit8 v4, v3, 0x1

    move v12, v4

    :goto_2
    move-object v4, v13

    goto :goto_3

    :cond_2
    move v12, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    invoke-interface/range {v13 .. v21}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(DDDD)D

    move-result-wide v10

    move-object v4, v13

    if-lez v9, :cond_4

    add-int/lit8 v12, v3, 0x1

    goto :goto_3

    :cond_4
    move v12, v3

    :goto_3
    cmpg-double v13, v10, v7

    if-gez v13, :cond_5

    move-wide v7, v10

    move v5, v12

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v22, v18

    move-wide/from16 v24, v20

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-wide v13, v7

    move-wide/from16 v9, v22

    move-wide/from16 v11, v24

    goto :goto_0

    :cond_7
    move v1, v5

    :cond_8
    invoke-interface {v4, v13, v14}, Lcom/graphhopper/util/DistanceCalc;->calcDenormalizedDist(D)D

    move-result-wide v3

    cmpl-double v3, v3, p5

    if-lez v3, :cond_9

    return-object v2

    :cond_9
    invoke-virtual {v0}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result v2

    if-ne v1, v2, :cond_a

    add-int/lit8 v1, v1, -0x1

    :cond_a
    invoke-virtual {v0, v1}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object v0

    return-object v0
.end method
