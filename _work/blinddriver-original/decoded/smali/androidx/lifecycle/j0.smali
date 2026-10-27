.class public final Landroidx/lifecycle/j0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lca/c;Lb4/b;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/j0;->l:I

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Li9/c;Ljava/util/concurrent/atomic/AtomicReference;Li9/e;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/lifecycle/j0;->l:I

    .line 2
    check-cast p1, Lj9/o;

    iput-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 3
    iput p6, p0, Landroidx/lifecycle/j0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 4
    iput p5, p0, Landroidx/lifecycle/j0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 5
    iput p4, p0, Landroidx/lifecycle/j0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lm0/u;Li9/e;Ly8/c;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/lifecycle/j0;->l:I

    .line 6
    iput-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public static final f(Lua/nav/c;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lua/nav/c;->c:Ldd/k0;

    const/16 v2, 0x78

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "waze_drive_fail "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v0, v0, Lua/nav/c;->q:Lx9/l0;

    :goto_0
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lsc/q0;

    const/16 v18, 0x0

    const/16 v20, 0x3fff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, p1

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v3, p1

    goto :goto_0
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    move-object/from16 v1, p0

    sget-object v2, Lt8/z;->a:Lt8/z;

    iget-object v0, v1, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v1, Landroidx/lifecycle/j0;->m:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v9, v10

    goto/16 :goto_16

    :cond_2
    iget-object v0, v1, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lzc/q;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_3
    :try_start_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, v1, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast v4, Lzc/r;

    :try_start_2
    sget-object v11, Lgd/h;->a:Lr9/i;

    sget-object v11, Lzc/s;->a:Lr9/i;

    iget-object v11, v4, Lzc/r;->b:Ljava/lang/String;

    iget-object v4, v4, Lzc/r;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "https://www.waze.com/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-rtserver/web/PickUpGetDriverInfo?token="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v0, v1, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v9, v1, Landroidx/lifecycle/j0;->m:I

    invoke-static {v4, v1}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    goto/16 :goto_17

    :cond_5
    :goto_0
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Lt8/l;

    if-eqz v4, :cond_6

    move-object v0, v10

    :cond_6
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    const-string v1, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043a\u0443 Waze: \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043c\u0435\u0440\u0435\u0436\u0443 (\u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0434\u0456\u0454, \u043f\u043e\u043a\u0438 \u0442\u0440\u0438\u0432\u0430\u0454 \u043f\u043e\u0457\u0437\u0434\u043a\u0430)"

    invoke-static {v0, v1}, Landroidx/lifecycle/j0;->f(Lua/nav/c;Ljava/lang/String;)V

    return-object v2

    :cond_7
    sget-object v4, Lzc/s;->a:Lr9/i;

    :try_start_3
    sget-object v4, Lia/c;->d:Lia/b;

    invoke-virtual {v4, v0}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object v0

    invoke-static {v0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v0

    const-string v4, "status"

    invoke-virtual {v0, v4}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lia/l;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v4

    invoke-virtual {v4}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_8
    move-object v4, v10

    :goto_3
    const-string v11, "ok"

    invoke-static {v4, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    :goto_4
    move-object v6, v10

    goto/16 :goto_d

    :cond_a
    const-string v4, "route"

    invoke-virtual {v0, v4}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lia/l;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_5
    add-int/lit8 v13, v12, 0x1

    iget-object v14, v4, Lia/e;->l:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_c

    invoke-virtual {v4, v12}, Lia/e;->a(I)Lia/l;

    move-result-object v14

    invoke-static {v14}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v14

    invoke-virtual {v14}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v4, v13}, Lia/e;->a(I)Lia/l;

    move-result-object v13

    invoke-static {v13}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v13

    invoke-virtual {v13}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    if-eqz v14, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const-wide v17, -0x3fa9800000000000L    # -90.0

    cmpg-double v17, v17, v15

    if-gtz v17, :cond_b

    const-wide v17, 0x4056800000000000L    # 90.0

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_b

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const-wide v17, -0x3f99800000000000L    # -180.0

    cmpg-double v17, v17, v15

    if-gtz v17, :cond_b

    const-wide v17, 0x4066800000000000L    # 180.0

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_b

    new-instance v15, Lua/nav/routing/GeoPoint;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-direct {v15, v6, v7, v13, v14}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v11}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v15}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v12, v12, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    goto :goto_5

    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v8, :cond_d

    goto/16 :goto_4

    :cond_d
    invoke-static {v11}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    const-string v6, "calculatedLocation"

    invoke-virtual {v0, v6}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lia/l;

    if-eqz v6, :cond_e

    invoke-static {v6}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v6

    goto :goto_6

    :cond_e
    move-object v6, v10

    :goto_6
    if-eqz v6, :cond_13

    const-string v7, "latitude"

    invoke-virtual {v6, v7}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lia/l;

    if-eqz v7, :cond_f

    invoke-static {v7}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v7

    invoke-virtual {v7}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    goto :goto_7

    :cond_f
    move-object v7, v10

    :goto_7
    const-string v12, "longitude"

    invoke-virtual {v6, v12}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lia/l;

    if-eqz v12, :cond_10

    invoke-static {v12}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v12

    invoke-virtual {v12}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    goto :goto_8

    :cond_10
    move-object v12, v10

    :goto_8
    if-eqz v7, :cond_13

    if-eqz v12, :cond_13

    sget-object v13, Ldd/t0;->Companion:Ldd/s0;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    iget-wide v14, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v8, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v24, v8

    move-wide/from16 v22, v14

    invoke-static/range {v18 .. v25}, Ldd/s0;->a(DDDD)D

    move-result-wide v8

    const-wide v13, 0x4072c00000000000L    # 300.0

    cmpg-double v8, v8, v13

    if-gez v8, :cond_13

    const-string v8, "name"

    invoke-virtual {v6, v8}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lia/l;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v9, "null"

    if-eqz v8, :cond_12

    :try_start_4
    invoke-static {v8}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v8

    invoke-virtual {v8}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-static {v8}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_9

    :cond_11
    move-object v8, v10

    :goto_9
    if-nez v8, :cond_14

    :cond_12
    const-string v8, "street"

    invoke-virtual {v6, v8}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lia/l;

    if-eqz v6, :cond_13

    invoke-static {v6}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v6

    invoke-virtual {v6}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-static {v8}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_a

    :cond_13
    move-object v8, v10

    :cond_14
    :goto_a
    new-instance v6, Lzc/q;

    const-string v9, "eta"

    invoke-virtual {v0, v9}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lia/l;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v0

    invoke-static {v0}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b

    :cond_15
    move-object v0, v10

    :goto_b
    invoke-direct {v6, v11, v4, v8, v0}, Lzc/q;-><init>(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_d

    :goto_c
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v6

    :goto_d
    instance-of v0, v6, Lt8/l;

    if-eqz v0, :cond_16

    move-object v6, v10

    :cond_16
    move-object v4, v6

    check-cast v4, Lzc/q;

    if-nez v4, :cond_17

    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    const-string v1, "Waze \u043d\u0435 \u0432\u0456\u0434\u0434\u0430\u0432 \u043c\u0430\u0440\u0448\u0440\u0443\u0442: \u043f\u043e\u0457\u0437\u0434\u043a\u0443 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u0430\u0440\u0456\u043b\u043e"

    invoke-static {v0, v1}, Landroidx/lifecycle/j0;->f(Lua/nav/c;Ljava/lang/String;)V

    return-object v2

    :cond_17
    :try_start_5
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    sget-object v0, Lsc/i0;->k:Lid/l;

    if-eqz v0, :cond_19

    invoke-static {v4}, Lzc/s;->c(Lzc/q;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v10, v1, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Landroidx/lifecycle/j0;->m:I

    const/4 v12, 0x1

    invoke-virtual {v0, v6, v12, v1}, Lid/l;->a(Ljava/util/List;ZLa9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_18

    goto/16 :goto_17

    :cond_18
    :goto_e
    check-cast v0, Lua/nav/routing/Route;

    goto :goto_10

    :cond_19
    const-string v0, "matcher"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_f
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_10
    iget-object v6, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v6, Lua/nav/c;

    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_22

    check-cast v0, Lua/nav/routing/Route;

    iget-object v6, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v6}, Ldd/w0;->g(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    const-string v1, "\u0422\u043e\u0447\u043a\u0430 \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438. \u0423 \u0446\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0423\u043a\u0440\u0430\u0457\u043d\u0430."

    invoke-static {v0, v1}, Landroidx/lifecycle/j0;->f(Lua/nav/c;Ljava/lang/String;)V

    return-object v2

    :cond_1a
    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v20

    iget-object v6, v4, Lzc/q;->d:Ljava/lang/Integer;

    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v8, v6

    :goto_11
    move-wide/from16 v22, v8

    goto :goto_12

    :cond_1b
    iget-wide v8, v0, Lua/nav/routing/Route;->c:D

    goto :goto_11

    :goto_12
    const/16 v28, 0x0

    const/16 v29, 0x3f8

    const-string v19, "Waze"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v29}, Lua/nav/routing/Route;->a(Lua/nav/routing/Route;Ljava/lang/String;DDLjava/util/List;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;I)Lua/nav/routing/Route;

    move-result-object v0

    move-object/from16 v6, v18

    iget-object v8, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v8}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/GeoPoint;

    iget-object v9, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v9}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    iget-object v11, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v11, Lua/nav/c;

    iget-object v11, v11, Lua/nav/c;->c:Ldd/k0;

    iget-wide v13, v0, Lua/nav/routing/Route;->b:D

    double-to-int v13, v13

    iget-object v14, v4, Lzc/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    iget-object v15, v4, Lzc/q;->d:Ljava/lang/Integer;

    if-eqz v15, :cond_1c

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_13

    :cond_1c
    const/4 v15, -0x1

    :goto_13
    iget-object v6, v6, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, " pts="

    const-string v12, " eta_s="

    const-string v10, "waze_drive_built len="

    invoke-static {v10, v13, v7, v14, v12}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " pts_matched="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v6, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v6, Lua/nav/c;

    invoke-virtual {v6}, Lua/nav/c;->i()Lad/p1;

    move-result-object v6

    if-eqz v6, :cond_1d

    iget-object v6, v6, Lad/p1;->a:Ldd/l0;

    goto :goto_14

    :cond_1d
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_1e

    sget-object v7, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v10, v6, Ldd/l0;->d:D

    iget-wide v12, v6, Ldd/l0;->e:D

    iget-wide v14, v8, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, v8, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v26, v5

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-static/range {v20 .. v27}, Ldd/s0;->a(DDDD)D

    move-result-wide v5

    const-wide v10, 0x407f400000000000L    # 500.0

    cmpg-double v5, v5, v10

    if-gez v5, :cond_1e

    iget-object v5, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v5, Lua/nav/c;

    sget-object v6, Lsc/d;->l:Lsc/d;

    invoke-virtual {v5, v6}, Lua/nav/c;->Y(Lsc/d;)Z

    goto :goto_15

    :cond_1e
    iget-object v5, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v5, Lua/nav/c;

    sget-object v6, Lsc/d;->l:Lsc/d;

    const-string v7, "\u041f\u043e\u0447\u0430\u0442\u043e\u043a (Waze)"

    invoke-virtual {v5, v6, v8, v7}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :goto_15
    iget-object v5, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v5, Lua/nav/c;

    sget-object v6, Lsc/d;->m:Lsc/d;

    iget-object v4, v4, Lzc/q;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v4}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    iget-object v4, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v4, Lua/nav/c;

    iget-object v4, v4, Lua/nav/c;->q:Lx9/l0;

    :cond_1f
    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, Lsc/q0;

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    sget-object v35, Lsc/d;->m:Lsc/d;

    const-string v45, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e"

    const/16 v46, 0x13df

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-static/range {v29 .. v46}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->G()V

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    sget-boolean v0, Lsc/i0;->T:Z

    if-eqz v0, :cond_21

    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->V()V

    const/4 v12, 0x1

    invoke-static {v12}, Lsc/i0;->y(Z)V

    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->c:Ldd/k0;

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v4

    iget-object v4, v4, Lkd/j;->j:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "waze_drive_autostart share_spoof="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object v0

    sget-object v4, Lcd/d;->H1:Lcd/c;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v12, 0x1

    invoke-static {v0, v4, v12, v7}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    const/4 v9, 0x0

    iput-object v9, v1, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v1, Landroidx/lifecycle/j0;->m:I

    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5, v1}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_20

    goto :goto_17

    :cond_20
    :goto_16
    iget-object v0, v1, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->L:Lx9/b0;

    iput-object v9, v1, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v1, Landroidx/lifecycle/j0;->m:I

    invoke-virtual {v0, v2, v1}, Lx9/b0;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_21

    :goto_17
    return-object v3

    :cond_21
    :goto_18
    return-object v2

    :cond_22
    move-object v9, v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/16 v1, 0x50

    invoke-static {v1, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_19

    :cond_23
    move-object v10, v9

    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u043e\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/lifecycle/j0;->f(Lua/nav/c;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget v0, p0, Landroidx/lifecycle/j0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lx9/i0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lx9/g;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lx9/l0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/Float;

    const/16 v7, 0x12

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v1

    :pswitch_0
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lx9/g;

    iget-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Lx9/l0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/Float;

    move-object v6, v7

    const/16 v7, 0x11

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v2, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    return-object v2

    :pswitch_1
    move-object v7, p2

    new-instance p2, Landroidx/lifecycle/j0;

    iget-object v0, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast p0, Lzc/r;

    const/16 v1, 0x10

    invoke-direct {p2, v0, p0, v7, v1}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    return-object p2

    :pswitch_2
    move-object v7, p2

    new-instance p1, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast p2, Lzc/l;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast p0, Lua/nav/c;

    const/16 v0, 0xf

    invoke-direct {p1, p2, p0, v7, v0}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_3
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lr0/u0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    const/16 v8, 0xe

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_4
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    const/16 v8, 0xd

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_5
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/a1;

    const/16 v8, 0xc

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_6
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Li9/e;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lr0/u0;

    move-object v6, v7

    const/16 v7, 0xb

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_7
    move-object v7, p2

    new-instance p2, Landroidx/lifecycle/j0;

    iget-object v0, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast p0, Ln/e0;

    const/16 v1, 0xa

    invoke-direct {p2, v0, p0, v7, v1}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    return-object p2

    :pswitch_8
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object v3, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ln/c;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    const/16 v8, 0x9

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_9
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lm0/b1;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lj9/y;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lj9/y;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lj9/x;

    const/16 v8, 0x8

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_a
    move-object v7, p2

    new-instance p1, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast p2, Lm0/u;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast p0, La9/i;

    invoke-direct {p1, p2, p0, v7}, Landroidx/lifecycle/j0;-><init>(Lm0/u;Li9/e;Ly8/c;)V

    return-object p1

    :pswitch_b
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ll2/c;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/view/ScrollCaptureSession;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/util/function/Consumer;

    const/4 v8, 0x6

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_c
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, [Ljava/lang/String;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lg5/p;

    move-object v6, v7

    const/4 v7, 0x5

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v2, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    return-object v2

    :pswitch_d
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Li9/c;

    iget-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Lk0/b;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lk0/n;

    move-object v6, v7

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v2, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    return-object v2

    :pswitch_e
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lua/nav/routing/i;

    iget-object p2, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lua/nav/routing/PackDownloadService;

    move-object v6, v7

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v2, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    return-object v2

    :pswitch_f
    move-object v7, p2

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p1, p0, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lx4/s;

    iget-object p1, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lg5/o;

    iget-object p1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lh5/n;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_10
    move-object v7, p2

    new-instance p2, Landroidx/lifecycle/j0;

    iget-object v0, p0, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Lj9/o;

    iget-object v1, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast p0, Li9/e;

    invoke-direct {p2, v0, v1, p0, v7}, Landroidx/lifecycle/j0;-><init>(Li9/c;Ljava/util/concurrent/atomic/AtomicReference;Li9/e;Ly8/c;)V

    iput-object p1, p2, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_11
    move-object v7, p2

    new-instance p1, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    check-cast p2, Lca/c;

    iget-object p0, p0, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    check-cast p0, Lb4/b;

    invoke-direct {p1, p2, p0, v7}, Landroidx/lifecycle/j0;-><init>(Lca/c;Lb4/b;Ly8/c;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/lifecycle/j0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lx9/e0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_8
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lx9/h;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lf2/q0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_e
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v4, p0

    iget v0, v4, Landroidx/lifecycle/j0;->l:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    sget-object v7, Lt8/z;->a:Lt8/z;

    iget-object v8, v4, Landroidx/lifecycle/j0;->q:Ljava/lang/Object;

    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    iget-object v10, v4, Landroidx/lifecycle/j0;->p:Ljava/lang/Object;

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lx9/g;

    move-object v14, v10

    check-cast v14, Lx9/l0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v3, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v3, :cond_3

    if-eq v3, v11, :cond_2

    if-eq v3, v5, :cond_1

    if-eq v3, v2, :cond_2

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v3, Lx9/i0;

    sget-object v6, Lx9/f0;->a:Lx9/g0;

    if-ne v3, v6, :cond_4

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v13, v14, v4}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    goto :goto_2

    :cond_4
    sget-object v6, Lx9/f0;->b:Lx9/g0;

    const/4 v9, 0x0

    if-ne v3, v6, :cond_6

    invoke-virtual {v14}, Ly9/b;->h()Ly9/y;

    move-result-object v1

    new-instance v3, Lsc/s;

    const/16 v6, 0x8

    invoke-direct {v3, v5, v9, v6}, Lsc/s;-><init>(ILy8/c;I)V

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v1, v3, v4}, Lx9/c0;->j(Lx9/g;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iput v2, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v13, v14, v4}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v14}, Ly9/b;->h()Ly9/y;

    move-result-object v17

    new-instance v2, Lx9/h0;

    invoke-direct {v2, v3, v9}, Lx9/h0;-><init>(Lx9/i0;Ly8/c;)V

    sget v3, Lx9/p;->a:I

    new-instance v15, Ly9/j;

    const/16 v19, -0x2

    sget-object v20, Lw9/a;->l:Lw9/a;

    sget-object v18, Ly8/i;->l:Ly8/i;

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v20}, Ly9/j;-><init>(Li9/f;Lx9/g;Ly8/h;ILw9/a;)V

    new-instance v2, Lr0/r1;

    invoke-direct {v2, v5, v9, v11}, Lr0/r1;-><init>(ILy8/c;I)V

    new-instance v3, Lx9/m;

    invoke-direct {v3, v15, v2, v11}, Lx9/m;-><init>(Ljava/lang/Object;La9/i;I)V

    invoke-static {v3}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v2

    new-instance v12, Landroidx/lifecycle/j0;

    move-object v15, v8

    check-cast v15, Ljava/lang/Float;

    const/16 v17, 0x11

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput v1, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v2, v12, v4}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    :goto_2
    move-object v7, v0

    :cond_7
    :goto_3
    return-object v7

    :pswitch_0
    check-cast v10, Lx9/l0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_9

    if-ne v1, v11, :cond_8

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lx9/e0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_c

    if-eq v1, v11, :cond_d

    if-ne v1, v5, :cond_b

    check-cast v8, Ljava/lang/Float;

    sget-object v0, Lx9/c0;->a:Lmb/s2;

    if-eq v8, v0, :cond_a

    invoke-virtual {v10, v6, v8}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lx9/g;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v1, v10, v4}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_d

    move-object v7, v0

    :cond_d
    :goto_4
    return-object v7

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/j0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v10, Lzc/l;

    check-cast v8, Lua/nav/c;

    iget-object v0, v8, Lua/nav/c;->q:Lx9/l0;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v12, v4, Landroidx/lifecycle/j0;->m:I

    const/4 v13, 0x5

    if-eqz v12, :cond_12

    if-eq v12, v11, :cond_10

    if-eq v12, v5, :cond_11

    if-eq v12, v2, :cond_10

    if-eq v12, v1, :cond_f

    if-ne v12, v13, :cond_e

    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lj9/y;

    iget-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v2, Lj9/y;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v1

    move-object/from16 v1, p1

    goto/16 :goto_9

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lj9/y;

    iget-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v2, Lj9/y;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v1

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_10
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_11
    iget-object v5, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v5, Lj9/y;

    iget-object v9, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v9, Lj9/y;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v5

    move-object/from16 v5, p1

    goto :goto_5

    :cond_12
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v9, Lj9/y;

    invoke-direct {v9}, Lj9/y;-><init>()V

    new-instance v12, Lj9/y;

    invoke-direct {v12}, Lj9/y;-><init>()V

    instance-of v14, v10, Lzc/i;

    if-eqz v14, :cond_13

    move-object v1, v10

    check-cast v1, Lzc/i;

    iget-object v2, v1, Lzc/i;->a:Lua/nav/routing/GeoPoint;

    iput-object v2, v9, Lj9/y;->m:Ljava/lang/Object;

    iget-object v1, v1, Lzc/i;->b:Ljava/lang/String;

    iput-object v1, v12, Lj9/y;->m:Ljava/lang/Object;

    goto/16 :goto_a

    :cond_13
    instance-of v14, v10, Lzc/m;

    if-eqz v14, :cond_14

    check-cast v10, Lzc/m;

    iput-object v6, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v6, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v8, v10, v4}, Lua/nav/c;->f(Lua/nav/c;Lzc/m;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_22

    goto/16 :goto_8

    :cond_14
    instance-of v11, v10, Lzc/o;

    if-eqz v11, :cond_1a

    sget-object v11, Lu9/e0;->a:Lba/e;

    sget-object v11, Lba/d;->n:Lba/d;

    new-instance v14, Lgd/c;

    invoke-direct {v14, v10, v6, v13}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object v9, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v12, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v11, v14, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_15

    goto :goto_8

    :cond_15
    :goto_5
    check-cast v5, Lzc/l;

    instance-of v11, v5, Lzc/m;

    if-eqz v11, :cond_16

    check-cast v5, Lzc/m;

    iput-object v6, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v6, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v2, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v8, v5, v4}, Lua/nav/c;->f(Lua/nav/c;Lzc/m;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_22

    goto :goto_8

    :cond_16
    instance-of v2, v5, Lzc/i;

    if-eqz v2, :cond_17

    check-cast v5, Lzc/i;

    iget-object v1, v5, Lzc/i;->a:Lua/nav/routing/GeoPoint;

    iput-object v1, v9, Lj9/y;->m:Ljava/lang/Object;

    iget-object v1, v5, Lzc/i;->b:Ljava/lang/String;

    iput-object v1, v12, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_a

    :cond_17
    move-object v2, v10

    check-cast v2, Lzc/o;

    iget-object v2, v2, Lzc/o;->b:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iput-object v9, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v12, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v1, v4, Landroidx/lifecycle/j0;->m:I

    invoke-virtual {v8, v2, v4}, Lua/nav/c;->Q(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_18

    goto :goto_8

    :cond_18
    move-object v2, v9

    :goto_6
    check-cast v1, Lua/nav/geocoding/Place;

    if-eqz v1, :cond_19

    iget-object v3, v1, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iput-object v3, v2, Lj9/y;->m:Ljava/lang/Object;

    iget-object v1, v1, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iput-object v1, v12, Lj9/y;->m:Ljava/lang/Object;

    :cond_19
    :goto_7
    move-object v9, v2

    goto :goto_a

    :cond_1a
    instance-of v1, v10, Lzc/k;

    if-eqz v1, :cond_23

    move-object v1, v10

    check-cast v1, Lzc/k;

    iget-object v1, v1, Lzc/k;->a:Ljava/lang/String;

    iput-object v9, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v12, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v13, v4, Landroidx/lifecycle/j0;->m:I

    invoke-virtual {v8, v1, v4}, Lua/nav/c;->Q(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1b

    :goto_8
    move-object v7, v3

    goto/16 :goto_e

    :cond_1b
    move-object v2, v9

    :goto_9
    check-cast v1, Lua/nav/geocoding/Place;

    if-eqz v1, :cond_19

    iget-object v3, v1, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iput-object v3, v2, Lj9/y;->m:Ljava/lang/Object;

    iget-object v1, v1, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iput-object v1, v12, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_7

    :cond_1c
    :goto_a
    iget-object v1, v9, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    if-nez v1, :cond_1f

    instance-of v1, v10, Lzc/o;

    if-eqz v1, :cond_1d

    const-string v1, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f (\u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043c\u0435\u0440\u0435\u0436\u0443)"

    :goto_b
    move-object/from16 v24, v1

    goto :goto_c

    :cond_1d
    const-string v1, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u043d\u0430\u0439\u0442\u0438 \u043c\u0456\u0441\u0446\u0435"

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1e
    :goto_c
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lsc/q0;

    const/16 v23, 0x0

    const/16 v25, 0x7fff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v8 .. v25}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_e

    :cond_1f
    iget-object v2, v12, Lj9/y;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-static {v2}, Lzc/p;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_d

    :cond_20
    move-object v2, v6

    :goto_d
    sget-object v3, Lsc/d;->m:Lsc/d;

    invoke-virtual {v8, v3, v1, v2}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lsc/q0;

    sget-object v15, Lsc/d;->l:Lsc/d;

    const/16 v25, 0x0

    const/16 v26, 0x7fdf

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v9 .. v26}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v0, v8, Lua/nav/c;->J:Lx9/l0;

    sget-object v2, Lsc/d;->m:Lsc/d;

    new-instance v3, Lt8/j;

    invoke-direct {v3, v2, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_22
    :goto_e
    return-object v7

    :cond_23
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_3
    check-cast v8, Lr0/u0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_25

    if-ne v1, v11, :cond_24

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_f

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v1

    iget-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    sget-object v3, Lu9/e0;->a:Lba/e;

    sget-object v3, Lba/d;->n:Lba/d;

    new-instance v5, Lua/nav/net/h;

    invoke-direct {v5, v1, v2, v6}, Lua/nav/net/h;-><init>(Lgd/d;Ljava/lang/String;Ly8/c;)V

    invoke-static {v3, v5, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_26

    move-object v7, v0

    goto/16 :goto_13

    :cond_26
    :goto_f
    check-cast v1, Lgd/i;

    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-boolean v0, v1, Lgd/i;->a:Z

    if-eqz v0, :cond_28

    check-cast v10, Lr0/u0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget v0, v1, Lgd/i;->b:I

    if-lez v0, :cond_27

    const-string v0, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0435\u043d\u043e \u043d\u0430 \u0446\u0435\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d."

    goto :goto_10

    :cond_27
    const-string v0, "\u041a\u043e\u0434 \u043f\u0440\u0438\u0439\u043d\u044f\u0442\u043e, \u0430\u043b\u0435 \u043d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u043d\u0435 \u0431\u0443\u043b\u043e \u0434\u0456\u044e\u0447\u043e\u0457 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438."

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-interface {v8, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    invoke-virtual {v0, v11}, Luc/f;->h(Z)V

    goto :goto_13

    :cond_28
    sget-object v0, Lod/f7;->a:Ljava/util/List;

    iget-object v0, v1, Lgd/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_11

    :sswitch_0
    const-string v1, "bad_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "\u041a\u043e\u0434 \u043d\u0435 \u043f\u0456\u0434\u0445\u043e\u0434\u0438\u0442\u044c: \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u0438 \u0430\u0431\u043e \u0441\u0442\u0432\u043e\u0440\u0456\u0442\u044c \u043d\u043e\u0432\u0438\u0439 \u043d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 (\u043a\u043e\u0434 \u0434\u0456\u0454 15 \u0445\u0432\u0438\u043b\u0438\u043d)."

    goto :goto_12

    :sswitch_1
    const-string v1, "same"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_11

    :cond_29
    const-string v0, "\u0426\u0435 \u043a\u043e\u0434 \u0446\u044c\u043e\u0433\u043e \u0436 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430. \u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0439\u043e\u0433\u043e \u043d\u0430 \u043d\u043e\u0432\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    goto :goto_12

    :sswitch_2
    const-string v1, "rate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_11

    :cond_2a
    const-string v0, "\u0417\u0430\u0431\u0430\u0433\u0430\u0442\u043e \u0441\u043f\u0440\u043e\u0431. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0437\u0430 \u0433\u043e\u0434\u0438\u043d\u0443."

    goto :goto_12

    :sswitch_3
    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_11

    :cond_2b
    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435."

    goto :goto_12

    :cond_2c
    :goto_11
    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443."

    :goto_12
    invoke-interface {v8, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_13
    return-object v7

    :pswitch_4
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_2e

    if-ne v1, v11, :cond_2d

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_14

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v1

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v5, Lgd/c;

    invoke-direct {v5, v1, v6, v3}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v5, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2f

    move-object v7, v0

    goto/16 :goto_17

    :cond_2f
    :goto_14
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v1

    iget-object v2, v1, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "srv_features"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "srv_tier_title"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "srv_expires_ms"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "srv_lifetime"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "srv_tg_linked"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "srv_fetched_at_ms"

    const-wide/16 v12, 0x0

    invoke-interface {v2, v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, v1, Luc/f;->k:Lx9/l0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, v1, Luc/f;->m:Lx9/l0;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, v1, Luc/f;->g:Lx9/l0;

    invoke-virtual {v1}, Luc/f;->d()Luc/c;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, v1, Luc/f;->i:Lx9/l0;

    invoke-virtual {v1}, Luc/f;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lx9/l0;->j(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Luc/f;->h(Z)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, Ljava/io/File;

    iget-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v4, "logs"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_30

    array-length v2, v1

    :goto_15
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_30
    check-cast v10, Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    check-cast v8, Lr0/u0;

    if-eqz v0, :cond_31

    const-string v0, "\u0414\u0430\u043d\u0456 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e."

    goto :goto_16

    :cond_31
    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 \u0430\u0431\u043e \u043d\u0430\u043f\u0438\u0448\u0456\u0442\u044c \u043d\u0430\u043c \u0443 Telegram."

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-interface {v8, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_17
    return-object v7

    :pswitch_5
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_33

    if-ne v1, v11, :cond_32

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_19

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Led/g;

    check-cast v10, Lr0/u0;

    invoke-static {v10}, Lod/m;->q(Lr0/u0;)Z

    move-result v3

    if-eqz v3, :cond_34

    check-cast v8, Lr0/a1;

    invoke-virtual {v8}, Lr0/a1;->g()F

    move-result v3

    float-to-double v5, v3

    goto :goto_18

    :cond_34
    const-wide/16 v5, 0x0

    :goto_18
    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v1, v2, v5, v6, v4}, Lod/m;->F(Landroid/content/Context;Led/g;DLa9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_35

    move-object v7, v0

    :cond_35
    :goto_19
    return-object v7

    :pswitch_6
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_37

    if-ne v1, v11, :cond_36

    iget-object v0, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v10, Lr0/u0;

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-nez v1, :cond_38

    goto :goto_1b

    :cond_38
    iput-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3, v4}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_39

    move-object v7, v0

    goto :goto_1b

    :cond_39
    move-object v0, v1

    :goto_1a
    check-cast v8, Lr0/u0;

    invoke-static {v8}, Lod/g3;->k(Lr0/u0;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Li9/e;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    :goto_1b
    return-object v7

    :pswitch_7
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_3d

    if-eq v1, v11, :cond_3c

    if-ne v1, v5, :cond_3b

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lj9/w;

    iget-object v2, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v15, v1

    move-object/from16 v16, v2

    goto :goto_1c

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lj9/w;

    iget-object v2, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v15, v1

    move-object v1, v2

    goto :goto_1d

    :cond_3d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    new-instance v2, Lj9/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lj9/w;->l:F

    move-object/from16 v16, v1

    move-object v15, v2

    :goto_1c
    move-object v13, v10

    check-cast v13, Lr0/u0;

    move-object v14, v8

    check-cast v14, Ln/e0;

    new-instance v12, Lb0/p0;

    const/16 v17, 0x4

    invoke-direct/range {v12 .. v17}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v1, v16

    iput-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object v15, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v4}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    sget-object v3, Lf2/u1;->l:Lf2/u1;

    invoke-interface {v2, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v2

    if-nez v2, :cond_40

    invoke-interface {v4}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    invoke-static {v2}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v2

    invoke-virtual {v2, v12, v4}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3e

    goto :goto_1e

    :cond_3e
    :goto_1d
    iget v2, v15, Lj9/w;->l:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3f

    new-instance v2, Lad/t;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v1}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Lr0/r;->F(Li9/a;)Lc5/n;

    move-result-object v2

    new-instance v3, Ln/d0;

    invoke-direct {v3, v5, v6}, La9/i;-><init>(ILy8/c;)V

    iput-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput-object v15, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v2, v3, v4}, Lx9/c0;->j(Lx9/g;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3f

    :goto_1e
    return-object v0

    :cond_3f
    move-object/from16 v16, v1

    goto :goto_1c

    :cond_40
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_8
    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ln/c;

    sget-object v12, Lz8/a;->l:Lz8/a;

    iget v0, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v0, :cond_42

    if-ne v0, v11, :cond_41

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iget-object v1, v6, Ln/c;->e:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Ln/c;

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v10, Lr0/u0;

    sget-object v2, Ln/e;->a:Ln/r0;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/j;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_43

    move-object v7, v12

    goto :goto_20

    :cond_43
    :goto_1f
    check-cast v8, Lr0/u0;

    sget-object v0, Ln/e;->a:Ln/r0;

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li9/c;

    if-eqz v0, :cond_44

    invoke-virtual {v6}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    :goto_20
    return-object v7

    :pswitch_9
    check-cast v10, Lj9/y;

    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Lj9/y;

    check-cast v8, Lj9/x;

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lm0/b1;

    iget-object v2, v1, Lm0/b1;->a:Lm0/i1;

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v12, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v12, :cond_46

    if-ne v12, v11, :cond_45

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_23

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v15, v1, Lm0/b1;->w:Lm0/u;

    if-eqz v15, :cond_4a

    iget-object v9, v0, Lj9/y;->m:Ljava/lang/Object;

    move-object v14, v9

    check-cast v14, Ljava/lang/CharSequence;

    iget-object v9, v10, Lj9/y;->m:Ljava/lang/Object;

    check-cast v9, Lp2/l0;

    iget-wide v12, v9, Lp2/l0;->a:J

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_47

    goto :goto_21

    :cond_47
    invoke-static {v12, v13}, Lp2/l0;->c(J)Z

    move-result v9

    if-eqz v9, :cond_48

    :goto_21
    move-object v4, v6

    goto :goto_22

    :cond_48
    new-instance v11, Lm0/t;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lm0/t;-><init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V

    iget-object v9, v15, Lm0/u;->a:Ly8/h;

    new-instance v12, Landroidx/lifecycle/j0;

    invoke-direct {v12, v15, v11, v6}, Landroidx/lifecycle/j0;-><init>(Lm0/u;Li9/e;Ly8/c;)V

    invoke-static {v9, v12, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v4

    :goto_22
    if-ne v4, v5, :cond_49

    move-object v7, v5

    goto :goto_25

    :cond_49
    :goto_23
    check-cast v4, Lp2/l0;

    goto :goto_24

    :cond_4a
    move-object v4, v6

    :goto_24
    if-eqz v4, :cond_4c

    iget-wide v4, v4, Lp2/l0;->a:J

    iget-object v9, v10, Lj9/y;->m:Ljava/lang/Object;

    invoke-static {v4, v5, v9}, Lp2/l0;->a(JLjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    iget-object v9, v2, Lm0/i1;->c:Lk/b0;

    iget-wide v10, v8, Lj9/x;->l:J

    invoke-virtual {v9, v10, v11}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/q;

    if-eqz v9, :cond_4c

    invoke-virtual {v9}, Lm0/q;->d()Lp2/g;

    move-result-object v10

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    if-ne v10, v0, :cond_4c

    iget-object v0, v9, Lm0/q;->c:Ll0/h;

    invoke-virtual {v0}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/j0;

    if-nez v0, :cond_4b

    goto :goto_25

    :cond_4b
    new-instance v9, Lm0/a0;

    new-instance v10, Lm0/z;

    const/16 v11, 0x20

    shr-long v11, v4, v11

    long-to-int v11, v11

    invoke-static {v0, v11}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v12

    iget-wide v13, v8, Lj9/x;->l:J

    invoke-direct {v10, v12, v11, v13, v14}, Lm0/z;-><init>(La3/j;IJ)V

    new-instance v11, Lm0/z;

    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    long-to-int v4, v4

    invoke-static {v0, v4}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v0

    iget-wide v12, v8, Lj9/x;->l:J

    invoke-direct {v11, v0, v4, v12, v13}, Lm0/z;-><init>(La3/j;IJ)V

    invoke-direct {v9, v10, v11, v3}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    sget-object v0, Lk/o;->a:Lk/b0;

    new-instance v0, Lk/b0;

    invoke-direct {v0}, Lk/b0;-><init>()V

    invoke-virtual {v0, v12, v13, v9}, Lk/b0;->h(JLjava/lang/Object;)V

    iget-object v2, v2, Lm0/i1;->k:Lr0/e1;

    invoke-virtual {v2, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Lm0/b1;->d:Li9/c;

    invoke-interface {v0, v9}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lm0/b1;->t:Lm0/t0;

    :cond_4c
    :goto_25
    return-object v7

    :pswitch_a
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_50

    if-eq v1, v11, :cond_4f

    if-eq v1, v5, :cond_4e

    if-ne v1, v2, :cond_4d

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_29

    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lca/a;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    move-object/from16 v1, p1

    goto :goto_28

    :catchall_0
    move-exception v0

    goto :goto_2a

    :cond_4f
    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lm0/u;

    iget-object v3, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v3, Lca/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_26

    :cond_50
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v1, v10

    check-cast v1, Lm0/u;

    iget-object v3, v1, Lm0/u;->e:Lca/c;

    iput-object v3, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-virtual {v3, v4}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_51

    goto :goto_29

    :cond_51
    :goto_26
    :try_start_1
    iget-object v7, v1, Lm0/u;->f:Landroid/view/textclassifier/TextClassifier;

    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_54

    goto :goto_27

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_2a

    :cond_52
    :goto_27
    new-instance v7, Lgd/c;

    invoke-direct {v7, v1, v6, v11}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object v3, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v6, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    const-wide/16 v9, 0x12c

    invoke-static {v9, v10, v7, v4}, Lu9/v;->A(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_53

    goto :goto_29

    :cond_53
    :goto_28
    move-object v7, v1

    check-cast v7, Landroid/view/textclassifier/TextClassifier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_54
    check-cast v3, Lca/c;

    invoke-virtual {v3, v6}, Lca/c;->f(Ljava/lang/Object;)V

    new-instance v1, Landroidx/lifecycle/i0;

    check-cast v8, La9/i;

    invoke-direct {v1, v7, v8, v6}, Landroidx/lifecycle/i0;-><init>(Landroid/view/textclassifier/TextClassifier;Li9/e;Ly8/c;)V

    iput-object v6, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v6, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v2, v4, Landroidx/lifecycle/j0;->m:I

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3, v1, v4}, Lu9/v;->A(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_55

    goto :goto_29

    :cond_55
    move-object v0, v1

    :goto_29
    return-object v0

    :goto_2a
    check-cast v1, Lca/c;

    invoke-virtual {v1, v6}, Lca/c;->f(Ljava/lang/Object;)V

    throw v0

    :pswitch_b
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_57

    if-ne v1, v11, :cond_56

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_2b

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Ll2/c;

    iget-object v2, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v2, Landroid/view/ScrollCaptureSession;

    check-cast v10, Landroid/graphics/Rect;

    new-instance v3, Lb3/k;

    iget v5, v10, Landroid/graphics/Rect;->left:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    iget v9, v10, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v5, v6, v9, v10}, Lb3/k;-><init>(IIII)V

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v1, v2, v3, v4}, Ll2/c;->a(Ll2/c;Landroid/view/ScrollCaptureSession;Lb3/k;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_58

    move-object v7, v0

    goto :goto_2c

    :cond_58
    :goto_2b
    check-cast v1, Lb3/k;

    check-cast v8, Ljava/util/function/Consumer;

    invoke-static {v1}, Lm1/v;->w(Lb3/k;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2c
    return-object v7

    :pswitch_c
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_5a

    if-ne v1, v11, :cond_59

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lx9/h;

    new-instance v12, Landroidx/lifecycle/l0;

    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Landroidx/work/impl/WorkDatabase_Impl;

    move-object v15, v10

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v16, v8

    check-cast v16, Lg5/p;

    const/16 v17, 0x0

    const/16 v18, 0x4

    invoke-direct/range {v12 .. v18}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v12, v4}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5b

    move-object v7, v0

    :cond_5b
    :goto_2d
    return-object v7

    :pswitch_d
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_5d

    if-eq v1, v11, :cond_5c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_5d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Lf2/q0;

    new-instance v12, Landroidx/lifecycle/l0;

    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Li9/c;

    move-object v15, v10

    check-cast v15, Lk0/b;

    move-object/from16 v16, v8

    check-cast v16, Lk0/n;

    const/16 v17, 0x0

    const/16 v18, 0x3

    invoke-direct/range {v12 .. v18}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v12, v4}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5e

    return-object v0

    :cond_5e
    :goto_2e
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_e
    check-cast v8, Lua/nav/routing/PackDownloadService;

    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/i;

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v5, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v5, :cond_60

    if-ne v5, v11, :cond_5f

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v5, Landroidx/lifecycle/i0;

    const/16 v9, 0xb

    invoke-direct {v5, v0, v8, v6, v9}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v6, v6, v5, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    check-cast v10, Ljava/lang/String;

    iput-object v6, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-virtual {v0, v10, v4}, Lua/nav/routing/i;->d(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_61

    move-object v7, v3

    goto :goto_30

    :cond_61
    :goto_2f
    invoke-virtual {v8}, Landroid/app/Service;->stopSelf()V

    :goto_30
    return-object v7

    :pswitch_f
    iget-object v0, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v0, Lg5/o;

    iget-object v0, v0, Lg5/o;->c:Ljava/lang/String;

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lx4/s;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v6, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v6, :cond_64

    if-eq v6, v11, :cond_63

    if-ne v6, v5, :cond_62

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_34

    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_31

    :cond_64
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lx4/s;->a()Lg3/l;

    move-result-object v6

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v6, v1, v4}, Ly4/d0;->a(Lv7/a;Lx4/s;La9/i;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_65

    goto :goto_33

    :cond_65
    :goto_31
    move-object v15, v6

    check-cast v15, Lx4/l;

    if-eqz v15, :cond_69

    sget-object v6, Lh5/l;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Updating notification for "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v10

    check-cast v13, Lh5/n;

    move-object/from16 v16, v8

    check-cast v16, Landroid/content/Context;

    iget-object v0, v1, Lx4/s;->b:Landroidx/work/WorkerParameters;

    iget-object v14, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iget-object v0, v13, Lh5/n;->a:Li5/a;

    iget-object v0, v0, Li5/a;->a:Lh5/h;

    new-instance v12, Lh5/m;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lb0/b3;

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0, v12}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ll9/a;->q(Lg3/j;)Lg3/l;

    move-result-object v0

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {v0}, Lg3/h;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_32

    :cond_66
    new-instance v1, Lu9/g;

    invoke-static {v4}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v4

    invoke-direct {v1, v11, v4}, Lu9/g;-><init>(ILy8/c;)V

    new-instance v4, Lg3/o;

    invoke-direct {v4, v0, v1, v3}, Lg3/o;-><init>(Lv7/a;Lu9/g;I)V

    sget-object v3, Lg3/m;->l:Lg3/m;

    invoke-interface {v0, v4, v3}, Lv7/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v3, Landroidx/fragment/app/t;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lu9/g;->t(Li9/c;)V

    invoke-virtual {v1}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    :goto_32
    if-ne v0, v2, :cond_67

    :goto_33
    move-object v0, v2

    :cond_67
    :goto_34
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_68

    throw v0

    :cond_68
    new-instance v0, Lt8/f;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const-class v1, Lj9/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/n;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0

    :cond_69
    const-string v1, "Worker was marked important ("

    const-string v2, ") but did not provide ForegroundInfo"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_10
    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_6d

    if-eq v1, v11, :cond_6c

    if-ne v1, v5, :cond_6b

    iget-object v0, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lf1/u;

    :try_start_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v2, p1

    :cond_6a
    move-object v0, v1

    goto :goto_36

    :catchall_2
    move-exception v0

    goto :goto_39

    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lf1/u;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_35

    :cond_6d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    new-instance v2, Lf1/u;

    invoke-interface {v1}, Lu9/t;->C()Ly8/h;

    move-result-object v3

    invoke-static {v3}, Lu9/v;->n(Ly8/h;)Lu9/v0;

    move-result-object v3

    iget-object v9, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v9, Lj9/o;

    invoke-interface {v9, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lf1/u;-><init>(Lu9/v0;Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/u;

    if-eqz v1, :cond_6f

    iget-object v1, v1, Lf1/u;->a:Lu9/v0;

    iput-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v1, v6}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {v1, v4}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6e

    move-object v7, v1

    :cond_6e
    if-ne v7, v0, :cond_6f

    goto :goto_38

    :cond_6f
    move-object v1, v2

    :goto_35
    :try_start_4
    check-cast v8, Li9/e;

    iget-object v2, v1, Lf1/u;->b:Ljava/lang/Object;

    iput-object v1, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    invoke-interface {v8, v2, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v2, v0, :cond_6a

    goto :goto_38

    :cond_70
    :goto_36
    invoke-virtual {v10, v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_37

    :cond_71
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_70

    :goto_37
    move-object v0, v2

    :goto_38
    return-object v0

    :goto_39
    invoke-virtual {v10, v1, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_72

    goto :goto_39

    :cond_72
    throw v0

    :pswitch_11
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/j0;->m:I

    if-eqz v1, :cond_75

    if-eq v1, v11, :cond_74

    if-ne v1, v5, :cond_73

    iget-object v0, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lca/a;

    :try_start_5
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3c

    :catchall_3
    move-exception v0

    goto :goto_3e

    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    iget-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    check-cast v1, Lb4/b;

    iget-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    check-cast v2, Lca/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_75
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v8, Lca/c;

    move-object v1, v10

    check-cast v1, Lb4/b;

    iput-object v8, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v1, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v11, v4, Landroidx/lifecycle/j0;->m:I

    invoke-virtual {v8, v4}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_76

    goto :goto_3b

    :cond_76
    move-object v2, v8

    :goto_3a
    :try_start_6
    new-instance v8, Landroidx/lifecycle/i0;

    invoke-direct {v8, v1, v6, v3}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object v2, v4, Landroidx/lifecycle/j0;->n:Ljava/lang/Object;

    iput-object v6, v4, Landroidx/lifecycle/j0;->o:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/j0;->m:I

    invoke-static {v8, v4}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v1, v0, :cond_77

    :goto_3b
    move-object v7, v0

    goto :goto_3d

    :cond_77
    move-object v1, v2

    :goto_3c
    check-cast v1, Lca/c;

    invoke-virtual {v1, v6}, Lca/c;->f(Ljava/lang/Object;)V

    :goto_3d
    return-object v7

    :catchall_4
    move-exception v0

    move-object v1, v2

    :goto_3e
    check-cast v1, Lca/c;

    invoke-virtual {v1, v6}, Lca/c;->f(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x5c4df21d -> :sswitch_3
        0x354ce0 -> :sswitch_2
        0x35c066 -> :sswitch_1
        0x7f7da5e7 -> :sswitch_0
    .end sparse-switch
.end method
