.class public abstract Lo0/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    int-to-float v0, v0

    sput v0, Lo0/u1;->a:F

    sput v0, Lo0/u1;->b:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Lo0/u1;->c:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Lo0/u1;->d:F

    const/16 v0, 0x70

    int-to-float v0, v0

    sput v0, Lo0/u1;->e:F

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Lo0/u1;->f:F

    return-void
.end method

.method public static final a(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;Lr0/q;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p3

    move-object/from16 v10, p9

    move-object/from16 v2, p10

    const v3, 0x329a8275

    invoke-virtual {v2, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v2, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p11, v3

    invoke-virtual {v2, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v3, v6

    invoke-virtual {v2, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x800

    goto :goto_2

    :cond_2
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v3, v6

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x4000

    goto :goto_3

    :cond_3
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v3, v6

    move-wide/from16 v11, p5

    invoke-virtual {v2, v11, v12}, Lr0/q;->f(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v6, 0x10000

    :goto_4
    or-int/2addr v3, v6

    move/from16 v9, p7

    invoke-virtual {v2, v9}, Lr0/q;->d(F)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v6, 0x80000

    :goto_5
    or-int/2addr v3, v6

    move/from16 v6, p8

    invoke-virtual {v2, v6}, Lr0/q;->d(F)Z

    move-result v13

    if-eqz v13, :cond_6

    const/high16 v13, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v13, 0x400000

    :goto_6
    or-int/2addr v3, v13

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/high16 v14, 0x4000000

    goto :goto_7

    :cond_7
    const/high16 v14, 0x2000000

    :goto_7
    or-int/2addr v3, v14

    invoke-virtual {v2, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/high16 v14, 0x20000000

    goto :goto_8

    :cond_8
    const/high16 v14, 0x10000000

    :goto_8
    or-int v18, v3, v14

    const v3, 0x12492493

    and-int v3, v18, v3

    const v14, 0x12492492

    const/16 v19, 0x1

    if-eq v3, v14, :cond_9

    move/from16 v3, v19

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    and-int/lit8 v14, v18, 0x1

    invoke-virtual {v2, v14, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "DropDownMenu"

    shr-int/lit8 v14, v18, 0x3

    and-int/lit8 v14, v14, 0xe

    const/16 v16, 0x30

    or-int v14, v16, v14

    sget v16, Ln/m1;->a:I

    and-int/lit8 v16, v14, 0xe

    xor-int/lit8 v13, v16, 0x6

    if-le v13, v5, :cond_a

    invoke-virtual {v2, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    :cond_a
    and-int/lit8 v13, v14, 0x6

    if-ne v13, v5, :cond_c

    :cond_b
    move/from16 v5, v19

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-nez v5, :cond_d

    if-ne v13, v14, :cond_f

    :cond_d
    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v5

    const/4 v13, 0x0

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ld1/g;->e()Li9/c;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_b

    :cond_e
    move-object v7, v13

    :goto_b
    invoke-static {v5}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v15

    :try_start_0
    new-instance v6, Ln/h1;

    invoke-direct {v6, v4, v13, v3}, Ln/h1;-><init>(Ln/i0;Ln/h1;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v15, v7}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    invoke-virtual {v2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v13, v6

    :cond_f
    check-cast v13, Ln/h1;

    const v3, -0x50e46740

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    iget-object v3, v4, Ln/i0;->c:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v2, v5}, Ln/h1;->a(Ljava/lang/Object;Lr0/q;I)V

    iget-object v3, v13, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v2, v5}, Lr0/q;->q(Z)V

    invoke-virtual {v2, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_10

    if-ne v7, v14, :cond_11

    :cond_10
    new-instance v7, Ln/i1;

    invoke-direct {v7, v13, v5}, Ln/i1;-><init>(Ln/h1;I)V

    invoke-virtual {v2, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v7, Li9/c;

    invoke-static {v13, v7, v2}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    sget-object v5, Lq0/q;->m:Lq0/q;

    invoke-static {v5, v2}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v5

    sget-object v6, Lq0/q;->o:Lq0/q;

    invoke-static {v6, v2}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v6

    sget-object v15, Ln/d;->j:Ln/o1;

    invoke-virtual {v13}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v21, v3

    const v3, 0x894b891

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    const v22, 0x3f4ccccd    # 0.8f

    const/high16 v23, 0x3f800000    # 1.0f

    if-eqz v7, :cond_12

    move/from16 v7, v23

    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_12
    move/from16 v7, v22

    goto :goto_c

    :goto_d
    invoke-virtual {v2, v3}, Lr0/q;->q(Z)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    const v3, 0x894b891

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    if-eqz v24, :cond_13

    move/from16 v22, v23

    :cond_13
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lr0/q;->q(Z)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual {v13}, Ln/h1;->f()Ln/c1;

    const v4, -0x2c766954

    invoke-virtual {v2, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v3}, Lr0/q;->q(Z)V

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v12, v7

    move-object v11, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v2

    move/from16 v2, v19

    move-object/from16 v19, v4

    move-object v4, v14

    move-object v14, v5

    invoke-static/range {v11 .. v17}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v5

    move-object/from16 v7, v16

    invoke-virtual {v11}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const v13, 0x353675a5

    invoke-virtual {v7, v13}, Lr0/q;->b0(I)V

    const/4 v14, 0x0

    if-eqz v12, :cond_14

    move/from16 v12, v23

    goto :goto_e

    :cond_14
    move v12, v14

    :goto_e
    invoke-virtual {v7, v3}, Lr0/q;->q(Z)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual/range {v21 .. v21}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual {v7, v13}, Lr0/q;->b0(I)V

    if-eqz v16, :cond_15

    goto :goto_f

    :cond_15
    move/from16 v23, v14

    :goto_f
    invoke-virtual {v7, v3}, Lr0/q;->q(Z)V

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11}, Ln/h1;->f()Ln/c1;

    const v14, 0x2b53c0

    invoke-virtual {v7, v14}, Lr0/q;->b0(I)V

    invoke-virtual {v7, v3}, Lr0/q;->q(Z)V

    move-object v14, v6

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v17}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v7

    move-object/from16 v11, v16

    sget-object v6, Lf2/w1;->a:Lr0/s2;

    invoke-virtual {v11, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v11, v6}, Lr0/q;->h(Z)Z

    move-result v12

    invoke-virtual {v11, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    and-int/lit8 v13, v18, 0x70

    const/16 v14, 0x20

    if-eq v13, v14, :cond_16

    move v2, v3

    :cond_16
    or-int/2addr v2, v12

    invoke-virtual {v11, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    if-ne v3, v4, :cond_18

    :cond_17
    new-instance v2, Lb0/i0;

    move-object/from16 v4, p1

    move v3, v6

    move-object v6, v5

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lb0/i0;-><init>(ZLn/i0;Lr0/u0;Ln/d1;Ln/d1;)V

    invoke-virtual {v11, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_18
    check-cast v3, Li9/c;

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v3}, Lm1/v;->o(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v2

    new-instance v3, Lo0/s1;

    invoke-direct {v3, v1, v0, v10}, Lo0/s1;-><init>(Lf1/r;Lp/a2;Lz0/d;)V

    const v4, -0x5739c786

    invoke-static {v4, v3, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v20

    shr-int/lit8 v3, v18, 0x9

    and-int/lit8 v4, v3, 0x70

    const/high16 v5, 0xc00000

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v4, v18, 0x6

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int v22, v3, v4

    const/16 v23, 0x8

    const-wide/16 v15, 0x0

    move-wide/from16 v13, p5

    move/from16 v18, p8

    move-object v12, v8

    move/from16 v17, v9

    move-object/from16 v21, v11

    move-object v11, v2

    invoke-static/range {v11 .. v23}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_10

    :catchall_0
    move-exception v0

    invoke-static {v5, v15, v7}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw v0

    :cond_19
    invoke-virtual/range {p10 .. p10}, Lr0/q;->W()V

    :goto_10
    invoke-virtual/range {p10 .. p10}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_1a

    new-instance v0, Lo0/r1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lo0/r1;-><init>(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;I)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_1a
    return-void
.end method

.method public static final b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V
    .locals 8

    const v0, -0x4efcd6dc

    invoke-virtual {p6, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p7, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p6, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p7

    goto :goto_1

    :cond_1
    move v0, p7

    :goto_1
    and-int/lit8 v1, p7, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p6, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p7, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p6, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p7, 0xc00

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-virtual {p6, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, p7, 0x6000

    if-nez v1, :cond_9

    invoke-virtual {p6, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_5

    :cond_8
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x30000

    and-int/2addr v1, p7

    if-nez v1, :cond_b

    invoke-virtual {p6, p3}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v1, 0x10000

    :goto_6
    or-int/2addr v0, v1

    :cond_b
    const/high16 v1, 0x180000

    and-int/2addr v1, p7

    if-nez v1, :cond_d

    invoke-virtual {p6, p4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/high16 v1, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v1, 0x80000

    :goto_7
    or-int/2addr v0, v1

    :cond_d
    const/high16 v1, 0xc00000

    and-int/2addr v1, p7

    if-nez v1, :cond_f

    invoke-virtual {p6, p5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/high16 v1, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v1, 0x400000

    :goto_8
    or-int/2addr v0, v1

    :cond_f
    const/high16 v1, 0x6000000

    and-int/2addr v1, p7

    if-nez v1, :cond_11

    invoke-virtual {p6, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v1, 0x2000000

    :goto_9
    or-int/2addr v0, v1

    :cond_11
    const v1, 0x2492493

    and-int/2addr v1, v0

    const v3, 0x2492492

    const/4 v4, 0x1

    if-eq v1, v3, :cond_12

    move v1, v4

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    and-int/2addr v0, v4

    invoke-virtual {p6, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v1, v0, v4}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v0

    invoke-static {p2, v2, v0, p3, p1}, Lp/o;->j(Lf1/r;Ls/i;Lo0/b3;ZLi9/a;)Lf1/r;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    sget v1, Lo0/u1;->f:F

    const/16 v2, 0x8

    sget v3, Lo0/u1;->e:F

    invoke-static {v0, v3, v1, v2}, Lu/b1;->o(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    invoke-static {v0, p5}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object v0

    sget-object v1, Lf1/c;->v:Lf1/i;

    sget-object v2, Lu/h;->a:Lu/n;

    const/16 v3, 0x30

    invoke-static {v2, v1, p6, v3}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v5, p6, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {p6}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v0, p6}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {p6}, Lr0/q;->e0()V

    iget-boolean v7, p6, Lr0/q;->S:Z

    if-eqz v7, :cond_13

    invoke-virtual {p6, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_b

    :cond_13
    invoke-virtual {p6}, Lr0/q;->o0()V

    :goto_b
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v1, p6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v5, p6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->g:Le2/e;

    iget-boolean v5, p6, Lr0/q;->S:Z

    if-nez v5, :cond_14

    invoke-virtual {p6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    :cond_14
    invoke-static {v2, p6, v2, v1}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_15
    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v0, p6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {p6, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->m:Lp2/m0;

    new-instance v1, Lo0/t1;

    invoke-direct {v1, p4, p3, p0}, Lo0/t1;-><init>(Lo0/q1;ZLz0/d;)V

    const v2, 0x339e1c39

    invoke-static {v2, v1, p6}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    invoke-static {v0, v1, p6, v3}, Lo0/d5;->a(Lp2/m0;Lz0/d;Lr0/q;I)V

    invoke-virtual {p6, v4}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_16
    invoke-virtual {p6}, Lr0/q;->W()V

    :goto_c
    invoke-virtual {p6}, Lr0/q;->u()Lr0/n1;

    move-result-object p6

    if-eqz p6, :cond_17

    new-instance v0, Lo0/i0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lo0/i0;-><init>(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;I)V

    iput-object v0, p6, Lr0/n1;->d:Li9/e;

    :cond_17
    return-void
.end method
