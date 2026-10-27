.class public abstract Lo0/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:Lu/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Lo0/r0;->a:F

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/b;->b(FI)Lu/s0;

    invoke-static {v0, v1}, Lu/b;->b(FI)Lu/s0;

    move-result-object v2

    sput-object v2, Lo0/r0;->b:Lu/s0;

    invoke-static {v0, v1}, Lu/b;->b(FI)Lu/s0;

    return-void
.end method

.method public static final a(Lz0/d;Lp2/m0;JJJFLu/s0;Lr0/q;I)V
    .locals 17

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v0, p10

    const v1, -0x7b6d352a

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    move-object/from16 v10, p0

    invoke-virtual {v0, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p11, v1

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v1, v5

    invoke-virtual {v0, v3, v4}, Lr0/q;->f(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v1, v6

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v1, v6

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v5, 0x10000

    :goto_5
    or-int/2addr v1, v5

    move-wide/from16 v5, p4

    invoke-virtual {v0, v5, v6}, Lr0/q;->f(J)Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v7, 0x80000

    :goto_6
    or-int/2addr v1, v7

    move-wide/from16 v7, p6

    invoke-virtual {v0, v7, v8}, Lr0/q;->f(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/high16 v9, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v9, 0x400000

    :goto_7
    or-int/2addr v1, v9

    move/from16 v9, p8

    invoke-virtual {v0, v9}, Lr0/q;->d(F)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v11, 0x2000000

    :goto_8
    or-int/2addr v1, v11

    move-object/from16 v11, p9

    invoke-virtual {v0, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/high16 v12, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v12, 0x10000000

    :goto_9
    or-int/2addr v1, v12

    const v12, 0x12492493

    and-int/2addr v12, v1

    const v13, 0x12492492

    const/4 v14, 0x1

    if-eq v12, v13, :cond_a

    move v12, v14

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    and-int/2addr v1, v14

    invoke-virtual {v0, v1, v12}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lo0/z0;->a:Lr0/a0;

    new-instance v12, Lm1/p;

    invoke-direct {v12, v3, v4}, Lm1/p;-><init>(J)V

    invoke-virtual {v1, v12}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    sget-object v12, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {v12, v2}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v12

    filled-new-array {v1, v12}, [Lj6/g0;

    move-result-object v1

    new-instance v5, Lo0/p0;

    move-wide v15, v7

    move-object v7, v11

    move-wide v11, v15

    move v6, v9

    move-wide/from16 v8, p4

    invoke-direct/range {v5 .. v12}, Lo0/p0;-><init>(FLu/s0;JLz0/d;J)V

    const v6, -0x27d471ea

    invoke-static {v6, v5, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    const/16 v6, 0x38

    invoke-static {v1, v5, v0, v6}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_b
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_c

    new-instance v0, Lo0/o0;

    move-object/from16 v1, p0

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lo0/o0;-><init>(Lz0/d;Lp2/m0;JJJFLu/s0;I)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V
    .locals 23

    move/from16 v0, p0

    move-object/from16 v12, p9

    move/from16 v15, p10

    move/from16 v1, p11

    const v2, -0x5294a540

    invoke-virtual {v12, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v12, v0}, Lr0/q;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v15

    move-object/from16 v3, p1

    invoke-virtual {v12, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    or-int/lit16 v2, v2, 0xc00

    :cond_2
    move-object/from16 v5, p3

    goto :goto_3

    :cond_3
    and-int/lit16 v5, v15, 0xc00

    if-nez v5, :cond_2

    move-object/from16 v5, p3

    invoke-virtual {v12, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x800

    goto :goto_2

    :cond_4
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v2, v6

    :goto_3
    const v6, 0x5b6000

    or-int/2addr v2, v6

    and-int/lit16 v6, v1, 0x100

    if-nez v6, :cond_5

    move-object/from16 v6, p6

    invoke-virtual {v12, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x4000000

    goto :goto_4

    :cond_5
    move-object/from16 v6, p6

    :cond_6
    const/high16 v7, 0x2000000

    :goto_4
    or-int/2addr v2, v7

    const/high16 v7, 0x10000000

    or-int/2addr v2, v7

    const v7, 0x12492493

    and-int/2addr v7, v2

    const v8, 0x12492492

    if-ne v7, v8, :cond_7

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, 0x1

    :goto_5
    and-int/lit8 v8, v2, 0x1

    invoke-virtual {v12, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v12}, Lr0/q;->Y()V

    and-int/lit8 v7, v15, 0x1

    const v8, -0xfc00001

    const v10, -0x70000001

    const v11, -0x1c00001

    if-eqz v7, :cond_a

    invoke-virtual {v12}, Lr0/q;->C()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Lr0/q;->W()V

    and-int v4, v2, v11

    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_9

    and-int v4, v2, v8

    :cond_9
    and-int v2, v4, v10

    move/from16 v3, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v4, v5

    move-object v7, v6

    move-object/from16 v6, p5

    goto :goto_8

    :cond_a
    :goto_6
    if-eqz v4, :cond_b

    sget-object v4, Lf1/o;->a:Lf1/o;

    goto :goto_7

    :cond_b
    move-object v4, v5

    :goto_7
    sget v5, Lo0/j1;->a:F

    sget-object v5, Lq0/m;->b:Lq0/y;

    invoke-static {v5, v12}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v5

    and-int v7, v2, v11

    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_c

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    invoke-static {v6}, Lo0/j1;->b(Lo0/u0;)Lo0/n3;

    move-result-object v6

    and-int v7, v2, v8

    :cond_c
    sget v17, Lq0/m;->f:F

    sget v18, Lq0/m;->o:F

    sget v19, Lq0/m;->l:F

    sget v20, Lq0/m;->m:F

    sget v21, Lq0/m;->e:F

    new-instance v16, Lo0/o3;

    move/from16 v22, v17

    invoke-direct/range {v16 .. v22}, Lo0/o3;-><init>(FFFFFF)V

    and-int v2, v7, v10

    sget-object v7, Lq0/m;->p:Lq0/g;

    invoke-static {v7, v12}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v7

    sget-wide v10, Lm1/p;->f:J

    sget-object v13, Lq0/m;->i:Lq0/g;

    invoke-static {v13, v12}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v13

    sget v9, Lq0/m;->j:F

    invoke-static {v9, v13, v14}, Lm1/p;->b(FJ)J

    sget v9, Lq0/m;->q:F

    sget v13, Lq0/m;->n:F

    if-eqz v0, :cond_d

    move-wide v7, v10

    :cond_d
    if-eqz v0, :cond_e

    move v9, v13

    :cond_e
    invoke-static {v9, v7, v8}, Lp/o;->a(FJ)Lp/x;

    move-result-object v7

    move-object v9, v7

    move-object/from16 v8, v16

    const/4 v3, 0x1

    move-object v7, v6

    move-object v6, v5

    :goto_8
    invoke-virtual {v12}, Lr0/q;->r()V

    sget-object v5, Lq0/m;->r:Lq0/g0;

    invoke-static {v5, v12}, Lo0/i5;->a(Lq0/g0;Lr0/q;)Lp2/m0;

    move-result-object v5

    sget v10, Lo0/j1;->a:F

    and-int/lit8 v11, v2, 0xe

    const/high16 v13, 0xc00000

    or-int/2addr v11, v13

    shr-int/lit8 v13, v2, 0x6

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v11, v13

    shl-int/lit8 v13, v2, 0x3

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v11, v13

    const v13, 0x6186c00

    or-int/2addr v13, v11

    shr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0xe

    const v11, 0x36c00

    or-int v14, v2, v11

    sget-object v11, Lo0/r0;->b:Lu/s0;

    move-object/from16 v2, p1

    move-object v1, v4

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v14}, Lo0/r0;->c(ZLf1/r;Li9/a;ZLz0/d;Lp2/m0;Lm1/h0;Lo0/n3;Lo0/o3;Lp/x;FLu/s0;Lr0/q;II)V

    move-object v4, v1

    move v5, v3

    goto :goto_9

    :cond_f
    invoke-virtual/range {p9 .. p9}, Lr0/q;->W()V

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v4, v5

    move-object v7, v6

    move/from16 v5, p4

    move-object/from16 v6, p5

    :goto_9
    invoke-virtual/range {p9 .. p9}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_10

    new-instance v0, Lo0/m0;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v11, p11

    move v10, v15

    invoke-direct/range {v0 .. v11}, Lo0/m0;-><init>(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;II)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final c(ZLf1/r;Li9/a;ZLz0/d;Lp2/m0;Lm1/h0;Lo0/n3;Lo0/o3;Lp/x;FLu/s0;Lr0/q;II)V
    .locals 28

    move/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v2, p3

    move-object/from16 v0, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    const v7, 0x6a811700

    invoke-virtual {v4, v7}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v7, v5, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v4, v1}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    and-int/lit8 v11, v5, 0x30

    const/16 v13, 0x20

    if-nez v11, :cond_3

    invoke-virtual {v4, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v13

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v7, v11

    :cond_3
    and-int/lit16 v11, v5, 0x180

    const/16 v14, 0x80

    if-nez v11, :cond_5

    move-object/from16 v11, p2

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x100

    goto :goto_3

    :cond_4
    move/from16 v16, v14

    :goto_3
    or-int v7, v7, v16

    goto :goto_4

    :cond_5
    move-object/from16 v11, p2

    :goto_4
    and-int/lit16 v9, v5, 0xc00

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-nez v9, :cond_7

    invoke-virtual {v4, v2}, Lr0/q;->h(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    move/from16 v9, v18

    goto :goto_5

    :cond_6
    move/from16 v9, v17

    :goto_5
    or-int/2addr v7, v9

    :cond_7
    and-int/lit16 v9, v5, 0x6000

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-virtual {v4, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move/from16 v21, v20

    goto :goto_6

    :cond_8
    move/from16 v21, v19

    :goto_6
    or-int v7, v7, v21

    goto :goto_7

    :cond_9
    move-object/from16 v9, p4

    :goto_7
    const/high16 v21, 0x30000

    and-int v22, v5, v21

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    move-object/from16 v15, p5

    if-nez v22, :cond_b

    invoke-virtual {v4, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    move/from16 v25, v24

    goto :goto_8

    :cond_a
    move/from16 v25, v23

    :goto_8
    or-int v7, v7, v25

    :cond_b
    const/high16 v25, 0x180000

    and-int v25, v5, v25

    const/4 v12, 0x0

    if-nez v25, :cond_d

    invoke-virtual {v4, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    const/high16 v25, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v25, 0x80000

    :goto_9
    or-int v7, v7, v25

    :cond_d
    const/high16 v25, 0xc00000

    and-int v25, v5, v25

    if-nez v25, :cond_f

    invoke-virtual {v4, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    const/high16 v25, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v25, 0x400000

    :goto_a
    or-int v7, v7, v25

    :cond_f
    const/high16 v25, 0x6000000

    and-int v25, v5, v25

    if-nez v25, :cond_11

    invoke-virtual {v4, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v25, 0x2000000

    :goto_b
    or-int v7, v7, v25

    :cond_11
    const/high16 v25, 0x30000000

    and-int v25, v5, v25

    move-object/from16 v15, p6

    if-nez v25, :cond_13

    invoke-virtual {v4, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    const/high16 v25, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v25, 0x10000000

    :goto_c
    or-int v7, v7, v25

    :cond_13
    and-int/lit8 v25, v6, 0x6

    if-nez v25, :cond_15

    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v16, 0x4

    goto :goto_d

    :cond_14
    const/16 v16, 0x2

    :goto_d
    or-int v16, v6, v16

    goto :goto_e

    :cond_15
    move/from16 v16, v6

    :goto_e
    and-int/lit8 v25, v6, 0x30

    if-nez v25, :cond_17

    invoke-virtual {v4, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    move/from16 v26, v13

    goto :goto_f

    :cond_16
    const/16 v26, 0x10

    :goto_f
    or-int v16, v16, v26

    :cond_17
    and-int/lit16 v13, v6, 0x180

    if-nez v13, :cond_19

    move-object/from16 v13, p9

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v14, 0x100

    :cond_18
    or-int v16, v16, v14

    goto :goto_10

    :cond_19
    move-object/from16 v13, p9

    :goto_10
    and-int/lit16 v14, v6, 0xc00

    if-nez v14, :cond_1b

    move/from16 v14, p10

    invoke-virtual {v4, v14}, Lr0/q;->d(F)Z

    move-result v22

    if-eqz v22, :cond_1a

    move/from16 v17, v18

    :cond_1a
    or-int v16, v16, v17

    goto :goto_11

    :cond_1b
    move/from16 v14, p10

    :goto_11
    and-int/lit16 v10, v6, 0x6000

    if-nez v10, :cond_1d

    move-object/from16 v10, p11

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    move/from16 v19, v20

    :cond_1c
    or-int v16, v16, v19

    goto :goto_12

    :cond_1d
    move-object/from16 v10, p11

    :goto_12
    and-int v18, v6, v21

    if-nez v18, :cond_1f

    invoke-virtual {v4, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    move/from16 v23, v24

    :cond_1e
    or-int v16, v16, v23

    :cond_1f
    const v18, 0x12492493

    move-object/from16 v19, v12

    and-int v12, v7, v18

    const v1, 0x12492492

    const/16 v18, 0x1

    const/4 v15, 0x0

    if-ne v12, v1, :cond_21

    const v1, 0x12493

    and-int v1, v16, v1

    const v12, 0x12492

    if-eq v1, v12, :cond_20

    goto :goto_13

    :cond_20
    move v1, v15

    goto :goto_14

    :cond_21
    :goto_13
    move/from16 v1, v18

    :goto_14
    and-int/lit8 v12, v7, 0x1

    invoke-virtual {v4, v12, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_38

    const v1, 0x45d2e3b    # 2.5999653E-36f

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-ne v1, v12, :cond_22

    new-instance v1, Ls/i;

    invoke-direct {v1}, Ls/i;-><init>()V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_22
    check-cast v1, Ls/i;

    invoke-virtual {v4, v15}, Lr0/q;->q(Z)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v12, :cond_23

    new-instance v15, Ln/p1;

    const/16 v5, 0x8

    invoke-direct {v15, v5}, Ln/p1;-><init>(I)V

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_23
    check-cast v15, Li9/c;

    const/4 v5, 0x0

    invoke-static {v8, v5, v15}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v21

    if-nez v2, :cond_25

    if-eqz p0, :cond_24

    iget-wide v5, v0, Lo0/n3;->j:J

    :goto_15
    move-wide/from16 v22, v5

    goto :goto_16

    :cond_24
    iget-wide v5, v0, Lo0/n3;->e:J

    goto :goto_15

    :cond_25
    if-nez p0, :cond_26

    iget-wide v5, v0, Lo0/n3;->a:J

    goto :goto_15

    :cond_26
    iget-wide v5, v0, Lo0/n3;->i:J

    goto :goto_15

    :goto_16
    if-nez v3, :cond_27

    const v5, 0x461fef6

    invoke-virtual {v4, v5}, Lr0/q;->b0(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    move-object/from16 v26, v1

    move/from16 v27, v7

    move-object/from16 v12, v19

    goto/16 :goto_1e

    :cond_27
    const/4 v5, 0x0

    const v6, -0x31683195

    invoke-virtual {v4, v6}, Lr0/q;->b0(I)V

    shr-int/lit8 v6, v7, 0x9

    and-int/lit8 v6, v6, 0xe

    shl-int/lit8 v15, v16, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v6, v15

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v12, :cond_28

    new-instance v15, Ld1/v;

    invoke-direct {v15}, Ld1/v;-><init>()V

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_28
    check-cast v15, Ld1/v;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v12, :cond_29

    invoke-static/range {v19 .. v19}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_29
    check-cast v5, Lr0/u0;

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v24, :cond_2b

    if-ne v0, v12, :cond_2a

    goto :goto_17

    :cond_2a
    move-object/from16 v24, v5

    move/from16 v25, v6

    goto :goto_18

    :cond_2b
    :goto_17
    new-instance v0, Lo0/s;

    move-object/from16 v24, v5

    const/4 v5, 0x2

    move/from16 v25, v6

    move-object/from16 v6, v19

    invoke-direct {v0, v1, v15, v6, v5}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_18
    check-cast v0, Li9/e;

    invoke-static {v0, v1, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v15}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/h;

    if-nez v2, :cond_2c

    iget v5, v3, Lo0/o3;->f:F

    goto :goto_19

    :cond_2c
    instance-of v5, v0, Ls/k;

    if-eqz v5, :cond_2d

    iget v5, v3, Lo0/o3;->b:F

    goto :goto_19

    :cond_2d
    instance-of v5, v0, Ls/f;

    if-eqz v5, :cond_2e

    iget v5, v3, Lo0/o3;->d:F

    goto :goto_19

    :cond_2e
    instance-of v5, v0, Ls/d;

    if-eqz v5, :cond_2f

    iget v5, v3, Lo0/o3;->c:F

    goto :goto_19

    :cond_2f
    instance-of v5, v0, Ls/b;

    if-eqz v5, :cond_30

    iget v5, v3, Lo0/o3;->e:F

    goto :goto_19

    :cond_30
    iget v5, v3, Lo0/o3;->a:F

    :goto_19
    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_31

    new-instance v6, Ln/c;

    new-instance v15, Lb3/f;

    invoke-direct {v15, v5}, Lb3/f;-><init>(F)V

    move-object/from16 v26, v1

    sget-object v1, Ln/d;->l:Ln/o1;

    const/16 v3, 0xc

    move/from16 v27, v7

    const/4 v7, 0x0

    invoke-direct {v6, v15, v1, v7, v3}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_31
    move-object/from16 v26, v1

    move/from16 v27, v7

    :goto_1a
    check-cast v6, Ln/c;

    new-instance v1, Lb3/f;

    invoke-direct {v1, v5}, Lb3/f;-><init>(F)V

    invoke-virtual {v4, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v5}, Lr0/q;->d(F)Z

    move-result v7

    or-int/2addr v3, v7

    and-int/lit8 v7, v25, 0xe

    xor-int/lit8 v7, v7, 0x6

    const/4 v15, 0x4

    if-le v7, v15, :cond_32

    invoke-virtual {v4, v2}, Lr0/q;->h(Z)Z

    move-result v7

    if-nez v7, :cond_34

    :cond_32
    and-int/lit8 v7, v25, 0x6

    if-ne v7, v15, :cond_33

    goto :goto_1b

    :cond_33
    const/16 v18, 0x0

    :cond_34
    :goto_1b
    or-int v3, v3, v18

    invoke-virtual {v4, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_36

    if-ne v7, v12, :cond_35

    goto :goto_1c

    :cond_35
    move-object v10, v6

    const/4 v5, 0x0

    goto :goto_1d

    :cond_36
    :goto_1c
    new-instance v9, Lo0/t;

    const/4 v15, 0x0

    move-object v13, v0

    move v12, v2

    move v11, v5

    move-object v10, v6

    move-object/from16 v14, v24

    const/4 v5, 0x0

    invoke-direct/range {v9 .. v15}, Lo0/t;-><init>(Ln/c;FZLs/h;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v7, v9

    :goto_1d
    check-cast v7, Li9/e;

    invoke-static {v7, v1, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v12, v10, Ln/c;->c:Ln/k;

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    :goto_1e
    if-eqz v12, :cond_37

    iget-object v0, v12, Ln/k;->m:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/f;

    iget v0, v0, Lb3/f;->l:F

    :goto_1f
    move v9, v0

    goto :goto_20

    :cond_37
    int-to-float v0, v5

    goto :goto_1f

    :goto_20
    new-instance v0, Lo0/q0;

    move/from16 v3, p0

    move/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v1, p7

    move/from16 v6, p10

    move-object/from16 v7, p11

    move-object v13, v4

    move/from16 v10, v27

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lo0/q0;-><init>(Lo0/n3;ZZLz0/d;Lp2/m0;FLu/s0;)V

    const v1, -0x3b02f76a

    invoke-static {v1, v0, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v12

    and-int/lit8 v0, v10, 0xe

    shr-int/lit8 v1, v10, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0xf

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v16, 0x15

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v14, v0, v1

    const/16 v15, 0xc0

    const-wide/16 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v10, p9

    move-object/from16 v2, v21

    move-wide/from16 v5, v22

    move-object/from16 v11, v26

    invoke-static/range {v0 .. v15}, Lo0/t4;->b(ZLi9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V

    goto :goto_21

    :cond_38
    invoke-virtual/range {p12 .. p12}, Lr0/q;->W()V

    :goto_21
    invoke-virtual/range {p12 .. p12}, Lr0/q;->u()Lr0/n1;

    move-result-object v15

    if-eqz v15, :cond_39

    new-instance v0, Lo0/n0;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lo0/n0;-><init>(ZLf1/r;Li9/a;ZLz0/d;Lp2/m0;Lm1/h0;Lo0/n3;Lo0/o3;Lp/x;FLu/s0;II)V

    iput-object v0, v15, Lr0/n1;->d:Li9/e;

    :cond_39
    return-void
.end method
