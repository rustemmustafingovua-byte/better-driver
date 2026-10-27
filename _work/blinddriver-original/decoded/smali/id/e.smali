.class public final Lid/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/d;


# instance fields
.field public final a:Z

.field public final b:Lb0/q0;

.field public c:Lua/nav/routing/PhoneGraphHopper;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/e;->Companion:Lid/d;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb0/q0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lb0/q0;-><init>(Ljava/lang/Object;ZI)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lid/e;->a:Z

    iput-object v0, p0, Lid/e;->b:Lb0/q0;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public static e(Lcom/graphhopper/ResponsePath;Ljava/lang/String;Z)Lua/nav/routing/Route;
    .locals 40

    invoke-virtual/range {p0 .. p0}, Lcom/graphhopper/ResponsePath;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    invoke-direct {v4, v5, v6, v9, v10}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/graphhopper/ResponsePath;->getInstructions()Lcom/graphhopper/util/InstructionList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "iterator(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/util/Instruction;

    invoke-virtual {v5}, Lcom/graphhopper/util/Instruction;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/graphhopper/util/PointList;->size()I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v9, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    :goto_2
    move-wide/from16 v20, v10

    goto :goto_3

    :cond_1
    invoke-static {v8}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/GeoPoint;

    iget-wide v10, v10, Lua/nav/routing/GeoPoint;->a:D

    goto :goto_2

    :goto_3
    invoke-virtual {v9}, Lcom/graphhopper/util/PointList;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v9, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    :goto_4
    move-wide/from16 v22, v9

    goto :goto_5

    :cond_2
    invoke-static {v8}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    iget-wide v9, v9, Lua/nav/routing/GeoPoint;->b:D

    goto :goto_4

    :goto_5
    add-int/lit8 v9, v1, -0x1

    if-ge v4, v9, :cond_4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    iget-wide v9, v9, Lua/nav/routing/GeoPoint;->a:D

    cmpg-double v9, v9, v20

    if-nez v9, :cond_3

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    iget-wide v9, v9, Lua/nav/routing/GeoPoint;->b:D

    cmpg-double v9, v9, v22

    if-nez v9, :cond_3

    goto :goto_6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    :goto_6
    instance-of v9, v5, Lcom/graphhopper/util/RoundaboutInstruction;

    if-eqz v9, :cond_5

    move-object v9, v5

    check-cast v9, Lcom/graphhopper/util/RoundaboutInstruction;

    goto :goto_7

    :cond_5
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/graphhopper/util/RoundaboutInstruction;->getExitNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-lez v9, :cond_6

    move-object/from16 v24, v10

    goto :goto_8

    :cond_6
    const/16 v24, 0x0

    :goto_8
    new-instance v12, Lid/f;

    invoke-virtual {v5}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v13

    invoke-virtual {v5}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    move-object v14, v6

    goto :goto_9

    :cond_7
    move-object v14, v7

    :goto_9
    invoke-virtual {v5}, Lcom/graphhopper/util/Instruction;->getDistance()D

    move-result-wide v15

    invoke-virtual {v5}, Lcom/graphhopper/util/Instruction;->getTime()J

    move-result-wide v17

    move/from16 v19, v4

    invoke-direct/range {v12 .. v24}, Lid/f;-><init>(ILjava/lang/String;DJIDDLjava/lang/Integer;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {v8}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v13, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v3, v3, Lua/nav/routing/GeoPoint;->b:D

    const/4 v5, 0x1

    add-int/lit8 v22, v1, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v2

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    add-int/lit8 v11, v10, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lid/f;

    if-nez v10, :cond_9

    new-instance v23, Lid/h;

    move-object/from16 v37, v8

    iget-wide v7, v12, Lid/f;->f:D

    move-object/from16 v38, v6

    iget-wide v5, v12, Lid/f;->g:D

    iget-object v10, v12, Lid/f;->b:Ljava/lang/String;

    move-wide v15, v3

    iget-wide v2, v12, Lid/f;->c:D

    move-wide/from16 v32, v2

    iget-wide v2, v12, Lid/f;->d:J

    iget v4, v12, Lid/f;->e:I

    const-string v24, "depart"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 v34, v2

    move/from16 v36, v4

    move-wide/from16 v29, v5

    move-wide/from16 v27, v7

    move-object/from16 v31, v10

    invoke-direct/range {v23 .. v36}, Lid/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;DDLjava/lang/String;DJI)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_9
    move-wide v15, v3

    move-object/from16 v38, v6

    move-object/from16 v37, v8

    iget v2, v12, Lid/f;->a:I

    iget-object v3, v12, Lid/f;->b:Ljava/lang/String;

    iget-wide v4, v12, Lid/f;->d:J

    iget-wide v6, v12, Lid/f;->c:D

    const/4 v8, 0x4

    if-ne v2, v8, :cond_a

    new-instance v23, Lid/h;

    iget-wide v4, v12, Lid/f;->f:D

    iget-wide v6, v12, Lid/f;->g:D

    const-wide/16 v34, 0x0

    iget v2, v12, Lid/f;->e:I

    const-string v24, "arrive"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v32, 0x0

    move/from16 v36, v2

    move-object/from16 v31, v3

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    invoke-direct/range {v23 .. v36}, Lid/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;DDLjava/lang/String;DJI)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_a
    move-object/from16 v31, v3

    if-nez v2, :cond_b

    const-wide v17, 0x407f400000000000L    # 500.0

    cmpg-double v3, v6, v17

    if-gez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    const/4 v8, 0x5

    if-eq v2, v8, :cond_d

    const/high16 v8, -0x80000000

    if-eq v2, v8, :cond_d

    if-eqz v3, :cond_c

    goto :goto_c

    :cond_c
    move-wide/from16 v17, v4

    goto :goto_d

    :cond_d
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/h;

    move-wide/from16 v17, v4

    iget-wide v3, v2, Lid/h;->g:D

    add-double/2addr v3, v6

    iput-wide v3, v2, Lid/h;->g:D

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/h;

    iget-wide v3, v2, Lid/h;->h:J

    add-long v3, v3, v17

    iput-wide v3, v2, Lid/h;->h:J

    goto/16 :goto_f

    :goto_d
    iget v2, v12, Lid/f;->a:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    new-instance v23, Lid/h;

    iget-object v2, v12, Lid/f;->h:Ljava/lang/Integer;

    iget-wide v3, v12, Lid/f;->f:D

    iget-wide v5, v12, Lid/f;->g:D

    iget-wide v7, v12, Lid/f;->c:D

    move-object/from16 v26, v2

    move-wide/from16 v27, v3

    iget-wide v2, v12, Lid/f;->d:J

    iget v4, v12, Lid/f;->e:I

    const-string v24, "roundabout"

    const/16 v25, 0x0

    move-wide/from16 v34, v2

    move/from16 v36, v4

    move-wide/from16 v29, v5

    move-wide/from16 v32, v7

    invoke-direct/range {v23 .. v36}, Lid/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;DDLjava/lang/String;DJI)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_e
    const/16 v3, -0x62

    const-string v4, "turn"

    if-eq v2, v3, :cond_11

    const/4 v3, -0x8

    if-eq v2, v3, :cond_11

    const/4 v3, -0x7

    const-string v5, "left"

    const-string v8, "fork"

    if-eq v2, v3, :cond_10

    const/4 v3, 0x7

    const-string v10, "right"

    if-eq v2, v3, :cond_f

    const/16 v3, 0x8

    if-eq v2, v3, :cond_11

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_e

    :pswitch_0
    new-instance v2, Lt8/j;

    const-string v3, "sharp right"

    invoke-direct {v2, v4, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_1
    new-instance v2, Lt8/j;

    invoke-direct {v2, v4, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_2
    new-instance v2, Lt8/j;

    const-string v3, "slight right"

    invoke-direct {v2, v4, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_3
    new-instance v2, Lt8/j;

    const-string v3, "new name"

    const-string v4, "straight"

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_4
    new-instance v2, Lt8/j;

    const-string v3, "slight left"

    invoke-direct {v2, v4, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_5
    new-instance v2, Lt8/j;

    invoke-direct {v2, v4, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_6
    new-instance v2, Lt8/j;

    const-string v3, "sharp left"

    invoke-direct {v2, v4, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_f
    new-instance v2, Lt8/j;

    invoke-direct {v2, v8, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_10
    new-instance v2, Lt8/j;

    invoke-direct {v2, v8, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_11
    new-instance v2, Lt8/j;

    const-string v3, "uturn"

    invoke-direct {v2, v4, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    if-nez v2, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/h;

    iget-wide v3, v2, Lid/h;->g:D

    add-double/2addr v3, v6

    iput-wide v3, v2, Lid/h;->g:D

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/h;

    iget-wide v3, v2, Lid/h;->h:J

    add-long v3, v3, v17

    iput-wide v3, v2, Lid/h;->h:J

    goto :goto_f

    :cond_12
    new-instance v23, Lid/h;

    iget-object v3, v2, Lt8/j;->l:Ljava/lang/Object;

    move-object/from16 v24, v3

    check-cast v24, Ljava/lang/String;

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    iget-wide v2, v12, Lid/f;->f:D

    iget-wide v4, v12, Lid/f;->g:D

    iget-wide v6, v12, Lid/f;->c:D

    move-wide/from16 v27, v2

    iget-wide v2, v12, Lid/f;->d:J

    iget v8, v12, Lid/f;->e:I

    const/16 v26, 0x0

    move-wide/from16 v34, v2

    move-wide/from16 v29, v4

    move-wide/from16 v32, v6

    move/from16 v36, v8

    invoke-direct/range {v23 .. v36}, Lid/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;DDLjava/lang/String;DJI)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_f
    move v10, v11

    move-wide v3, v15

    move-object/from16 v8, v37

    move-object/from16 v6, v38

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_14
    move-wide v15, v3

    move-object/from16 v38, v6

    move-object/from16 v37, v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/h;

    iget-object v2, v2, Lid/h;->a:Ljava/lang/String;

    const-string v3, "arrive"

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_10

    :cond_15
    move/from16 v2, v22

    goto :goto_11

    :cond_16
    :goto_10
    new-instance v9, Lid/h;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string v10, "arrive"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v17, ""

    invoke-direct/range {v9 .. v22}, Lid/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;DDLjava/lang/String;DJI)V

    move/from16 v2, v22

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    new-instance v9, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_17

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lid/h;

    new-instance v10, Lua/nav/routing/Step;

    iget-object v11, v8, Lid/h;->a:Ljava/lang/String;

    iget-object v12, v8, Lid/h;->b:Ljava/lang/String;

    iget-object v13, v8, Lid/h;->c:Ljava/lang/Integer;

    new-instance v14, Lua/nav/routing/GeoPoint;

    const-wide v15, 0x408f400000000000L    # 1000.0

    iget-wide v6, v8, Lid/h;->d:D

    move/from16 v23, v4

    iget-wide v3, v8, Lid/h;->e:D

    invoke-direct {v14, v6, v7, v3, v4}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move-wide v3, v15

    iget-object v15, v8, Lid/h;->f:Ljava/lang/String;

    iget-wide v6, v8, Lid/h;->g:D

    move-wide/from16 v16, v3

    iget-wide v3, v8, Lid/h;->h:J

    long-to-double v3, v3

    div-double v18, v3, v16

    iget v3, v8, Lid/h;->i:I

    invoke-static {v11, v12, v15, v13}, Lid/i1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    move/from16 v20, v3

    move-wide/from16 v16, v6

    invoke-direct/range {v10 .. v21}, Lua/nav/routing/Step;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v23

    const/16 v3, 0xa

    goto :goto_12

    :cond_17
    const-wide v16, 0x408f400000000000L    # 1000.0

    invoke-virtual/range {p0 .. p0}, Lcom/graphhopper/ResponsePath;->getPathDetails()Ljava/util/Map;

    move-result-object v1

    const-string v3, "max_speed"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget-object v3, Lu8/r;->l:Lu8/r;

    if-nez v1, :cond_18

    move-object v1, v3

    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/util/details/PathDetail;

    new-instance v6, Lt8/p;

    invoke-virtual {v5}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5}, Lcom/graphhopper/util/details/PathDetail;->getLast()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Ljava/lang/Number;

    if-eqz v10, :cond_19

    check-cast v5, Ljava/lang/Number;

    goto :goto_14

    :cond_19
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_15

    :cond_1a
    const/4 v5, 0x0

    :goto_15
    invoke-direct {v6, v7, v8, v5}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1b
    new-instance v1, Lua/nav/routing/Route;

    invoke-virtual/range {p0 .. p0}, Lcom/graphhopper/ResponsePath;->getDistance()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/graphhopper/ResponsePath;->getTime()J

    move-result-wide v7

    long-to-double v7, v7

    div-double v7, v7, v16

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_1c
    :goto_16
    if-ge v12, v11, :cond_1d

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lid/f;

    iget-object v14, v13, Lid/f;->b:Ljava/lang/String;

    invoke-static {v14}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c

    iget-object v14, v13, Lid/f;->b:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v16, v1

    iget-wide v0, v13, Lid/f;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lb0/u2;

    const/4 v13, 0x5

    invoke-direct {v1, v13}, Lb0/u2;-><init>(I)V

    new-instance v13, Lid/g;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-direct {v13, v3, v1}, Lid/g;-><init>(ILi9/e;)V

    invoke-interface {v10, v14, v0, v13}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_16

    :cond_1d
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-entries>(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lbd/d;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lbd/d;-><init>(I)V

    invoke-static {v0, v1}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v10

    new-instance v14, Lgd/e;

    const/4 v0, 0x3

    invoke-direct {v14, v0}, Lgd/e;-><init>(I)V

    const/16 v15, 0x1e

    const-string v11, ", "

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1e

    const-string v1, " \u00b7 \u0454 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0437\u0430 \u0433\u0430\u0431\u0430\u0440\u0438\u0442\u0430\u043c\u0438"

    goto :goto_17

    :cond_1e
    move-object/from16 v1, v38

    :goto_17
    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1f
    if-ge v3, v2, :cond_22

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v3, v3, 0x1

    check-cast v11, Lt8/p;

    iget-object v12, v11, Lt8/p;->l:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget-object v13, v11, Lt8/p;->m:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v11, v11, Lt8/p;->n:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Double;

    if-eqz v11, :cond_21

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_21

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-nez v14, :cond_21

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v18, 0x0

    cmpg-double v14, v14, v18

    if-gtz v14, :cond_20

    goto :goto_18

    :cond_20
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    double-to-int v11, v14

    goto :goto_19

    :cond_21
    :goto_18
    const/4 v11, 0x0

    :goto_19
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    :goto_1a
    if-ge v12, v13, :cond_1f

    aput v11, v0, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_22
    if-eqz v1, :cond_25

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_23

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_23
    :goto_1c
    move-object v11, v3

    goto :goto_1d

    :cond_24
    const/16 v39, 0x0

    aget v0, v0, v39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1c

    :cond_25
    move-object/from16 v11, v17

    :goto_1d
    const/16 v12, 0x308

    move-object/from16 v3, p1

    move-wide v4, v5

    move-wide v6, v7

    move-object/from16 v2, v16

    move-object/from16 v8, v37

    invoke-direct/range {v2 .. v12}, Lua/nav/routing/Route;-><init>(Ljava/lang/String;DDLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V

    return-object v16

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lid/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lid/e;->c:Lua/nav/routing/PhoneGraphHopper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/GraphHopper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lid/e;->c:Lua/nav/routing/PhoneGraphHopper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lid/e;->b:Lb0/q0;

    invoke-virtual {p0}, Lb0/q0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    const-string v1, "properties.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final c(DDD)Ljava/util/List;
    .locals 13

    invoke-virtual {p0}, Lid/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lid/e;->d()Lcom/graphhopper/GraphHopper;

    move-result-object p0

    const-wide v0, 0x40fafcc000000000L    # 110540.0

    div-double v0, p5, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v2, v4

    div-double v2, p5, v2

    new-instance v4, Lcom/graphhopper/util/shapes/BBox;

    sub-double v5, p3, v2

    add-double v7, p3, v2

    sub-double v9, p1, v0

    add-double v11, p1, v0

    invoke-direct/range {v4 .. v12}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getEncodingManager()Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object v0

    const-string v1, "road_class"

    const-class v2, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v1

    const-string v2, "car_access"

    invoke-virtual {v0, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getLocationIndex()Lcom/graphhopper/storage/index/LocationIndex;

    move-result-object p0

    new-instance v6, Lid/c;

    move-object/from16 p4, v0

    move-object/from16 p6, v1

    move-object/from16 p3, v2

    move-object/from16 p5, v3

    move-object p2, v5

    move-object p1, v6

    invoke-direct/range {p1 .. p6}, Lid/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, p1

    move-object/from16 v0, p5

    invoke-interface {p0, v4, v1}, Lcom/graphhopper/storage/index/LocationIndex;->query(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V

    return-object v0
.end method

.method public final d()Lcom/graphhopper/GraphHopper;
    .locals 5

    iget-object v0, p0, Lid/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lid/e;->c:Lua/nav/routing/PhoneGraphHopper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lid/e;->b:Lb0/q0;

    invoke-virtual {v1}, Lb0/q0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/GraphHopperConfig;

    invoke-direct {v2}, Lcom/graphhopper/GraphHopperConfig;-><init>()V

    const-string v3, "graph.location"

    invoke-virtual {v2, v3, v1}, Lcom/graphhopper/GraphHopperConfig;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GraphHopperConfig;

    const-string v3, "graph.encoded_values"

    iget-boolean v4, p0, Lid/e;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "road_access, car_access, hgv, max_width, max_height, max_weight, max_weight_except, car_average_speed, max_speed, road_class, roundabout, road_environment"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    const-string v4, "car_access, car_average_speed, road_access, max_speed, road_class, roundabout, road_environment"

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GraphHopperConfig;

    const-string v3, "graph.dataaccess.default_type"

    const-string v4, "MMAP"

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GraphHopperConfig;

    const-string v3, "import.osm.ignored_highways"

    const-string v4, "footway,construction,cycleway,path,steps"

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GraphHopperConfig;

    const-string v3, "prepare.min_network_size"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GraphHopperConfig;

    iget-boolean v3, p0, Lid/e;->a:Z

    if-eqz v3, :cond_2

    new-instance v3, Lcom/graphhopper/config/Profile;

    const-string v4, "truck"

    invoke-direct {v3, v4}, Lcom/graphhopper/config/Profile;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/graphhopper/util/CustomModel;

    invoke-direct {v4}, Lcom/graphhopper/util/CustomModel;-><init>()V

    invoke-virtual {v3, v4}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/GraphHopperConfig;->setProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;

    new-instance v3, Lcom/graphhopper/config/CHProfile;

    const-string v4, "truck"

    invoke-direct {v3, v4}, Lcom/graphhopper/config/CHProfile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/GraphHopperConfig;->setCHProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/graphhopper/config/Profile;

    const-string v4, "car"

    invoke-direct {v3, v4}, Lcom/graphhopper/config/Profile;-><init>(Ljava/lang/String;)V

    const-string v4, "car.json"

    invoke-static {v4}, Lcom/graphhopper/util/GHUtility;->loadCustomModelFromJar(Ljava/lang/String;)Lcom/graphhopper/util/CustomModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/GraphHopperConfig;->setProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;

    new-instance v3, Lcom/graphhopper/config/CHProfile;

    const-string v4, "car"

    invoke-direct {v3, v4}, Lcom/graphhopper/config/CHProfile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/GraphHopperConfig;->setCHProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;

    :goto_1
    new-instance v3, Lua/nav/routing/PhoneGraphHopper;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v3, v1}, Lua/nav/routing/PhoneGraphHopper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/graphhopper/GraphHopper;->init(Lcom/graphhopper/GraphHopperConfig;)Lcom/graphhopper/GraphHopper;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/graphhopper/GraphHopper;->setAllowWrites(Z)Lcom/graphhopper/GraphHopper;

    invoke-virtual {v3}, Lcom/graphhopper/GraphHopper;->load()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v3, p0, Lid/e;->c:Lua/nav/routing/PhoneGraphHopper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v3

    :cond_3
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0
.end method
