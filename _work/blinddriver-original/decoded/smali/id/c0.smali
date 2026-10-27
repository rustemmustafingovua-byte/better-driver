.class public final Lid/c0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lcom/graphhopper/GraphHopper;

.field public m:Lid/l0;

.field public n:Lj9/x;

.field public o:Lj9/x;

.field public p:J

.field public q:J

.field public r:J

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lid/d0;


# direct methods
.method public constructor <init>(Lid/d0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lid/c0;->x:Lid/d0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Lid/c0;

    iget-object p0, p0, Lid/c0;->x:Lid/d0;

    invoke-direct {v0, p0, p2}, Lid/c0;-><init>(Lid/d0;Ly8/c;)V

    iput-object p1, v0, Lid/c0;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lid/c0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lid/c0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lid/c0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 60

    move-object/from16 v0, p0

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, v0, Lid/c0;->w:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v0, Lid/c0;->v:I

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v12, :cond_2

    if-eq v4, v9, :cond_1

    if-ne v4, v6, :cond_0

    iget v4, v0, Lid/c0;->u:I

    iget v13, v0, Lid/c0;->t:I

    iget-wide v14, v0, Lid/c0;->r:J

    iget v7, v0, Lid/c0;->s:I

    move/from16 v16, v7

    iget-wide v6, v0, Lid/c0;->q:J

    iget-wide v8, v0, Lid/c0;->p:J

    iget-object v11, v0, Lid/c0;->o:Lj9/x;

    iget-object v12, v0, Lid/c0;->n:Lj9/x;

    iget-object v5, v0, Lid/c0;->m:Lid/l0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v50, v1

    move-wide/from16 v18, v14

    move-wide v14, v6

    move-wide v6, v8

    move-object v8, v3

    move v9, v4

    move/from16 v4, v16

    goto/16 :goto_3a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v4, v0, Lid/c0;->l:Lcom/graphhopper/GraphHopper;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v4, v10

    :cond_4
    :goto_0
    invoke-static {v2}, Lu9/v;->r(Lu9/t;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    sget-object v4, Lu9/e0;->a:Lba/e;

    sget-object v4, Lba/d;->n:Lba/d;

    new-instance v5, Lad/t0;

    iget-object v6, v0, Lid/c0;->x:Lid/d0;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v10, v7}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object v2, v0, Lid/c0;->w:Ljava/lang/Object;

    iput-object v10, v0, Lid/c0;->l:Lcom/graphhopper/GraphHopper;

    const/4 v6, 0x1

    iput v6, v0, Lid/c0;->v:I

    invoke-static {v4, v5, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    :goto_1
    move-object v8, v3

    goto/16 :goto_39

    :cond_5
    :goto_2
    check-cast v4, Lcom/graphhopper/GraphHopper;

    if-nez v4, :cond_4

    iput-object v2, v0, Lid/c0;->w:Ljava/lang/Object;

    iput-object v4, v0, Lid/c0;->l:Lcom/graphhopper/GraphHopper;

    const/4 v5, 0x2

    iput v5, v0, Lid/c0;->v:I

    const-wide/16 v5, 0x7530

    invoke-static {v5, v6, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_4

    goto :goto_1

    :cond_6
    new-instance v5, Lid/l0;

    if-nez v4, :cond_8

    :cond_7
    move-object/from16 v50, v1

    goto/16 :goto_3b

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-direct {v5, v4, v6, v7}, Lid/l0;-><init>(Lcom/graphhopper/GraphHopper;J)V

    iget-object v4, v0, Lid/c0;->x:Lid/d0;

    iget-object v4, v4, Lid/d0;->i:Lua/nav/routing/Route;

    invoke-virtual {v5, v4}, Lid/l0;->i(Lua/nav/routing/Route;)V

    iget-object v4, v0, Lid/c0;->x:Lid/d0;

    iput-object v5, v4, Lid/d0;->h:Lid/l0;

    iget-object v4, v0, Lid/c0;->x:Lid/d0;

    iget-object v4, v4, Lid/d0;->a:Ldd/k0;

    const-string v6, "pf_start particles=400"

    invoke-virtual {v4, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v4, v0, Lid/c0;->x:Lid/d0;

    iget-object v4, v4, Lid/d0;->b:Lad/x;

    new-instance v6, Lb0/a;

    const/16 v7, 0xe

    invoke-direct {v6, v7, v5}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iput-object v6, v4, Lad/x;->f:Lb0/a;

    new-instance v4, Lj9/x;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lj9/x;->l:J

    new-instance v8, Lj9/x;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-wide v6, v8, Lj9/x;->l:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v12, v4

    move-object v11, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v18, 0x0

    :goto_3
    invoke-static {v2}, Lu9/v;->r(Lu9/t;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lid/c0;->x:Lid/d0;

    iget-object v15, v15, Lid/d0;->f:Lp/a1;

    invoke-virtual {v15}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eq v15, v9, :cond_b

    if-nez v15, :cond_9

    iget-object v4, v5, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, v5, Lid/l0;->t:Z

    iput-object v10, v5, Lid/l0;->z:Lad/q1;

    iput v4, v5, Lid/l0;->s:I

    :cond_9
    iget-object v4, v0, Lid/c0;->x:Lid/d0;

    iget-object v4, v4, Lid/d0;->a:Ldd/k0;

    if-eqz v15, :cond_a

    const-string v6, "on"

    goto :goto_4

    :cond_a
    const-string v6, "off"

    :goto_4
    const-string v7, "pf_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move v9, v15

    const/4 v4, 0x0

    const/4 v13, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    goto :goto_5

    :cond_b
    move-wide/from16 v25, v13

    move-wide/from16 v27, v18

    move v13, v8

    :goto_5
    if-eqz v15, :cond_4f

    iget-object v8, v0, Lid/c0;->x:Lid/d0;

    iget-object v8, v8, Lid/d0;->a:Ldd/k0;

    iget-boolean v8, v8, Ldd/k0;->m:Z

    if-eqz v8, :cond_4f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    iget-object v8, v0, Lid/c0;->x:Lid/d0;

    iget-object v8, v8, Lid/d0;->a:Ldd/k0;

    iget-object v8, v8, Ldd/k0;->j:Ldd/m;

    iget-object v8, v8, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldd/n;

    iget-object v10, v8, Ldd/n;->d:Ldd/l0;

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    const-wide v31, 0x40fafcc000000000L    # 110540.0

    const-wide v33, 0x40fb2d8000000000L    # 111320.0

    move-wide/from16 v35, v6

    const-wide/high16 v37, 0x4034000000000000L    # 20.0

    const-string v6, "next(...)"

    const-string v7, "iterator(...)"

    move/from16 p1, v13

    move-wide/from16 v41, v14

    if-eqz v10, :cond_16

    iget-wide v13, v10, Ldd/l0;->c:J

    move-object v15, v3

    move/from16 v45, v4

    iget-wide v3, v12, Lj9/x;->l:J

    cmp-long v3, v13, v3

    if-eqz v3, :cond_15

    iput-wide v13, v12, Lj9/x;->l:J

    iget-object v3, v10, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_6

    :cond_c
    const/high16 v3, 0x43960000    # 300.0f

    :goto_6
    float-to-double v3, v3

    const-wide v13, 0x407f400000000000L    # 500.0

    cmpg-double v13, v3, v13

    if-gtz v13, :cond_15

    new-instance v13, Lua/nav/routing/GeoPoint;

    move-wide/from16 v20, v3

    iget-wide v3, v10, Ldd/l0;->d:D

    move-object/from16 v46, v15

    iget-wide v14, v10, Ldd/l0;->e:D

    invoke-direct {v13, v3, v4, v14, v15}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v47, v8

    move v10, v9

    iget-wide v8, v5, Lid/l0;->l:D

    cmpg-double v8, v3, v8

    if-nez v8, :cond_d

    iget-wide v8, v5, Lid/l0;->m:D

    cmpg-double v8, v14, v8

    if-nez v8, :cond_d

    :goto_7
    move-object/from16 v50, v1

    move-object/from16 v1, v47

    goto/16 :goto_d

    :cond_d
    iput-wide v3, v5, Lid/l0;->l:D

    iput-wide v14, v5, Lid/l0;->m:D

    iget-boolean v8, v5, Lid/l0;->t:Z

    if-nez v8, :cond_e

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v24}, Lid/l0;->b(Lua/nav/routing/GeoPoint;DLjava/lang/Double;Ljava/lang/Double;Z)V

    goto :goto_7

    :cond_e
    move-object/from16 v19, v13

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v8, v8, v20

    add-double v8, v8, v37

    move-wide/from16 v22, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v33

    iget-object v13, v5, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-static {v13, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v48, 0x0

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v50, v1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lid/j0;

    move-wide/from16 v51, v3

    iget-wide v3, v1, Lid/j0;->i:D

    sub-double/2addr v3, v14

    mul-double v3, v3, v51

    move-wide/from16 v53, v8

    iget-wide v8, v1, Lid/j0;->h:D

    sub-double v8, v8, v22

    mul-double v8, v8, v31

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    neg-double v8, v3

    mul-double/2addr v8, v3

    move-wide/from16 v55, v8

    const/4 v3, 0x2

    int-to-double v8, v3

    mul-double v8, v8, v53

    mul-double v8, v8, v53

    div-double v8, v55, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    iget-wide v8, v1, Lid/j0;->e:D

    mul-double v55, v8, v3

    add-double v48, v55, v48

    const-wide v55, 0x3fee666666666666L    # 0.95

    mul-double v3, v3, v55

    const-wide v55, 0x3f0a36e2eb1c432dL    # 5.0E-5

    add-double v3, v3, v55

    mul-double/2addr v3, v8

    iput-wide v3, v1, Lid/j0;->e:D

    move-object/from16 v1, v50

    move-wide/from16 v3, v51

    move-wide/from16 v8, v53

    goto :goto_8

    :cond_f
    move-object/from16 v50, v1

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v48, v3

    const-wide v3, 0x4062c00000000000L    # 150.0

    if-gez v1, :cond_10

    cmpg-double v1, v20, v3

    if-gtz v1, :cond_10

    iget v1, v5, Lid/l0;->s:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_9
    iput v1, v5, Lid/l0;->s:I

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    goto :goto_9

    :goto_a
    iget v1, v5, Lid/l0;->s:I

    const/4 v8, 0x3

    if-lt v1, v8, :cond_11

    move-object/from16 v1, v47

    iget-boolean v9, v5, Lid/l0;->n:Z

    if-nez v9, :cond_12

    iget v3, v5, Lid/l0;->u:I

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lid/l0;->u:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v24}, Lid/l0;->b(Lua/nav/routing/GeoPoint;DLjava/lang/Double;Ljava/lang/Double;Z)V

    goto :goto_d

    :cond_11
    move-object/from16 v1, v47

    :cond_12
    invoke-virtual {v5}, Lid/l0;->e()V

    iget-object v9, v5, Lid/l0;->z:Lad/q1;

    if-eqz v9, :cond_14

    iget-wide v13, v9, Lad/q1;->c:D

    cmpl-double v13, v13, v29

    if-ltz v13, :cond_13

    goto :goto_b

    :cond_13
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_14

    iget-object v9, v9, Lad/q1;->b:Ljava/lang/Double;

    move-object/from16 v22, v9

    goto :goto_c

    :cond_14
    const/16 v22, 0x0

    :goto_c
    cmpg-double v3, v20, v3

    if-gtz v3, :cond_17

    iget-boolean v3, v5, Lid/l0;->n:Z

    if-nez v3, :cond_17

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v24}, Lid/l0;->b(Lua/nav/routing/GeoPoint;DLjava/lang/Double;Ljava/lang/Double;Z)V

    goto :goto_d

    :cond_15
    move-object/from16 v50, v1

    move-object v1, v8

    move v10, v9

    move-object/from16 v46, v15

    goto :goto_d

    :cond_16
    move-object/from16 v50, v1

    move-object/from16 v46, v3

    move/from16 v45, v4

    move-object v1, v8

    move v10, v9

    :cond_17
    :goto_d
    iget-object v3, v0, Lid/c0;->x:Lid/d0;

    iget-object v3, v3, Lid/d0;->c:Lad/j0;

    iget-boolean v3, v3, Lad/j0;->K:Z

    if-nez v3, :cond_21

    iget-object v1, v1, Ldd/n;->c:Ldd/l0;

    if-eqz v1, :cond_21

    iget-wide v3, v1, Ldd/l0;->c:J

    iget-wide v13, v11, Lj9/x;->l:J

    cmp-long v9, v3, v13

    if-eqz v9, :cond_21

    iput-wide v3, v11, Lj9/x;->l:J

    new-instance v3, Lua/nav/routing/GeoPoint;

    iget-wide v13, v1, Ldd/l0;->d:D

    iget-wide v8, v1, Ldd/l0;->e:D

    invoke-direct {v3, v13, v14, v8, v9}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-object v4, v1, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_e

    :cond_18
    const/high16 v4, 0x41200000    # 10.0f

    :goto_e
    float-to-double v8, v4

    iget-object v4, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v19, v3

    float-to-double v3, v4

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v23, v15

    goto :goto_f

    :cond_19
    move-object/from16 v19, v3

    const/16 v23, 0x0

    :goto_f
    iget-object v1, v1, Ldd/l0;->h:Ljava/lang/Float;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1c

    if-eqz v23, :cond_1b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_11

    :cond_1b
    const-wide/16 v3, 0x0

    :goto_11
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpl-double v3, v3, v20

    if-lez v3, :cond_1c

    move-object/from16 v22, v1

    goto :goto_12

    :cond_1c
    const/16 v22, 0x0

    :goto_12
    iget-boolean v1, v5, Lid/l0;->t:Z

    if-nez v1, :cond_1d

    const/16 v24, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v20, v8

    invoke-virtual/range {v18 .. v24}, Lid/l0;->b(Lua/nav/routing/GeoPoint;DLjava/lang/Double;Ljava/lang/Double;Z)V

    goto/16 :goto_15

    :cond_1d
    move-wide v3, v8

    move-object/from16 v1, v19

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v18, v18, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v33

    iget-object v15, v5, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-static {v15, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    :goto_13
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1f

    move-wide/from16 v33, v3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lid/j0;

    move-wide/from16 v47, v8

    iget-wide v8, v3, Lid/j0;->i:D

    move-wide/from16 v51, v8

    iget-wide v8, v1, Lua/nav/routing/GeoPoint;->b:D

    sub-double v8, v51, v8

    mul-double v8, v8, v47

    move-wide/from16 v51, v13

    iget-wide v13, v3, Lid/j0;->h:D

    sub-double v13, v13, v51

    mul-double v13, v13, v31

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    neg-double v13, v8

    mul-double/2addr v13, v8

    const/4 v4, 0x2

    int-to-double v8, v4

    mul-double v8, v8, v18

    mul-double v8, v8, v18

    div-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    iget-wide v13, v3, Lid/j0;->e:D

    mul-double/2addr v13, v8

    add-double v20, v13, v20

    if-eqz v23, :cond_1e

    iget-wide v13, v3, Lid/j0;->d:D

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v53

    sub-double v13, v13, v53

    move-wide/from16 v53, v8

    neg-double v8, v13

    mul-double/2addr v8, v13

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double v8, v8, v53

    goto :goto_14

    :cond_1e
    move-wide/from16 v53, v8

    :goto_14
    iget-wide v13, v3, Lid/j0;->e:D

    const-wide v53, 0x3e112e0be826d695L    # 1.0E-9

    add-double v8, v8, v53

    mul-double/2addr v8, v13

    iput-wide v8, v3, Lid/j0;->e:D

    move-wide/from16 v3, v33

    move-wide/from16 v8, v47

    move-wide/from16 v13, v51

    goto :goto_13

    :cond_1f
    move-wide/from16 v33, v3

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v20, v3

    if-gez v3, :cond_20

    iget v3, v5, Lid/l0;->u:I

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lid/l0;->u:I

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v18, v5

    move-wide/from16 v20, v33

    invoke-virtual/range {v18 .. v24}, Lid/l0;->b(Lua/nav/routing/GeoPoint;DLjava/lang/Double;Ljava/lang/Double;Z)V

    goto :goto_15

    :cond_20
    invoke-virtual {v5}, Lid/l0;->e()V

    :cond_21
    :goto_15
    iget-object v1, v0, Lid/c0;->x:Lid/d0;

    iget-object v1, v1, Lid/d0;->c:Lad/j0;

    iget-object v1, v1, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget v1, v1, Lad/a0;->F:I

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    const-wide/16 v8, 0x9c4

    const/4 v13, 0x1

    if-eq v1, v13, :cond_26

    const/4 v13, 0x2

    if-eq v1, v13, :cond_25

    iget-object v1, v0, Lid/c0;->x:Lid/d0;

    iget-object v1, v1, Lid/d0;->b:Lad/x;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sget v15, Lb6/g;->l:I

    if-ltz v15, :cond_23

    sget-wide v18, Lb6/g;->m:J

    sub-long v13, v13, v18

    cmp-long v13, v13, v8

    if-lez v13, :cond_22

    goto :goto_16

    :cond_22
    int-to-double v13, v15

    div-double/2addr v13, v3

    sget-wide v18, Lb6/g;->n:D

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_17

    :cond_23
    :goto_16
    const/4 v13, 0x0

    :goto_17
    if-eqz v13, :cond_24

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    const-wide v18, 0x3fd3333333333333L    # 0.3

    cmpg-double v1, v13, v18

    if-gez v1, :cond_26

    goto :goto_18

    :cond_24
    iget-object v1, v1, Lad/x;->h:Lad/l;

    iget-boolean v1, v1, Lad/l;->h:Z

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v1, 0x1

    goto :goto_19

    :cond_26
    const/4 v1, 0x0

    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sget v15, Lb6/g;->l:I

    if-ltz v15, :cond_28

    sget-wide v18, Lb6/g;->m:J

    sub-long v13, v13, v18

    cmp-long v8, v13, v8

    if-lez v8, :cond_27

    goto :goto_1a

    :cond_27
    int-to-double v8, v15

    div-double/2addr v8, v3

    sget-wide v3, Lb6/g;->n:D

    mul-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1b

    :cond_28
    :goto_1a
    const/4 v3, 0x0

    :goto_1b
    iget-object v4, v5, Lid/l0;->k:[D

    iget-object v8, v5, Lid/l0;->g:Ljava/util/Random;

    iget-boolean v9, v5, Lid/l0;->t:Z

    if-nez v9, :cond_29

    move/from16 v20, v10

    goto/16 :goto_31

    :cond_29
    iput-boolean v1, v5, Lid/l0;->n:Z

    if-nez v1, :cond_2a

    iget v9, v5, Lid/l0;->r:I

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lid/l0;->r:I

    iget v9, v5, Lid/l0;->j:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0x29

    iput v9, v5, Lid/l0;->j:I

    iget-wide v13, v5, Lid/l0;->p:D

    aput-wide v13, v4, v9

    goto :goto_1c

    :cond_2a
    const/16 v17, 0x1

    :goto_1c
    iget v9, v5, Lid/l0;->j:I

    add-int/lit8 v13, v9, 0x25

    rem-int/lit8 v13, v13, 0x29

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0x29

    iget-wide v14, v5, Lid/l0;->p:D

    aget-wide v18, v4, v13

    sub-double v18, v14, v18

    aget-wide v20, v4, v9

    sub-double v14, v14, v20

    iget v4, v5, Lid/l0;->r:I

    move/from16 v21, v9

    move/from16 v20, v10

    if-lez v4, :cond_2b

    move-wide v9, v14

    goto :goto_1d

    :cond_2b
    const-wide/16 v9, 0x0

    :goto_1d
    iput-wide v9, v5, Lid/l0;->o:D

    const/4 v9, 0x4

    if-nez v1, :cond_2c

    if-le v4, v9, :cond_2c

    const/4 v10, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v10, 0x0

    :goto_1e
    if-nez v1, :cond_2d

    const/16 v9, 0x28

    if-le v4, v9, :cond_2d

    const/4 v4, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v4, 0x0

    :goto_1f
    iget-object v9, v5, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-static {v9, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lid/j0;

    move/from16 v22, v1

    iget-object v1, v7, Lid/j0;->f:[D

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    if-eqz v22, :cond_2f

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v31

    const-wide v33, 0x3feccccccccccccdL    # 0.9

    cmpg-double v31, v31, v33

    if-gez v31, :cond_2e

    move-object/from16 v31, v3

    move/from16 v32, v4

    const-wide/16 v3, 0x0

    iput-wide v3, v7, Lid/j0;->d:D

    goto :goto_21

    :cond_2e
    move-object/from16 v31, v3

    move/from16 v32, v4

    goto :goto_21

    :cond_2f
    move-object/from16 v31, v3

    move/from16 v32, v4

    const-wide v3, 0x3fd999999999999aL    # 0.4

    if-eqz v31, :cond_30

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v33

    invoke-virtual {v8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v47

    mul-double v47, v47, v3

    add-double v51, v47, v33

    const-wide/16 v53, 0x0

    const-wide/high16 v55, 0x4044000000000000L    # 40.0

    invoke-static/range {v51 .. v56}, Lg6/c1;->d(DDD)D

    move-result-wide v3

    iput-wide v3, v7, Lid/j0;->d:D

    goto :goto_21

    :cond_30
    move-wide/from16 v33, v3

    iget-wide v3, v7, Lid/j0;->d:D

    cmpg-double v3, v3, v23

    if-gez v3, :cond_31

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v47, 0x4018000000000000L    # 6.0

    mul-double v3, v3, v47

    add-double v3, v3, v23

    iput-wide v3, v7, Lid/j0;->d:D

    :cond_31
    iget-wide v3, v7, Lid/j0;->d:D

    invoke-virtual {v8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v47

    mul-double v47, v47, v33

    add-double v51, v47, v3

    const-wide/16 v53, 0x0

    const-wide/high16 v55, 0x4044000000000000L    # 40.0

    invoke-static/range {v51 .. v56}, Lg6/c1;->d(DDD)D

    move-result-wide v3

    iput-wide v3, v7, Lid/j0;->d:D

    :goto_21
    iget-wide v3, v7, Lid/j0;->c:D

    move-wide/from16 v33, v3

    iget-wide v3, v7, Lid/j0;->d:D

    mul-double v3, v3, v29

    add-double v3, v3, v33

    iput-wide v3, v7, Lid/j0;->c:D

    move-object/from16 v33, v9

    move v3, v10

    const/4 v4, 0x0

    :goto_22
    iget-wide v9, v7, Lid/j0;->c:D

    move-object/from16 v34, v1

    iget-object v1, v7, Lid/j0;->g:Lid/i0;

    iget-object v1, v1, Lid/i0;->c:[D

    invoke-static {v1}, Lu8/l;->z0([D)D

    move-result-wide v47

    cmpl-double v1, v9, v47

    if-lez v1, :cond_42

    add-int/lit8 v1, v4, 0x1

    const/16 v9, 0xa

    if-ge v4, v9, :cond_42

    iget-wide v9, v7, Lid/j0;->c:D

    iget-object v4, v7, Lid/j0;->g:Lid/i0;

    iget-object v4, v4, Lid/i0;->c:[D

    invoke-static {v4}, Lu8/l;->z0([D)D

    move-result-wide v47

    sub-double v9, v9, v47

    iget v4, v7, Lid/j0;->a:I

    move/from16 v47, v1

    iget v1, v7, Lid/j0;->b:I

    move/from16 v48, v3

    iget-object v3, v5, Lid/l0;->e:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v3, v1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v49, 0x0

    :goto_23
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v51

    if-eqz v51, :cond_33

    move-object/from16 v51, v1

    invoke-interface/range {v51 .. v51}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    if-eq v1, v4, :cond_32

    invoke-interface/range {v51 .. v51}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface/range {v51 .. v51}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v52

    move-object/from16 v53, v6

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v52, v13

    new-instance v13, Lt8/j;

    invoke-direct {v13, v1, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_24
    move-object/from16 v1, v51

    move/from16 v13, v52

    move-object/from16 v6, v53

    goto :goto_23

    :cond_32
    move-object/from16 v53, v6

    move/from16 v52, v13

    invoke-interface/range {v51 .. v51}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface/range {v51 .. v51}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v13, Lt8/j;

    invoke-direct {v13, v1, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v49, v13

    goto :goto_24

    :cond_33
    move-object/from16 v53, v6

    move/from16 v52, v13

    if-eqz v49, :cond_35

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v54

    const-wide v56, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v54, v56

    if-gez v1, :cond_35

    :cond_34
    :goto_25
    move-wide/from16 v54, v14

    :goto_26
    move-object/from16 v1, v49

    goto/16 :goto_2c

    :cond_35
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    move-wide/from16 v54, v14

    const/4 v1, 0x0

    goto/16 :goto_2c

    :cond_36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_37

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v49, v3

    check-cast v49, Lt8/j;

    goto :goto_25

    :cond_37
    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_27
    if-ge v1, v13, :cond_39

    move/from16 v49, v13

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    move/from16 v51, v1

    move-object v1, v13

    check-cast v1, Lt8/j;

    move-wide/from16 v54, v14

    iget-object v14, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v5, v14, v1}, Lid/l0;->f(II)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    move/from16 v13, v49

    move/from16 v1, v51

    move-wide/from16 v14, v54

    goto :goto_27

    :cond_39
    move-wide/from16 v54, v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    const-wide/high16 v56, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v13, v56

    if-gez v1, :cond_3a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lt8/j;

    goto :goto_26

    :cond_3a
    invoke-virtual {v5, v4}, Lid/l0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lt8/j;

    goto/16 :goto_26

    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [D

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v1, :cond_3d

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt8/j;

    iget-object v13, v13, Lt8/j;->l:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lid/l0;->c(I)Z

    move-result v13

    if-eqz v13, :cond_3c

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    goto :goto_29

    :cond_3c
    move-wide/from16 v13, v23

    :goto_29
    aput-wide v13, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_3d
    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    const/4 v6, 0x0

    const-wide/16 v56, 0x0

    :goto_2a
    if-ge v6, v1, :cond_3e

    aget-wide v58, v4, v6

    add-double v56, v56, v58

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_3e
    mul-double v13, v13, v56

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v1, :cond_40

    aget-wide v56, v4, v6

    sub-double v13, v13, v56

    const-wide/16 v43, 0x0

    cmpg-double v15, v13, v43

    if-gtz v15, :cond_3f

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lt8/j;

    goto/16 :goto_26

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_40
    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lt8/j;

    goto/16 :goto_26

    :goto_2c
    if-nez v1, :cond_41

    iget-object v1, v7, Lid/j0;->g:Lid/i0;

    iget-object v1, v1, Lid/i0;->c:[D

    invoke-static {v1}, Lu8/l;->z0([D)D

    move-result-wide v3

    iput-wide v3, v7, Lid/j0;->c:D

    const-wide/16 v3, 0x0

    iput-wide v3, v7, Lid/j0;->d:D

    goto :goto_2d

    :cond_41
    const-wide/16 v3, 0x0

    iget-object v6, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v7, Lid/j0;->a:I

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v7, Lid/j0;->b:I

    iput-wide v9, v7, Lid/j0;->c:D

    iget v6, v7, Lid/j0;->a:I

    invoke-virtual {v5, v6, v1}, Lid/l0;->a(II)Lid/i0;

    move-result-object v1

    iput-object v1, v7, Lid/j0;->g:Lid/i0;

    move-object/from16 v1, v34

    move/from16 v4, v47

    move/from16 v3, v48

    move/from16 v13, v52

    move-object/from16 v6, v53

    move-wide/from16 v14, v54

    goto/16 :goto_22

    :cond_42
    move/from16 v48, v3

    move-object/from16 v53, v6

    move/from16 v52, v13

    move-wide/from16 v54, v14

    const-wide/16 v3, 0x0

    :goto_2d
    invoke-static {v7}, Lid/l0;->g(Lid/j0;)V

    iget-wide v9, v7, Lid/j0;->j:D

    if-nez v22, :cond_43

    iget v1, v5, Lid/l0;->j:I

    aput-wide v9, v34, v1

    :cond_43
    if-eqz v48, :cond_44

    aget-wide v23, v34, v52

    sub-double v23, v9, v23

    invoke-static/range {v23 .. v24}, Lid/l0;->l(D)D

    move-result-wide v23

    sub-double v23, v23, v18

    invoke-static/range {v23 .. v24}, Lid/l0;->l(D)D

    move-result-wide v3

    const-wide v23, 0x3fa999999999999aL    # 0.05

    iget-wide v13, v7, Lid/j0;->e:D

    move-object v1, v8

    move-wide/from16 v56, v9

    neg-double v8, v3

    mul-double/2addr v8, v3

    const-wide v3, 0x4093880000000000L    # 1250.0

    div-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    add-double v3, v3, v23

    mul-double/2addr v3, v13

    iput-wide v3, v7, Lid/j0;->e:D

    goto :goto_2e

    :cond_44
    move-object v1, v8

    move-wide/from16 v56, v9

    const-wide v23, 0x3fa999999999999aL    # 0.05

    :goto_2e
    if-eqz v32, :cond_45

    aget-wide v3, v34, v21

    sub-double v9, v56, v3

    invoke-static {v9, v10}, Lid/l0;->l(D)D

    move-result-wide v3

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v6, v8, v37

    if-gez v6, :cond_46

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v6, v8, v37

    if-ltz v6, :cond_45

    goto :goto_30

    :cond_45
    :goto_2f
    move-object v8, v1

    move/from16 v1, v22

    move-object/from16 v3, v31

    move/from16 v4, v32

    move-object/from16 v9, v33

    move/from16 v10, v48

    move/from16 v13, v52

    move-object/from16 v6, v53

    move-wide/from16 v14, v54

    goto/16 :goto_20

    :cond_46
    :goto_30
    sub-double v3, v3, v54

    invoke-static {v3, v4}, Lid/l0;->l(D)D

    move-result-wide v3

    iget-wide v8, v7, Lid/j0;->e:D

    neg-double v13, v3

    mul-double/2addr v13, v3

    const-wide v3, 0x40a3240000000000L    # 2450.0

    div-double/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    add-double v3, v3, v23

    mul-double/2addr v3, v8

    iput-wide v3, v7, Lid/j0;->e:D

    goto :goto_2f

    :cond_47
    invoke-virtual {v5}, Lid/l0;->e()V

    invoke-virtual {v5}, Lid/l0;->j()V

    :goto_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v41

    add-long v25, v25, v3

    add-int/lit8 v1, v45, 0x1

    cmp-long v6, v3, v27

    if-lez v6, :cond_48

    goto :goto_32

    :cond_48
    move-wide/from16 v3, v27

    :goto_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v35

    const-wide/32 v13, 0xea60

    cmp-long v8, v8, v13

    if-ltz v8, :cond_4e

    if-lez v1, :cond_4e

    iget-object v8, v5, Lid/l0;->z:Lad/q1;

    iget-object v9, v0, Lid/c0;->x:Lid/d0;

    iget-object v9, v9, Lid/d0;->a:Ldd/k0;

    int-to-long v13, v1

    div-long v13, v25, v13

    long-to-double v13, v13

    const-wide v18, 0x412e848000000000L    # 1000000.0

    div-double v13, v13, v18

    const/4 v1, 0x1

    invoke-static {v13, v14, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v10

    long-to-double v3, v3

    div-double v3, v3, v18

    invoke-static {v3, v4, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v3

    iget v1, v5, Lid/l0;->u:I

    move-wide/from16 v18, v6

    if-eqz v8, :cond_4a

    iget-wide v6, v8, Lad/q1;->c:D

    const/16 v4, 0x64

    move-wide/from16 v21, v6

    int-to-double v6, v4

    move-wide/from16 v23, v6

    mul-double v6, v21, v23

    double-to-int v4, v6

    iget-wide v6, v8, Lad/q1;->d:D

    double-to-int v6, v6

    move-object v7, v11

    move-object v15, v12

    iget-wide v11, v8, Lad/q1;->e:D

    mul-double v11, v11, v23

    double-to-int v11, v11

    iget-object v8, v8, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    if-eqz v8, :cond_49

    const/4 v8, 0x1

    goto :goto_33

    :cond_49
    const/4 v8, 0x0

    :goto_33
    const-string v12, " r="

    move-object/from16 v21, v7

    const-string v7, " mass="

    move-object/from16 v22, v15

    const-string v15, "conf="

    invoke-static {v15, v4, v12, v6, v7}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " alt="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4b

    goto :goto_34

    :cond_4a
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    :goto_34
    const-string v4, "none"

    :cond_4b
    const-string v6, " max_ms="

    const-string v7, " reinits="

    const-string v8, "pf_stats step_ms="

    invoke-static {v8, v10, v6, v3, v7}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    const-wide/high16 v39, 0x404e000000000000L    # 60.0

    cmpl-double v1, v13, v39

    if-lez v1, :cond_4c

    add-int/lit8 v4, p1, 0x1

    :goto_35
    const/4 v6, 0x2

    goto :goto_36

    :cond_4c
    const/4 v4, 0x0

    goto :goto_35

    :goto_36
    if-lt v4, v6, :cond_4d

    iget-object v1, v0, Lid/c0;->x:Lid/d0;

    iget-object v1, v1, Lid/d0;->a:Ldd/k0;

    const/4 v7, 0x1

    invoke-static {v13, v14, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "pf_auto_off avg_ms="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v1, v0, Lid/c0;->x:Lid/d0;

    iget-object v1, v1, Lid/d0;->g:Lr0/o1;

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v3}, Lr0/o1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    goto :goto_37

    :cond_4d
    const/4 v7, 0x1

    :goto_37
    move v13, v4

    move-wide/from16 v8, v18

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v14, 0x0

    goto :goto_38

    :cond_4e
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    const/4 v6, 0x2

    const/4 v7, 0x1

    move/from16 v13, p1

    move-wide v14, v3

    move-wide/from16 v3, v25

    move-wide/from16 v8, v35

    goto :goto_38

    :cond_4f
    move-object/from16 v50, v1

    move-object/from16 v46, v3

    move/from16 v45, v4

    move-wide/from16 v35, v6

    move/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move/from16 p1, v13

    const/4 v6, 0x2

    const/4 v7, 0x1

    move/from16 v13, p1

    move-wide/from16 v3, v25

    move-wide/from16 v14, v27

    move-wide/from16 v8, v35

    move/from16 v1, v45

    :goto_38
    iput-object v2, v0, Lid/c0;->w:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v0, Lid/c0;->l:Lcom/graphhopper/GraphHopper;

    iput-object v5, v0, Lid/c0;->m:Lid/l0;

    move-object/from16 v11, v22

    iput-object v11, v0, Lid/c0;->n:Lj9/x;

    move-object/from16 v12, v21

    iput-object v12, v0, Lid/c0;->o:Lj9/x;

    iput-wide v8, v0, Lid/c0;->p:J

    iput-wide v3, v0, Lid/c0;->q:J

    iput v1, v0, Lid/c0;->s:I

    iput-wide v14, v0, Lid/c0;->r:J

    iput v13, v0, Lid/c0;->t:I

    move/from16 v6, v20

    iput v6, v0, Lid/c0;->u:I

    const/4 v7, 0x3

    iput v7, v0, Lid/c0;->v:I

    move-wide/from16 v18, v8

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, v46

    if-ne v7, v8, :cond_50

    :goto_39
    return-object v8

    :cond_50
    move-object v7, v12

    move-object v12, v11

    move-object v11, v7

    move v9, v6

    move-wide/from16 v6, v18

    move-wide/from16 v18, v14

    move-wide v14, v3

    move v4, v1

    :goto_3a
    move-object v3, v8

    move v8, v13

    move-wide v13, v14

    move-object/from16 v1, v50

    goto/16 :goto_3

    :goto_3b
    return-object v50
.end method
