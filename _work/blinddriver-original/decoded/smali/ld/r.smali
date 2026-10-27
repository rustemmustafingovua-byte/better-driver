.class public final Lld/r;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lua/nav/routing/Route;

.field public m:J

.field public n:D

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ldd/k0;

.field public final synthetic r:Lua/nav/stats/a;

.field public final synthetic s:Lad/j0;

.field public final synthetic t:Lad/x;


# direct methods
.method public constructor <init>(Ldd/k0;Lua/nav/stats/a;Lad/j0;Lad/x;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lld/r;->q:Ldd/k0;

    iput-object p2, p0, Lld/r;->r:Lua/nav/stats/a;

    iput-object p3, p0, Lld/r;->s:Lad/j0;

    iput-object p4, p0, Lld/r;->t:Lad/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lld/r;

    iget-object v3, p0, Lld/r;->s:Lad/j0;

    iget-object v4, p0, Lld/r;->t:Lad/x;

    iget-object v1, p0, Lld/r;->q:Ldd/k0;

    iget-object v2, p0, Lld/r;->r:Lua/nav/stats/a;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lld/r;-><init>(Ldd/k0;Lua/nav/stats/a;Lad/j0;Lad/x;Ly8/c;)V

    iput-object p1, v0, Lld/r;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lld/r;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lld/r;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lld/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lld/r;->r:Lua/nav/stats/a;

    iget-object v2, v1, Lua/nav/stats/a;->d:Lld/n;

    iget-object v3, v0, Lld/r;->p:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v0, Lld/r;->o:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    if-ne v5, v8, :cond_0

    iget-wide v10, v0, Lld/r;->n:D

    iget-wide v12, v0, Lld/r;->m:J

    iget-object v5, v0, Lld/r;->l:Lua/nav/routing/Route;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v5, v9

    move-wide v12, v10

    const-wide/16 v10, 0x0

    :goto_0
    invoke-static {v3}, Lu9/v;->r(Lu9/t;)Z

    move-result v14

    if-eqz v14, :cond_11

    iput-object v3, v0, Lld/r;->p:Ljava/lang/Object;

    iput-object v5, v0, Lld/r;->l:Lua/nav/routing/Route;

    iput-wide v12, v0, Lld/r;->m:J

    iput-wide v10, v0, Lld/r;->n:D

    iput v8, v0, Lld/r;->o:I

    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_2

    return-object v4

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v12, v14, v12

    long-to-double v12, v12

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v19, v12, v16

    iget-object v12, v0, Lld/r;->q:Ldd/k0;

    iget-boolean v13, v12, Ldd/k0;->m:Z

    const-wide/16 v16, 0x0

    const/4 v6, 0x0

    if-nez v13, :cond_3

    iput-object v9, v1, Lua/nav/stats/a;->i:Lua/nav/routing/Route;

    iput-boolean v6, v2, Lld/n;->q:Z

    move-object v5, v9

    move-wide v12, v14

    goto :goto_0

    :cond_3
    move-wide/from16 v25, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v2, Lld/n;->d:Ljava/lang/Long;

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v9, v10}, Ljava/lang/Long;-><init>(J)V

    iput-object v11, v2, Lld/n;->d:Ljava/lang/Long;

    iput-boolean v8, v1, Lua/nav/stats/a;->h:Z

    :cond_4
    iget-object v11, v0, Lld/r;->s:Lad/j0;

    iget-object v11, v11, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lad/a0;

    iget-object v12, v12, Ldd/k0;->j:Ldd/m;

    iget-object v12, v12, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v12}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldd/n;

    iget-object v13, v11, Lad/a0;->b:Lua/nav/routing/Route;

    iget-wide v7, v11, Lad/a0;->c:D

    iget-boolean v6, v11, Lad/a0;->a:Z

    if-eqz v6, :cond_c

    if-eqz v13, :cond_c

    iget v6, v11, Lad/a0;->l:F

    move-object/from16 v28, v3

    move-object/from16 v27, v4

    float-to-double v3, v6

    const-wide v21, 0x400ccccccccccccdL    # 3.6

    div-double v21, v3, v21

    iget-object v3, v1, Lua/nav/stats/a;->d:Lld/n;

    move-object/from16 v18, v3

    move-wide/from16 v23, v9

    invoke-virtual/range {v18 .. v24}, Lld/n;->l(DDJ)Z

    move-result v3

    move-wide/from16 v9, v21

    if-ne v5, v13, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-wide/from16 v21, v19

    move-wide/from16 v19, v23

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :goto_3
    sub-double v23, v7, v25

    if-eqz v4, :cond_6

    cmpg-double v5, v23, v16

    if-ltz v5, :cond_6

    mul-double v5, v9, v21

    const-wide/high16 v25, 0x404e000000000000L    # 60.0

    add-double v5, v5, v25

    cmpl-double v5, v23, v5

    if-lez v5, :cond_7

    :cond_6
    move/from16 v29, v3

    move/from16 v30, v4

    move-wide/from16 v31, v19

    move-wide/from16 v4, v21

    goto :goto_4

    :cond_7
    iget-object v5, v1, Lua/nav/stats/a;->d:Lld/n;

    iget-object v6, v11, Lad/a0;->u:Ljava/lang/Integer;

    iget-object v11, v11, Lad/a0;->q:Ljava/lang/String;

    move/from16 v29, v3

    const-string v3, "GPS"

    move/from16 v30, v4

    const/4 v4, 0x0

    invoke-static {v11, v3, v4}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v26

    move-object/from16 v18, v5

    move-object/from16 v25, v6

    invoke-virtual/range {v18 .. v26}, Lld/n;->i(JDDLjava/lang/Integer;Z)Lld/j;

    move-result-object v3

    move-wide/from16 v31, v19

    move-wide/from16 v4, v21

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :goto_4
    invoke-virtual {v2}, Lld/n;->h()V

    :cond_8
    move/from16 v3, v29

    :goto_5
    if-nez v30, :cond_9

    invoke-static {v13, v7, v8}, Ll9/a;->j(Lua/nav/routing/Route;D)Lld/a;

    move-result-object v6

    iget-object v11, v1, Lua/nav/stats/a;->d:Lld/n;

    move-wide/from16 v29, v7

    iget-wide v7, v6, Lld/a;->a:D

    move-wide/from16 v19, v7

    iget-wide v7, v6, Lld/a;->b:D

    move-wide/from16 v21, v7

    iget-wide v6, v6, Lld/a;->c:D

    move-wide/from16 v23, v6

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v24}, Lld/n;->k(DDD)V

    iput-object v13, v1, Lua/nav/stats/a;->i:Lua/nav/routing/Route;

    goto :goto_6

    :cond_9
    move-wide/from16 v29, v7

    :goto_6
    invoke-virtual {v2, v4, v5, v9, v10}, Lld/n;->f(DD)V

    iget-boolean v4, v2, Lld/n;->q:Z

    if-eqz v4, :cond_b

    invoke-static {v1, v12, v13, v14, v15}, Lua/nav/stats/a;->a(Lua/nav/stats/a;Ldd/n;Lua/nav/routing/Route;J)Z

    move-result v4

    if-eqz v4, :cond_b

    move-wide/from16 v8, v31

    invoke-virtual {v2, v8, v9}, Lld/n;->d(J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x1

    :cond_a
    const/4 v7, 0x0

    iput-object v7, v1, Lua/nav/stats/a;->i:Lua/nav/routing/Route;

    :cond_b
    move-object v5, v13

    move-wide/from16 v10, v29

    goto :goto_7

    :cond_c
    move-object/from16 v28, v3

    move-object/from16 v27, v4

    move-wide v8, v9

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Lld/n;->h()V

    iget-object v3, v1, Lua/nav/stats/a;->i:Lua/nav/routing/Route;

    iget-boolean v4, v2, Lld/n;->q:Z

    if-eqz v4, :cond_d

    if-eqz v3, :cond_d

    invoke-static {v1, v12, v3, v14, v15}, Lua/nav/stats/a;->a(Lua/nav/stats/a;Ldd/n;Lua/nav/routing/Route;J)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v8, v9}, Lld/n;->d(J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    :cond_d
    const/4 v4, 0x0

    iput-boolean v4, v2, Lld/n;->q:Z

    const/4 v7, 0x0

    iput-object v7, v1, Lua/nav/stats/a;->i:Lua/nav/routing/Route;

    const/4 v5, 0x0

    :cond_e
    iget-object v3, v1, Lua/nav/stats/a;->d:Lld/n;

    iget-object v4, v0, Lld/r;->t:Lad/x;

    iget-object v4, v4, Lad/x;->k:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/s;

    iget-wide v10, v4, Lad/s;->d:D

    move-object/from16 v18, v3

    move-wide/from16 v23, v8

    move-wide/from16 v21, v10

    invoke-virtual/range {v18 .. v24}, Lld/n;->l(DDJ)Z

    move-result v3

    move-wide/from16 v10, v25

    :goto_7
    if-eqz v3, :cond_f

    const/4 v3, 0x1

    iput-boolean v3, v1, Lua/nav/stats/a;->h:Z

    iget-object v4, v1, Lua/nav/stats/a;->e:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    const/4 v3, 0x1

    const/4 v7, 0x0

    :goto_8
    iget-boolean v4, v1, Lua/nav/stats/a;->h:Z

    if-eqz v4, :cond_10

    iget-wide v8, v1, Lua/nav/stats/a;->g:J

    sub-long v8, v14, v8

    const-wide/32 v12, 0xea60

    cmp-long v4, v8, v12

    if-lez v4, :cond_10

    invoke-virtual {v1}, Lua/nav/stats/a;->c()V

    :cond_10
    move v8, v3

    move-object v9, v7

    move-wide v12, v14

    move-object/from16 v4, v27

    move-object/from16 v3, v28

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
