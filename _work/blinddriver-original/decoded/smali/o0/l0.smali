.class public abstract Lo0/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Lo0/l0;->a:F

    const/16 v1, 0x14

    int-to-float v1, v1

    sput v1, Lo0/l0;->b:F

    sput v0, Lo0/l0;->c:F

    return-void
.end method

.method public static final a(ZLi9/c;Lf1/r;ZLo0/f0;Lr0/q;I)V
    .locals 19

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p5

    const v0, -0x53d92a91

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, v1}, Lr0/q;->h(Z)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    and-int/lit8 v4, p6, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_2

    invoke-virtual {v10, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    :cond_2
    const v4, 0x32d80

    or-int/2addr v0, v4

    const v4, 0x12493

    and-int/2addr v4, v0

    const v6, 0x12492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v6, :cond_3

    move v4, v8

    goto :goto_2

    :cond_3
    move v4, v7

    :goto_2
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v10, v6, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v10}, Lr0/q;->Y()V

    and-int/lit8 v4, p6, 0x1

    const v6, -0xe001

    if-eqz v4, :cond_5

    invoke-virtual {v10}, Lr0/q;->C()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Lr0/q;->W()V

    and-int/2addr v0, v6

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move v4, v8

    move/from16 v8, p3

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {v10}, Lo0/g0;->a(Lr0/q;)Lo0/f0;

    move-result-object v4

    and-int/2addr v0, v6

    sget-object v6, Lf1/o;->a:Lf1/o;

    move-object v9, v4

    move v4, v8

    :goto_4
    invoke-virtual {v10}, Lr0/q;->r()V

    sget-object v11, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v10, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb3/c;

    sget v12, Lo0/g0;->a:F

    invoke-interface {v11, v12}, Lb3/c;->V(F)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    if-eqz v1, :cond_6

    sget-object v12, Lo2/a;->l:Lo2/a;

    goto :goto_5

    :cond_6
    sget-object v12, Lo2/a;->m:Lo2/a;

    :goto_5
    if-eqz v2, :cond_b

    const v13, 0x7b26fdf6

    invoke-virtual {v10, v13}, Lr0/q;->b0(I)V

    and-int/lit8 v13, v0, 0x70

    if-ne v13, v5, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    move v5, v7

    :goto_6
    and-int/lit8 v0, v0, 0xe

    if-ne v0, v3, :cond_8

    goto :goto_7

    :cond_8
    move v4, v7

    :goto_7
    or-int v0, v5, v4

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_9

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v3, v0, :cond_a

    :cond_9
    new-instance v3, Lo0/j0;

    const/4 v0, 0x0

    invoke-direct {v3, v0, v2, v1}, Lo0/j0;-><init>(ILi9/c;Z)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v3, Li9/a;

    invoke-virtual {v10, v7}, Lr0/q;->q(Z)V

    :goto_8
    move-object v4, v3

    goto :goto_9

    :cond_b
    const v0, 0x7b27fe8f

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v7}, Lr0/q;->q(Z)V

    const/4 v3, 0x0

    goto :goto_8

    :goto_9
    new-instance v13, Lo1/h;

    const/4 v15, 0x0

    const/16 v16, 0x1a

    const/4 v14, 0x2

    const/16 v18, 0x0

    move/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lo1/h;-><init>(IIIFF)V

    move-object v5, v13

    new-instance v13, Lo1/h;

    const/16 v16, 0x1e

    const/4 v14, 0x0

    invoke-direct/range {v13 .. v18}, Lo1/h;-><init>(IIIFF)V

    const v11, 0xc36000

    move-object v7, v6

    move-object v3, v12

    move-object v6, v13

    invoke-static/range {v3 .. v11}, Lo0/l0;->c(Lo2/a;Li9/a;Lo1/h;Lo1/h;Lf1/r;ZLo0/f0;Lr0/q;I)V

    move-object v3, v7

    move v4, v8

    move-object v5, v9

    goto :goto_a

    :cond_c
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    :goto_a
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_d

    new-instance v0, Lo0/k0;

    const/4 v7, 0x0

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lo0/k0;-><init>(ZLi9/c;Lf1/r;ZLjava/lang/Object;II)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method

.method public static final b(ZLo2/a;Lf1/r;Lo0/f0;Lo1/h;Lo1/h;Lr0/q;I)V
    .locals 22

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v12, p4

    move-object/from16 v8, p5

    move-object/from16 v0, p6

    move/from16 v3, p7

    const v5, -0x35209ea0    # -7319728.0f

    invoke-virtual {v0, v5}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v5, v3, 0x6

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->h(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v7, v3, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v0, v7}, Lr0/q;->e(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    :cond_3
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_5

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v5, v9

    goto :goto_4

    :cond_5
    move-object/from16 v7, p2

    :goto_4
    and-int/lit16 v9, v3, 0xc00

    if-nez v9, :cond_7

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_5

    :cond_6
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v5, v9

    :cond_7
    and-int/lit16 v9, v3, 0x6000

    if-nez v9, :cond_9

    invoke-virtual {v0, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_6

    :cond_8
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v5, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v3

    if-nez v9, :cond_b

    invoke-virtual {v0, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v9, 0x10000

    :goto_7
    or-int/2addr v5, v9

    :cond_b
    const v9, 0x12493

    and-int/2addr v9, v5

    const v10, 0x12492

    const/4 v11, 0x1

    const/4 v13, 0x0

    if-eq v9, v10, :cond_c

    move v9, v11

    goto :goto_8

    :cond_c
    move v9, v13

    :goto_8
    and-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v10, v9}, Lr0/q;->T(IZ)Z

    move-result v9

    if-eqz v9, :cond_2f

    shr-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, 0xe

    const/4 v9, 0x0

    invoke-static {v2, v9, v0, v5, v6}, Ln/m1;->d(Ljava/lang/Object;Ljava/lang/String;Lr0/q;II)Ln/h1;

    move-result-object v5

    iget-object v9, v5, Ln/h1;->d:Lr0/e1;

    sget-object v10, Lq0/q;->l:Lq0/q;

    invoke-static {v10, v0}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v10

    sget-object v17, Ln/d;->j:Ln/o1;

    invoke-virtual {v5}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo2/a;

    const v15, -0x2dcb949a

    invoke-virtual {v0, v15}, Lr0/q;->b0(I)V

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    if-eqz v14, :cond_d

    if-eq v14, v11, :cond_f

    if-ne v14, v6, :cond_e

    :cond_d
    move/from16 v14, v21

    goto :goto_9

    :cond_e
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    move/from16 v14, v20

    :goto_9
    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lo2/a;

    invoke-virtual {v0, v15}, Lr0/q;->b0(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_10

    if-eq v15, v11, :cond_12

    if-ne v15, v6, :cond_11

    :cond_10
    move/from16 v15, v21

    goto :goto_a

    :cond_11
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12
    move/from16 v15, v20

    :goto_a
    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v5}, Ln/h1;->f()Ln/c1;

    move-result-object v6

    const v11, 0x6a24c466

    invoke-virtual {v0, v11}, Lr0/q;->b0(I)V

    iget-object v11, v6, Ln/c1;->a:Ljava/lang/Object;

    sget-object v13, Lo2/a;->m:Lo2/a;

    const/16 v1, 0x64

    if-ne v11, v13, :cond_14

    :cond_13
    move-object/from16 v16, v10

    :goto_b
    const/4 v6, 0x0

    goto :goto_c

    :cond_14
    iget-object v6, v6, Ln/c1;->b:Ljava/lang/Object;

    if-ne v6, v13, :cond_13

    new-instance v6, Ln/p0;

    invoke-direct {v6, v1}, Ln/p0;-><init>(I)V

    move-object/from16 v16, v6

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v6}, Lr0/q;->q(Z)V

    const/16 v19, 0x0

    move-object/from16 v18, v0

    move-object v0, v13

    move-object v13, v5

    move v5, v6

    invoke-static/range {v13 .. v19}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v6

    move-object/from16 v11, v18

    invoke-virtual {v13}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo2/a;

    const v15, 0x6dad01af

    invoke-virtual {v11, v15}, Lr0/q;->b0(I)V

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_16

    const/4 v1, 0x1

    if-eq v14, v1, :cond_16

    const/4 v1, 0x2

    if-ne v14, v1, :cond_15

    move/from16 v1, v21

    goto :goto_d

    :cond_15
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    move/from16 v1, v20

    :goto_d
    invoke-virtual {v11, v5}, Lr0/q;->q(Z)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    invoke-virtual {v11, v15}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v9, 0x1

    if-eq v1, v9, :cond_18

    const/4 v9, 0x2

    if-ne v1, v9, :cond_17

    move/from16 v20, v21

    goto :goto_e

    :cond_17
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    :goto_e
    invoke-virtual {v11, v5}, Lr0/q;->q(Z)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13}, Ln/h1;->f()Ln/c1;

    move-result-object v1

    const v9, 0x25991aaf

    invoke-virtual {v11, v9}, Lr0/q;->b0(I)V

    iget-object v9, v1, Ln/c1;->a:Ljava/lang/Object;

    if-ne v9, v0, :cond_1a

    new-instance v10, Ln/p0;

    invoke-direct {v10, v5}, Ln/p0;-><init>(I)V

    :cond_19
    :goto_f
    move-object/from16 v16, v10

    goto :goto_10

    :cond_1a
    iget-object v1, v1, Ln/c1;->b:Ljava/lang/Object;

    if-ne v1, v0, :cond_19

    new-instance v10, Ln/p0;

    const/16 v1, 0x64

    invoke-direct {v10, v1}, Ln/p0;-><init>(I)V

    goto :goto_f

    :goto_10
    invoke-virtual {v11, v5}, Lr0/q;->q(Z)V

    move-object/from16 v18, v11

    invoke-static/range {v13 .. v19}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v11

    move-object/from16 v1, v18

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lr0/m;->a:Lr0/e;

    if-ne v9, v10, :cond_1b

    new-instance v9, Lo0/e0;

    invoke-direct {v9}, Lo0/e0;-><init>()V

    invoke-virtual {v1, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    move-object v13, v9

    check-cast v13, Lo0/e0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v0, :cond_1c

    iget-wide v14, v4, Lo0/f0;->b:J

    goto :goto_11

    :cond_1c
    iget-wide v14, v4, Lo0/f0;->a:J

    :goto_11
    invoke-static {v2, v1}, Lo0/f0;->a(Lo2/a;Lr0/q;)Ln/r0;

    move-result-object v0

    invoke-static {v14, v15, v0, v1}, Lm/h0;->a(JLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v9

    if-eqz p0, :cond_20

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v14, 0x1

    if-eq v0, v14, :cond_1e

    const/4 v14, 0x2

    if-ne v0, v14, :cond_1d

    goto :goto_12

    :cond_1d
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    iget-wide v14, v4, Lo0/f0;->d:J

    goto :goto_13

    :cond_1f
    :goto_12
    iget-wide v14, v4, Lo0/f0;->c:J

    goto :goto_13

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v14, 0x1

    if-eq v0, v14, :cond_22

    const/4 v14, 0x2

    if-ne v0, v14, :cond_21

    iget-wide v14, v4, Lo0/f0;->g:J

    goto :goto_13

    :cond_21
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    iget-wide v14, v4, Lo0/f0;->f:J

    goto :goto_13

    :cond_23
    iget-wide v14, v4, Lo0/f0;->e:J

    :goto_13
    if-eqz p0, :cond_24

    const v0, 0x1d912603

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    invoke-static {v2, v1}, Lo0/f0;->a(Lo2/a;Lr0/q;)Ln/r0;

    move-result-object v0

    invoke-static {v14, v15, v0, v1}, Lm/h0;->a(JLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v0

    invoke-virtual {v1, v5}, Lr0/q;->q(Z)V

    goto :goto_14

    :cond_24
    const v0, 0x1d928665

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    new-instance v0, Lm1/p;

    invoke-direct {v0, v14, v15}, Lm1/p;-><init>(J)V

    invoke-static {v0, v1}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-virtual {v1, v5}, Lr0/q;->q(Z)V

    :goto_14
    if-eqz p0, :cond_28

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_27

    const/4 v15, 0x1

    if-eq v14, v15, :cond_26

    const/4 v15, 0x2

    if-ne v14, v15, :cond_25

    goto :goto_15

    :cond_25
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    iget-wide v14, v4, Lo0/f0;->i:J

    goto :goto_16

    :cond_27
    :goto_15
    iget-wide v14, v4, Lo0/f0;->h:J

    goto :goto_16

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_2b

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2a

    const/4 v15, 0x2

    if-ne v14, v15, :cond_29

    iget-wide v14, v4, Lo0/f0;->l:J

    goto :goto_16

    :cond_29
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    iget-wide v14, v4, Lo0/f0;->k:J

    goto :goto_16

    :cond_2b
    iget-wide v14, v4, Lo0/f0;->j:J

    :goto_16
    if-eqz p0, :cond_2c

    const v5, 0x25be58c6

    invoke-virtual {v1, v5}, Lr0/q;->b0(I)V

    invoke-static {v2, v1}, Lo0/f0;->a(Lo2/a;Lr0/q;)Ln/r0;

    move-result-object v5

    invoke-static {v14, v15, v5, v1}, Lm/h0;->a(JLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lr0/q;->q(Z)V

    goto :goto_17

    :cond_2c
    const v5, 0x25bfb928

    invoke-virtual {v1, v5}, Lr0/q;->b0(I)V

    new-instance v5, Lm1/p;

    invoke-direct {v5, v14, v15}, Lm1/p;-><init>(J)V

    invoke-static {v5, v1}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lr0/q;->q(Z)V

    :goto_17
    invoke-static {v7}, Lu/b1;->t(Lf1/r;)Lf1/r;

    move-result-object v15

    sget v14, Lo0/l0;->b:F

    invoke-static {v15, v14}, Lu/b1;->i(Lf1/r;F)Lf1/r;

    move-result-object v14

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v1, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-virtual {v1, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-virtual {v1, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-virtual {v1, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-virtual {v1, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-virtual {v1, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    move-object/from16 v17, v0

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_2d

    if-ne v0, v10, :cond_2e

    :cond_2d
    move-object v7, v5

    goto :goto_18

    :cond_2e
    move-object v5, v0

    const/4 v0, 0x0

    goto :goto_19

    :goto_18
    new-instance v5, Lo0/h0;

    move-object v10, v6

    move-object/from16 v6, v17

    const/4 v0, 0x0

    invoke-direct/range {v5 .. v13}, Lo0/h0;-><init>(Lr0/r2;Lr0/r2;Lo1/h;Lr0/r2;Ln/d1;Ln/d1;Lo1/h;Lo0/e0;)V

    invoke-virtual {v1, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_19
    check-cast v5, Li9/c;

    invoke-static {v0, v14, v5, v1}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_1a

    :cond_2f
    move-object v1, v0

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_1a
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_30

    new-instance v0, Lo0/i0;

    move/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Lo0/i0;-><init>(ZLo2/a;Lf1/r;Lo0/f0;Lo1/h;Lo1/h;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_30
    return-void
.end method

.method public static final c(Lo2/a;Li9/a;Lo1/h;Lo1/h;Lf1/r;ZLo0/f0;Lr0/q;I)V
    .locals 16

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v12, p7

    move/from16 v0, p8

    const v1, -0x1836c9b1

    invoke-virtual {v12, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, v0, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v12, v1}, Lr0/q;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    or-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v12, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v1, v7

    :cond_3
    and-int/lit16 v7, v0, 0x180

    move-object/from16 v10, p2

    if-nez v7, :cond_5

    invoke-virtual {v12, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v1, v7

    :cond_5
    and-int/lit16 v7, v0, 0xc00

    move-object/from16 v11, p3

    if-nez v7, :cond_7

    invoke-virtual {v12, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v1, v7

    :cond_7
    and-int/lit16 v7, v0, 0x6000

    if-nez v7, :cond_9

    invoke-virtual {v12, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_5

    :cond_8
    const/16 v7, 0x2000

    :goto_5
    or-int/2addr v1, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v0

    if-nez v7, :cond_b

    invoke-virtual {v12, v6}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v7, 0x10000

    :goto_6
    or-int/2addr v1, v7

    :cond_b
    const/high16 v7, 0x180000

    and-int/2addr v7, v0

    if-nez v7, :cond_d

    move-object/from16 v7, p6

    invoke-virtual {v12, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v8, 0x80000

    :goto_7
    or-int/2addr v1, v8

    goto :goto_8

    :cond_d
    move-object/from16 v7, p6

    :goto_8
    const/high16 v8, 0xc00000

    and-int/2addr v8, v0

    if-nez v8, :cond_f

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/high16 v8, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v8, 0x400000

    :goto_9
    or-int/2addr v1, v8

    :cond_f
    const v8, 0x492493

    and-int/2addr v8, v1

    const v9, 0x492492

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v8, v9, :cond_10

    move v8, v14

    goto :goto_a

    :cond_10
    move v8, v13

    :goto_a
    and-int/lit8 v9, v1, 0x1

    invoke-virtual {v12, v9, v8}, Lr0/q;->T(IZ)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v12}, Lr0/q;->Y()V

    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_12

    invoke-virtual {v12}, Lr0/q;->C()Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v12}, Lr0/q;->W()V

    :cond_12
    :goto_b
    invoke-virtual {v12}, Lr0/q;->r()V

    sget-object v8, Lf1/o;->a:Lf1/o;

    if-eqz v2, :cond_13

    sget v9, Lq0/c;->d:F

    int-to-float v4, v4

    div-float/2addr v9, v4

    invoke-static {v3, v9, v13}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v3

    new-instance v4, Lm2/h;

    invoke-direct {v4, v14}, Lm2/h;-><init>(I)V

    move-object/from16 v9, p0

    invoke-static {v9, v3, v6, v4, v2}, Lz/c;->c(Lo2/a;Lo0/b3;ZLm2/h;Li9/a;)Lf1/r;

    move-result-object v3

    goto :goto_c

    :cond_13
    move-object/from16 v9, p0

    move-object v3, v8

    :goto_c
    if-eqz v2, :cond_14

    sget-object v4, Lo0/n1;->a:Lc2/k;

    sget-object v8, Lo0/v1;->a:Lo0/v1;

    :cond_14
    invoke-interface {v5, v8}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v4

    invoke-interface {v4, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    sget v4, Lo0/l0;->a:F

    invoke-static {v3, v4}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v8

    shr-int/lit8 v3, v1, 0xf

    and-int/lit8 v3, v3, 0xe

    shl-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v1, v1, 0x6

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int/2addr v1, v4

    or-int v13, v3, v1

    move-object v15, v9

    move-object v9, v7

    move-object v7, v15

    invoke-static/range {v6 .. v13}, Lo0/l0;->b(ZLo2/a;Lf1/r;Lo0/f0;Lo1/h;Lo1/h;Lr0/q;I)V

    goto :goto_d

    :cond_15
    invoke-virtual/range {p7 .. p7}, Lr0/q;->W()V

    :goto_d
    invoke-virtual/range {p7 .. p7}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_16

    new-instance v0, Lb0/m0;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lb0/m0;-><init>(Lo2/a;Li9/a;Lo1/h;Lo1/h;Lf1/r;ZLo0/f0;I)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_16
    return-void
.end method
