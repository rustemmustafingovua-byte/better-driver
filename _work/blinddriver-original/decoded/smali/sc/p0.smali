.class public final Lsc/p0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lua/nav/routing/GeoPoint;

.field public m:Ljava/util/List;

.field public n:Lua/nav/routing/GeoPoint;

.field public o:Ljava/util/ArrayList;

.field public p:Lzc/h;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lua/nav/c;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lua/nav/c;Ljava/lang/String;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lsc/p0;->s:Lua/nav/c;

    iput-object p2, p0, Lsc/p0;->t:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Lsc/p0;

    iget-object v1, p0, Lsc/p0;->s:Lua/nav/c;

    iget-object p0, p0, Lsc/p0;->t:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lsc/p0;-><init>(Lua/nav/c;Ljava/lang/String;Ly8/c;)V

    iput-object p1, v0, Lsc/p0;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/p0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/p0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/p0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v1, p0

    iget-object v5, v1, Lsc/p0;->s:Lua/nav/c;

    iget-object v8, v5, Lua/nav/c;->q:Lx9/l0;

    iget-object v0, v1, Lsc/p0;->r:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v9, Lz8/a;->l:Lz8/a;

    iget v2, v1, Lsc/p0;->q:I

    sget-object v10, Lu8/r;->l:Lu8/r;

    iget-object v3, v1, Lsc/p0;->t:Ljava/lang/String;

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v15, :cond_4

    if-eq v2, v14, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v12, :cond_1

    if-ne v2, v11, :cond_0

    iget-object v0, v1, Lsc/p0;->m:Ljava/util/List;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_12

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lsc/p0;->p:Lzc/h;

    iget-object v2, v1, Lsc/p0;->o:Ljava/util/ArrayList;

    iget-object v3, v1, Lsc/p0;->n:Lua/nav/routing/GeoPoint;

    iget-object v4, v1, Lsc/p0;->m:Ljava/util/List;

    iget-object v5, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v6, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v6

    move-object v7, v5

    move/from16 v19, v15

    const/4 v6, 0x0

    move-object/from16 v5, p1

    goto/16 :goto_a

    :cond_2
    iget-object v2, v1, Lsc/p0;->m:Ljava/util/List;

    iget-object v3, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    const/4 v6, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_3
    iget-object v0, v1, Lsc/p0;->m:Ljava/util/List;

    iget-object v2, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v4, v2

    const/4 v6, 0x0

    move-object v2, v0

    goto/16 :goto_5

    :cond_4
    iget-object v2, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v4, v2

    const/4 v6, 0x0

    move-object/from16 v2, p1

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lua/nav/c;->i()Lad/p1;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v2, Lad/p1;->a:Ldd/l0;

    if-eqz v2, :cond_6

    new-instance v4, Lua/nav/routing/GeoPoint;

    iget-wide v6, v2, Ldd/l0;->d:D

    iget-wide v11, v2, Ldd/l0;->e:D

    invoke-direct {v4, v6, v7, v11, v12}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_0

    :cond_6
    new-instance v4, Lua/nav/routing/GeoPoint;

    const-wide v6, 0x4049399ce075f6fdL    # 50.4501

    const-wide v11, 0x403e85fd8adab9f5L    # 30.5234

    invoke-direct {v4, v6, v7, v11, v12}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :goto_0
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v2

    invoke-virtual {v2}, Lua/nav/geo/c;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v2

    iget-object v2, v2, Luc/f;->h:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luc/c;

    invoke-virtual {v2}, Luc/c;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v11, Lba/d;->n:Lba/d;

    new-instance v2, Lb0/z0;

    const/4 v7, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v0, v1, Lsc/p0;->r:Ljava/lang/Object;

    iput-object v4, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    iput v15, v1, Lsc/p0;->q:I

    invoke-static {v11, v2, v1}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_7

    goto/16 :goto_11

    :cond_7
    :goto_1
    check-cast v2, Ljava/util/List;

    move-object/from16 v28, v2

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    move-object/from16 v28, v10

    :goto_2
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v2

    invoke-virtual {v2}, Lfd/o;->h()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_3
    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lsc/q0;

    const/16 v35, 0x0

    const v36, 0xfcff

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v19 .. v36}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v8, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    invoke-virtual {v0}, Lua/nav/geo/c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-object v0, v0, Luc/f;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc/c;

    invoke-virtual {v0}, Luc/c;->a()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_9
    iget-boolean v0, v5, Lua/nav/c;->H:Z

    if-nez v0, :cond_25

    iput-boolean v15, v5, Lua/nav/c;->H:Z

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    invoke-virtual {v0}, Lua/nav/geo/c;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-object v0, v0, Luc/f;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc/c;

    invoke-virtual {v0}, Luc/c;->a()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u2014 \u0443 \u043f\u043b\u0430\u0442\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 (\u043f\u0456\u0441\u043b\u044f \u043f\u0440\u043e\u0431\u043d\u043e\u0433\u043e \u043f\u0435\u0440\u0456\u043e\u0434\u0443)."

    goto :goto_4

    :cond_a
    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u043e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0442\u0430\u043b\u043e\u0433 (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441, \u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f)"

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lsc/q0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u0410\u0431\u043e \u0432\u0441\u0442\u0430\u0432\u0442\u0435 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x7fff

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

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v9 .. v26}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_17

    :cond_c
    move-object/from16 v28, v2

    goto/16 :goto_3

    :cond_d
    move-object/from16 v2, v28

    iput-object v0, v1, Lsc/p0;->r:Ljava/lang/Object;

    iput-object v4, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    iput-object v2, v1, Lsc/p0;->m:Ljava/util/List;

    iput v14, v1, Lsc/p0;->q:I

    const-wide/16 v11, 0x190

    invoke-static {v11, v12, v1}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_e

    goto/16 :goto_11

    :cond_e
    :goto_5
    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lsc/q0;

    const/16 v35, 0x0

    const v36, 0xfdff

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v19 .. v36}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_1
    sget-object v0, Lzc/f;->a:Lzc/f;

    iput-object v6, v1, Lsc/p0;->r:Ljava/lang/Object;

    iput-object v4, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    iput-object v2, v1, Lsc/p0;->m:Ljava/util/List;

    iput v13, v1, Lsc/p0;->q:I

    const/4 v7, 0x7

    invoke-virtual {v0, v7, v1, v3, v4}, Lzc/f;->e(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v9, :cond_f

    goto/16 :goto_11

    :cond_f
    move-object v3, v4

    :goto_6
    :try_start_2
    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v4

    :goto_7
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_10

    move-object v10, v0

    :cond_10
    check-cast v10, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lua/nav/geocoding/Place;

    iget-object v10, v10, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v11, v10, Lua/nav/routing/GeoPoint;->a:D

    move/from16 v19, v15

    iget-wide v14, v10, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v11, v12, v14, v15}, Ldd/w0;->b(DD)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    move/from16 v15, v19

    const/4 v14, 0x2

    goto :goto_9

    :cond_12
    move/from16 v19, v15

    iput-object v6, v1, Lsc/p0;->r:Ljava/lang/Object;

    iput-object v3, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    iput-object v2, v1, Lsc/p0;->m:Ljava/util/List;

    iput-object v3, v1, Lsc/p0;->n:Lua/nav/routing/GeoPoint;

    iput-object v0, v1, Lsc/p0;->o:Ljava/util/ArrayList;

    sget-object v4, Lzc/h;->a:Lzc/h;

    iput-object v4, v1, Lsc/p0;->p:Lzc/h;

    const/4 v7, 0x4

    iput v7, v1, Lsc/p0;->q:I

    invoke-static {v5, v3, v1}, Lua/nav/c;->e(Lua/nav/c;Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_13

    goto/16 :goto_11

    :cond_13
    move-object v7, v3

    move-object v3, v0

    move-object v0, v4

    move-object v4, v7

    :goto_a
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "places"

    invoke-static {v3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "`"

    const-string v10, "\u2019"

    const-string v11, "toLowerCase(...)"

    const-string v12, "\'"

    if-eqz v5, :cond_14

    invoke-static {v5}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10, v12}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v12}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_14
    move-object v5, v6

    :goto_b
    new-instance v14, Lo0/a1;

    invoke-direct {v14, v5, v13}, Lo0/a1;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lr0/o1;

    const/16 v15, 0xe

    invoke-direct {v13, v15, v4}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    const/4 v15, 0x2

    new-array v4, v15, [Li9/c;

    const/4 v15, 0x0

    aput-object v14, v4, v15

    aput-object v13, v4, v19

    invoke-static {v4}, Ll9/a;->d([Li9/c;)Lm0/h1;

    move-result-object v4

    invoke-static {v3, v4}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v3, v13}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lua/nav/geocoding/Place;

    iget-object v14, v13, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    iget-object v15, v13, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    if-eqz v5, :cond_15

    if-eqz v14, :cond_15

    invoke-static {v14}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v3

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10, v12}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v12}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move/from16 v3, v19

    goto :goto_d

    :cond_15
    move-object/from16 v16, v3

    :cond_16
    const/4 v3, 0x0

    :goto_d
    if-eqz v14, :cond_17

    if-nez v3, :cond_17

    move/from16 v6, v19

    invoke-static {v15, v14, v6}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    move-object/from16 v28, v0

    move-object/from16 v20, v13

    goto :goto_f

    :cond_18
    const-string v3, ", "

    invoke-static {v15, v3, v14}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v15, v13, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v28, v0

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v14}, Lr9/r;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    move-object/from16 v0, v28

    const/4 v6, 0x1

    goto :goto_e

    :cond_1a
    move-object/from16 v28, v0

    const/16 v26, 0x0

    const/16 v27, 0x3e

    const-string v23, ", "

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v15

    invoke-static/range {v22 .. v27}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x7c

    const/16 v23, 0x0

    move-object/from16 v20, v13

    invoke-static/range {v20 .. v25}, Lua/nav/geocoding/Place;->a(Lua/nav/geocoding/Place;Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;I)Lua/nav/geocoding/Place;

    move-result-object v13

    goto :goto_10

    :goto_f
    move-object/from16 v13, v20

    :goto_10
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    move-object/from16 v0, v28

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x1

    goto/16 :goto_c

    :cond_1b
    sget-object v0, Lzc/f;->a:Lzc/f;

    const/4 v6, 0x0

    iput-object v6, v1, Lsc/p0;->r:Ljava/lang/Object;

    iput-object v6, v1, Lsc/p0;->l:Lua/nav/routing/GeoPoint;

    iput-object v2, v1, Lsc/p0;->m:Ljava/util/List;

    iput-object v6, v1, Lsc/p0;->n:Lua/nav/routing/GeoPoint;

    iput-object v6, v1, Lsc/p0;->o:Ljava/util/ArrayList;

    iput-object v6, v1, Lsc/p0;->p:Lzc/h;

    const/4 v11, 0x5

    iput v11, v1, Lsc/p0;->q:I

    invoke-virtual {v0, v4, v7, v1}, Lzc/f;->a(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_1c

    :goto_11
    return-object v9

    :cond_1c
    :goto_12
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/geocoding/Place;

    iget-boolean v3, v3, Lua/nav/geocoding/Place;->d:Z

    if-eqz v3, :cond_1e

    goto :goto_14

    :cond_1f
    :goto_13
    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_14

    :cond_20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/geocoding/Place;

    iget-boolean v3, v3, Lua/nav/geocoding/Place;->d:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_16

    :cond_22
    :goto_14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_15

    :cond_23
    move-object v2, v0

    :goto_15
    move-object/from16 v18, v2

    :cond_24
    :goto_16
    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lsc/q0;

    const/16 v25, 0x0

    const v26, 0xfcff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v9 .. v26}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_25
    :goto_17
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_26
    const/4 v15, 0x1

    goto/16 :goto_5
.end method
