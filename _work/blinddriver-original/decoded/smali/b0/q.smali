.class public abstract Lb0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    int-to-float v0, v0

    invoke-static {v0, v0}, Lr5/u0;->a(FF)J

    return-void
.end method

.method public static final a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Li9/c;Ls/i;Lm1/j0;Lz0/d;Lr0/q;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v0, p15

    const v3, 0x78d0d0fc

    invoke-virtual {v0, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p16, v3

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    const/16 v9, 0x10

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    or-int/2addr v3, v7

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Lr0/q;->h(Z)Z

    move-result v10

    const/16 v11, 0x400

    const/16 v12, 0x800

    if-eqz v10, :cond_3

    move v10, v12

    goto :goto_3

    :cond_3
    move v10, v11

    :goto_3
    or-int/2addr v3, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lr0/q;->h(Z)Z

    move-result v13

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-eqz v13, :cond_4

    move/from16 v13, v17

    goto :goto_4

    :cond_4
    move/from16 v13, v16

    :goto_4
    or-int/2addr v3, v13

    move-object/from16 v13, p4

    invoke-virtual {v0, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/high16 v18, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v18, 0x10000

    :goto_5
    or-int v3, v3, v18

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/high16 v18, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v18, 0x80000

    :goto_6
    or-int v3, v3, v18

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/high16 v19, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v19, 0x400000

    :goto_7
    or-int v3, v3, v19

    invoke-virtual {v0, v8}, Lr0/q;->h(Z)Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v19, 0x2000000

    :goto_8
    or-int v3, v3, v19

    move/from16 v14, p8

    invoke-virtual {v0, v14}, Lr0/q;->e(I)Z

    move-result v20

    if-eqz v20, :cond_9

    const/high16 v20, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v20, 0x10000000

    :goto_9
    or-int v3, v3, v20

    move/from16 v10, p9

    invoke-virtual {v0, v10}, Lr0/q;->e(I)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v18, 0x4

    goto :goto_a

    :cond_a
    const/16 v18, 0x2

    :goto_a
    const/high16 v21, 0x30000

    or-int v18, v21, v18

    move-object/from16 v10, p10

    invoke-virtual {v0, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v9, 0x20

    :cond_b
    or-int v9, v18, v9

    or-int/lit16 v9, v9, 0x180

    move-object/from16 v10, p12

    invoke-virtual {v0, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    move v11, v12

    :cond_c
    or-int/2addr v9, v11

    move-object/from16 v11, p13

    invoke-virtual {v0, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move/from16 v16, v17

    :cond_d
    or-int v16, v9, v16

    const v9, 0x12492493

    and-int/2addr v9, v3

    const v12, 0x12492492

    if-ne v9, v12, :cond_f

    const v9, 0x12493

    and-int v9, v16, v9

    const v12, 0x12492

    if-eq v9, v12, :cond_e

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v9, 0x1

    :goto_c
    and-int/lit8 v12, v3, 0x1

    invoke-virtual {v0, v12, v9}, Lr0/q;->T(IZ)Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v9, p16, 0x1

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-eqz v9, :cond_11

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v18, p11

    goto :goto_e

    :cond_11
    :goto_d
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v12, :cond_12

    new-instance v9, Lad/b2;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lad/b2;-><init>(I)V

    invoke-virtual {v0, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    check-cast v9, Li9/c;

    move-object/from16 v18, v9

    :goto_e
    invoke-virtual {v0}, Lr0/q;->r()V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v12, :cond_13

    new-instance v9, Lu2/x;

    const-wide/16 v4, 0x0

    const/4 v10, 0x6

    invoke-direct {v9, v10, v4, v5, v1}, Lu2/x;-><init>(IJLjava/lang/String;)V

    invoke-static {v9}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v9

    invoke-virtual {v0, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_13
    move-object v4, v9

    check-cast v4, Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/x;

    iget-wide v9, v5, Lu2/x;->b:J

    iget-object v5, v5, Lu2/x;->c:Lp2/l0;

    new-instance v14, Lu2/x;

    new-instance v7, Lp2/g;

    invoke-direct {v7, v1}, Lp2/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v7, v9, v10, v5}, Lu2/x;-><init>(Lp2/g;JLp2/l0;)V

    invoke-virtual {v0, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_14

    if-ne v7, v12, :cond_15

    :cond_14
    new-instance v7, Lb0/n;

    const/4 v5, 0x0

    invoke-direct {v7, v5, v14, v4}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    check-cast v7, Li9/a;

    invoke-static {v7, v0}, Lr0/r;->j(Li9/a;Lr0/q;)V

    and-int/lit8 v5, v3, 0xe

    const/4 v10, 0x4

    if-ne v5, v10, :cond_16

    const/4 v5, 0x1

    goto :goto_f

    :cond_16
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_17

    if-ne v7, v12, :cond_18

    :cond_17
    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v7

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v5, v7

    check-cast v5, Lr0/u0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lu2/k;

    iget v9, v6, Lb0/q1;->a:I

    new-instance v10, Lu2/l;

    invoke-direct {v10, v9}, Lu2/l;-><init>(I)V

    const/16 v22, 0x0

    const/4 v1, -0x1

    if-ne v9, v1, :cond_19

    move-object/from16 v10, v22

    :cond_19
    if-eqz v10, :cond_1a

    iget v9, v10, Lu2/l;->a:I

    goto :goto_10

    :cond_1a
    const/4 v9, 0x0

    :goto_10
    iget v10, v6, Lb0/q1;->b:I

    new-instance v1, Lu2/m;

    invoke-direct {v1, v10}, Lu2/m;-><init>(I)V

    if-nez v10, :cond_1b

    move-object/from16 v1, v22

    :cond_1b
    if-eqz v1, :cond_1c

    iget v1, v1, Lu2/m;->a:I

    goto :goto_11

    :cond_1c
    const/4 v1, 0x1

    :goto_11
    iget v10, v6, Lb0/q1;->c:I

    move/from16 v23, v1

    new-instance v1, Lu2/j;

    invoke-direct {v1, v10}, Lu2/j;-><init>(I)V

    move-object/from16 v24, v1

    const/4 v1, -0x1

    if-ne v10, v1, :cond_1d

    move-object/from16 v1, v22

    goto :goto_12

    :cond_1d
    move-object/from16 v1, v24

    :goto_12
    if-eqz v1, :cond_1e

    iget v1, v1, Lu2/j;->a:I

    goto :goto_13

    :cond_1e
    const/4 v1, 0x1

    :goto_13
    sget-object v13, Lw2/b;->n:Lw2/b;

    move-object v10, v12

    move v12, v1

    move-object v1, v10

    move/from16 v11, v23

    const/4 v10, 0x1

    const/16 v20, 0x0

    invoke-direct/range {v7 .. v13}, Lu2/k;-><init>(ZIZIILw2/b;)V

    move/from16 v17, v10

    xor-int/lit8 v15, p7, 0x1

    if-eqz p7, :cond_1f

    move/from16 v10, v17

    goto :goto_14

    :cond_1f
    move/from16 v10, p9

    :goto_14
    move/from16 v8, v16

    if-eqz p7, :cond_20

    move/from16 v16, v17

    goto :goto_15

    :cond_20
    move/from16 v16, p8

    :goto_15
    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    and-int/lit8 v11, v3, 0x70

    const/16 v12, 0x20

    if-ne v11, v12, :cond_21

    goto :goto_16

    :cond_21
    move/from16 v17, v20

    :goto_16
    or-int v9, v9, v17

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_22

    if-ne v11, v1, :cond_23

    :cond_22
    new-instance v11, Lb0/o;

    const/4 v1, 0x0

    invoke-direct {v11, v2, v4, v5, v1}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_23
    check-cast v11, Li9/c;

    and-int/lit16 v1, v3, 0x380

    shr-int/lit8 v4, v3, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v1, v4

    shl-int/lit8 v4, v8, 0x9

    const v5, 0xe000

    and-int v8, v4, v5

    or-int/2addr v1, v8

    or-int v1, v1, v21

    const/high16 v8, 0x380000

    and-int/2addr v8, v4

    or-int/2addr v1, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v4, v8

    or-int v23, v1, v4

    shr-int/lit8 v1, v3, 0xf

    and-int/lit16 v1, v1, 0x380

    and-int/lit16 v4, v3, 0x1c00

    or-int/2addr v1, v4

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    or-int v24, v1, v21

    move-object/from16 v9, p2

    move/from16 v20, p3

    move-object/from16 v19, p6

    move-object/from16 v13, p12

    move-object/from16 v21, p14

    move-object/from16 v22, v0

    move/from16 v17, v10

    move-object v8, v11

    move-object/from16 v12, v18

    move-object/from16 v10, p4

    move-object/from16 v11, p10

    move-object/from16 v18, v7

    move-object v7, v14

    move-object/from16 v14, p13

    invoke-static/range {v7 .. v24}, Lb0/n1;->g(Lu2/x;Li9/c;Lf1/r;Lp2/m0;Lu2/d0;Li9/c;Ls/i;Lm1/j0;ZIILu2/k;Lb0/p1;ZLz0/d;Lr0/q;II)V

    goto :goto_17

    :cond_24
    invoke-virtual/range {p15 .. p15}, Lr0/q;->W()V

    move-object/from16 v12, p11

    :goto_17
    invoke-virtual/range {p15 .. p15}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_25

    move-object v1, v0

    new-instance v0, Lb0/p;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lb0/p;-><init>(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Li9/c;Ls/i;Lm1/j0;Lz0/d;I)V

    move-object/from16 v1, v25

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_25
    return-void
.end method
