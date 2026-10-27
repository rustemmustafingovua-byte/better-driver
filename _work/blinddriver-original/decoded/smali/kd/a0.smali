.class public final Lkd/a0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lua/nav/c;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkd/a0;->l:I

    .line 1
    iput-object p1, p0, Lkd/a0;->w:Ljava/lang/Object;

    iput-object p2, p0, Lkd/a0;->x:Ljava/lang/Object;

    iput-object p3, p0, Lkd/a0;->y:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lx9/g;Lx9/g;Lx9/l0;Lx9/l0;Landroid/app/Application;Lj9/y;Lx9/u;Lx9/g;Lp2/y;Lsc/i;Lp2/y;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkd/a0;->l:I

    .line 2
    iput-object p1, p0, Lkd/a0;->o:Ljava/lang/Object;

    iput-object p2, p0, Lkd/a0;->p:Ljava/lang/Object;

    iput-object p3, p0, Lkd/a0;->r:Ljava/lang/Object;

    iput-object p4, p0, Lkd/a0;->s:Ljava/lang/Object;

    iput-object p5, p0, Lkd/a0;->t:Ljava/lang/Object;

    iput-object p6, p0, Lkd/a0;->u:Ljava/lang/Object;

    iput-object p7, p0, Lkd/a0;->v:Ljava/lang/Object;

    iput-object p8, p0, Lkd/a0;->q:Ljava/lang/Object;

    iput-object p9, p0, Lkd/a0;->w:Ljava/lang/Object;

    iput-object p10, p0, Lkd/a0;->x:Ljava/lang/Object;

    iput-object p11, p0, Lkd/a0;->y:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lkd/a0;->l:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lkd/a0;

    iget-object v3, v0, Lkd/a0;->w:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v0, Lkd/a0;->x:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Lkd/a0;->y:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    move-object/from16 v5, p2

    invoke-direct {v2, v3, v4, v0, v5}, Lkd/a0;-><init>(Ljava/util/List;Ljava/lang/String;Lua/nav/c;Ly8/c;)V

    iput-object v1, v2, Lkd/a0;->v:Ljava/lang/Object;

    return-object v2

    :pswitch_0
    new-instance v5, Lkd/a0;

    iget-object v2, v0, Lkd/a0;->o:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lx9/g;

    iget-object v2, v0, Lkd/a0;->p:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lx9/g;

    iget-object v2, v0, Lkd/a0;->r:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lx9/l0;

    iget-object v2, v0, Lkd/a0;->s:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lx9/l0;

    iget-object v2, v0, Lkd/a0;->t:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/app/Application;

    iget-object v2, v0, Lkd/a0;->u:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lj9/y;

    iget-object v2, v0, Lkd/a0;->v:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lx9/u;

    iget-object v2, v0, Lkd/a0;->q:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Lx9/g;

    iget-object v2, v0, Lkd/a0;->w:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lp2/y;

    iget-object v2, v0, Lkd/a0;->x:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lsc/i;

    iget-object v0, v0, Lkd/a0;->y:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lp2/y;

    move-object/from16 v17, p2

    invoke-direct/range {v5 .. v17}, Lkd/a0;-><init>(Lx9/g;Lx9/g;Lx9/l0;Lx9/l0;Landroid/app/Application;Lj9/y;Lx9/u;Lx9/g;Lp2/y;Lsc/i;Lp2/y;Ly8/c;)V

    iput-object v1, v5, Lkd/a0;->m:Ljava/lang/Object;

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkd/a0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lkd/a0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lkd/a0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lkd/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lkd/a0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lkd/a0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lkd/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v1, p0

    iget v0, v1, Lkd/a0;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/4 v3, 0x5

    iget-object v4, v1, Lkd/a0;->y:Ljava/lang/Object;

    iget-object v5, v1, Lkd/a0;->x:Ljava/lang/Object;

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x4

    iget-object v11, v1, Lkd/a0;->w:Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast v11, Ljava/util/List;

    iget-object v0, v1, Lkd/a0;->v:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v14, Lz8/a;->l:Lz8/a;

    iget v0, v1, Lkd/a0;->n:I

    if-eqz v0, :cond_4

    if-eq v0, v13, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v10, :cond_0

    iget-object v0, v1, Lkd/a0;->u:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/SavedRoute;

    iget-object v3, v1, Lkd/a0;->s:Ljava/lang/Object;

    check-cast v3, Lua/nav/routing/GeoPoint;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v1, Lkd/a0;->q:Ljava/lang/Object;

    check-cast v3, Lua/nav/routing/Route;

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-object v3, v1, Lkd/a0;->p:Ljava/lang/Object;

    check-cast v3, Lua/nav/routing/Route;

    iget-object v4, v1, Lkd/a0;->o:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v1, v1, Lkd/a0;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lkd/a0;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lkd/a0;->s:Ljava/lang/Object;

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-object v5, v1, Lkd/a0;->r:Ljava/lang/Object;

    check-cast v5, Lua/nav/routing/GeoPoint;

    iget-object v6, v1, Lkd/a0;->q:Ljava/lang/Object;

    check-cast v6, Lua/nav/routing/Route;

    iget-object v8, v1, Lkd/a0;->p:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v1, Lkd/a0;->o:Ljava/lang/Object;

    check-cast v9, Lua/nav/c;

    iget-object v11, v1, Lkd/a0;->m:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v22, v4

    move-object/from16 v19, v6

    move-object v4, v8

    move-object v6, v9

    move-object/from16 v9, p1

    :goto_0
    move-object/from16 v20, v5

    goto/16 :goto_5

    :cond_2
    iget-object v0, v1, Lkd/a0;->s:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-object v4, v1, Lkd/a0;->r:Ljava/lang/Object;

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-object v5, v1, Lkd/a0;->q:Ljava/lang/Object;

    check-cast v5, Lua/nav/routing/Route;

    iget-object v6, v1, Lkd/a0;->p:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Ljava/util/List;

    iget-object v6, v1, Lkd/a0;->o:Ljava/lang/Object;

    check-cast v6, Lua/nav/c;

    iget-object v8, v1, Lkd/a0;->m:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v4, v0

    move-object v0, v5

    move-object v5, v12

    move-object v12, v11

    move-object v11, v8

    move-object/from16 v8, p1

    goto/16 :goto_4

    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    sget-object v0, Lsc/i0;->k:Lid/l;

    if-eqz v0, :cond_6

    iput-object v7, v1, Lkd/a0;->v:Ljava/lang/Object;

    iput v13, v1, Lkd/a0;->n:I

    invoke-virtual {v0, v11, v12, v1}, Lid/l;->a(Ljava/util/List;ZLa9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_1
    check-cast v0, Lua/nav/routing/Route;

    goto :goto_3

    :cond_6
    const-string v0, "matcher"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    check-cast v5, Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Lua/nav/c;

    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v15

    if-nez v15, :cond_f

    check-cast v0, Lua/nav/routing/Route;

    iget-object v4, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v4}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-object v12, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v12}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lua/nav/routing/GeoPoint;

    sget-object v13, Lzc/f;->a:Lzc/f;

    iput-object v7, v1, Lkd/a0;->v:Ljava/lang/Object;

    iput-object v5, v1, Lkd/a0;->m:Ljava/lang/Object;

    iput-object v6, v1, Lkd/a0;->o:Ljava/lang/Object;

    iput-object v11, v1, Lkd/a0;->p:Ljava/lang/Object;

    iput-object v0, v1, Lkd/a0;->q:Ljava/lang/Object;

    iput-object v4, v1, Lkd/a0;->r:Ljava/lang/Object;

    iput-object v12, v1, Lkd/a0;->s:Ljava/lang/Object;

    iput v8, v1, Lkd/a0;->n:I

    invoke-virtual {v13, v4, v1}, Lzc/f;->c(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;

    move-result-object v8

    if-ne v8, v14, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object/from16 v34, v5

    move-object v5, v4

    move-object v4, v12

    move-object v12, v11

    move-object/from16 v11, v34

    :goto_4
    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_8

    const-string v8, "\u0421\u0442\u0430\u0440\u0442"

    :cond_8
    sget-object v13, Lzc/f;->a:Lzc/f;

    iput-object v7, v1, Lkd/a0;->v:Ljava/lang/Object;

    iput-object v11, v1, Lkd/a0;->m:Ljava/lang/Object;

    iput-object v6, v1, Lkd/a0;->o:Ljava/lang/Object;

    iput-object v12, v1, Lkd/a0;->p:Ljava/lang/Object;

    iput-object v0, v1, Lkd/a0;->q:Ljava/lang/Object;

    iput-object v5, v1, Lkd/a0;->r:Ljava/lang/Object;

    iput-object v4, v1, Lkd/a0;->s:Ljava/lang/Object;

    iput-object v8, v1, Lkd/a0;->t:Ljava/lang/Object;

    iput v9, v1, Lkd/a0;->n:I

    invoke-virtual {v13, v4, v1}, Lzc/f;->c(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;

    move-result-object v9

    if-ne v9, v14, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v19, v0

    move-object/from16 v22, v4

    move-object v0, v8

    move-object v4, v12

    goto/16 :goto_0

    :goto_5
    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v9, "\u0424\u0456\u043d\u0456\u0448"

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {v11}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, " \u2192 "

    invoke-static {v0, v5, v9}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_b
    move-object/from16 v18, v11

    new-instance v15, Lua/nav/routing/SavedRoute;

    sget-object v24, Lu8/r;->l:Lu8/r;

    const-string v25, "trip"

    move-object/from16 v21, v0

    move-object/from16 v23, v9

    invoke-direct/range {v15 .. v25}, Lua/nav/routing/SavedRoute;-><init>(JLjava/lang/String;Lua/nav/routing/Route;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v19

    sget-object v5, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v5

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v8

    iget-object v8, v8, Luc/f;->h:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Luc/c;

    const-string v9, "unlimited_saved"

    invoke-virtual {v8, v9}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v3, v7

    goto :goto_6

    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_6
    iput-object v7, v1, Lkd/a0;->v:Ljava/lang/Object;

    iput-object v6, v1, Lkd/a0;->m:Ljava/lang/Object;

    iput-object v4, v1, Lkd/a0;->o:Ljava/lang/Object;

    iput-object v0, v1, Lkd/a0;->p:Ljava/lang/Object;

    iput-object v7, v1, Lkd/a0;->q:Ljava/lang/Object;

    iput-object v7, v1, Lkd/a0;->r:Ljava/lang/Object;

    iput-object v7, v1, Lkd/a0;->s:Ljava/lang/Object;

    iput-object v7, v1, Lkd/a0;->t:Ljava/lang/Object;

    iput-object v15, v1, Lkd/a0;->u:Ljava/lang/Object;

    iput v10, v1, Lkd/a0;->n:I

    invoke-virtual {v5, v15, v3, v1}, Lid/c1;->a(Lua/nav/routing/SavedRoute;Ljava/lang/Integer;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_d

    :goto_7
    move-object v2, v14

    goto/16 :goto_a

    :cond_d
    move-object v3, v0

    move-object v1, v6

    move-object v0, v15

    :goto_8
    iget-object v5, v1, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v3}, Lua/nav/routing/Route;->c()D

    move-result-wide v6

    double-to-int v3, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "trip_saved len="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pts="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v3, v1, Lua/nav/c;->q:Lx9/l0;

    :cond_e
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lsc/q0;

    iget-object v6, v0, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3fff

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v1, v0}, Lua/nav/c;->F(Lua/nav/routing/SavedRoute;)V

    goto :goto_a

    :cond_f
    iget-object v0, v6, Lua/nav/c;->q:Lx9/l0;

    :cond_10
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lsc/q0;

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    const/16 v4, 0x64

    invoke-static {v4, v3}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_11
    move-object v3, v7

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u043d\u044f\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3fff

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v16 .. v33}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_a
    return-object v2

    :pswitch_0
    iget-object v0, v1, Lkd/a0;->s:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lx9/l0;

    iget-object v0, v1, Lkd/a0;->r:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lx9/l0;

    iget-object v0, v1, Lkd/a0;->m:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v14, v1, Lkd/a0;->n:I

    if-eqz v14, :cond_13

    if-ne v14, v13, :cond_12

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v6, v1, Lkd/a0;->o:Ljava/lang/Object;

    check-cast v6, Lx9/g;

    iget-object v14, v1, Lkd/a0;->p:Ljava/lang/Object;

    check-cast v14, Lx9/g;

    move/from16 v17, v8

    new-instance v8, Lkd/y;

    invoke-direct {v8, v3, v7, v12}, Lkd/y;-><init>(ILy8/c;I)V

    new-array v3, v10, [Lx9/g;

    aput-object v6, v3, v12

    aput-object v14, v3, v13

    aput-object v16, v3, v17

    aput-object v15, v3, v9

    new-instance v6, Lx9/m;

    invoke-direct {v6, v3, v8}, Lx9/m;-><init>([Lx9/g;Li9/h;)V

    invoke-static {v6}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v3

    new-instance v14, Lkd/z;

    iget-object v6, v1, Lkd/a0;->t:Ljava/lang/Object;

    move-object/from16 v17, v6

    check-cast v17, Landroid/app/Application;

    iget-object v6, v1, Lkd/a0;->u:Ljava/lang/Object;

    move-object/from16 v18, v6

    check-cast v18, Lj9/y;

    iget-object v6, v1, Lkd/a0;->v:Ljava/lang/Object;

    move-object/from16 v20, v6

    check-cast v20, Lx9/u;

    iget-object v6, v1, Lkd/a0;->q:Ljava/lang/Object;

    move-object/from16 v21, v6

    check-cast v21, Lx9/g;

    iget-object v6, v1, Lkd/a0;->p:Ljava/lang/Object;

    move-object/from16 v22, v6

    check-cast v22, Lx9/g;

    move-object/from16 v23, v11

    check-cast v23, Lp2/y;

    move-object/from16 v24, v5

    check-cast v24, Lsc/i;

    move-object/from16 v25, v4

    check-cast v25, Lp2/y;

    invoke-direct/range {v14 .. v25}, Lkd/z;-><init>(Lx9/l0;Lx9/l0;Landroid/app/Application;Lj9/y;Lu9/t;Lx9/u;Lx9/g;Lx9/g;Lp2/y;Lsc/i;Lp2/y;)V

    iput-object v7, v1, Lkd/a0;->m:Ljava/lang/Object;

    iput v13, v1, Lkd/a0;->n:I

    invoke-interface {v3, v14, v1}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_14

    move-object v2, v0

    :cond_14
    :goto_b
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
