.class public final Lid/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 31

    move-object/from16 v0, p0

    const-string v1, "body"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lua/nav/routing/a;->a:Lia/r;

    sget-object v2, Lua/nav/routing/OsrmResponse;->Companion:Lua/nav/routing/OsrmResponse$Companion;

    invoke-virtual {v2}, Lua/nav/routing/OsrmResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v1, v0, v2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/OsrmResponse;

    iget-object v1, v0, Lua/nav/routing/OsrmResponse;->a:Ljava/lang/String;

    const-string v2, "Ok"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    new-instance v1, Ld1/h;

    iget-object v3, v0, Lua/nav/routing/OsrmResponse;->a:Ljava/lang/String;

    iget-object v0, v0, Lua/nav/routing/OsrmResponse;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v0, "OSRM: "

    const-string v4, " "

    invoke-static {v0, v3, v4, v2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ld1/h;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "matchings"

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lua/nav/routing/OsrmResponse;->d:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lua/nav/routing/OsrmResponse;->c:Ljava/util/List;

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/OsrmRoute;

    iget-object v5, v4, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    invoke-static {v5}, Lid/i1;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v4, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/OsrmLeg;

    iget-object v9, v9, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v25, v8

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/OsrmStep;

    iget-object v12, v8, Lua/nav/routing/OsrmStep;->c:Ljava/lang/String;

    invoke-static {v12}, Lid/i1;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v15, v8, Lua/nav/routing/OsrmStep;->e:Lua/nav/routing/OsrmManeuver;

    iget-object v10, v15, Lua/nav/routing/OsrmManeuver;->a:Ljava/lang/String;

    iget-object v3, v15, Lua/nav/routing/OsrmManeuver;->d:Ljava/util/List;

    iget-object v7, v15, Lua/nav/routing/OsrmManeuver;->b:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v15, Lua/nav/routing/OsrmManeuver;->c:Ljava/lang/Integer;

    move-object/from16 v18, v0

    new-instance v0, Lua/nav/routing/GeoPoint;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move/from16 v28, v11

    move-object/from16 v29, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    move-object/from16 v30, v2

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v11, v12, v2, v3}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-object v2, v8, Lua/nav/routing/OsrmStep;->d:Ljava/lang/String;

    iget-wide v11, v8, Lua/nav/routing/OsrmStep;->a:D

    move-object/from16 v20, v2

    iget-wide v2, v8, Lua/nav/routing/OsrmStep;->b:D

    move-object/from16 v19, v0

    iget-object v0, v15, Lua/nav/routing/OsrmManeuver;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_4

    goto :goto_7

    :cond_4
    move-wide/from16 v23, v2

    :goto_6
    move-object/from16 v26, v0

    goto :goto_8

    :cond_5
    :goto_7
    iget-object v0, v15, Lua/nav/routing/OsrmManeuver;->a:Ljava/lang/String;

    move-wide/from16 v23, v2

    iget-object v2, v15, Lua/nav/routing/OsrmManeuver;->b:Ljava/lang/String;

    iget-object v3, v8, Lua/nav/routing/OsrmStep;->d:Ljava/lang/String;

    iget-object v8, v15, Lua/nav/routing/OsrmManeuver;->c:Ljava/lang/Integer;

    invoke-static {v0, v2, v3, v8}, Lid/i1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_8
    new-instance v15, Lua/nav/routing/Step;

    move-object/from16 v17, v7

    move-object/from16 v16, v10

    move-wide/from16 v21, v11

    invoke-direct/range {v15 .. v26}, Lua/nav/routing/Step;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    add-int v25, v25, v0

    move-object/from16 v0, v27

    move/from16 v11, v28

    move-object/from16 v2, v30

    const/16 v3, 0xa

    goto/16 :goto_4

    :cond_7
    move/from16 v8, v25

    goto/16 :goto_3

    :cond_8
    move-object/from16 v27, v0

    move-object/from16 v30, v2

    move/from16 v28, v11

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    sget-object v2, Lu8/r;->l:Lu8/r;

    if-eqz v0, :cond_a

    :cond_9
    const/16 v8, 0xa

    goto/16 :goto_e

    :cond_a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/OsrmLeg;

    iget-object v3, v3, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/OsrmLeg;

    iget-object v6, v6, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    if-eqz v6, :cond_10

    iget-object v6, v6, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    if-eqz v6, :cond_10

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/OsrmMaxspeed;

    iget-object v10, v9, Lua/nav/routing/OsrmMaxspeed;->a:Ljava/lang/Integer;

    if-eqz v10, :cond_f

    iget-boolean v11, v9, Lua/nav/routing/OsrmMaxspeed;->c:Z

    if-nez v11, :cond_f

    iget-boolean v11, v9, Lua/nav/routing/OsrmMaxspeed;->d:Z

    if-eqz v11, :cond_d

    goto :goto_c

    :cond_d
    iget-object v9, v9, Lua/nav/routing/OsrmMaxspeed;->b:Ljava/lang/String;

    const-string v11, "mph"

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3ff9be76c8b43958L    # 1.609

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ll9/a;->y(D)I

    move-result v9

    goto :goto_d

    :cond_e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v9, 0x0

    :goto_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    const/16 v8, 0xa

    move-object v7, v2

    :cond_11
    invoke-static {v7, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_a

    :cond_12
    const/16 v8, 0xa

    goto :goto_f

    :goto_e
    const/4 v0, 0x0

    :goto_f
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/OsrmLeg;

    iget-object v7, v7, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/OsrmStep;

    iget-object v9, v9, Lua/nav/routing/OsrmStep;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/OsrmIntersection;

    iget-boolean v11, v10, Lua/nav/routing/OsrmIntersection;->b:Z

    iget-object v10, v10, Lua/nav/routing/OsrmIntersection;->a:Ljava/util/List;

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_13

    goto :goto_12

    :cond_13
    move/from16 v11, v28

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v11, v15

    invoke-static {v11, v12}, Ll9/a;->A(D)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    mul-double v17, v17, v15

    invoke-static/range {v17 .. v18}, Ll9/a;->A(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v15, Lt8/j;

    invoke-direct {v15, v11, v12}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_14

    new-instance v11, Lua/nav/routing/GeoPoint;

    const/4 v12, 0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object v12, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    move-object/from16 v19, v1

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {v11, v8, v9, v0, v1}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-interface {v3, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_14
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object v12, v9

    :goto_13
    move-object v9, v12

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    const/16 v8, 0xa

    :cond_15
    const/16 v28, 0x1

    goto/16 :goto_12

    :cond_16
    const/16 v28, 0x1

    goto/16 :goto_11

    :cond_17
    const/16 v28, 0x1

    goto/16 :goto_10

    :cond_18
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_16

    :cond_19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/OsrmLeg;

    iget-object v1, v1, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    goto :goto_14

    :cond_1b
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/OsrmLeg;

    iget-object v6, v6, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    if-eqz v6, :cond_1c

    iget-object v6, v6, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    if-nez v6, :cond_1d

    :cond_1c
    move-object v6, v2

    :cond_1d
    invoke-static {v6, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_15

    :cond_1e
    :goto_16
    const/4 v0, 0x0

    :cond_1f
    iget-wide v8, v4, Lua/nav/routing/OsrmRoute;->a:D

    iget-wide v10, v4, Lua/nav/routing/OsrmRoute;->b:D

    iget-object v1, v4, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-wide v6, v4, Lua/nav/routing/OsrmRoute;->b:D

    sub-double/2addr v6, v1

    const-wide/16 v1, 0x0

    cmpg-double v4, v6, v1

    if-gez v4, :cond_20

    move-wide v6, v1

    :cond_20
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v12, v1

    goto :goto_17

    :cond_21
    const/4 v12, 0x0

    :goto_17
    invoke-static {v5}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/OsrmLeg;

    if-eqz v1, :cond_23

    iget-object v1, v1, Lua/nav/routing/OsrmLeg;->a:Ljava/lang/String;

    if-nez v1, :cond_22

    goto :goto_18

    :cond_22
    move-object v15, v1

    goto :goto_19

    :cond_23
    :goto_18
    move-object/from16 v15, v30

    :goto_19
    if-eqz v16, :cond_25

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v28, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_24

    goto :goto_1b

    :cond_24
    :goto_1a
    const/16 v16, 0x0

    goto :goto_1b

    :cond_25
    const/16 v28, 0x1

    goto :goto_1a

    :goto_1b
    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_26

    move-object/from16 v17, v0

    goto :goto_1c

    :cond_26
    const/16 v17, 0x0

    :goto_1c
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v18

    new-instance v6, Lua/nav/routing/Route;

    move-object/from16 v7, p1

    const/16 v0, 0xa

    invoke-direct/range {v6 .. v18}, Lua/nav/routing/Route;-><init>(Ljava/lang/String;DDLjava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v0

    move-object/from16 v0, v27

    move-object/from16 v2, v30

    goto/16 :goto_2

    :cond_27
    return-object v1
.end method
