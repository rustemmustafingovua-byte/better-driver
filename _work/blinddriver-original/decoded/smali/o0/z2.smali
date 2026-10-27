.class public abstract Lo0/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/z2;->a:Ln0/b;

    return-void
.end method

.method public static final a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V
    .locals 22

    move-object/from16 v0, p17

    move/from16 v1, p18

    const v2, 0x5a1a0b7

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move v3, v1

    :goto_1
    and-int/lit8 v4, v1, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    goto :goto_3

    :cond_3
    move-object/from16 v4, p1

    :goto_3
    or-int/lit16 v5, v3, 0x180

    and-int/lit8 v6, p19, 0x8

    if-eqz v6, :cond_5

    or-int/lit16 v5, v3, 0xd80

    :cond_4
    move-object/from16 v3, p3

    goto :goto_5

    :cond_5
    and-int/lit16 v3, v1, 0xc00

    if-nez v3, :cond_4

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v5, v7

    :goto_5
    or-int/lit16 v5, v5, 0x6000

    const/high16 v7, 0x30000

    and-int/2addr v7, v1

    if-nez v7, :cond_8

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_7
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v5, v8

    goto :goto_7

    :cond_8
    move-object/from16 v7, p4

    :goto_7
    const/high16 v8, 0x180000

    and-int/2addr v8, v1

    if-nez v8, :cond_a

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x100000

    goto :goto_8

    :cond_9
    const/high16 v9, 0x80000

    :goto_8
    or-int/2addr v5, v9

    goto :goto_9

    :cond_a
    move-object/from16 v8, p5

    :goto_9
    const/high16 v9, 0xc00000

    and-int/2addr v9, v1

    if-nez v9, :cond_b

    const/high16 v9, 0x400000

    or-int/2addr v5, v9

    :cond_b
    const/high16 v9, 0x6000000

    and-int/2addr v9, v1

    if-nez v9, :cond_c

    const/high16 v9, 0x2000000

    or-int/2addr v5, v9

    :cond_c
    const/high16 v9, 0x30000000

    and-int/2addr v9, v1

    if-nez v9, :cond_d

    const/high16 v9, 0x10000000

    or-int/2addr v5, v9

    :cond_d
    const v9, 0x12492493

    and-int/2addr v9, v5

    const v10, 0x12492492

    if-ne v9, v10, :cond_e

    const/4 v9, 0x0

    goto :goto_a

    :cond_e
    const/4 v9, 0x1

    :goto_a
    and-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v10, v9}, Lr0/q;->T(IZ)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v9, v1, 0x1

    const v10, -0x7fc00001

    if-eqz v9, :cond_10

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int/2addr v5, v10

    move-object/from16 v19, p2

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move-object/from16 v16, p16

    goto :goto_c

    :cond_10
    :goto_b
    if-eqz v6, :cond_11

    const/4 v3, 0x0

    :cond_11
    sget v6, Lo0/a;->a:F

    sget-object v6, Lq0/h;->d:Lq0/y;

    invoke-static {v6, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v6

    sget-object v9, Lq0/h;->c:Lq0/g;

    invoke-static {v9, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v11

    sget-object v9, Lq0/h;->i:Lq0/g;

    invoke-static {v9, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v13

    and-int/2addr v5, v10

    sget-object v9, Lq0/h;->e:Lq0/g;

    invoke-static {v9, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v9

    sget-object v15, Lq0/h;->g:Lq0/g;

    invoke-static {v15, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v15

    sget v17, Lo0/a;->a:F

    new-instance v18, Lf3/u;

    invoke-direct/range {v18 .. v18}, Lf3/u;-><init>()V

    sget-object v19, Lf1/o;->a:Lf1/o;

    move-wide v7, v11

    move-wide v11, v9

    move-wide v9, v13

    move-wide v13, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    :goto_c
    invoke-virtual {v0}, Lr0/q;->r()V

    const v17, 0x7ffffffe

    and-int v18, v5, v17

    move-object/from16 v2, v19

    const/16 v19, 0xd80

    move-object/from16 v5, p5

    move-object/from16 v17, v0

    move-object v1, v4

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v19}, Lo0/j;->c(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object v4, v3

    move-object/from16 v17, v16

    move-object v3, v2

    move/from16 v16, v15

    move-wide v14, v13

    move-wide v12, v11

    move-wide v10, v9

    move-wide v8, v7

    move-object v7, v6

    goto :goto_d

    :cond_12
    invoke-virtual/range {p17 .. p17}, Lr0/q;->W()V

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object v4, v3

    move-object/from16 v3, p2

    :goto_d
    invoke-virtual/range {p17 .. p17}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object v1, v0

    new-instance v0, Lo0/b;

    const/16 v20, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Lo0/b;-><init>(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;III)V

    move-object/from16 v1, v21

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_13
    return-void
.end method

.method public static final b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V
    .locals 25

    move-object/from16 v12, p9

    move/from16 v15, p10

    move/from16 v0, p11

    const v1, -0x4e1540b0

    invoke-virtual {v12, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v3, v15

    :goto_1
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    :cond_2
    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_2

    move-object/from16 v5, p1

    invoke-virtual {v12, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    :cond_5
    move/from16 v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_5

    move/from16 v8, p2

    invoke-virtual {v12, v8}, Lr0/q;->h(Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit16 v9, v15, 0xc00

    if-nez v9, :cond_a

    and-int/lit8 v9, v0, 0x8

    if-nez v9, :cond_8

    move-object/from16 v9, p3

    invoke-virtual {v12, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x800

    goto :goto_6

    :cond_8
    move-object/from16 v9, p3

    :cond_9
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v3, v10

    goto :goto_7

    :cond_a
    move-object/from16 v9, p3

    :goto_7
    and-int/lit16 v10, v15, 0x6000

    if-nez v10, :cond_d

    and-int/lit8 v10, v0, 0x10

    if-nez v10, :cond_b

    move-object/from16 v10, p4

    invoke-virtual {v12, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x4000

    goto :goto_8

    :cond_b
    move-object/from16 v10, p4

    :cond_c
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v3, v11

    goto :goto_9

    :cond_d
    move-object/from16 v10, p4

    :goto_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v15

    if-nez v11, :cond_10

    and-int/lit8 v11, v0, 0x20

    if-nez v11, :cond_e

    move-object/from16 v11, p5

    invoke-virtual {v12, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_e
    move-object/from16 v11, p5

    :cond_f
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v3, v13

    goto :goto_b

    :cond_10
    move-object/from16 v11, p5

    :goto_b
    and-int/lit8 v13, v0, 0x40

    const/high16 v14, 0x180000

    if-eqz v13, :cond_12

    or-int/2addr v3, v14

    :cond_11
    move-object/from16 v14, p6

    goto :goto_d

    :cond_12
    and-int/2addr v14, v15

    if-nez v14, :cond_11

    move-object/from16 v14, p6

    invoke-virtual {v12, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :goto_d
    and-int/lit16 v7, v0, 0x80

    const/high16 v17, 0xc00000

    if-eqz v7, :cond_14

    or-int v3, v3, v17

    move-object/from16 v2, p7

    goto :goto_f

    :cond_14
    and-int v17, v15, v17

    move-object/from16 v2, p7

    if-nez v17, :cond_16

    invoke-virtual {v12, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v18, 0x400000

    :goto_e
    or-int v3, v3, v18

    :cond_16
    :goto_f
    and-int/lit16 v1, v0, 0x100

    const/4 v0, 0x0

    const/high16 v18, 0x6000000

    if-eqz v1, :cond_17

    or-int v3, v3, v18

    goto :goto_11

    :cond_17
    and-int v1, v15, v18

    if-nez v1, :cond_19

    invoke-virtual {v12, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v1, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v1, 0x2000000

    :goto_10
    or-int/2addr v3, v1

    :cond_19
    :goto_11
    const/high16 v1, 0x30000000

    and-int/2addr v1, v15

    if-nez v1, :cond_1b

    move-object/from16 v1, p8

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v18, 0x10000000

    :goto_12
    or-int v3, v3, v18

    goto :goto_13

    :cond_1b
    move-object/from16 v1, p8

    :goto_13
    const v18, 0x12492493

    and-int v0, v3, v18

    const v1, 0x12492492

    const/4 v2, 0x0

    const/16 v18, 0x1

    if-eq v0, v1, :cond_1c

    move/from16 v0, v18

    goto :goto_14

    :cond_1c
    move v0, v2

    :goto_14
    and-int/lit8 v1, v3, 0x1

    invoke-virtual {v12, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v12}, Lr0/q;->Y()V

    and-int/lit8 v0, v15, 0x1

    const v1, -0x70001

    const v19, -0xe001

    if-eqz v0, :cond_21

    invoke-virtual {v12}, Lr0/q;->C()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v12}, Lr0/q;->W()V

    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_1e

    and-int/lit16 v3, v3, -0x1c01

    :cond_1e
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_1f

    and-int v3, v3, v19

    :cond_1f
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_20

    and-int/2addr v3, v1

    :cond_20
    move-object/from16 v13, p7

    move-object v0, v5

    move v6, v8

    move-object v1, v9

    move-object v7, v11

    move-object v11, v10

    goto :goto_18

    :cond_21
    :goto_15
    if-eqz v4, :cond_22

    sget-object v0, Lf1/o;->a:Lf1/o;

    move-object v5, v0

    :cond_22
    if-eqz v6, :cond_23

    move/from16 v8, v18

    :cond_23
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_24

    sget-object v0, Lo0/q;->a:Lu/s0;

    sget-object v0, Lq0/b;->b:Lq0/y;

    invoke-static {v0, v12}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v0

    and-int/lit16 v3, v3, -0x1c01

    move-object v9, v0

    :cond_24
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_25

    sget-object v0, Lo0/q;->a:Lu/s0;

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    invoke-static {v0}, Lo0/q;->b(Lo0/u0;)Lo0/p;

    move-result-object v0

    and-int v3, v3, v19

    move-object v10, v0

    :cond_25
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_26

    sget-object v0, Lo0/q;->a:Lu/s0;

    sget v20, Lq0/k;->b:F

    sget v21, Lq0/k;->k:F

    sget v22, Lq0/k;->h:F

    sget v23, Lq0/k;->i:F

    sget v24, Lq0/k;->d:F

    new-instance v19, Lo0/u;

    invoke-direct/range {v19 .. v24}, Lo0/u;-><init>(FFFFF)V

    and-int v0, v3, v1

    move v3, v0

    goto :goto_16

    :cond_26
    move-object/from16 v19, v11

    :goto_16
    if-eqz v13, :cond_27

    const/4 v14, 0x0

    :cond_27
    if-eqz v7, :cond_28

    sget-object v0, Lo0/q;->a:Lu/s0;

    goto :goto_17

    :cond_28
    move-object/from16 v0, p7

    :goto_17
    move-object v13, v0

    move-object v0, v5

    move v6, v8

    move-object v1, v9

    move-object v11, v10

    move-object/from16 v7, v19

    :goto_18
    invoke-virtual {v12}, Lr0/q;->r()V

    const v4, 0x64d5e04b

    invoke-virtual {v12, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-ne v4, v5, :cond_29

    new-instance v4, Ls/i;

    invoke-direct {v4}, Ls/i;-><init>()V

    invoke-virtual {v12, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_29
    check-cast v4, Ls/i;

    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    if-eqz v6, :cond_2a

    iget-wide v8, v11, Lo0/p;->a:J

    :goto_19
    move-wide/from16 v19, v8

    goto :goto_1a

    :cond_2a
    iget-wide v8, v11, Lo0/p;->c:J

    goto :goto_19

    :goto_1a
    if-eqz v6, :cond_2b

    iget-wide v8, v11, Lo0/p;->b:J

    :goto_1b
    move-wide/from16 v21, v8

    goto :goto_1c

    :cond_2b
    iget-wide v8, v11, Lo0/p;->d:J

    goto :goto_1b

    :goto_1c
    if-nez v7, :cond_2c

    const v8, 0x64d8ada6

    invoke-virtual {v12, v8}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    move-object/from16 p7, v1

    move v1, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v24, v11

    const/4 v3, 0x0

    move v4, v2

    move-object v2, v5

    goto/16 :goto_25

    :cond_2c
    const v8, -0x1dc77645

    invoke-virtual {v12, v8}, Lr0/q;->b0(I)V

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0xe

    shr-int/lit8 v9, v3, 0x9

    and-int/lit16 v9, v9, 0x380

    or-int/2addr v8, v9

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_2d

    new-instance v9, Ld1/v;

    invoke-direct {v9}, Ld1/v;-><init>()V

    invoke-virtual {v12, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2d
    check-cast v9, Ld1/v;

    invoke-virtual {v12, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_2f

    if-ne v2, v5, :cond_2e

    goto :goto_1d

    :cond_2e
    move-object/from16 p7, v1

    goto :goto_1e

    :cond_2f
    :goto_1d
    new-instance v2, Lo0/s;

    move-object/from16 p7, v1

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v4, v9, v10, v1}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    invoke-virtual {v12, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_1e
    check-cast v2, Li9/e;

    invoke-static {v2, v4, v12}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/h;

    if-nez v6, :cond_30

    iget v2, v7, Lo0/u;->e:F

    goto :goto_1f

    :cond_30
    instance-of v2, v1, Ls/k;

    if-eqz v2, :cond_31

    iget v2, v7, Lo0/u;->b:F

    goto :goto_1f

    :cond_31
    instance-of v2, v1, Ls/f;

    if-eqz v2, :cond_32

    iget v2, v7, Lo0/u;->d:F

    goto :goto_1f

    :cond_32
    instance-of v2, v1, Ls/d;

    if-eqz v2, :cond_33

    iget v2, v7, Lo0/u;->c:F

    goto :goto_1f

    :cond_33
    iget v2, v7, Lo0/u;->a:F

    :goto_1f
    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_34

    new-instance v9, Ln/c;

    new-instance v10, Lb3/f;

    invoke-direct {v10, v2}, Lb3/f;-><init>(F)V

    move/from16 p1, v3

    sget-object v3, Ln/d;->l:Ln/o1;

    move-object/from16 p2, v4

    const/16 v4, 0xc

    move-object/from16 v24, v11

    const/4 v11, 0x0

    invoke-direct {v9, v10, v3, v11, v4}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V

    invoke-virtual {v12, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_20

    :cond_34
    move/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 v24, v11

    :goto_20
    move-object v4, v9

    check-cast v4, Ln/c;

    new-instance v11, Lb3/f;

    invoke-direct {v11, v2}, Lb3/f;-><init>(F)V

    invoke-virtual {v12, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12, v2}, Lr0/q;->d(F)Z

    move-result v9

    or-int/2addr v3, v9

    and-int/lit8 v9, v8, 0xe

    xor-int/lit8 v9, v9, 0x6

    const/4 v10, 0x4

    if-le v9, v10, :cond_35

    invoke-virtual {v12, v6}, Lr0/q;->h(Z)Z

    move-result v9

    if-nez v9, :cond_36

    :cond_35
    and-int/lit8 v9, v8, 0x6

    if-ne v9, v10, :cond_37

    :cond_36
    move/from16 v9, v18

    goto :goto_21

    :cond_37
    const/4 v9, 0x0

    :goto_21
    or-int/2addr v3, v9

    and-int/lit16 v9, v8, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v10, 0x100

    if-le v9, v10, :cond_38

    invoke-virtual {v12, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    :cond_38
    and-int/lit16 v8, v8, 0x180

    if-ne v8, v10, :cond_39

    goto :goto_22

    :cond_39
    const/16 v18, 0x0

    :cond_3a
    :goto_22
    or-int v3, v3, v18

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_3c

    if-ne v8, v5, :cond_3b

    goto :goto_23

    :cond_3b
    move/from16 v1, p1

    move-object/from16 v16, p2

    move-object v2, v5

    move-object/from16 v17, v7

    goto :goto_24

    :cond_3c
    :goto_23
    new-instance v3, Lo0/t;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v5

    move v5, v2

    move-object v2, v8

    move-object/from16 v16, p2

    move-object v8, v1

    move/from16 v1, p1

    invoke-direct/range {v3 .. v10}, Lo0/t;-><init>(Ln/c;FZLjava/lang/Object;Ls/h;Ly8/c;I)V

    move-object/from16 v17, v7

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v8, v3

    :goto_24
    check-cast v8, Li9/e;

    invoke-static {v8, v11, v12}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v3, v4, Ln/c;->c:Ln/k;

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lr0/q;->q(Z)V

    :goto_25
    if-eqz v3, :cond_3d

    iget-object v3, v3, Ln/k;->m:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/f;

    iget v3, v3, Lb3/f;->l:F

    :goto_26
    move v8, v3

    goto :goto_27

    :cond_3d
    int-to-float v3, v4

    goto :goto_26

    :goto_27
    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3e

    new-instance v3, Ln/p1;

    const/4 v2, 0x7

    invoke-direct {v3, v2}, Ln/p1;-><init>(I)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3e
    check-cast v3, Li9/c;

    invoke-static {v0, v4, v3}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v2

    new-instance v3, Lo0/z;

    const/4 v4, 0x0

    move-object/from16 p5, p8

    move-object/from16 p1, v3

    move/from16 p6, v4

    move-object/from16 p4, v13

    move-wide/from16 p2, v21

    invoke-direct/range {p1 .. p6}, Lo0/z;-><init>(JLjava/lang/Object;Lt8/e;I)V

    move-object/from16 v4, p1

    move-object/from16 v18, p4

    move-object v3, v2

    move v2, v6

    move-wide/from16 v6, p2

    const v5, -0x1fed37a5

    invoke-static {v5, v4, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    and-int/lit16 v4, v1, 0x1f8e

    const/high16 v5, 0xe000000

    shl-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    or-int v13, v4, v1

    move-object v9, v14

    const/16 v14, 0x40

    move-object v1, v3

    move-object/from16 v10, v16

    move-wide/from16 v4, v19

    move-object/from16 v3, p7

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v14}, Lo0/t4;->c(Li9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V

    move v6, v2

    move-object v4, v3

    move v3, v6

    move-object v7, v9

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v24

    goto :goto_28

    :cond_3f
    invoke-virtual/range {p9 .. p9}, Lr0/q;->W()V

    move-object v2, v5

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v14

    move-object/from16 v8, p7

    :goto_28
    invoke-virtual/range {p9 .. p9}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_40

    new-instance v0, Lo0/v;

    move-object/from16 v1, p0

    move-object/from16 v9, p8

    move/from16 v11, p11

    move v10, v15

    invoke-direct/range {v0 .. v11}, Lo0/v;-><init>(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;II)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_40
    return-void
.end method

.method public static final c(Lf1/r;Lm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;II)V
    .locals 21

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    move/from16 v1, p6

    const v2, 0x510b47de

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v4, v1, 0x6

    move v6, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v6, v1

    :goto_1
    and-int/lit8 v7, v1, 0x30

    if-nez v7, :cond_3

    or-int/lit8 v6, v6, 0x10

    :cond_3
    and-int/lit16 v7, v1, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_2

    :cond_4
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v1, 0xc00

    if-nez v7, :cond_6

    or-int/lit16 v6, v6, 0x400

    :cond_6
    or-int/lit16 v6, v6, 0x6000

    const/high16 v7, 0x30000

    and-int/2addr v7, v1

    if-nez v7, :cond_8

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/high16 v7, 0x20000

    goto :goto_3

    :cond_7
    const/high16 v7, 0x10000

    :goto_3
    or-int/2addr v6, v7

    :cond_8
    const v7, 0x12493

    and-int/2addr v7, v6

    const v8, 0x12492

    const/4 v9, 0x1

    if-eq v7, v8, :cond_9

    move v7, v9

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    and-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int/lit16 v2, v6, -0x1c71

    move-object/from16 v7, p1

    move-object v6, v4

    move v4, v2

    move-object/from16 v2, p3

    goto :goto_7

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    sget-object v2, Lf1/o;->a:Lf1/o;

    goto :goto_6

    :cond_c
    move-object v2, v4

    :goto_6
    sget-object v4, Lq0/l;->c:Lq0/y;

    invoke-static {v4, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v4

    invoke-static {}, Lo0/z2;->i()Lo0/b0;

    move-result-object v7

    and-int/lit16 v6, v6, -0x1c71

    move/from16 v19, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v4

    move/from16 v4, v19

    :goto_7
    invoke-virtual {v0}, Lr0/q;->r()V

    iget-wide v10, v3, Lo0/a0;->a:J

    move-wide v12, v10

    iget-wide v10, v3, Lo0/a0;->b:J

    const/16 v8, 0x36

    const/4 v14, 0x0

    invoke-virtual {v2, v9, v14, v0, v8}, Lo0/b0;->a(ZLs/i;Lr0/q;I)Lr0/r2;

    move-result-object v8

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb3/f;

    iget v8, v8, Lb3/f;->l:F

    new-instance v9, Lo0/d0;

    const/4 v14, 0x0

    invoke-direct {v9, v5, v14}, Lo0/d0;-><init>(Lz0/d;I)V

    const v14, -0x5c9c6dd

    invoke-static {v14, v9, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v15

    and-int/lit8 v9, v4, 0xe

    const/high16 v14, 0xc00000

    or-int/2addr v9, v14

    const/high16 v14, 0x380000

    shl-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v14

    or-int v17, v9, v4

    const/16 v18, 0x10

    move-wide/from16 v19, v12

    move v13, v8

    move-wide/from16 v8, v19

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v6 .. v18}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v0, v2

    move-object v4, v6

    move-object v2, v7

    goto :goto_8

    :cond_d
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    :goto_8
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_e

    move-object v1, v4

    move-object v4, v0

    new-instance v0, Lo0/c0;

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lo0/c0;-><init>(Lf1/r;Lm1/h0;Lo0/a0;Lo0/b0;Lz0/d;II)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public static final d(Li9/a;Lf1/r;ZLm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;I)V
    .locals 24

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move/from16 v1, p8

    const v2, 0x7f51eb4d

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v1, 0x6

    move-object/from16 v8, p0

    if-nez v2, :cond_1

    invoke-virtual {v0, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v3, v1, 0x30

    move-object/from16 v9, p1

    if-nez v3, :cond_3

    invoke-virtual {v0, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    or-int/lit16 v3, v2, 0x180

    and-int/lit16 v4, v1, 0xc00

    if-nez v4, :cond_4

    or-int/lit16 v3, v2, 0x580

    :cond_4
    and-int/lit16 v2, v1, 0x6000

    if-nez v2, :cond_6

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4000

    goto :goto_3

    :cond_5
    const/16 v2, 0x2000

    :goto_3
    or-int/2addr v3, v2

    :cond_6
    const/high16 v2, 0x30000

    and-int/2addr v2, v1

    if-nez v2, :cond_7

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    :cond_7
    const/high16 v2, 0xd80000

    or-int/2addr v2, v3

    const/high16 v3, 0x6000000

    and-int/2addr v3, v1

    if-nez v3, :cond_9

    invoke-virtual {v0, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x4000000

    goto :goto_4

    :cond_8
    const/high16 v3, 0x2000000

    :goto_4
    or-int/2addr v2, v3

    :cond_9
    const v3, 0x2492493

    and-int/2addr v3, v2

    const v4, 0x2492492

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eq v3, v4, :cond_a

    move v3, v10

    goto :goto_5

    :cond_a
    move v3, v6

    :goto_5
    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v3, v1, 0x1

    const v4, -0x71c01

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int/2addr v2, v4

    move/from16 v10, p2

    move-object/from16 v11, p3

    move v3, v2

    move-object/from16 v2, p5

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v3, Lq0/l;->c:Lq0/y;

    invoke-static {v3, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v3

    invoke-static {}, Lo0/z2;->i()Lo0/b0;

    move-result-object v11

    and-int/2addr v2, v4

    move-object/from16 v23, v3

    move v3, v2

    move-object v2, v11

    move-object/from16 v11, v23

    :goto_7
    invoke-virtual {v0}, Lr0/q;->r()V

    const v4, 0x5e0c9d4e

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-ne v4, v12, :cond_d

    new-instance v4, Ls/i;

    invoke-direct {v4}, Ls/i;-><init>()V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v4, Ls/i;

    invoke-virtual {v0, v6}, Lr0/q;->q(Z)V

    if-eqz v10, :cond_e

    iget-wide v12, v5, Lo0/a0;->a:J

    goto :goto_8

    :cond_e
    iget-wide v12, v5, Lo0/a0;->c:J

    :goto_8
    if-eqz v10, :cond_f

    iget-wide v14, v5, Lo0/a0;->b:J

    goto :goto_9

    :cond_f
    iget-wide v14, v5, Lo0/a0;->d:J

    :goto_9
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0xe

    invoke-virtual {v2, v10, v4, v0, v6}, Lo0/b0;->a(ZLs/i;Lr0/q;I)Lr0/r2;

    move-result-object v6

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb3/f;

    iget v6, v6, Lb3/f;->l:F

    new-instance v1, Lo0/d0;

    move-object/from16 p2, v2

    const/4 v2, 0x1

    invoke-direct {v1, v7, v2}, Lo0/d0;-><init>(Lz0/d;I)V

    const v2, -0x5051b168

    invoke-static {v2, v1, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v19

    and-int/lit16 v1, v3, 0x1ffe

    const/high16 v2, 0xe000000

    shl-int/lit8 v3, v3, 0x6

    and-int/2addr v2, v3

    or-int v21, v1, v2

    const/16 v22, 0x40

    const/16 v17, 0x0

    move-object/from16 v20, v0

    move-object/from16 v18, v4

    move/from16 v16, v6

    invoke-static/range {v8 .. v22}, Lo0/t4;->c(Li9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V

    move-object/from16 v6, p2

    move v3, v10

    move-object v4, v11

    goto :goto_a

    :cond_10
    invoke-virtual/range {p7 .. p7}, Lr0/q;->W()V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    :goto_a
    invoke-virtual/range {p7 .. p7}, Lr0/q;->u()Lr0/n1;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v0, Lb0/m0;

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lb0/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v10, Lr0/n1;->d:Li9/e;

    :cond_11
    return-void
.end method

.method public static final e(FIJLf1/r;Lr0/q;)V
    .locals 10

    const v0, 0x47a9d25

    invoke-virtual {p5, v0}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit16 v0, p1, 0xb6

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

    invoke-virtual {p5, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p5}, Lr0/q;->Y()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lr0/q;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Lr0/q;->W()V

    goto :goto_2

    :cond_2
    :goto_1
    sget p0, Lo0/g1;->a:F

    sget-object p2, Lq0/i;->a:Lq0/g;

    invoke-static {p2, p5}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide p2

    sget-object p4, Lf1/o;->a:Lf1/o;

    :goto_2
    invoke-virtual {p5}, Lr0/q;->r()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, p0}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {p5, p2, p3}, Lr0/q;->f(J)Z

    move-result v1

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_4

    :cond_3
    new-instance v2, Lo0/h1;

    invoke-direct {v2, p0, p2, p3}, Lo0/h1;-><init>(FJ)V

    invoke-virtual {p5, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Li9/c;

    invoke-static {v3, v0, v2, p5}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    :goto_3
    move v6, p0

    move-wide v7, p2

    move-object v5, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p5}, Lr0/q;->W()V

    goto :goto_3

    :goto_4
    invoke-virtual {p5}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v4, Lo0/i1;

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lo0/i1;-><init>(Lf1/r;FJI)V

    iput-object v4, p0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V
    .locals 21

    move-object/from16 v9, p8

    move/from16 v12, p9

    move/from16 v13, p10

    const v0, 0x17d7208e

    invoke-virtual {v9, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v1, v12

    :goto_1
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    :cond_2
    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    invoke-virtual {v9, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    :cond_5
    move/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_5

    move/from16 v5, p2

    invoke-virtual {v9, v5}, Lr0/q;->h(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    :goto_5
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_8

    or-int/lit16 v1, v1, 0x400

    :cond_8
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_b

    and-int/lit8 v6, v13, 0x10

    if-nez v6, :cond_9

    move-object/from16 v6, p4

    invoke-virtual {v9, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x4000

    goto :goto_6

    :cond_9
    move-object/from16 v6, p4

    :cond_a
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p4

    :goto_7
    const/high16 v7, 0x30000

    or-int/2addr v7, v1

    const/high16 v8, 0x180000

    and-int/2addr v8, v12

    if-nez v8, :cond_c

    const/high16 v7, 0xb0000

    or-int/2addr v7, v1

    :cond_c
    and-int/lit16 v1, v13, 0x80

    const/high16 v8, 0xc00000

    if-eqz v1, :cond_e

    or-int/2addr v7, v8

    :cond_d
    move-object/from16 v8, p6

    goto :goto_9

    :cond_e
    and-int/2addr v8, v12

    if-nez v8, :cond_d

    move-object/from16 v8, p6

    invoke-virtual {v9, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/high16 v10, 0x800000

    goto :goto_8

    :cond_f
    const/high16 v10, 0x400000

    :goto_8
    or-int/2addr v7, v10

    :goto_9
    const/high16 v10, 0x6000000

    or-int/2addr v7, v10

    const/high16 v10, 0x30000000

    and-int/2addr v10, v12

    if-nez v10, :cond_11

    move-object/from16 v10, p7

    invoke-virtual {v9, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/high16 v11, 0x20000000

    goto :goto_a

    :cond_10
    const/high16 v11, 0x10000000

    :goto_a
    or-int/2addr v7, v11

    goto :goto_b

    :cond_11
    move-object/from16 v10, p7

    :goto_b
    const v11, 0x12492493

    and-int/2addr v11, v7

    const v14, 0x12492492

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eq v11, v14, :cond_12

    move/from16 v11, v16

    goto :goto_c

    :cond_12
    move v11, v15

    :goto_c
    and-int/lit8 v14, v7, 0x1

    invoke-virtual {v9, v14, v11}, Lr0/q;->T(IZ)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-virtual {v9}, Lr0/q;->Y()V

    and-int/lit8 v11, v12, 0x1

    const v14, -0xfc01

    const v17, -0x380001

    if-eqz v11, :cond_15

    invoke-virtual {v9}, Lr0/q;->C()Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {v9}, Lr0/q;->W()V

    and-int/lit16 v1, v7, -0x1c01

    and-int/lit8 v2, v13, 0x10

    if-eqz v2, :cond_14

    and-int v1, v7, v14

    :cond_14
    and-int v1, v1, v17

    move v0, v1

    move-object v1, v3

    move-object v4, v6

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move v2, v5

    move-object v7, v8

    goto/16 :goto_11

    :cond_15
    :goto_d
    if-eqz v2, :cond_16

    sget-object v2, Lf1/o;->a:Lf1/o;

    goto :goto_e

    :cond_16
    move-object v2, v3

    :goto_e
    if-eqz v4, :cond_17

    move/from16 v5, v16

    :cond_17
    sget-object v3, Lo0/q;->a:Lu/s0;

    sget-object v3, Lq0/b;->b:Lq0/y;

    invoke-static {v3, v9}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v3

    and-int/lit16 v4, v7, -0x1c01

    and-int/lit8 v11, v13, 0x10

    if-eqz v11, :cond_18

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v9, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    invoke-static {v4}, Lo0/q;->c(Lo0/u0;)Lo0/p;

    move-result-object v4

    and-int v6, v7, v14

    move/from16 v20, v6

    move-object v6, v4

    move/from16 v4, v20

    :cond_18
    sget v7, Lq0/b;->c:F

    if-eqz v5, :cond_19

    const v11, -0x6b2473e

    invoke-virtual {v9, v11}, Lr0/q;->b0(I)V

    sget-object v11, Lq0/s;->d:Lq0/g;

    invoke-static {v11, v9}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v18

    invoke-virtual {v9, v15}, Lr0/q;->q(Z)V

    move v14, v1

    :goto_f
    move-wide/from16 v0, v18

    goto :goto_10

    :cond_19
    const v11, -0x6b0f108

    invoke-virtual {v9, v11}, Lr0/q;->b0(I)V

    sget-object v11, Lq0/s;->d:Lq0/g;

    move v14, v1

    invoke-static {v11, v9}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v0

    const v11, 0x3dcccccd    # 0.1f

    invoke-static {v11, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v18

    invoke-virtual {v9, v15}, Lr0/q;->q(Z)V

    goto :goto_f

    :goto_10
    invoke-static {v7, v0, v1}, Lp/o;->a(FJ)Lp/x;

    move-result-object v0

    and-int v1, v4, v17

    if-eqz v14, :cond_1a

    sget-object v4, Lo0/q;->a:Lu/s0;

    move-object v8, v4

    :cond_1a
    move-object v4, v6

    move-object v6, v0

    move v0, v1

    move-object v1, v2

    move-object v7, v8

    move v2, v5

    :goto_11
    invoke-virtual {v9}, Lr0/q;->r()V

    const v5, 0x7ffffffe

    and-int/2addr v0, v5

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v8, v10

    move v10, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v11}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    goto :goto_12

    :cond_1b
    invoke-virtual/range {p8 .. p8}, Lr0/q;->W()V

    move-object/from16 v4, p3

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    move-object v7, v8

    move-object/from16 v6, p5

    :goto_12
    invoke-virtual/range {p8 .. p8}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_1c

    new-instance v0, Lo0/w;

    move-object/from16 v1, p0

    move-object/from16 v8, p7

    move v9, v12

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lo0/w;-><init>(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;II)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_1c
    return-void
.end method

.method public static final g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V
    .locals 22

    move-object/from16 v9, p7

    move/from16 v12, p9

    const v0, -0x3f43489d

    invoke-virtual {v9, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p8, 0x6

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p8

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    :cond_2
    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p8, 0x30

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    invoke-virtual {v9, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_5

    or-int/lit16 v1, v1, 0x180

    move/from16 v5, p2

    goto :goto_5

    :cond_5
    move/from16 v5, p2

    invoke-virtual {v9, v5}, Lr0/q;->h(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    :goto_5
    const v6, 0x1b2400

    or-int/2addr v6, v1

    and-int/lit16 v7, v12, 0x80

    if-eqz v7, :cond_8

    const v6, 0xdb2400

    or-int/2addr v6, v1

    :cond_7
    move-object/from16 v1, p5

    goto :goto_7

    :cond_8
    const/high16 v1, 0xc00000

    and-int v1, p8, v1

    if-nez v1, :cond_7

    move-object/from16 v1, p5

    invoke-virtual {v9, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/high16 v8, 0x800000

    goto :goto_6

    :cond_9
    const/high16 v8, 0x400000

    :goto_6
    or-int/2addr v6, v8

    :goto_7
    const/high16 v8, 0x6000000

    or-int/2addr v6, v8

    const v8, 0x12492493

    and-int/2addr v8, v6

    const v10, 0x12492492

    const/4 v11, 0x1

    if-eq v8, v10, :cond_a

    move v8, v11

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    and-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10, v8}, Lr0/q;->T(IZ)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v9}, Lr0/q;->Y()V

    and-int/lit8 v8, p8, 0x1

    const v10, -0xfc01

    if-eqz v8, :cond_c

    invoke-virtual {v9}, Lr0/q;->C()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v9}, Lr0/q;->W()V

    and-int v2, v6, v10

    move v4, v5

    move v5, v2

    move v2, v4

    move-object/from16 v4, p4

    move-object v7, v1

    move-object v1, v3

    move-object/from16 v3, p3

    goto :goto_d

    :cond_c
    :goto_9
    if-eqz v2, :cond_d

    sget-object v2, Lf1/o;->a:Lf1/o;

    goto :goto_a

    :cond_d
    move-object v2, v3

    :goto_a
    if-eqz v4, :cond_e

    goto :goto_b

    :cond_e
    move v11, v5

    :goto_b
    sget-object v3, Lo0/q;->a:Lu/s0;

    sget-object v3, Lq0/b;->b:Lq0/y;

    invoke-static {v3, v9}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v3

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v9, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-object v5, v4, Lo0/u0;->Y:Lo0/p;

    if-nez v5, :cond_f

    new-instance v13, Lo0/p;

    sget-wide v14, Lm1/p;->f:J

    sget-object v5, Lq0/g;->t:Lq0/g;

    invoke-static {v4, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v16

    sget-object v5, Lq0/d0;->a:Lq0/g;

    move v8, v10

    move/from16 p1, v11

    invoke-static {v4, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v10

    sget v5, Lq0/d0;->b:F

    invoke-static {v5, v10, v11}, Lm1/p;->b(FJ)J

    move-result-wide v20

    move-wide/from16 v18, v14

    invoke-direct/range {v13 .. v21}, Lo0/p;-><init>(JJJJ)V

    iput-object v13, v4, Lo0/u0;->Y:Lo0/p;

    goto :goto_c

    :cond_f
    move v8, v10

    move/from16 p1, v11

    move-object v13, v5

    :goto_c
    and-int v4, v6, v8

    if-eqz v7, :cond_10

    sget-object v1, Lo0/q;->b:Lu/s0;

    :cond_10
    move-object v7, v1

    move-object v1, v2

    move v5, v4

    move-object v4, v13

    move/from16 v2, p1

    :goto_d
    invoke-virtual {v9}, Lr0/q;->r()V

    const v6, 0x7ffffffe

    and-int v10, v5, v6

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v11}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v5, v4

    move-object v6, v7

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    goto :goto_e

    :cond_11
    invoke-virtual/range {p7 .. p7}, Lr0/q;->W()V

    move-object/from16 v4, p3

    move-object v6, v1

    move-object v2, v3

    move v3, v5

    move-object/from16 v5, p4

    :goto_e
    invoke-virtual/range {p7 .. p7}, Lr0/q;->u()Lr0/n1;

    move-result-object v10

    if-eqz v10, :cond_12

    new-instance v0, Lo0/x;

    move-object/from16 v1, p0

    move-object/from16 v7, p6

    move/from16 v8, p8

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lo0/x;-><init>(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;II)V

    iput-object v0, v10, Lr0/n1;->d:Li9/e;

    :cond_12
    return-void
.end method

.method public static h(JJLr0/q;II)Lo0/a0;
    .locals 19

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_0

    invoke-static {v0, v1, v2}, Lo0/v0;->b(JLr0/q;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p2

    :goto_0
    sget-wide v5, Lm1/p;->g:J

    const v7, 0x3ec28f5c    # 0.38f

    invoke-static {v7, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v7

    sget-object v9, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v2, v9}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-object v9, v2, Lo0/u0;->Z:Lo0/a0;

    if-nez v9, :cond_1

    new-instance v10, Lo0/a0;

    sget-object v9, Lq0/l;->a:Lq0/g;

    invoke-static {v2, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v11

    invoke-static {v2, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v13

    invoke-static {v2, v13, v14}, Lo0/v0;->a(Lo0/u0;J)J

    move-result-wide v13

    sget-object v15, Lq0/l;->d:Lq0/g;

    invoke-static {v2, v15}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v0

    sget v15, Lq0/l;->f:F

    invoke-static {v15, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v0

    move-wide/from16 p2, v3

    invoke-static {v2, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lm1/v;->k(JJ)J

    move-result-wide v15

    invoke-static {v2, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lo0/v0;->a(Lo0/u0;J)J

    move-result-wide v0

    const v3, 0x3ec28f5c    # 0.38f

    invoke-static {v3, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v17

    invoke-direct/range {v10 .. v18}, Lo0/a0;-><init>(JJJJ)V

    iput-object v10, v2, Lo0/u0;->Z:Lo0/a0;

    move-object v9, v10

    goto :goto_1

    :cond_1
    move-wide/from16 p2, v3

    :goto_1
    const-wide/16 v0, 0x10

    cmp-long v2, p0, v0

    if-eqz v2, :cond_2

    move-wide/from16 v11, p0

    goto :goto_2

    :cond_2
    iget-wide v2, v9, Lo0/a0;->a:J

    move-wide v11, v2

    :goto_2
    cmp-long v2, p2, v0

    if-eqz v2, :cond_3

    move-wide/from16 v13, p2

    goto :goto_3

    :cond_3
    iget-wide v3, v9, Lo0/a0;->b:J

    move-wide v13, v3

    :goto_3
    cmp-long v2, v5, v0

    if-eqz v2, :cond_4

    :goto_4
    move-wide v15, v5

    goto :goto_5

    :cond_4
    iget-wide v5, v9, Lo0/a0;->c:J

    goto :goto_4

    :goto_5
    cmp-long v0, v7, v0

    if-eqz v0, :cond_5

    :goto_6
    move-wide/from16 v17, v7

    goto :goto_7

    :cond_5
    iget-wide v7, v9, Lo0/a0;->d:J

    goto :goto_6

    :goto_7
    new-instance v10, Lo0/a0;

    invoke-direct/range {v10 .. v18}, Lo0/a0;-><init>(JJJJ)V

    return-object v10
.end method

.method public static i()Lo0/b0;
    .locals 7

    sget v1, Lq0/l;->b:F

    sget v2, Lq0/l;->j:F

    sget v3, Lq0/l;->h:F

    sget v4, Lq0/l;->i:F

    sget v5, Lq0/l;->g:F

    sget v6, Lq0/l;->e:F

    new-instance v0, Lo0/b0;

    invoke-direct/range {v0 .. v6}, Lo0/b0;-><init>(FFFFFF)V

    return-object v0
.end method

.method public static j(Lr0/q;)Lo0/u0;
    .locals 1

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo0/u0;

    return-object p0
.end method

.method public static k(Lr0/q;)Lo0/h5;
    .locals 1

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo0/h5;

    return-object p0
.end method

.method public static final l(Lq0/q;Lr0/q;)Ln/r0;
    .locals 1

    sget-object v0, Lo0/o1;->a:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/z1;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    check-cast p1, Lo0/y1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo0/y1;->g:Ln/r0;

    const-string p1, "null cannot be cast to non-null type androidx.compose.animation.core.FiniteAnimationSpec<T of androidx.compose.material3.MotionScheme.StandardMotionSchemeImpl.slowEffectsSpec>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    check-cast p1, Lo0/y1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo0/y1;->f:Ln/r0;

    const-string p1, "null cannot be cast to non-null type androidx.compose.animation.core.FiniteAnimationSpec<T of androidx.compose.material3.MotionScheme.StandardMotionSchemeImpl.fastEffectsSpec>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    check-cast p1, Lo0/y1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo0/y1;->e:Ln/r0;

    const-string p1, "null cannot be cast to non-null type androidx.compose.animation.core.FiniteAnimationSpec<T of androidx.compose.material3.MotionScheme.StandardMotionSchemeImpl.defaultEffectsSpec>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    check-cast p1, Lo0/y1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo0/y1;->d:Ln/r0;

    const-string p1, "null cannot be cast to non-null type androidx.compose.animation.core.FiniteAnimationSpec<T of androidx.compose.material3.MotionScheme.StandardMotionSchemeImpl.slowSpatialSpec>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    check-cast p1, Lo0/y1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo0/y1;->c:Ln/r0;

    const-string p1, "null cannot be cast to non-null type androidx.compose.animation.core.FiniteAnimationSpec<T of androidx.compose.material3.MotionScheme.StandardMotionSchemeImpl.fastSpatialSpec>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    check-cast p1, Lo0/y1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo0/y1;->b:Ln/r0;

    const-string p1, "null cannot be cast to non-null type androidx.compose.animation.core.FiniteAnimationSpec<T of androidx.compose.material3.MotionScheme.StandardMotionSchemeImpl.defaultSpatialSpec>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
