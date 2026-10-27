.class public abstract Lm/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Li9/e;Lz0/d;Lr0/q;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move/from16 v8, p8

    iget-object v9, v1, Ln/h1;->d:Lr0/e1;

    const v10, 0x72039c2f

    invoke-virtual {v0, v10}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v10, v8, 0x6

    const/4 v11, 0x4

    if-nez v10, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    :goto_0
    or-int/2addr v10, v8

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    and-int/lit8 v12, v8, 0x30

    if-nez v12, :cond_3

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x20

    goto :goto_2

    :cond_2
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v10, v12

    :cond_3
    and-int/lit16 v12, v8, 0x180

    if-nez v12, :cond_5

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v10, v12

    :cond_5
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_7

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_4

    :cond_6
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v10, v12

    :cond_7
    and-int/lit16 v12, v8, 0x6000

    if-nez v12, :cond_9

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v10, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v8

    if-nez v12, :cond_b

    invoke-virtual {v0, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v10, v12

    :cond_b
    const/high16 v12, 0x180000

    or-int/2addr v10, v12

    const/high16 v12, 0xc00000

    and-int/2addr v12, v8

    if-nez v12, :cond_d

    invoke-virtual {v0, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x800000

    goto :goto_7

    :cond_c
    const/high16 v12, 0x400000

    :goto_7
    or-int/2addr v10, v12

    :cond_d
    const v12, 0x492493

    and-int/2addr v12, v10

    const v13, 0x492492

    const/4 v15, 0x0

    if-eq v12, v13, :cond_e

    const/4 v12, 0x1

    goto :goto_8

    :cond_e
    move v12, v15

    :goto_8
    and-int/lit8 v13, v10, 0x1

    invoke-virtual {v0, v13, v12}, Lr0/q;->T(IZ)Z

    move-result v12

    if-eqz v12, :cond_4c

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v12}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const v13, -0x103b79ed

    if-nez v12, :cond_10

    invoke-virtual {v1}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v12}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v1}, Ln/h1;->g()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v1}, Ln/h1;->d()Z

    move-result v12

    if-eqz v12, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v15}, Lr0/q;->q(Z)V

    move-object v2, v7

    goto/16 :goto_23

    :cond_10
    :goto_9
    const v12, -0xdda5963

    invoke-virtual {v0, v12}, Lr0/q;->b0(I)V

    and-int/lit8 v12, v10, 0xe

    or-int/lit8 v16, v12, 0x30

    const/16 v17, 0x1

    and-int/lit8 v14, v16, 0xe

    xor-int/lit8 v13, v14, 0x6

    if-le v13, v11, :cond_11

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    :cond_11
    and-int/lit8 v13, v16, 0x6

    if-ne v13, v11, :cond_13

    :cond_12
    move/from16 v13, v17

    goto :goto_a

    :cond_13
    move v13, v15

    :goto_a
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-nez v13, :cond_14

    if-ne v11, v15, :cond_15

    :cond_14
    invoke-virtual {v1}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {v1}, Ln/h1;->g()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual {v1}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v11

    :cond_16
    const v13, 0x6defb3b0

    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    invoke-static {v1, v2, v11, v0}, Lm/l;->d(Ln/h1;Li9/c;Ljava/lang/Object;Lr0/q;)Lm/p;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v9

    const v13, 0x6defb3b0

    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    invoke-static {v1, v2, v9, v0}, Lm/l;->d(Ln/h1;Li9/c;Ljava/lang/Object;Lr0/q;)Lm/p;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    or-int/lit16 v13, v14, 0xc00

    sget v14, Ln/m1;->a:I

    and-int/lit8 v14, v13, 0xe

    xor-int/lit8 v14, v14, 0x6

    const/4 v2, 0x4

    if-le v14, v2, :cond_17

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    :cond_17
    and-int/lit8 v8, v13, 0x6

    if-ne v8, v2, :cond_19

    :cond_18
    move/from16 v2, v17

    goto :goto_b

    :cond_19
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_1b

    if-ne v8, v15, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v20, v10

    move/from16 v21, v13

    goto :goto_d

    :cond_1b
    :goto_c
    new-instance v8, Ln/h1;

    new-instance v2, Ln/i0;

    invoke-direct {v2, v11}, Ln/i0;-><init>(Ljava/lang/Object;)V

    move/from16 v20, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v13

    iget-object v13, v1, Ln/h1;->c:Ljava/lang/String;

    const-string v7, " > EnterExitTransition"

    invoke-static {v10, v13, v7}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v2, v1, v7}, Ln/h1;-><init>(Ln/i0;Ln/h1;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_d
    check-cast v8, Ln/h1;

    const/4 v2, 0x4

    if-le v14, v2, :cond_1c

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_1c
    and-int/lit8 v7, v21, 0x6

    if-ne v7, v2, :cond_1e

    :cond_1d
    move/from16 v2, v17

    goto :goto_e

    :cond_1e
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_1f

    if-ne v7, v15, :cond_20

    :cond_1f
    new-instance v7, Lb0/r0;

    const/16 v2, 0xe

    invoke-direct {v7, v2, v1, v8}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_20
    check-cast v7, Li9/c;

    invoke-static {v8, v7, v0}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v1}, Ln/h1;->g()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v8, v11, v9}, Ln/h1;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    invoke-virtual {v8, v9}, Ln/h1;->k(Ljava/lang/Object;)V

    iget-object v2, v8, Ln/h1;->k:Lr0/e1;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :goto_f
    invoke-static {v6, v0}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v2

    invoke-virtual {v8}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v7

    iget-object v9, v8, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    const/4 v13, 0x0

    if-nez v10, :cond_22

    if-ne v11, v15, :cond_23

    :cond_22
    new-instance v11, Landroidx/lifecycle/m0;

    const/4 v10, 0x7

    invoke-direct {v11, v8, v2, v13, v10}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_23
    check-cast v11, Li9/e;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_24

    invoke-static {v7}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_24
    check-cast v2, Lr0/u0;

    invoke-virtual {v0, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_25

    if-ne v10, v15, :cond_26

    :cond_25
    new-instance v10, Lr0/o2;

    const/4 v7, 0x0

    invoke-direct {v10, v11, v2, v13, v7}, Lr0/o2;-><init>(Li9/e;Lr0/u0;Ly8/c;I)V

    invoke-virtual {v0, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_26
    check-cast v10, Li9/e;

    sget-object v7, Lt8/z;->a:Lt8/z;

    invoke-static {v10, v7, v0}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v8}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lm/p;->n:Lm/p;

    if-ne v7, v10, :cond_28

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v10, :cond_28

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_10

    :cond_27
    const v2, -0x103b79ed

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    move-object/from16 v2, p6

    goto/16 :goto_22

    :cond_28
    :goto_10
    const v2, -0xdcaa1ed

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    const/4 v2, 0x4

    if-ne v12, v2, :cond_29

    move/from16 v2, v17

    goto :goto_11

    :cond_29
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_2a

    if-ne v7, v15, :cond_2b

    :cond_2a
    new-instance v7, Lm/m;

    invoke-direct {v7}, Lm/m;-><init>()V

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2b
    check-cast v7, Lm/m;

    sget-object v2, Lm/v;->a:Ln/o1;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_2c

    sget-object v2, Lm/t;->l:Lm/t;

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2c
    check-cast v2, Li9/a;

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_2d

    if-ne v11, v15, :cond_2e

    :cond_2d
    invoke-static {v4}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v11

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2e
    check-cast v11, Lr0/u0;

    invoke-virtual {v8}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_30

    invoke-virtual {v8}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Lm/p;->m:Lm/p;

    if-ne v10, v12, :cond_30

    invoke-virtual {v8}, Ln/h1;->g()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-interface {v11, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_12

    :cond_2f
    sget-object v10, Lm/a0;->b:Lm/a0;

    invoke-interface {v11, v10}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_12

    :cond_30
    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Lm/p;->m:Lm/p;

    if-ne v10, v12, :cond_31

    invoke-interface {v11}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm/a0;

    invoke-virtual {v10, v4}, Lm/a0;->a(Lm/a0;)Lm/a0;

    move-result-object v10

    invoke-interface {v11, v10}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_31
    :goto_12
    invoke-interface {v11}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm/a0;

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_32

    if-ne v12, v15, :cond_33

    :cond_32
    invoke-static {v5}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v12

    invoke-virtual {v0, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_33
    check-cast v12, Lr0/u0;

    invoke-virtual {v8}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_35

    invoke-virtual {v8}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Lm/p;->m:Lm/p;

    if-ne v11, v14, :cond_35

    invoke-virtual {v8}, Ln/h1;->g()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-interface {v12, v5}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_13

    :cond_34
    sget-object v9, Lm/b0;->b:Lm/b0;

    invoke-interface {v12, v9}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_13

    :cond_35
    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lm/p;->m:Lm/p;

    if-eq v9, v11, :cond_36

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm/b0;

    invoke-virtual {v9, v5}, Lm/b0;->a(Lm/b0;)Lm/b0;

    move-result-object v9

    invoke-interface {v12, v9}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_36
    :goto_13
    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm/b0;

    iget-object v11, v10, Lm/a0;->a:Lm/j0;

    iget-object v12, v9, Lm/b0;->a:Lm/j0;

    iget-object v14, v11, Lm/j0;->b:Lm/o;

    if-nez v14, :cond_38

    iget-object v14, v12, Lm/j0;->b:Lm/o;

    if-eqz v14, :cond_37

    goto :goto_14

    :cond_37
    const/4 v14, 0x0

    goto :goto_15

    :cond_38
    :goto_14
    move/from16 v14, v17

    :goto_15
    const v13, 0x7fb20d0

    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    if-eqz v14, :cond_3a

    const v13, 0x7fc875f

    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    sget-object v13, Ln/d;->q:Ln/o1;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_39

    const-string v1, "Built-in shrink/expand"

    invoke-virtual {v0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_39
    check-cast v1, Ljava/lang/String;

    invoke-static {v8, v13, v1, v0}, Ln/m1;->b(Ln/h1;Ln/o1;Ljava/lang/String;Lr0/q;)Ln/b1;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_16

    :cond_3a
    const/4 v13, 0x0

    const v1, 0x7fe3847

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    const/4 v1, 0x0

    :goto_16
    if-eqz v14, :cond_3c

    const v13, 0x7ff57e1

    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    sget-object v13, Ln/d;->p:Ln/o1;

    move-object/from16 v18, v1

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_3b

    const-string v1, "Built-in InterruptionHandlingOffset"

    invoke-virtual {v0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3b
    check-cast v1, Ljava/lang/String;

    invoke-static {v8, v13, v1, v0}, Ln/m1;->b(Ln/h1;Ln/o1;Ljava/lang/String;Lr0/q;)Ln/b1;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_17

    :cond_3c
    move-object/from16 v18, v1

    const/4 v13, 0x0

    const v1, 0x801f187

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    const/4 v1, 0x0

    :goto_17
    xor-int/lit8 v14, v14, 0x1

    sget-object v19, Ln1/d;->a:[F

    move-object/from16 v21, v1

    const v1, 0x80e3b8c

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    sget-object v1, Ln/d;->j:Ln/o1;

    iget-object v13, v11, Lm/j0;->a:Lm/c0;

    if-nez v13, :cond_3e

    iget-object v13, v12, Lm/j0;->a:Lm/c0;

    if-eqz v13, :cond_3d

    goto :goto_18

    :cond_3d
    const/4 v13, 0x0

    goto :goto_19

    :cond_3e
    :goto_18
    move/from16 v13, v17

    :goto_19
    iget-object v11, v11, Lm/j0;->c:Lm/g0;

    if-nez v11, :cond_40

    iget-object v11, v12, Lm/j0;->c:Lm/g0;

    if-eqz v11, :cond_3f

    goto :goto_1a

    :cond_3f
    const/4 v11, 0x0

    goto :goto_1b

    :cond_40
    :goto_1a
    move/from16 v11, v17

    :goto_1b
    if-eqz v13, :cond_42

    const v12, -0x29f458fd

    invoke-virtual {v0, v12}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_41

    const-string v12, "Built-in alpha"

    invoke-virtual {v0, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_41
    check-cast v12, Ljava/lang/String;

    invoke-static {v8, v1, v12, v0}, Ln/m1;->b(Ln/h1;Ln/o1;Ljava/lang/String;Lr0/q;)Ln/b1;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_1c

    :cond_42
    const/4 v13, 0x0

    const v12, -0x29f1c318

    invoke-virtual {v0, v12}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    const/4 v12, 0x0

    :goto_1c
    if-eqz v11, :cond_44

    const v13, -0x29f0badd

    invoke-virtual {v0, v13}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v15, :cond_43

    const-string v13, "Built-in scale"

    invoke-virtual {v0, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_43
    check-cast v13, Ljava/lang/String;

    invoke-static {v8, v1, v13, v0}, Ln/m1;->b(Ln/h1;Ln/o1;Ljava/lang/String;Lr0/q;)Ln/b1;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_1d

    :cond_44
    const/4 v13, 0x0

    const v1, -0x29ee24f8

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    const/4 v1, 0x0

    :goto_1d
    if-eqz v11, :cond_45

    const v11, -0x29ecf5a0

    invoke-virtual {v0, v11}, Lr0/q;->b0(I)V

    sget-object v11, Lm/v;->a:Ln/o1;

    const-string v4, "TransformOriginInterruptionHandling"

    invoke-static {v8, v11, v4, v0}, Ln/m1;->b(Ln/h1;Ln/o1;Ljava/lang/String;Lr0/q;)Ln/b1;

    move-result-object v4

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    move-object v13, v4

    goto :goto_1e

    :cond_45
    const v4, -0x29ea5478

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    const/4 v13, 0x0

    :goto_1e
    invoke-virtual {v0, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v0, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v0, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v4, v11

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_47

    if-ne v11, v15, :cond_46

    goto :goto_1f

    :cond_46
    move-object/from16 v23, v8

    move-object/from16 v27, v9

    move-object/from16 v26, v10

    goto :goto_20

    :cond_47
    :goto_1f
    new-instance v22, Lm/r;

    move-object/from16 v24, v1

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v26, v10

    move-object/from16 v23, v12

    move-object/from16 v28, v13

    invoke-direct/range {v22 .. v28}, Lm/r;-><init>(Ln/b1;Ln/b1;Ln/h1;Lm/a0;Lm/b0;Ln/b1;)V

    move-object/from16 v11, v22

    move-object/from16 v23, v25

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_20
    move-object/from16 v29, v11

    check-cast v29, Lm/r;

    invoke-virtual {v0, v14}, Lr0/q;->h(Z)Z

    move-result v1

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_48

    if-ne v4, v15, :cond_49

    :cond_48
    new-instance v4, Lm/u;

    invoke-direct {v4, v14, v2}, Lm/u;-><init>(ZLi9/a;)V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_49
    check-cast v4, Li9/c;

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, v4}, Lm1/v;->o(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v4

    new-instance v22, Lm/q;

    move-object/from16 v28, v2

    move-object/from16 v24, v18

    move-object/from16 v25, v21

    invoke-direct/range {v22 .. v29}, Lm/q;-><init>(Ln/h1;Ln/b1;Ln/b1;Lm/a0;Lm/b0;Li9/a;Lm/r;)V

    move-object/from16 v2, v22

    invoke-interface {v4, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    invoke-interface {v2, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    const v4, -0x7169e9

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    invoke-interface {v2, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-interface {v3, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_4a

    new-instance v2, Lm/d;

    invoke-direct {v2, v7}, Lm/d;-><init>(Lm/m;)V

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4a
    check-cast v2, Lm/d;

    iget-wide v8, v0, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_4b

    invoke-virtual {v0, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_21

    :cond_4b
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_21
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v2, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v0, v2, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v0, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v1, v20, 0x12

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v2, v7, v0, v1}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    :goto_22
    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_23

    :cond_4c
    move-object v2, v7

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_23
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_4d

    new-instance v0, Lm/e;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v8, p8

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lm/e;-><init>(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Li9/e;Lz0/d;I)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_4d
    return-void
.end method

.method public static final b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V
    .locals 12

    move-object/from16 v6, p6

    move/from16 v8, p7

    const v0, -0x5659dfc5

    invoke-virtual {v6, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v6, p0}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v2, v8, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v6, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_4
    :goto_3
    and-int/lit16 v2, v8, 0x180

    if-nez v2, :cond_6

    invoke-virtual {v6, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_4

    :cond_5
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v0, v2

    :cond_6
    and-int/lit16 v2, v8, 0xc00

    if-nez v2, :cond_8

    invoke-virtual {v6, p3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_5

    :cond_7
    const/16 v2, 0x400

    :goto_5
    or-int/2addr v0, v2

    :cond_8
    or-int/lit16 v0, v0, 0x6000

    const/high16 v2, 0x30000

    and-int/2addr v2, v8

    move-object/from16 v5, p5

    if-nez v2, :cond_a

    invoke-virtual {v6, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_9
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v0, v2

    :cond_a
    const v2, 0x12493

    and-int/2addr v2, v0

    const v7, 0x12492

    const/4 v9, 0x0

    if-eq v2, v7, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v2, v9

    :goto_7
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_c

    sget-object p1, Lf1/o;->a:Lf1/o;

    :cond_c
    move-object v2, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    and-int/lit8 v1, v0, 0xe

    shr-int/lit8 v7, v0, 0x9

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v1, v7

    const-string v10, "AnimatedVisibility"

    invoke-static {p1, v10, v6, v1, v9}, Ln/m1;->d(Ljava/lang/Object;Ljava/lang/String;Lr0/q;II)Ln/h1;

    move-result-object p1

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v1, v7, :cond_d

    sget-object v1, Lm/g;->m:Lm/g;

    invoke-virtual {v6, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v1, Li9/c;

    shl-int/lit8 v7, v0, 0x3

    and-int/lit16 v9, v7, 0x380

    or-int/lit8 v9, v9, 0x30

    and-int/lit16 v11, v7, 0x1c00

    or-int/2addr v9, v11

    const v11, 0xe000

    and-int/2addr v7, v11

    or-int/2addr v7, v9

    const/high16 v9, 0x70000

    and-int/2addr v0, v9

    or-int/2addr v7, v0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lm/l;->c(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Lz0/d;Lr0/q;I)V

    move-object v5, v10

    goto :goto_8

    :cond_e
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    move-object v2, p1

    move-object/from16 v5, p4

    :goto_8
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_f

    new-instance v0, Lm/h;

    move v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move v7, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lm/h;-><init>(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_f
    return-void
.end method

.method public static final c(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Lz0/d;Lr0/q;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object/from16 v7, p6

    move/from16 v10, p7

    const v2, 0x65b46798

    invoke-virtual {v7, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v10, 0x6

    const/4 v3, 0x4

    if-nez v2, :cond_1

    invoke-virtual {v7, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_1
    move v2, v10

    :goto_1
    and-int/lit8 v4, v10, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_3

    invoke-virtual {v7, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v10, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v7, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    :cond_5
    and-int/lit16 v4, v10, 0xc00

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-virtual {v7, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v2, v6

    goto :goto_5

    :cond_7
    move-object/from16 v4, p3

    :goto_5
    and-int/lit16 v6, v10, 0x6000

    if-nez v6, :cond_9

    move-object/from16 v6, p4

    invoke-virtual {v7, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_6

    :cond_8
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_9
    move-object/from16 v6, p4

    :goto_7
    const/high16 v8, 0x30000

    and-int v11, v10, v8

    if-nez v11, :cond_b

    move-object/from16 v11, p5

    invoke-virtual {v7, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v12, 0x10000

    :goto_8
    or-int/2addr v2, v12

    goto :goto_9

    :cond_b
    move-object/from16 v11, p5

    :goto_9
    const v12, 0x12493

    and-int/2addr v12, v2

    const v13, 0x12492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v12, v13, :cond_c

    move v12, v15

    goto :goto_a

    :cond_c
    move v12, v14

    :goto_a
    and-int/lit8 v13, v2, 0x1

    invoke-virtual {v7, v13, v12}, Lr0/q;->T(IZ)Z

    move-result v12

    if-eqz v12, :cond_12

    and-int/lit8 v12, v2, 0x70

    if-ne v12, v5, :cond_d

    move v5, v15

    goto :goto_b

    :cond_d
    move v5, v14

    :goto_b
    and-int/lit8 v13, v2, 0xe

    if-ne v13, v3, :cond_e

    move v14, v15

    :cond_e
    or-int v3, v5, v14

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-nez v3, :cond_f

    if-ne v5, v14, :cond_10

    :cond_f
    new-instance v5, Lm/i;

    invoke-direct {v5, v1, v0}, Lm/i;-><init>(Li9/c;Ln/h1;)V

    invoke-virtual {v7, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v5, Li9/f;

    invoke-static {v9, v5}, Lc2/x;->k(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v3

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_11

    sget-object v5, Lm/j;->l:Lm/j;

    invoke-virtual {v7, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Li9/e;

    or-int/2addr v8, v13

    or-int/2addr v8, v12

    and-int/lit16 v12, v2, 0x1c00

    or-int/2addr v8, v12

    const v12, 0xe000

    and-int/2addr v12, v2

    or-int/2addr v8, v12

    const/high16 v12, 0x1c00000

    shl-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v12

    or-int/2addr v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v11

    invoke-static/range {v0 .. v8}, Lm/l;->a(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Li9/e;Lz0/d;Lr0/q;I)V

    goto :goto_c

    :cond_12
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    :goto_c
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v0, Lm/k;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v3, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lm/k;-><init>(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Lz0/d;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_13
    return-void
.end method

.method public static final d(Ln/h1;Li9/c;Ljava/lang/Object;Lr0/q;)Lm/p;
    .locals 3

    const/4 v0, 0x0

    const v1, -0x192ea2d9

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, p0, v0}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln/h1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0xca56761

    invoke-virtual {p3, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p3, v2}, Lr0/q;->q(Z)V

    invoke-interface {p1, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lm/p;->m:Lm/p;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lm/p;->n:Lm/p;

    goto :goto_1

    :cond_1
    sget-object p0, Lm/p;->l:Lm/p;

    goto :goto_1

    :cond_2
    const v0, -0xca1388c

    invoke-virtual {p3, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lr0/u0;

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lm/p;->m:Lm/p;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lm/p;->n:Lm/p;

    goto :goto_0

    :cond_6
    sget-object p0, Lm/p;->l:Lm/p;

    :goto_0
    invoke-virtual {p3, v2}, Lr0/q;->q(Z)V

    :goto_1
    invoke-virtual {p3, v2}, Lr0/q;->q(Z)V

    return-object p0
.end method
