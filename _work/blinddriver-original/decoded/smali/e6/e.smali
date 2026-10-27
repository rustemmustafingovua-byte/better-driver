.class public Le6/e;
.super Le6/f;
.source "SourceFile"


# instance fields
.field public volatile transient J:Lu6/r;


# virtual methods
.method public A0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Le6/f;->H:Lf6/r;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lf6/r;->n:Lr5/d1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-boolean v4, v1, Le6/f;->u:Z

    const/4 v5, 0x5

    iget-object v6, v1, Le6/f;->x:[Lf6/f0;

    iget-boolean v7, v1, Le6/f;->C:Z

    iget-object v8, v1, Le6/f;->q:Le6/c0;

    iget-object v9, v1, Le6/f;->w:Lf6/c;

    const/4 v10, 0x0

    if-eqz v4, :cond_25

    iget-object v4, v1, Le6/f;->F:Lg5/e;

    iget-object v11, v1, Le6/f;->o:Lb6/l;

    iget-object v12, v1, Le6/f;->z:Ljava/util/Set;

    iget-object v13, v1, Le6/f;->A:Ljava/util/Set;

    if-eqz v4, :cond_16

    iget-object v4, v1, Le6/f;->r:Lb6/n;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0, v2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v4, v1, Le6/f;->t:Lf6/v;

    if-eqz v4, :cond_f

    invoke-virtual {v4, v0, v2, v3}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v3

    invoke-virtual {v2, v0}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v5

    invoke-virtual {v5}, Lu6/z;->n0()V

    invoke-virtual {v0}, Ls5/k;->t()Ls5/n;

    move-result-object v6

    :goto_0
    sget-object v7, Ls5/n;->y:Ls5/n;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_c

    invoke-virtual {v0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v4, v6}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v7

    invoke-virtual {v3, v6}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    if-nez v7, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v7, :cond_7

    invoke-virtual {v1, v0, v2, v7}, Le6/e;->x0(Ls5/k;Lb6/i;Le6/y;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v6

    :try_start_0
    invoke-virtual {v4, v2, v3}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v3}, Ls5/k;->d(Ljava/lang/Object;)V

    if-nez v3, :cond_3

    invoke-virtual {v1, v0, v2, v10, v10}, Le6/e;->z0(Ls5/k;Lb6/i;Lu6/z;Ljava/util/ArrayList;)V

    return-object v10

    :cond_3
    :goto_1
    sget-object v4, Ls5/n;->y:Ls5/n;

    if-ne v6, v4, :cond_4

    invoke-virtual {v5, v0}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v6

    goto :goto_1

    :cond_4
    sget-object v4, Ls5/n;->v:Ls5/n;

    if-ne v6, v4, :cond_6

    invoke-virtual {v5}, Lu6/z;->R()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v6, v11, Lb6/l;->o:Ljava/lang/Class;

    if-ne v4, v6, :cond_5

    iget-object v1, v1, Le6/f;->F:Lg5/e;

    invoke-virtual {v1, v0, v2, v3, v5}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object v3

    :cond_5
    const-string v0, "Cannot create polymorphic instances with unwrapped values"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v0, v1}, Lb6/i;->u0(Lb6/f;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    :cond_6
    iget-object v0, v11, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Attempted to unwrap \'%s\' value"

    invoke-virtual {v2, v1, v4, v3, v0}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    :catch_0
    move-exception v0

    invoke-virtual {v1, v2, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v10

    :cond_7
    invoke-virtual {v9, v6}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v1, v0, v2, v7}, Le6/e;->x0(Ls5/k;Lb6/i;Le6/y;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lf6/z;->c(Le6/y;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-static {v6, v12, v13}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v11, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v7, v6}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v7, v1, Le6/f;->y:Le6/w;

    if-nez v7, :cond_a

    invoke-virtual {v5, v6}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lu6/z;->J0(Ls5/k;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v0}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v7

    invoke-virtual {v7, v0}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {v5, v6}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lu6/z;->F0(Lu6/z;)V

    :try_start_1
    iget-object v8, v1, Le6/f;->y:Le6/w;

    iget-object v14, v7, Lu6/z;->m:Ls5/o;

    invoke-virtual {v7, v14}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object v7

    invoke-virtual {v7}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v8, v7, v2}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v16

    new-instance v14, Lf6/x;

    iget-object v15, v3, Lf6/z;->h:Lf2/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v19, 0x0

    move-object/from16 v18, v6

    move-object/from16 v17, v8

    :try_start_2
    invoke-direct/range {v14 .. v19}, Lf6/x;-><init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iput-object v14, v3, Lf6/z;->h:Lf2/b;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_b
    :goto_2
    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v6, v18

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    iget-object v3, v11, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v3, v6, v2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v10

    :cond_c
    iget-object v6, v1, Le6/f;->F:Lg5/e;

    iget-object v6, v6, Lg5/e;->m:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_4
    if-ge v8, v7, :cond_d

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Le6/y;

    invoke-virtual {v0}, Ls5/k;->D0()Ls5/c;

    move-result-object v11

    invoke-virtual {v5, v11}, Lu6/z;->G0(Ls5/c;)Lu6/x;

    move-result-object v11

    invoke-virtual {v11}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v9, v11, v2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    :try_start_4
    invoke-virtual {v4, v2, v3}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v3, :cond_e

    return-object v10

    :cond_e
    iget-object v1, v1, Le6/f;->F:Lg5/e;

    invoke-virtual {v1, v0, v2, v3, v5}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object v3

    :catch_3
    move-exception v0

    invoke-virtual {v1, v2, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v10

    :cond_f
    invoke-virtual {v2, v0}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v3

    invoke-virtual {v3}, Lu6/z;->n0()V

    invoke-virtual {v8, v2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ls5/k;->d(Ljava/lang/Object;)V

    if-eqz v6, :cond_10

    invoke-virtual {v1, v2, v4}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v0, v5}, Ls5/k;->r0(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_11
    move-object v5, v10

    :goto_5
    if-eqz v5, :cond_15

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v9, v5}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v6

    if-eqz v6, :cond_12

    :try_start_5
    invoke-virtual {v6, v0, v2, v4}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v1, v0, v4, v5, v2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v10

    :cond_12
    invoke-static {v5, v12, v13}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v1, v0, v2, v4, v5}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    iget-object v6, v1, Le6/f;->y:Le6/w;

    if-nez v6, :cond_14

    invoke-virtual {v3, v5}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lu6/z;->J0(Ls5/k;)V

    goto :goto_6

    :cond_14
    invoke-virtual {v2, v0}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v6

    invoke-virtual {v6, v0}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {v3, v5}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lu6/z;->F0(Lu6/z;)V

    :try_start_6
    iget-object v7, v1, Le6/f;->y:Le6/w;

    iget-object v8, v6, Lu6/z;->m:Ls5/o;

    invoke-virtual {v6, v8}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object v6

    invoke-virtual {v6}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v7, v6, v2, v4, v5}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    invoke-virtual {v0}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v1, v0, v4, v5, v2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v10

    :cond_15
    invoke-virtual {v3}, Lu6/z;->R()V

    iget-object v1, v1, Le6/f;->F:Lg5/e;

    invoke-virtual {v1, v0, v2, v4, v3}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object v4

    :cond_16
    iget-object v4, v1, Le6/f;->G:Landroidx/lifecycle/a1;

    if-eqz v4, :cond_24

    iget-object v5, v1, Le6/f;->t:Lf6/v;

    if-eqz v5, :cond_22

    new-instance v5, Landroidx/lifecycle/a1;

    invoke-direct {v5, v4}, Landroidx/lifecycle/a1;-><init>(Landroidx/lifecycle/a1;)V

    iget-object v4, v1, Le6/f;->t:Lf6/v;

    invoke-virtual {v4, v0, v2, v3}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v3

    if-eqz v7, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_17
    invoke-virtual {v0}, Ls5/k;->t()Ls5/n;

    move-result-object v6

    :goto_7
    sget-object v7, Ls5/n;->y:Ls5/n;

    if-ne v6, v7, :cond_21

    invoke-virtual {v0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v7

    invoke-virtual {v4, v6}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v8

    invoke-virtual {v3, v6}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    if-nez v8, :cond_18

    goto/16 :goto_8

    :cond_18
    if-eqz v8, :cond_1a

    invoke-virtual {v5, v0, v2, v10, v6}, Landroidx/lifecycle/a1;->u(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v1, v0, v2, v8}, Le6/e;->x0(Ls5/k;Lb6/i;Le6/y;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    :try_start_7
    invoke-virtual {v4, v2, v3}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v6, v11, Lb6/l;->o:Ljava/lang/Class;

    if-ne v4, v6, :cond_19

    invoke-virtual {v1, v0, v2, v3, v5}, Le6/e;->y0(Ls5/k;Lb6/i;Ljava/lang/Object;Landroidx/lifecycle/a1;)Ljava/lang/Object;

    return-object v3

    :cond_19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot create polymorphic instances with external type ids (%s -> %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v10

    :catch_6
    move-exception v0

    iget-object v3, v11, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v3, v6, v2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v10

    :cond_1a
    invoke-virtual {v9, v6}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v8

    if-eqz v8, :cond_1c

    iget-boolean v7, v7, Ls5/n;->s:Z

    if-eqz v7, :cond_1b

    invoke-virtual {v5, v0, v2, v10, v6}, Landroidx/lifecycle/a1;->v(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v8, v0, v2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Lf6/z;->c(Le6/y;Ljava/lang/Object;)V

    goto :goto_8

    :cond_1c
    invoke-virtual {v5, v0, v2, v10, v6}, Landroidx/lifecycle/a1;->u(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-static {v6, v12, v13}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, v11, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v7, v6}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    iget-object v7, v1, Le6/f;->y:Le6/w;

    if-eqz v7, :cond_1f

    invoke-virtual {v7, v0, v2}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v16

    new-instance v14, Lf6/x;

    iget-object v15, v3, Lf6/z;->h:Lf2/b;

    const/16 v19, 0x0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    invoke-direct/range {v14 .. v19}, Lf6/x;-><init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V

    iput-object v14, v3, Lf6/z;->h:Lf2/b;

    goto :goto_8

    :cond_1f
    iget-object v7, v1, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v7, v6}, Le6/f;->o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    :goto_8
    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v6

    goto/16 :goto_7

    :cond_21
    :try_start_8
    invoke-virtual {v5, v0, v2, v3, v4}, Landroidx/lifecycle/a1;->k(Ls5/k;Lb6/i;Lf6/z;Lf6/v;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v1, v2, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v10

    :cond_22
    iget-object v3, v1, Le6/f;->r:Lb6/n;

    if-eqz v3, :cond_23

    invoke-virtual {v3, v0, v2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-virtual {v8, v2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Le6/e;->B0(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_24
    invoke-virtual/range {p0 .. p2}, Le6/f;->j0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-virtual {v8, v2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ls5/k;->e()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v0}, Ls5/k;->d0()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_26

    goto :goto_9

    :cond_26
    invoke-virtual {v1, v0, v2, v3}, Le6/f;->c0(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    throw v10

    :cond_27
    if-eqz v3, :cond_29

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ls5/k;->r0(I)Z

    move-result v8

    if-eqz v8, :cond_29

    sget-object v8, Lb6/j;->x:Lb6/j;

    invoke-virtual {v2, v8}, Lb6/i;->n0(Lb6/j;)Z

    move-result v8

    if-nez v8, :cond_28

    goto :goto_9

    :cond_28
    invoke-virtual {v2, v3, v4}, Lb6/i;->z0(Lf6/r;Ljava/lang/Object;)V

    throw v10

    :cond_29
    :goto_9
    if-eqz v6, :cond_2a

    invoke-virtual {v1, v2, v4}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_2a
    if-eqz v7, :cond_2b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2b
    invoke-virtual {v0, v5}, Ls5/k;->r0(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v0, v4}, Ls5/k;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v3

    :cond_2c
    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v9, v3}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v5

    if-eqz v5, :cond_2d

    :try_start_9
    invoke-virtual {v5, v0, v2, v4}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    invoke-virtual {v1, v0, v4, v3, v2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v10

    :cond_2d
    invoke-virtual {v1, v0, v2, v4, v3}, Le6/f;->p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v0}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    :cond_2e
    return-object v4
.end method

.method public final B0(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/lifecycle/a1;

    invoke-direct {v1, v0}, Landroidx/lifecycle/a1;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Le6/e;->y0(Ls5/k;Lb6/i;Ljava/lang/Object;Landroidx/lifecycle/a1;)Ljava/lang/Object;

    return-object p3
.end method

.method public final C0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {v0, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ls5/k;->r0(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ls5/k;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    iget-object v2, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {v2, v1}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, v0, v1, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Le6/f;->p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public final a0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Le6/f;->t:Lf6/v;

    iget-object v7, v1, Le6/f;->y:Le6/w;

    if-eqz v7, :cond_0

    new-instance v2, Lf6/z;

    iget v5, v0, Lf6/v;->a:I

    iget-object v6, v1, Le6/f;->H:Lf6/r;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lf6/z;-><init>(Ls5/k;Lb6/i;ILf6/r;Le6/w;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    iget-object v2, v1, Le6/f;->H:Lf6/r;

    invoke-virtual {v0, v3, v4, v2}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v2

    :goto_0
    iget-boolean v5, v1, Le6/f;->C:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {v3}, Ls5/k;->t()Ls5/n;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :goto_1
    sget-object v8, Ls5/n;->y:Ls5/n;

    iget-object v9, v1, Le6/f;->o:Lb6/l;

    if-ne v5, v8, :cond_10

    invoke-virtual {v3}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v0, v14}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v5

    invoke-virtual {v2, v14}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz v5, :cond_6

    invoke-virtual {v1, v3, v4, v5}, Le6/e;->x0(Ls5/k;Lb6/i;Le6/y;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Ls5/k;->z0()Ls5/n;

    :try_start_0
    invoke-virtual {v0, v4, v2}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v5}, Ls5/k;->d(Ljava/lang/Object;)V

    if-nez v5, :cond_3

    invoke-virtual {v1, v3, v4, v7, v6}, Le6/e;->z0(Ls5/k;Lb6/i;Lu6/z;Ljava/util/ArrayList;)V

    return-object v6

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, v9, Lb6/l;->o:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    invoke-virtual {v3}, Ls5/k;->D0()Ls5/c;

    move-result-object v4

    move-object v2, v3

    move-object v6, v7

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Le6/f;->m0(Ls5/k;Lb6/i;Ls5/c;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v1, v4, v5, v7}, Le6/f;->n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V

    :cond_5
    invoke-virtual {v1, v3, v4, v5}, Le6/e;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v1, v4, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v6

    :cond_6
    iget-object v5, v1, Le6/f;->w:Lf6/c;

    invoke-virtual {v5, v14}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v8, v9, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v8}, Lu6/h;->x(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    instance-of v8, v5, Lf6/p;

    if-eqz v8, :cond_8

    :cond_7
    :try_start_1
    invoke-virtual {v1, v3, v4, v5}, Le6/e;->x0(Ls5/k;Lb6/i;Le6/y;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lf6/z;->c(Le6/y;Ljava/lang/Object;)V
    :try_end_1
    .catch Le6/z; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    iget-object v0, v5, Le6/y;->o:Lb6/l;

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    throw v6

    :cond_8
    iget-object v5, v1, Le6/f;->z:Ljava/util/Set;

    iget-object v8, v1, Le6/f;->A:Ljava/util/Set;

    invoke-static {v14, v5, v8}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v9, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v3, v4, v5, v14}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v13, v1, Le6/f;->y:Le6/w;

    if-eqz v13, :cond_c

    :try_start_2
    iget-boolean v5, v13, Le6/w;->n:Z

    if-nez v5, :cond_b

    iget-object v5, v13, Le6/w;->m:Lj6/h;

    instance-of v5, v5, Lj6/i;

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v13, v3, v4}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v12

    new-instance v10, Lf6/x;

    iget-object v11, v2, Lf6/z;->k:Lf6/x;

    const/4 v15, 0x1

    invoke-direct/range {v10 .. v15}, Lf6/x;-><init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V

    iput-object v10, v2, Lf6/z;->k:Lf6/x;

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {v13, v3, v4}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v12

    new-instance v10, Lf6/x;

    iget-object v11, v2, Lf6/z;->h:Lf2/b;

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lf6/x;-><init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V

    iput-object v10, v2, Lf6/z;->h:Lf2/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :goto_3
    iget-object v2, v9, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v14, v4}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v6

    :cond_c
    iget-boolean v5, v1, Le6/f;->B:Z

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Ls5/k;->C0()Ls5/k;

    goto :goto_4

    :cond_d
    if-nez v7, :cond_e

    invoke-virtual {v4, v3}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v7

    :cond_e
    invoke-virtual {v7, v14}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lu6/z;->J0(Ls5/k;)V

    :cond_f
    :goto_4
    invoke-virtual {v3}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    goto/16 :goto_1

    :cond_10
    :try_start_3
    invoke-virtual {v0, v4, v2}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v3, v5}, Ls5/k;->d(Ljava/lang/Object;)V

    if-nez v5, :cond_11

    invoke-virtual {v1, v6, v4, v7, v6}, Le6/e;->z0(Ls5/k;Lb6/i;Lu6/z;Ljava/util/ArrayList;)V

    return-object v6

    :cond_11
    iget-object v0, v1, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_12

    invoke-virtual {v1, v4, v5}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_12
    if-eqz v7, :cond_14

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, v9, Lb6/l;->o:Ljava/lang/Class;

    if-eq v0, v2, :cond_13

    const/4 v2, 0x0

    invoke-virtual {v3}, Ls5/k;->D0()Ls5/c;

    move-result-object v0

    move-object v3, v4

    move-object v6, v7

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Le6/f;->m0(Ls5/k;Lb6/i;Ls5/c;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    move-object v6, v7

    invoke-virtual {v1, v4, v5, v6}, Le6/f;->n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V

    :cond_14
    return-object v5

    :catch_3
    move-exception v0

    invoke-virtual {v1, v4, v0}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v6
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    iget-object v1, p0, Le6/f;->H:Lf6/r;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Le6/f;->v:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {p0, p1, p2}, Le6/e;->C0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Le6/e;->A0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Le6/e;->A0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 9
    :pswitch_1
    invoke-virtual {p1}, Ls5/k;->B0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lu6/z;->R()V

    .line 12
    invoke-virtual {v0, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lu6/x;->z0()Ls5/n;

    .line 14
    iget-boolean v0, p0, Le6/f;->v:Z

    if-eqz v0, :cond_3

    sget-object v0, Ls5/n;->t:Ls5/n;

    invoke-virtual {p0, p1, p2}, Le6/e;->C0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, p1, p2}, Le6/e;->A0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    :goto_0
    invoke-virtual {p1}, Lu6/x;->close()V

    return-object p0

    .line 17
    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    .line 18
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Le6/f;->f0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Le6/f;->g0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Le6/f;->h0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Le6/f;->k0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    if-nez v1, :cond_9

    .line 22
    invoke-virtual {p0}, Le6/f;->Z()Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v1, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {v1}, Le6/c0;->i()Z

    move-result v2

    if-nez v2, :cond_6

    .line 24
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-virtual {v1, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    iget-object v0, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_5
    return-object p1

    .line 28
    :cond_6
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Le6/f;->o:Lb6/l;

    invoke-virtual {p0, v0}, Lb6/l;->g0(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 30
    :cond_7
    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    .line 33
    iget-object p2, p2, Lb6/i;->t:Ls5/k;

    .line 34
    invoke-static {p0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, " from native value (`JsonToken.VALUE_EMBEDDED_OBJECT`) of type "

    const-string v2, ": incompatible types"

    .line 36
    const-string v3, "Cannot deserialize value of type "

    invoke-static {v3, p0, v1, v0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v0, Lh6/c;

    invoke-direct {v0, p2, p0, p1}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    throw v0

    :cond_8
    :goto_1
    return-object p1

    .line 39
    :cond_9
    invoke-virtual {p0, p1, p2}, Le6/f;->i0(Ls5/k;Lb6/i;)V

    throw v2

    .line 40
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Le6/e;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_8
    iget-boolean v0, p0, Le6/f;->v:Z

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p0, p1, p2}, Le6/e;->C0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    if-eqz v1, :cond_b

    .line 43
    invoke-virtual {p0, p1, p2}, Le6/e;->A0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 44
    :cond_b
    invoke-virtual {p0, p1, p2}, Le6/e;->A0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 45
    :cond_c
    :goto_2
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 53
    invoke-virtual {p1, p3}, Ls5/k;->d(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p2, p3}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-object v0, p0, Le6/f;->F:Lg5/e;

    const/4 v1, 0x0

    iget-object v2, p0, Le6/f;->w:Lf6/c;

    if-eqz v0, :cond_6

    .line 57
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    .line 58
    sget-object v3, Ls5/n;->u:Ls5/n;

    if-ne v0, v3, :cond_1

    .line 59
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    .line 60
    :cond_1
    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lu6/z;->n0()V

    .line 62
    :goto_0
    sget-object v4, Ls5/n;->y:Ls5/n;

    if-ne v0, v4, :cond_5

    .line 63
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    if-eqz v4, :cond_2

    .line 66
    :try_start_0
    invoke-virtual {v4, p1, p2, p3}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 68
    :cond_2
    iget-object v4, p0, Le6/f;->z:Ljava/util/Set;

    iget-object v5, p0, Le6/f;->A:Ljava/util/Set;

    invoke-static {v0, v4, v5}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v4, p0, Le6/f;->y:Le6/w;

    if-nez v4, :cond_4

    .line 71
    invoke-virtual {v3, v0}, Lu6/z;->S(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, p1}, Lu6/z;->J0(Ls5/k;)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v4

    .line 74
    invoke-virtual {v4, p1}, Lu6/z;->J0(Ls5/k;)V

    .line 75
    invoke-virtual {v3, v0}, Lu6/z;->S(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v4}, Lu6/z;->F0(Lu6/z;)V

    .line 77
    :try_start_1
    iget-object v5, p0, Le6/f;->y:Le6/w;

    .line 78
    iget-object v6, v4, Lu6/z;->m:Ls5/o;

    invoke-virtual {v4, v6}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lu6/x;->z0()Ls5/n;

    .line 80
    invoke-virtual {v5, v4, p2, p3, v0}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 83
    :cond_5
    invoke-virtual {v3}, Lu6/z;->R()V

    .line 84
    iget-object p0, p0, Le6/f;->F:Lg5/e;

    invoke-virtual {p0, p1, p2, p3, v3}, Lg5/e;->o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V

    return-object p3

    .line 85
    :cond_6
    iget-object v0, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Le6/e;->B0(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    .line 87
    :cond_7
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_8
    const/4 v0, 0x5

    .line 89
    invoke-virtual {p1, v0}, Ls5/k;->r0(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_9
    iget-boolean v3, p0, Le6/f;->C:Z

    if-eqz v3, :cond_a

    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    :cond_a
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 94
    invoke-virtual {v2, v0}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 95
    :try_start_2
    invoke-virtual {v3, p1, p2, p3}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 96
    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 97
    :cond_b
    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :goto_2
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_c
    :goto_3
    return-object p3
.end method

.method public final e0()Le6/f;
    .locals 2

    iget-object v0, p0, Le6/f;->w:Lf6/c;

    iget-object v0, v0, Lf6/c;->q:[Le6/y;

    new-instance v1, Lf6/b;

    invoke-direct {v1, p0, v0}, Lf6/b;-><init>(Le6/f;[Le6/y;)V

    return-object v1
.end method

.method public final q(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 8

    iget-object v2, p0, Le6/f;->s:Lb6/n;

    if-nez v2, :cond_8

    iget-object v2, p0, Le6/f;->r:Lb6/n;

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Le6/f;->handledType()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x8

    sget-object v4, Lt6/f;->o:Lt6/f;

    invoke-virtual {p2, v4, v2, v3}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v2

    sget-object v3, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v3}, Lb6/i;->n0(Lb6/j;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_1

    if-eq v2, v4, :cond_7

    :cond_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    sget-object v7, Ls5/n;->x:Ls5/n;

    if-ne v5, v7, :cond_4

    invoke-static {v2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p2}, Le6/f;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v1

    sget-object v2, Ls5/n;->w:Ls5/n;

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_3
    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v3, :cond_7

    sget-object v2, Ls5/n;->w:Ls5/n;

    if-eq v5, v2, :cond_6

    invoke-virtual/range {p0 .. p2}, Le6/e;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    if-ne v3, v7, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p0, p2}, Lg6/f1;->X(Lb6/i;)V

    throw v6

    :cond_6
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v1

    invoke-static {v1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v4, "Cannot deserialize value of type %s from deeply-nested Array: only single wrapper allowed with `%s`"

    move-object v3, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_7
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v6

    :cond_8
    :goto_0
    iget-object v4, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {v2, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, p2, v2}, Le6/c0;->v(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v3, :cond_9

    invoke-virtual {p0, p2, v2}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_9
    return-object v2
.end method

.method public final r0(Lf6/c;)Le6/f;
    .locals 1

    new-instance v0, Le6/e;

    invoke-direct {v0, p0, p1}, Le6/f;-><init>(Le6/f;Lf6/c;)V

    return-object v0
.end method

.method public final s0(Ljava/util/Set;Ljava/util/Set;)Le6/f;
    .locals 1

    new-instance v0, Le6/e;

    invoke-direct {v0, p0, p1, p2}, Le6/f;-><init>(Le6/f;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final t0()Le6/f;
    .locals 2

    new-instance v0, Le6/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le6/f;-><init>(Le6/f;Z)V

    return-object v0
.end method

.method public final u0(Lf6/r;)Le6/f;
    .locals 1

    new-instance v0, Le6/e;

    invoke-direct {v0, p0, p1}, Le6/f;-><init>(Le6/f;Lf6/r;)V

    return-object v0
.end method

.method public unwrappingDeserializer(Lu6/r;)Lb6/n;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le6/e;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le6/e;->J:Lu6/r;

    if-ne v0, p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iput-object p1, p0, Le6/e;->J:Lu6/r;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Le6/e;

    invoke-direct {v1, p0, p1}, Le6/f;-><init>(Le6/f;Lu6/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Le6/e;->J:Lu6/r;

    return-object v1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Le6/e;->J:Lu6/r;

    throw p1
.end method

.method public final x0(Ls5/k;Lb6/i;Le6/y;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p3, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Le6/f;->o:Lb6/l;

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    iget-object p3, p3, Le6/y;->n:Lb6/i0;

    iget-object p3, p3, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p3, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final y0(Ls5/k;Lb6/i;Ljava/lang/Object;Landroidx/lifecycle/a1;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Le6/f;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    :goto_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    iget-object v2, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {v2, v0}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Ls5/n;->s:Z

    if-eqz v1, :cond_1

    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/lifecycle/a1;->v(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v3

    :cond_2
    iget-object v1, p0, Le6/f;->z:Ljava/util/Set;

    iget-object v2, p0, Le6/f;->A:Ljava/util/Set;

    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/lifecycle/a1;->u(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Le6/f;->y:Le6/w;

    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1, p1, p2, p3, v0}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v3

    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Le6/f;->o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p4, p1, p2, p3}, Landroidx/lifecycle/a1;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final z0(Ls5/k;Lb6/i;Lu6/z;Ljava/util/ArrayList;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    :goto_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1, p3}, Le6/f;->n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    check-cast p3, Le6/d;

    iput-object p1, p3, Le6/d;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
