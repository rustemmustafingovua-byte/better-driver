.class public Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createResponsePath(Lb6/c0;Lb6/q;ZZ)Lcom/graphhopper/ResponsePath;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lcom/graphhopper/ResponsePath;

    invoke-direct {v3}, Lcom/graphhopper/ResponsePath;-><init>()V

    invoke-static/range {p0 .. p1}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->readErrors(Lb6/c0;Lb6/q;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/graphhopper/ResponsePath;->addErrors(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    invoke-virtual {v3}, Lcom/graphhopper/ResponsePath;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    const-string v4, "points_encoded"

    invoke-virtual {v1, v4}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v4

    invoke-virtual {v4}, Lb6/q;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "points_encoded_multiplier"

    invoke-virtual {v1, v4}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v4

    invoke-virtual {v4}, Lb6/q;->k()D

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    :goto_0
    const-string v6, "snapped_waypoints"

    invoke-virtual {v1, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-static {v0, v6, v2, v4, v5}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->deserializePointList(Lb6/c0;Lb6/q;ZD)Lcom/graphhopper/util/PointList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/graphhopper/ResponsePath;->setWaypoints(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;

    :cond_2
    const-string v6, "ascend"

    invoke-virtual {v1, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-virtual {v6}, Lb6/q;->k()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/graphhopper/ResponsePath;->setAscend(D)Lcom/graphhopper/ResponsePath;

    :cond_3
    const-string v6, "descend"

    invoke-virtual {v1, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-virtual {v6}, Lb6/q;->k()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/graphhopper/ResponsePath;->setDescend(D)Lcom/graphhopper/ResponsePath;

    :cond_4
    const-string v6, "weight"

    invoke-virtual {v1, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-virtual {v6}, Lb6/q;->k()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/graphhopper/ResponsePath;->setRouteWeight(D)Lcom/graphhopper/ResponsePath;

    :cond_5
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lp6/a;

    if-eqz v7, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lb6/q;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb6/q;

    invoke-virtual {v8}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v7}, Lcom/graphhopper/ResponsePath;->setDescription(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Description has to be an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    const-string v6, "points"

    invoke-virtual {v1, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "time"

    const-string v9, "distance"

    if-eqz v7, :cond_19

    invoke-virtual {v1, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-static {v0, v6, v2, v4, v5}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->deserializePointList(Lb6/c0;Lb6/q;ZD)Lcom/graphhopper/util/PointList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/graphhopper/ResponsePath;->setPoints(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;

    const-string v5, "instructions"

    invoke-virtual {v1, v5}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v1, v5}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v5

    new-instance v6, Lcom/graphhopper/util/InstructionList;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/graphhopper/util/InstructionList;-><init>(Lcom/graphhopper/util/Translation;)V

    invoke-virtual {v5}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x1

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb6/q;

    invoke-virtual {v12, v9}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v13

    invoke-virtual {v13}, Lb6/q;->k()D

    move-result-wide v13

    if-eqz p3, :cond_9

    const-string v15, "text"

    :goto_4
    invoke-virtual {v12, v15}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v15

    invoke-virtual {v15}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_9
    const-string v15, "street_name"

    goto :goto_4

    :goto_5
    invoke-virtual {v12, v8}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v16}, Lb6/q;->o()J

    move-result-wide v7

    const-string v10, "sign"

    invoke-virtual {v12, v10}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v10

    invoke-virtual {v10}, Lb6/q;->m()I

    move-result v10

    move-object/from16 v18, v5

    const-string v5, "interval"

    invoke-virtual {v12, v5}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v5

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lb6/q;->y(I)Lb6/q;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lb6/q;->m()I

    move-result v9

    move/from16 v20, v9

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lb6/q;->y(I)Lb6/q;

    move-result-object v5

    invoke-virtual {v5}, Lb6/q;->m()I

    move-result v5

    new-instance v9, Lcom/graphhopper/util/PointList;

    sub-int v0, v5, v20

    invoke-direct {v9, v0, v2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    move/from16 v0, v20

    :goto_6
    if-gt v0, v5, :cond_a

    invoke-virtual {v9, v4, v0}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x6

    if-eq v10, v0, :cond_b

    const/4 v0, -0x6

    if-ne v10, v0, :cond_c

    :cond_b
    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    const/4 v0, 0x5

    if-ne v10, v0, :cond_d

    new-instance v0, Lcom/graphhopper/util/ViaInstruction;

    invoke-direct {v0, v15, v9}, Lcom/graphhopper/util/ViaInstruction;-><init>(Ljava/lang/String;Lcom/graphhopper/util/PointList;)V

    invoke-virtual {v0, v11}, Lcom/graphhopper/util/ViaInstruction;->setViaCount(I)V

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_d
    const/4 v0, 0x4

    if-ne v10, v0, :cond_e

    new-instance v0, Lcom/graphhopper/util/FinishInstruction;

    const/4 v5, 0x0

    invoke-direct {v0, v15, v9, v5}, Lcom/graphhopper/util/FinishInstruction;-><init>(Ljava/lang/String;Lcom/graphhopper/util/PointAccess;I)V

    goto/16 :goto_9

    :cond_e
    const/4 v5, 0x0

    new-instance v0, Lcom/graphhopper/util/Instruction;

    invoke-direct {v0, v10, v15, v9}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    if-nez v10, :cond_12

    const-string v9, "heading"

    invoke-virtual {v12, v9}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v12, v9}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v10

    invoke-virtual {v10}, Lb6/q;->k()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/graphhopper/util/Instruction;->setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :goto_7
    new-instance v0, Lcom/graphhopper/util/RoundaboutInstruction;

    invoke-direct {v0, v10, v15, v9}, Lcom/graphhopper/util/RoundaboutInstruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    const-string v9, "exit_number"

    invoke-virtual {v12, v9}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v12, v9}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v9

    invoke-virtual {v9}, Lb6/q;->m()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/graphhopper/util/RoundaboutInstruction;->setExitNumber(I)Lcom/graphhopper/util/RoundaboutInstruction;

    :cond_f
    const-string v9, "exited"

    invoke-virtual {v12, v9}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v12, v9}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v9

    invoke-virtual {v9}, Lb6/q;->e()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v0}, Lcom/graphhopper/util/RoundaboutInstruction;->setExited()Lcom/graphhopper/util/RoundaboutInstruction;

    :cond_10
    const-string v9, "turn_angle"

    invoke-virtual {v12, v9}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v12, v9}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v9

    invoke-virtual {v9}, Lb6/q;->k()D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/graphhopper/util/RoundaboutInstruction;->setDirOfRotation(D)Lcom/graphhopper/util/RoundaboutInstruction;

    const-wide/16 v15, 0x0

    cmpg-double v12, v9, v15

    if-gez v12, :cond_11

    const-wide v15, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_8

    :cond_11
    const-wide v15, 0x400921fb54442d18L    # Math.PI

    :goto_8
    sub-double v9, v15, v9

    invoke-virtual {v0, v9, v10}, Lcom/graphhopper/util/RoundaboutInstruction;->setRadian(D)Lcom/graphhopper/util/RoundaboutInstruction;

    :cond_12
    :goto_9
    if-eqz p3, :cond_13

    invoke-virtual {v0}, Lcom/graphhopper/util/Instruction;->setUseRawName()V

    :cond_13
    invoke-virtual {v0, v13, v14}, Lcom/graphhopper/util/Instruction;->setDistance(D)Lcom/graphhopper/util/Instruction;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/graphhopper/util/Instruction;->setTime(J)Lcom/graphhopper/util/Instruction;

    invoke-virtual {v6, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v19

    goto/16 :goto_3

    :cond_14
    move-object/from16 v17, v8

    move-object/from16 v19, v9

    const/4 v5, 0x0

    invoke-virtual {v3, v6}, Lcom/graphhopper/ResponsePath;->setInstructions(Lcom/graphhopper/util/InstructionList;)V

    goto :goto_a

    :cond_15
    move-object/from16 v17, v8

    move-object/from16 v19, v9

    const/4 v5, 0x0

    :goto_a
    const-string v0, "details"

    invoke-virtual {v1, v0}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lb6/q;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lb6/q;->x()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb6/q;

    invoke-virtual {v7}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb6/q;

    const-class v9, Lcom/graphhopper/util/details/PathDetail;

    move-object/from16 v10, p0

    iget-object v11, v10, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v11, v9}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Lb6/c0;->f(Ljava/lang/Object;Lb6/l;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    move-object/from16 v10, p0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_17
    move-object/from16 v10, p0

    invoke-virtual {v3, v2}, Lcom/graphhopper/ResponsePath;->addPathDetails(Ljava/util/Map;)V

    goto :goto_d

    :cond_18
    move-object/from16 v10, p0

    goto :goto_d

    :cond_19
    move-object v10, v0

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    const/4 v5, 0x0

    :goto_d
    const-string v0, "points_order"

    invoke-virtual {v1, v0}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    const-class v2, Ljava/util/List;

    iget-object v4, v10, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v4, v2}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lb6/c0;->f(Ljava/lang/Object;Lb6/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/graphhopper/ResponsePath;->setPointsOrder(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    :goto_e
    move-object/from16 v0, v19

    goto :goto_10

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/graphhopper/ResponsePath;->getWaypoints()Lcom/graphhopper/util/PointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v5

    :goto_f
    invoke-virtual {v3}, Lcom/graphhopper/ResponsePath;->getWaypoints()Lcom/graphhopper/util/PointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1b
    invoke-virtual {v3, v0}, Lcom/graphhopper/ResponsePath;->setPointsOrder(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    goto :goto_e

    :goto_10
    invoke-virtual {v1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Lb6/q;->k()D

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Lb6/q;->o()J

    move-result-wide v0

    invoke-virtual {v3, v4, v5}, Lcom/graphhopper/ResponsePath;->setDistance(D)Lcom/graphhopper/ResponsePath;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/graphhopper/ResponsePath;->setTime(J)Lcom/graphhopper/ResponsePath;

    return-object v3
.end method

.method public static decodePolyline(Ljava/lang/String;IZD)Lcom/graphhopper/util/PointList;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_8

    new-instance v5, Lcom/graphhopper/util/PointList;

    move/from16 v4, p1

    invoke-direct {v5, v4, v1}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v12, 0x0

    move v6, v12

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v6, v4, :cond_7

    move v10, v12

    move v11, v10

    :goto_1
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x3f

    and-int/lit8 v14, v6, 0x1f

    shl-int/2addr v14, v11

    or-int/2addr v10, v14

    add-int/lit8 v11, v11, 0x5

    const/16 v14, 0x20

    if-ge v6, v14, :cond_6

    and-int/lit8 v6, v10, 0x1

    if-eqz v6, :cond_0

    shr-int/lit8 v6, v10, 0x1

    not-int v6, v6

    goto :goto_2

    :cond_0
    shr-int/lit8 v6, v10, 0x1

    :goto_2
    add-int v15, v7, v6

    move v6, v12

    move v7, v6

    :goto_3
    add-int/lit8 v10, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x3f

    and-int/lit8 v13, v11, 0x1f

    shl-int/2addr v13, v7

    or-int/2addr v6, v13

    add-int/lit8 v7, v7, 0x5

    if-ge v11, v14, :cond_5

    and-int/lit8 v7, v6, 0x1

    shr-int/lit8 v6, v6, 0x1

    if-eqz v7, :cond_1

    not-int v6, v6

    :cond_1
    add-int v13, v8, v6

    if-eqz v1, :cond_4

    move v6, v12

    move v7, v6

    :goto_4
    add-int/lit8 v16, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x3f

    and-int/lit8 v10, v8, 0x1f

    shl-int/2addr v10, v7

    or-int/2addr v6, v10

    add-int/lit8 v7, v7, 0x5

    if-ge v8, v14, :cond_3

    and-int/lit8 v7, v6, 0x1

    shr-int/lit8 v6, v6, 0x1

    if-eqz v7, :cond_2

    not-int v6, v6

    :cond_2
    add-int v14, v9, v6

    int-to-double v6, v15

    div-double/2addr v6, v2

    int-to-double v8, v13

    div-double/2addr v8, v2

    int-to-double v10, v14

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v10, v10, v17

    invoke-virtual/range {v5 .. v11}, Lcom/graphhopper/util/PointList;->add(DDD)V

    move v9, v14

    move/from16 v6, v16

    goto :goto_5

    :cond_3
    move/from16 v10, v16

    goto :goto_4

    :cond_4
    int-to-double v6, v15

    div-double/2addr v6, v2

    move/from16 p1, v9

    int-to-double v8, v13

    div-double/2addr v8, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/graphhopper/util/PointList;->add(DD)V

    move/from16 v9, p1

    move v6, v10

    :goto_5
    move v8, v13

    move v7, v15

    goto :goto_0

    :cond_5
    move v13, v10

    goto :goto_3

    :cond_6
    move v6, v13

    goto :goto_1

    :cond_7
    return-object v5

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "multiplier cannot be smaller than 1 but was "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " for polyline "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static deserializePointList(Lb6/c0;Lb6/q;ZD)Lcom/graphhopper/util/PointList;
    .locals 2

    invoke-virtual {p1}, Lb6/q;->A()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->decodePolyline(Ljava/lang/String;IZD)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p2, Lpb/q;

    iget-object p3, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {p3, p2}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb6/c0;->f(Ljava/lang/Object;Lb6/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb/q;

    invoke-static {p0}, Lcom/graphhopper/util/PointList;->fromLineString(Lpb/q;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method

.method public static readErrors(Lb6/c0;Lb6/q;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/c0;",
            "Lb6/q;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "message"

    invoke-virtual {p1, v1}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "hints"

    invoke-virtual {p1, v2}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1, v2}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v2

    invoke-virtual {v2}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb6/q;

    const-string v4, "details"

    invoke-virtual {v3, v4}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v4

    invoke-virtual {v4}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v1}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v5

    invoke-virtual {v5}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-class v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-class v6, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v4, Lcom/graphhopper/util/exceptions/DetailedRuntimeException;

    invoke-static {p0, v3}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->toMap(Lb6/c0;Lb6/q;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/DetailedRuntimeException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-class v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v4, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;

    invoke-static {p0, v3}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->toMap(Lb6/c0;Lb6/q;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-class v6, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v4, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;

    invoke-static {p0, v3}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->toMap(Lb6/c0;Lb6/q;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-class v6, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v4, "max_visited_nodes"

    invoke-virtual {v3, v4}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v3

    invoke-virtual {v3}, Lb6/q;->m()I

    move-result v3

    new-instance v4, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-class v6, Lcom/graphhopper/util/exceptions/PointNotFoundException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "point_index"

    if-eqz v6, :cond_7

    invoke-virtual {v3, v7}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v3

    invoke-virtual {v3}, Lb6/q;->m()I

    move-result v3

    new-instance v4, Lcom/graphhopper/util/exceptions/PointNotFoundException;

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/PointNotFoundException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const-class v6, Lcom/graphhopper/util/exceptions/PointOutOfBoundsException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3, v7}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v3

    invoke-virtual {v3}, Lb6/q;->m()I

    move-result v3

    new-instance v4, Lcom/graphhopper/util/exceptions/PointOutOfBoundsException;

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/PointOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v4, Lcom/graphhopper/util/exceptions/DetailedRuntimeException;

    invoke-static {p0, v3}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->toMap(Lb6/c0;Lb6/q;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/graphhopper/util/exceptions/DetailedRuntimeException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    new-instance v6, Lcom/graphhopper/util/exceptions/DetailedRuntimeException;

    const-string v7, " "

    invoke-static {v4, v7, v5}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper;->toMap(Lb6/c0;Lb6/q;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v6, v4, v3}, Lcom/graphhopper/util/exceptions/DetailedRuntimeException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, v1}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1, v1}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-virtual {p1}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1, v1}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-virtual {p1}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method

.method private static toMap(Lb6/c0;Lb6/q;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/c0;",
            "Lb6/q;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper$1;

    invoke-direct {v0}, Lcom/graphhopper/jackson/ResponsePathDeserializerHelper$1;-><init>()V

    iget-object v1, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/type/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sget-object v2, Lt6/p;->p:Lt6/o;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb6/c0;->f(Ljava/lang/Object;Lb6/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
