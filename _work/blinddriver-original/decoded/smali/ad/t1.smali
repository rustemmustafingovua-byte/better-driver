.class public final Lad/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lad/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/t1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/t1;->a:Lad/t1;

    return-void
.end method


# virtual methods
.method public final a(Lid/d1;Lua/nav/routing/GeoPoint;Ljava/util/ArrayList;Lad/o0;Li9/c;La9/c;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v0, p6

    instance-of v4, v0, Lad/s1;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lad/s1;

    iget v5, v4, Lad/s1;->v:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lad/s1;->v:I

    goto :goto_0

    :cond_0
    new-instance v4, Lad/s1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v0}, Lad/s1;-><init>(Lad/t1;La9/c;)V

    :goto_0
    iget-object v0, v4, Lad/s1;->t:Ljava/lang/Object;

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v6, v4, Lad/s1;->v:I

    sget-object v7, Lad/n0;->a:Lad/n0;

    const/4 v8, 0x3

    const/4 v9, 0x2

    sget-object v10, Lu8/r;->l:Lu8/r;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v1, v4, Lad/s1;->s:Lua/nav/routing/GeoPoint;

    iget-object v2, v4, Lad/s1;->r:Ljava/lang/Integer;

    iget-object v3, v4, Lad/s1;->q:Ljava/util/List;

    iget-object v5, v4, Lad/s1;->p:Li9/c;

    iget-object v4, v4, Lad/s1;->o:Lad/o0;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v12

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    move-object v9, v12

    goto/16 :goto_13

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v4, Lad/s1;->p:Li9/c;

    iget-object v2, v4, Lad/s1;->o:Lad/o0;

    iget-object v3, v4, Lad/s1;->n:Ljava/util/List;

    iget-object v6, v4, Lad/s1;->m:Lua/nav/routing/GeoPoint;

    iget-object v9, v4, Lad/s1;->l:Lid/d1;

    :try_start_1
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :cond_3
    iget-object v1, v4, Lad/s1;->q:Ljava/util/List;

    check-cast v1, Lad/t1;

    iget-object v1, v4, Lad/s1;->p:Li9/c;

    iget-object v2, v4, Lad/s1;->o:Lad/o0;

    iget-object v3, v4, Lad/s1;->n:Ljava/util/List;

    iget-object v6, v4, Lad/s1;->m:Lua/nav/routing/GeoPoint;

    iget-object v13, v4, Lad/s1;->l:Lid/d1;

    :try_start_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v1

    :goto_1
    move-object v1, v13

    move-object v13, v6

    goto :goto_7

    :cond_4
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    :try_start_3
    invoke-static/range {p2 .. p2}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v3, :cond_5

    iget-wide v13, v3, Lad/o0;->a:D

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v13, v14}, Ljava/lang/Double;-><init>(D)V

    goto :goto_4

    :goto_2
    move-object/from16 v13, p2

    :goto_3
    move-object/from16 v14, p5

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v6, v12

    :goto_4
    iput-object v1, v4, Lad/s1;->l:Lid/d1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v13, p2

    :try_start_4
    iput-object v13, v4, Lad/s1;->m:Lua/nav/routing/GeoPoint;

    iput-object v2, v4, Lad/s1;->n:Ljava/util/List;

    iput-object v3, v4, Lad/s1;->o:Lad/o0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v14, p5

    :try_start_5
    iput-object v14, v4, Lad/s1;->p:Li9/c;

    iput-object v12, v4, Lad/s1;->q:Ljava/util/List;

    iput v11, v4, Lad/s1;->v:I

    invoke-interface {v1, v0, v6, v4}, Lid/d1;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v0, v5, :cond_6

    goto/16 :goto_10

    :cond_6
    move-object v6, v13

    move-object v13, v1

    :goto_5
    :try_start_6
    check-cast v0, Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    :goto_6
    move-object v1, v14

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_3

    :goto_7
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, v13

    move-object v13, v1

    goto :goto_6

    :goto_8
    instance-of v14, v0, Lt8/l;

    if-eqz v14, :cond_7

    move-object v0, v12

    :cond_7
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_8

    move-object v0, v10

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v2, :cond_b

    const-string v0, "reroute_heading_fallback"

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_7
    invoke-static {v6}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v13, v4, Lad/s1;->l:Lid/d1;

    iput-object v6, v4, Lad/s1;->m:Lua/nav/routing/GeoPoint;

    iput-object v3, v4, Lad/s1;->n:Ljava/util/List;

    iput-object v2, v4, Lad/s1;->o:Lad/o0;

    iput-object v1, v4, Lad/s1;->p:Li9/c;

    iput-object v12, v4, Lad/s1;->q:Ljava/util/List;

    iput v9, v4, Lad/s1;->v:I

    invoke-interface {v13, v0, v4}, Lid/d1;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-ne v0, v5, :cond_9

    goto/16 :goto_10

    :cond_9
    move-object v9, v13

    :goto_9
    :try_start_8
    check-cast v0, Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_a
    move-object v13, v9

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v9, v13

    :goto_b
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    goto :goto_a

    :goto_c
    instance-of v9, v0, Lt8/l;

    if-eqz v9, :cond_a

    move-object v0, v12

    :cond_a
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_b

    move-object v0, v10

    :cond_b
    if-nez v2, :cond_c

    :goto_d
    move-object v9, v0

    goto :goto_e

    :cond_c
    new-instance v9, Lad/m0;

    const/4 v14, 0x0

    invoke-direct {v9, v14, v2}, Lad/m0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v9}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :goto_e
    invoke-static {v9}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    iget-wide v14, v2, Lad/o0;->a:D

    invoke-virtual {v7, v0, v2}, Lad/n0;->a(Lua/nav/routing/Route;Lad/o0;)Z

    move-result v16

    if-nez v16, :cond_e

    :cond_d
    move-object v11, v9

    goto/16 :goto_1b

    :cond_e
    invoke-static {v7, v0}, Lad/n0;->e(Lad/n0;Lua/nav/routing/Route;)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 p1, v9

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9, v14, v15}, Lad/n0;->d(DD)D

    move-result-wide v8

    double-to-int v0, v8

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_f

    :cond_f
    move-object v8, v12

    :goto_f
    const-wide v11, 0x4060400000000000L    # 130.0

    invoke-static {v6, v14, v15, v11, v12}, Lad/n0;->b(Lua/nav/routing/GeoPoint;DD)Lua/nav/routing/GeoPoint;

    move-result-object v6

    :try_start_9
    invoke-static {v6}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v14, v15}, Ljava/lang/Double;-><init>(D)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    const/4 v9, 0x0

    :try_start_a
    iput-object v9, v4, Lad/s1;->l:Lid/d1;

    iput-object v9, v4, Lad/s1;->m:Lua/nav/routing/GeoPoint;

    iput-object v9, v4, Lad/s1;->n:Ljava/util/List;

    iput-object v2, v4, Lad/s1;->o:Lad/o0;

    iput-object v1, v4, Lad/s1;->p:Li9/c;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v11, p1

    :try_start_b
    iput-object v11, v4, Lad/s1;->q:Ljava/util/List;

    iput-object v8, v4, Lad/s1;->r:Ljava/lang/Integer;

    iput-object v6, v4, Lad/s1;->s:Lua/nav/routing/GeoPoint;

    const/4 v12, 0x3

    iput v12, v4, Lad/s1;->v:I

    invoke-interface {v13, v0, v3, v4}, Lid/d1;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-ne v0, v5, :cond_10

    :goto_10
    return-object v5

    :cond_10
    move-object v5, v1

    move-object v4, v2

    move-object v1, v6

    move-object v2, v8

    move-object v3, v11

    :goto_11
    :try_start_c
    check-cast v0, Ljava/util/List;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_14

    :catchall_8
    move-exception v0

    goto :goto_13

    :catchall_9
    move-exception v0

    :goto_12
    move-object v5, v1

    move-object v4, v2

    move-object v1, v6

    move-object v2, v8

    move-object v3, v11

    goto :goto_13

    :catchall_a
    move-exception v0

    move-object/from16 v11, p1

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object/from16 v11, p1

    const/4 v9, 0x0

    goto :goto_12

    :goto_13
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_14
    instance-of v6, v0, Lt8/l;

    if-eqz v6, :cond_11

    move-object v12, v9

    goto :goto_15

    :cond_11
    move-object v12, v0

    :goto_15
    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_12

    goto :goto_16

    :cond_12
    move-object v10, v12

    :goto_16
    if-nez v4, :cond_13

    goto :goto_17

    :cond_13
    new-instance v0, Lad/m0;

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4}, Lad/m0;-><init>(ILjava/lang/Object;)V

    invoke-static {v10, v0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_14

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;

    invoke-virtual {v7, v0, v4}, Lad/n0;->a(Lua/nav/routing/Route;Lad/o0;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v11, 0x1

    goto :goto_18

    :cond_14
    move v11, v6

    :goto_18
    if-eqz v11, :cond_15

    const-string v0, "ok"

    goto :goto_19

    :cond_15
    const-string v0, "fail"

    :goto_19
    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->a:D

    const/4 v4, 0x5

    invoke-static {v6, v7, v4}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v7, v8, v4}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "reroute_against_heading diff="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retry="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ahead="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lad/r1;

    if-eqz v11, :cond_16

    invoke-direct {v0, v10}, Lad/r1;-><init>(Ljava/util/List;)V

    goto :goto_1a

    :cond_16
    invoke-direct {v0, v3}, Lad/r1;-><init>(Ljava/util/List;)V

    :goto_1a
    return-object v0

    :goto_1b
    new-instance v0, Lad/r1;

    invoke-direct {v0, v11}, Lad/r1;-><init>(Ljava/util/List;)V

    return-object v0
.end method
