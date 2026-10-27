.class public abstract Lo0/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Lo0/m3;->a:F

    return-void
.end method

.method public static final a(Lo0/s3;ZLi9/a;Lm1/h0;Lf1/r;ZLo0/c3;Lp/x;Lu/s0;Li9/e;Lz0/d;Lr0/q;I)V
    .locals 42

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v15, p11

    move/from16 v0, p12

    const v3, 0x5b5117a6

    invoke-virtual {v15, v3}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v15, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/lit8 v4, v0, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v15, v2}, Lr0/q;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v4, v0, 0x180

    if-nez v4, :cond_5

    move-object/from16 v4, p2

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v3, v5

    goto :goto_4

    :cond_5
    move-object/from16 v4, p2

    :goto_4
    and-int/lit16 v5, v0, 0xc00

    move-object/from16 v6, p3

    if-nez v5, :cond_7

    invoke-virtual {v15, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_5

    :cond_6
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v3, v5

    :cond_7
    const v5, 0x36000

    or-int/2addr v5, v3

    const/high16 v7, 0x180000

    and-int/2addr v7, v0

    if-nez v7, :cond_8

    const v5, 0xb6000

    or-int/2addr v5, v3

    :cond_8
    const/high16 v3, 0xc00000

    and-int/2addr v3, v0

    if-nez v3, :cond_9

    const/high16 v3, 0x400000

    or-int/2addr v5, v3

    :cond_9
    const/high16 v3, 0x36000000

    or-int/2addr v3, v5

    const v5, 0x12492493

    and-int/2addr v5, v3

    const v7, 0x12492492

    const/4 v8, 0x0

    if-ne v5, v7, :cond_a

    move v5, v8

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    :goto_6
    and-int/lit8 v7, v3, 0x1

    invoke-virtual {v15, v7, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v15}, Lr0/q;->Y()V

    and-int/lit8 v5, v0, 0x1

    const v7, -0x1f80001

    if-eqz v5, :cond_c

    invoke-virtual {v15}, Lr0/q;->C()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v15}, Lr0/q;->W()V

    and-int/2addr v3, v7

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v12, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move v13, v3

    move-object/from16 v3, p4

    goto/16 :goto_a

    :cond_c
    :goto_7
    sget-object v5, Lo0/h3;->a:Lo0/h3;

    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-object v10, v5, Lo0/u0;->e0:Lo0/c3;

    if-nez v10, :cond_d

    new-instance v16, Lo0/c3;

    sget-object v10, Lq0/t;->h:Lq0/g;

    invoke-static {v5, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v17

    sget-object v11, Lq0/t;->i:Lq0/g;

    invoke-static {v5, v11}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v19

    sget-object v11, Lq0/t;->f:Lq0/g;

    invoke-static {v5, v11}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v21

    sget-wide v23, Lm1/p;->f:J

    sget-object v12, Lq0/t;->k:Lq0/g;

    invoke-static {v5, v12}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v25

    invoke-static {v5, v11}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v27

    invoke-static {v5, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v29

    sget-object v10, Lq0/t;->b:Lq0/g;

    invoke-static {v5, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v12

    sget v14, Lq0/t;->c:F

    invoke-static {v14, v12, v13}, Lm1/p;->b(FJ)J

    move-result-wide v31

    invoke-static {v5, v11}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v12

    move/from16 v41, v7

    sget v7, Lq0/t;->d:F

    invoke-static {v7, v12, v13}, Lm1/p;->b(FJ)J

    move-result-wide v33

    invoke-static {v5, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v12

    invoke-static {v14, v12, v13}, Lm1/p;->b(FJ)J

    move-result-wide v37

    invoke-static {v5, v11}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Lm1/p;->b(FJ)J

    move-result-wide v39

    move-wide/from16 v35, v23

    invoke-direct/range {v16 .. v40}, Lo0/c3;-><init>(JJJJJJJJJJJJ)V

    move-object/from16 v7, v16

    iput-object v7, v5, Lo0/u0;->e0:Lo0/c3;

    goto :goto_8

    :cond_d
    move/from16 v41, v7

    move-object v7, v10

    :goto_8
    if-eqz v2, :cond_e

    iget-wide v10, v7, Lo0/c3;->c:J

    goto :goto_9

    :cond_e
    if-nez v2, :cond_f

    iget-wide v10, v7, Lo0/c3;->f:J

    goto :goto_9

    :cond_f
    iget-wide v10, v7, Lo0/c3;->l:J

    :goto_9
    sget v5, Lo0/h3;->b:F

    invoke-static {v5, v10, v11}, Lp/o;->a(FJ)Lp/x;

    move-result-object v5

    and-int v3, v3, v41

    sget-object v10, Lo0/h3;->d:Lu/s0;

    new-instance v11, Lo0/l3;

    invoke-direct {v11, v2}, Lo0/l3;-><init>(Z)V

    const v12, -0x265fab81

    invoke-static {v12, v11, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    sget-object v12, Lf1/o;->a:Lf1/o;

    move v13, v3

    move-object v3, v12

    move-object v12, v5

    const/4 v5, 0x1

    :goto_a
    invoke-virtual {v15}, Lr0/q;->r()V

    const v14, -0x5e2631cb

    invoke-virtual {v15, v14}, Lr0/q;->b0(I)V

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-ne v14, v9, :cond_10

    new-instance v14, Ls/i;

    invoke-direct {v14}, Ls/i;-><init>()V

    invoke-virtual {v15, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v14, Ls/i;

    invoke-virtual {v15, v8}, Lr0/q;->q(Z)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_11

    if-eqz v2, :cond_11

    move-object/from16 p4, v9

    iget-wide v8, v7, Lo0/c3;->a:J

    goto :goto_b

    :cond_11
    move-object/from16 p4, v9

    if-eqz v5, :cond_12

    if-nez v2, :cond_12

    iget-wide v8, v7, Lo0/c3;->d:J

    goto :goto_b

    :cond_12
    if-nez v5, :cond_13

    if-eqz v2, :cond_13

    iget-wide v8, v7, Lo0/c3;->g:J

    goto :goto_b

    :cond_13
    iget-wide v8, v7, Lo0/c3;->j:J

    :goto_b
    if-eqz v5, :cond_14

    if-eqz v2, :cond_14

    move/from16 p5, v5

    iget-wide v4, v7, Lo0/c3;->b:J

    goto :goto_c

    :cond_14
    move/from16 p5, v5

    if-eqz p5, :cond_15

    if-nez v2, :cond_15

    iget-wide v4, v7, Lo0/c3;->e:J

    goto :goto_c

    :cond_15
    if-nez p5, :cond_16

    if-eqz v2, :cond_16

    iget-wide v4, v7, Lo0/c3;->h:J

    goto :goto_c

    :cond_16
    iget-wide v4, v7, Lo0/c3;->k:J

    :goto_c
    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    move-wide/from16 p6, v4

    move-object/from16 v4, p4

    if-ne v0, v4, :cond_17

    new-instance v0, Lr0/b1;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lr0/b1;-><init>(I)V

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    check-cast v0, Lr0/b1;

    invoke-virtual {v15, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    move/from16 p4, v5

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez p4, :cond_19

    if-ne v5, v4, :cond_18

    goto :goto_d

    :cond_18
    move-object/from16 p4, v7

    goto :goto_e

    :cond_19
    :goto_d
    new-instance v5, Landroidx/lifecycle/i0;

    const/16 v6, 0x17

    move-object/from16 p4, v7

    const/4 v7, 0x0

    invoke-direct {v5, v14, v0, v7, v6}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v15, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_e
    check-cast v5, Li9/e;

    invoke-static {v5, v14, v15}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v5}, Lo0/s3;->a(Lf1/r;F)Lf1/r;

    move-result-object v5

    new-instance v6, Lm0/h;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v2, v7}, Lm0/h;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v5, v6}, Lc2/x;->k(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    sget v5, Lo0/q;->c:F

    sget v6, Lo0/q;->d:F

    invoke-static {v0, v5, v6}, Lu/b1;->a(Lf1/r;FF)Lf1/r;

    move-result-object v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_1a

    new-instance v5, Ln/p1;

    const/16 v4, 0xb

    invoke-direct {v5, v4}, Ln/p1;-><init>(I)V

    invoke-virtual {v15, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1a
    check-cast v5, Li9/c;

    const/4 v4, 0x0

    invoke-static {v0, v4, v5}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v4

    new-instance v0, Lo0/s1;

    move-object/from16 v5, p10

    const/4 v7, 0x1

    invoke-direct {v0, v11, v5, v10, v7}, Lo0/s1;-><init>(Li9/e;Lz0/d;Ljava/lang/Object;I)V

    const v6, -0x4801d9c4

    invoke-static {v6, v0, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    shr-int/lit8 v6, v13, 0x3

    and-int/lit8 v6, v6, 0x7e

    shr-int/lit8 v7, v13, 0x6

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v6, v7

    const v7, 0xe000

    shl-int/lit8 v13, v13, 0x3

    and-int/2addr v7, v13

    or-int v16, v6, v7

    const/16 v17, 0x180

    move-object v6, v11

    const/4 v11, 0x0

    move-object/from16 v18, p4

    move/from16 v5, p5

    move-object/from16 v19, v6

    move-wide v7, v8

    move-object/from16 v20, v10

    move-object v13, v14

    move-object/from16 v6, p3

    move-wide/from16 v9, p6

    move-object v14, v0

    move-object v0, v3

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v17}, Lo0/t4;->b(ZLi9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V

    move v6, v5

    move-object v8, v12

    move-object/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    move-object v5, v0

    goto :goto_f

    :cond_1b
    invoke-virtual/range {p11 .. p11}, Lr0/q;->W()V

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    :goto_f
    invoke-virtual/range {p11 .. p11}, Lr0/q;->u()Lr0/n1;

    move-result-object v13

    if-eqz v13, :cond_1c

    new-instance v0, Lo0/j3;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lo0/j3;-><init>(Lo0/s3;ZLi9/a;Lm1/h0;Lf1/r;ZLo0/c3;Lp/x;Lu/s0;Li9/e;Lz0/d;I)V

    iput-object v0, v13, Lr0/n1;->d:Li9/e;

    :cond_1c
    return-void
.end method

.method public static final b(Li9/e;Lz0/d;Lu/s0;Lr0/q;I)V
    .locals 7

    const v0, -0x3fbbb0b1

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p3, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lf1/c;->p:Lf1/j;

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, p2}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object v1

    invoke-static {v0, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v0

    iget-wide v2, p3, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {p3}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v1, p3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p3}, Lr0/q;->e0()V

    iget-boolean v6, p3, Lr0/q;->S:Z

    if-eqz v6, :cond_4

    invoke-virtual {p3, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p3}, Lr0/q;->o0()V

    :goto_4
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v3, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v3, p3, Lr0/q;->S:Z

    if-nez v3, :cond_5

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-static {v2, p3, v2, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_6
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v1, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lq0/t;->e:Lq0/g0;

    invoke-static {v0, p3}, Lo0/i5;->a(Lq0/g0;Lr0/q;)Lp2/m0;

    move-result-object v0

    sget-object v1, Lq0/q;->m:Lq0/q;

    invoke-static {v1, p3}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v1

    new-instance v2, Lo0/s1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v1, v3}, Lo0/s1;-><init>(Li9/e;Lz0/d;Ljava/lang/Object;I)V

    const v1, -0x51d06dc8

    invoke-static {v1, v2, p3}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v0, v1, p3, v2}, Lo0/d5;->a(Lp2/m0;Lz0/d;Lr0/q;I)V

    invoke-virtual {p3, v4}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v0, Lb0/k0;

    invoke-direct {v0, p0, p1, p2, p4}, Lb0/k0;-><init>(Li9/e;Lz0/d;Lu/s0;I)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method

.method public static final c(Lf1/r;FLz0/d;Lr0/q;I)V
    .locals 7

    const v0, 0x79ad6569

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v0, p4, 0x30

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p1, Lo0/h3;->b:F

    new-instance v0, Lsc/t0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lsc/t0;-><init>(I)V

    invoke-static {p0, v3, v0}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lq0/t;->a:F

    invoke-static {v0, v1, v2, v4}, Lu/b1;->b(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    sget-object v1, Lu/f0;->l:Lu/f0;

    invoke-static {v0, v1}, Lu/b;->w(Lf1/r;Lu/f0;)Lf1/r;

    move-result-object v0

    neg-float v1, p1

    invoke-static {v1}, Lu/h;->g(F)Lu/f;

    move-result-object v1

    sget-object v2, Lf1/c;->v:Lf1/i;

    const/16 v3, 0x30

    invoke-static {v1, v2, p3, v3}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v2, p3, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {p3}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v0, p3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p3}, Lr0/q;->e0()V

    iget-boolean v6, p3, Lr0/q;->S:Z

    if-eqz v6, :cond_1

    invoke-virtual {p3, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lr0/q;->o0()V

    :goto_1
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v1, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->g:Le2/e;

    iget-boolean v3, p3, Lr0/q;->S:Z

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-static {v2, p3, v2, v1}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3
    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v0, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_4

    new-instance v0, Lo0/s3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lo0/s3;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, p3, v1}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v4}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lo0/i3;

    invoke-direct {v0, p0, p1, p2, p4}, Lo0/i3;-><init>(Lf1/r;FLz0/d;I)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method
