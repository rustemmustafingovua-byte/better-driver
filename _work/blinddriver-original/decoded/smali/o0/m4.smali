.class public abstract Lo0/m4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:J

.field public static final d:F

.field public static final e:F

.field public static final f:Lc2/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lq0/a0;->n:F

    sput v0, Lo0/m4;->a:F

    sget v0, Lq0/a0;->l:F

    sput v0, Lo0/m4;->b:F

    sget v1, Lq0/a0;->j:F

    invoke-static {v0, v1}, Lr5/u0;->a(FF)J

    move-result-wide v2

    sput-wide v2, Lo0/m4;->c:J

    invoke-static {v1, v0}, Lr5/u0;->a(FF)J

    sget v0, Lq0/a0;->a:F

    sput v0, Lo0/m4;->d:F

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Lo0/m4;->e:F

    new-instance v0, Lc2/v1;

    sget-object v1, Lo0/f4;->s:Lo0/f4;

    invoke-direct {v0, v1}, Lc2/a;-><init>(Li9/e;)V

    sput-object v0, Lo0/m4;->f:Lc2/v1;

    return-void
.end method

.method public static final a(FLi9/c;Lf1/r;ZLi9/a;Lo0/t3;Ls/i;ILz0/d;Lz0/d;Lo9/a;Lr0/q;II)V
    .locals 22

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v0, p11

    move/from16 v3, p12

    const v4, 0x3ac3ab6f

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->d(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v9, v3, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    :cond_3
    and-int/lit16 v9, v3, 0x180

    move-object/from16 v13, p2

    if-nez v9, :cond_5

    invoke-virtual {v0, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v4, v9

    :cond_5
    and-int/lit16 v9, v3, 0xc00

    move/from16 v14, p3

    if-nez v9, :cond_7

    invoke-virtual {v0, v14}, Lr0/q;->h(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_4

    :cond_6
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v4, v9

    :cond_7
    and-int/lit16 v9, v3, 0x6000

    if-nez v9, :cond_9

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v4, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v3

    if-nez v9, :cond_b

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v4, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :goto_7
    const/high16 v10, 0x180000

    and-int/2addr v10, v3

    if-nez v10, :cond_d

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v12, 0x80000

    :goto_8
    or-int/2addr v4, v12

    goto :goto_9

    :cond_d
    move-object/from16 v10, p6

    :goto_9
    const/high16 v12, 0xc00000

    and-int/2addr v12, v3

    if-nez v12, :cond_f

    invoke-virtual {v0, v8}, Lr0/q;->e(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v12, 0x400000

    :goto_a
    or-int/2addr v4, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int/2addr v12, v3

    if-nez v12, :cond_11

    move-object/from16 v12, p8

    invoke-virtual {v0, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v4, v4, v16

    goto :goto_c

    :cond_11
    move-object/from16 v12, p8

    :goto_c
    const/high16 v16, 0x30000000

    and-int v16, v3, v16

    move-object/from16 v7, p9

    if-nez v16, :cond_13

    invoke-virtual {v0, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v17, 0x10000000

    :goto_d
    or-int v4, v4, v17

    :cond_13
    and-int/lit8 v17, p13, 0x6

    if-nez v17, :cond_15

    invoke-virtual {v0, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x4

    goto :goto_e

    :cond_14
    const/16 v17, 0x2

    :goto_e
    or-int v17, p13, v17

    goto :goto_f

    :cond_15
    move/from16 v17, p13

    :goto_f
    const v18, 0x12492493

    and-int v15, v4, v18

    const v6, 0x12492492

    const/16 v20, 0x0

    const/16 v21, 0x1

    if-ne v15, v6, :cond_17

    and-int/lit8 v6, v17, 0x3

    const/4 v15, 0x2

    if-eq v6, v15, :cond_16

    goto :goto_10

    :cond_16
    move/from16 v6, v20

    goto :goto_11

    :cond_17
    :goto_10
    move/from16 v6, v21

    :goto_11
    and-int/lit8 v15, v4, 0x1

    invoke-virtual {v0, v15, v6}, Lr0/q;->T(IZ)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_12

    :cond_18
    invoke-virtual {v0}, Lr0/q;->W()V

    :cond_19
    :goto_12
    invoke-virtual {v0}, Lr0/q;->r()V

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v4

    const/high16 v15, 0x800000

    if-ne v6, v15, :cond_1a

    move/from16 v6, v21

    goto :goto_13

    :cond_1a
    move/from16 v6, v20

    :goto_13
    and-int/lit8 v15, v17, 0xe

    xor-int/lit8 v15, v15, 0x6

    const/4 v3, 0x4

    if-le v15, v3, :cond_1b

    invoke-virtual {v0, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    :cond_1b
    and-int/lit8 v15, v17, 0x6

    if-ne v15, v3, :cond_1d

    :cond_1c
    move/from16 v20, v21

    :cond_1d
    or-int v3, v6, v20

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_1e

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v6, v3, :cond_1f

    :cond_1e
    new-instance v6, Lo0/o4;

    invoke-direct {v6, v1, v8, v5, v11}, Lo0/o4;-><init>(FILi9/a;Lo9/a;)V

    invoke-virtual {v0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1f
    check-cast v6, Lo0/o4;

    iput-object v5, v6, Lo0/o4;->b:Li9/a;

    iput-object v2, v6, Lo0/o4;->e:Li9/c;

    invoke-virtual {v6, v1}, Lo0/o4;->c(F)V

    shr-int/lit8 v3, v4, 0x3

    and-int/lit16 v3, v3, 0x3f0

    shr-int/lit8 v15, v4, 0x6

    const v16, 0xe000

    and-int v15, v15, v16

    or-int/2addr v3, v15

    shr-int/lit8 v4, v4, 0x9

    const/high16 v15, 0x70000

    and-int/2addr v15, v4

    or-int/2addr v3, v15

    const/high16 v15, 0x380000

    and-int/2addr v4, v15

    or-int v20, v3, v4

    const/4 v15, 0x0

    move-object/from16 v19, v0

    move-object/from16 v18, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object v12, v6

    invoke-static/range {v12 .. v20}, Lo0/m4;->c(Lo0/o4;Lf1/r;ZLo0/t3;Ls/i;Lz0/d;Lz0/d;Lr0/q;I)V

    goto :goto_14

    :cond_20
    invoke-virtual/range {p11 .. p11}, Lr0/q;->W()V

    :goto_14
    invoke-virtual/range {p11 .. p11}, Lr0/q;->u()Lr0/n1;

    move-result-object v14

    if-eqz v14, :cond_21

    new-instance v0, Lo0/e4;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move/from16 v12, p12

    move/from16 v13, p13

    move-object v6, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Lo0/e4;-><init>(FLi9/c;Lf1/r;ZLi9/a;Lo0/t3;Ls/i;ILz0/d;Lz0/d;Lo9/a;II)V

    iput-object v0, v14, Lr0/n1;->d:Li9/e;

    :cond_21
    return-void
.end method

.method public static final b(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;Lr0/q;II)V
    .locals 14

    move-object/from16 v11, p9

    const v0, -0xc0af27b

    invoke-virtual {v11, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v11, p0}, Lr0/q;->d(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    and-int/lit8 v1, p10, 0x30

    if-nez v1, :cond_2

    invoke-virtual {v11, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    :cond_2
    or-int/lit16 v0, v0, 0xd80

    move-object/from16 v7, p4

    invoke-virtual {v11, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4000

    goto :goto_2

    :cond_3
    const/16 v1, 0x2000

    :goto_2
    or-int/2addr v0, v1

    and-int/lit8 v1, p11, 0x20

    const/high16 v2, 0x30000

    if-eqz v1, :cond_5

    or-int/2addr v0, v2

    :cond_4
    move/from16 v2, p5

    goto :goto_4

    :cond_5
    and-int v2, p10, v2

    if-nez v2, :cond_4

    move/from16 v2, p5

    invoke-virtual {v11, v2}, Lr0/q;->e(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x20000

    goto :goto_3

    :cond_6
    const/high16 v3, 0x10000

    :goto_3
    or-int/2addr v0, v3

    :goto_4
    and-int/lit8 v3, p11, 0x40

    const/high16 v5, 0x180000

    if-eqz v3, :cond_7

    or-int/2addr v0, v5

    move-object/from16 v6, p6

    goto :goto_6

    :cond_7
    move-object/from16 v6, p6

    invoke-virtual {v11, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/high16 v8, 0x100000

    goto :goto_5

    :cond_8
    const/high16 v8, 0x80000

    :goto_5
    or-int/2addr v0, v8

    :goto_6
    const/high16 v8, 0x6400000

    or-int/2addr v0, v8

    const v8, 0x2492493

    and-int/2addr v8, v0

    const v9, 0x2492492

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eq v8, v9, :cond_9

    move v8, v12

    goto :goto_7

    :cond_9
    move v8, v10

    :goto_7
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v11, v9, v8}, Lr0/q;->T(IZ)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v11}, Lr0/q;->Y()V

    and-int/lit8 v8, p10, 0x1

    const v9, -0x1c00001

    if-eqz v8, :cond_b

    invoke-virtual {v11}, Lr0/q;->C()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v11}, Lr0/q;->W()V

    and-int/2addr v0, v9

    move/from16 v3, p3

    move v7, v2

    move v1, v5

    move-object v4, v6

    move-object/from16 v2, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    goto :goto_a

    :cond_b
    :goto_8
    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    move v10, v2

    :goto_9
    if-eqz v3, :cond_d

    const/4 v1, 0x0

    move-object v6, v1

    :cond_d
    sget-object v1, Lo0/a4;->a:Lo0/a4;

    invoke-static {v11}, Lo0/a4;->d(Lr0/q;)Lo0/t3;

    move-result-object v1

    and-int/2addr v0, v9

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v2, v3, :cond_e

    new-instance v2, Ls/i;

    invoke-direct {v2}, Ls/i;-><init>()V

    invoke-virtual {v11, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Ls/i;

    sget-object v3, Lf1/o;->a:Lf1/o;

    move v4, v5

    move-object v5, v1

    move v1, v4

    move-object v4, v6

    move v7, v10

    move-object v6, v2

    move-object v2, v3

    move v3, v12

    :goto_a
    invoke-virtual {v11}, Lr0/q;->r()V

    new-instance v8, Lo0/g4;

    invoke-direct {v8, v6, v5, v3}, Lo0/g4;-><init>(Ls/i;Lo0/t3;Z)V

    const v9, 0x125f81c1

    invoke-static {v9, v8, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v8

    new-instance v9, Lo0/h4;

    invoke-direct {v9, v3, v5}, Lo0/h4;-><init>(ZLo0/t3;)V

    const v10, -0x6ddd853e

    invoke-static {v10, v9, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    and-int/lit8 v10, v0, 0xe

    const/high16 v12, 0x36000000

    or-int/2addr v10, v12

    and-int/lit8 v12, v0, 0x70

    or-int/2addr v10, v12

    or-int/lit16 v10, v10, 0xd80

    shr-int/lit8 v12, v0, 0x6

    const v13, 0xe000

    and-int/2addr v12, v13

    or-int/2addr v10, v12

    or-int/2addr v1, v10

    const/high16 v10, 0x1c00000

    shl-int/lit8 v12, v0, 0x6

    and-int/2addr v10, v12

    or-int v12, v1, v10

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v13, v0, 0xe

    move v0, p0

    move-object v1, p1

    move-object/from16 v10, p4

    invoke-static/range {v0 .. v13}, Lo0/m4;->a(FLi9/c;Lf1/r;ZLi9/a;Lo0/t3;Ls/i;ILz0/d;Lz0/d;Lo9/a;Lr0/q;II)V

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move v8, v7

    move-object v5, v2

    move v6, v3

    goto :goto_b

    :cond_f
    invoke-virtual/range {p9 .. p9}, Lr0/q;->W()V

    move-object/from16 v5, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move v8, v2

    move-object v9, v6

    move/from16 v6, p3

    :goto_b
    invoke-virtual/range {p9 .. p9}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v2, Lo0/d4;

    move v3, p0

    move-object v4, p1

    move-object/from16 v7, p4

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v2 .. v13}, Lo0/d4;-><init>(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;II)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final c(Lo0/o4;Lf1/r;ZLo0/t3;Ls/i;Lz0/d;Lz0/d;Lr0/q;I)V
    .locals 11

    move-object/from16 v6, p7

    move/from16 v8, p8

    const v0, 0x186dff48

    invoke-virtual {v6, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v6, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

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
    and-int/lit8 v1, v8, 0x30

    if-nez v1, :cond_3

    invoke-virtual {v6, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v8, 0x180

    if-nez v1, :cond_5

    invoke-virtual {v6, p2}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v8, 0xc00

    if-nez v1, :cond_6

    or-int/lit16 v0, v0, 0x400

    :cond_6
    and-int/lit16 v1, v8, 0x6000

    if-nez v1, :cond_8

    invoke-virtual {v6, p4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x4000

    goto :goto_4

    :cond_7
    const/16 v1, 0x2000

    :goto_4
    or-int/2addr v0, v1

    :cond_8
    const/high16 v1, 0x30000

    and-int/2addr v1, v8

    move-object/from16 v4, p5

    if-nez v1, :cond_a

    invoke-virtual {v6, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v1, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v1, 0x10000

    :goto_5
    or-int/2addr v0, v1

    :cond_a
    const/high16 v1, 0x180000

    and-int/2addr v1, v8

    move-object/from16 v7, p6

    if-nez v1, :cond_c

    invoke-virtual {v6, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x100000

    goto :goto_6

    :cond_b
    const/high16 v1, 0x80000

    :goto_6
    or-int/2addr v0, v1

    :cond_c
    const v1, 0x92493

    and-int/2addr v1, v0

    const v2, 0x92492

    if-eq v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v6, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v6}, Lr0/q;->Y()V

    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_f

    invoke-virtual {v6}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Lr0/q;->W()V

    and-int/lit16 v0, v0, -0x1c01

    move-object v9, p3

    goto :goto_9

    :cond_f
    :goto_8
    sget-object v1, Lo0/a4;->a:Lo0/a4;

    invoke-static {v6}, Lo0/a4;->d(Lr0/q;)Lo0/t3;

    move-result-object v1

    and-int/lit16 v0, v0, -0x1c01

    move-object v9, v1

    :goto_9
    invoke-virtual {v6}, Lr0/q;->r()V

    iget v1, p0, Lo0/o4;->a:I

    if-ltz v1, :cond_10

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v2, v1, 0xe

    shl-int/lit8 v5, v0, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v2, v5

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v5, v7

    move v7, v0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lo0/m4;->d(Lf1/r;Lo0/o4;ZLs/i;Lz0/d;Lz0/d;Lr0/q;I)V

    move-object v4, v9

    goto :goto_a

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "steps should be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    invoke-virtual/range {p7 .. p7}, Lr0/q;->W()V

    move-object v4, p3

    :goto_a
    invoke-virtual/range {p7 .. p7}, Lr0/q;->u()Lr0/n1;

    move-result-object v10

    if-eqz v10, :cond_12

    new-instance v0, Lb0/m0;

    const/4 v9, 0x3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lb0/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v10, Lr0/n1;->d:Li9/e;

    :cond_12
    return-void
.end method

.method public static final d(Lf1/r;Lo0/o4;ZLs/i;Lz0/d;Lz0/d;Lr0/q;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    iget-object v14, v2, Lo0/o4;->d:Lr0/a1;

    iget-object v15, v2, Lo0/o4;->c:Lo9/a;

    const v5, 0x358907a3

    invoke-virtual {v12, v5}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v5, v13, 0x6

    const/4 v6, 0x4

    if-nez v5, :cond_1

    invoke-virtual {v12, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v13

    goto :goto_1

    :cond_1
    move v5, v13

    :goto_1
    and-int/lit8 v7, v13, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v12, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    :cond_3
    and-int/lit16 v7, v13, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v12, v3}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v5, v7

    :cond_5
    and-int/lit16 v7, v13, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v12, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v5, v7

    :cond_7
    and-int/lit16 v7, v13, 0x6000

    if-nez v7, :cond_9

    invoke-virtual {v12, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_5

    :cond_8
    const/16 v7, 0x2000

    :goto_5
    or-int/2addr v5, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v13

    if-nez v7, :cond_b

    invoke-virtual {v12, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v7, 0x10000

    :goto_6
    or-int/2addr v5, v7

    :cond_b
    move/from16 v16, v5

    const v5, 0x12493

    and-int v5, v16, v5

    const v7, 0x12492

    if-eq v5, v7, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    and-int/lit8 v7, v16, 0x1

    invoke-virtual {v12, v7, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_25

    sget-object v5, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v12, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lb3/m;->m:Lb3/m;

    if-ne v5, v7, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v2, Lo0/o4;->j:Z

    iget-object v7, v2, Lo0/o4;->m:Lr/m1;

    sget-object v10, Lr/m1;->m:Lr/m1;

    if-ne v7, v10, :cond_f

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    const/4 v10, 0x1

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v10, 0x0

    :goto_a
    sget-object v5, Lf1/o;->a:Lf1/o;

    if-eqz v3, :cond_10

    new-instance v8, Lb0/w0;

    invoke-direct {v8, v6, v2}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    sget-object v17, Ly1/g0;->a:Ly1/l;

    new-instance v9, Ly1/f0;

    invoke-direct {v9, v2, v4, v8, v6}, Ly1/f0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    goto :goto_b

    :cond_10
    move-object v9, v5

    :goto_b
    iget-object v4, v2, Lo0/o4;->m:Lr/m1;

    iget-object v6, v2, Lo0/o4;->n:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v12, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v13, Lr0/m;->a:Lr0/e;

    if-nez v8, :cond_11

    if-ne v3, v13, :cond_12

    :cond_11
    new-instance v3, Lo0/j4;

    const/4 v8, 0x0

    invoke-direct {v3, v2, v8}, Lo0/j4;-><init>(Lo0/o4;Ly8/c;)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    check-cast v3, Li9/f;

    sget-object v8, Lr/r0;->a:Lr/q0;

    new-instance v2, Lr/p0;

    move-object v0, v5

    move-object v11, v9

    move-object/from16 v18, v14

    move/from16 v5, p2

    move-object v9, v3

    move-object v14, v7

    move-object/from16 v3, p1

    move v7, v6

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lr/p0;-><init>(Lo0/o4;Lr/m1;ZLs/i;ZLi9/f;Li9/f;Z)V

    move-object v4, v2

    move-object v2, v6

    move v7, v10

    move-object v10, v3

    move v3, v5

    sget-object v5, Lr/m1;->l:Lr/m1;

    if-ne v14, v5, :cond_13

    sget-object v6, Lo0/u3;->l:Lo0/u3;

    invoke-static {v0, v6}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v6

    invoke-static {v6}, Lu/b1;->s(Lf1/r;)Lf1/r;

    move-result-object v6

    goto :goto_c

    :cond_13
    sget-object v6, Lo0/u3;->l:Lo0/u3;

    invoke-static {v0, v6}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v6

    invoke-static {v6}, Lu/b1;->u(Lf1/r;)Lf1/r;

    move-result-object v6

    :goto_c
    sget-object v8, Lo0/n1;->a:Lc2/k;

    sget-object v8, Lo0/v1;->a:Lo0/v1;

    invoke-interface {v1, v8}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v19

    sget v8, Lo0/m4;->b:F

    sget v9, Lo0/m4;->a:F

    if-ne v14, v5, :cond_14

    move/from16 v20, v9

    goto :goto_d

    :cond_14
    move/from16 v20, v8

    :goto_d
    if-ne v14, v5, :cond_15

    move/from16 v21, v8

    goto :goto_e

    :cond_15
    move/from16 v21, v9

    :goto_e
    const/16 v23, 0x0

    const/16 v24, 0xc

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lu/b1;->k(Lf1/r;FFFFI)Lf1/r;

    move-result-object v8

    new-instance v9, Lo0/c4;

    invoke-direct {v9, v3, v10}, Lo0/c4;-><init>(ZLo0/o4;)V

    const/4 v1, 0x0

    invoke-static {v8, v1, v9}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v8

    if-ne v14, v5, :cond_16

    sget-object v1, Lp0/b;->d:Lf1/r;

    goto :goto_f

    :cond_16
    sget-object v1, Lp0/b;->c:Lf1/r;

    :goto_f
    invoke-interface {v8, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Lr0/a1;->g()F

    move-result v5

    iget v8, v15, Lo9/a;->a:F

    iget v9, v15, Lo9/a;->b:F

    new-instance v14, Lo9/a;

    invoke-direct {v14, v8, v9}, Lo9/a;-><init>(FF)V

    iget v8, v10, Lo0/o4;->a:I

    new-instance v9, Lp/w1;

    invoke-direct {v9, v5, v14, v8}, Lp/w1;-><init>(FLo9/a;I)V

    const/4 v5, 0x1

    invoke-static {v1, v5, v9}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lp/o;->n(Lf1/r;ZLs/i;)Lf1/r;

    move-result-object v1

    move-object v5, v6

    iget v6, v10, Lo0/o4;->a:I

    invoke-virtual/range {v18 .. v18}, Lr0/a1;->g()F

    move-result v8

    move-object v9, v4

    iget-object v4, v10, Lo0/o4;->e:Li9/c;

    move-object v14, v9

    iget-object v9, v10, Lo0/o4;->b:Li9/a;

    if-ltz v6, :cond_24

    new-instance v2, Lo0/k4;

    move-object/from16 v25, v15

    move-object v15, v5

    move-object/from16 v5, v25

    invoke-direct/range {v2 .. v9}, Lo0/k4;-><init>(ZLi9/c;Lo9/a;IZFLi9/a;)V

    invoke-static {v1, v2}, Lw1/c;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    invoke-interface {v1, v11}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-interface {v1, v14}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-virtual {v12, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    if-ne v3, v13, :cond_18

    :cond_17
    new-instance v3, Lb0/u1;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v10}, Lb0/u1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    check-cast v3, Lc2/r0;

    iget-wide v4, v12, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v6, v12, Lr0/q;->S:Z

    if-eqz v6, :cond_19

    invoke-virtual {v12, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_10

    :cond_19
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_10
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v3, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v4, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->g:Le2/e;

    iget-boolean v7, v12, Lr0/q;->S:Z

    if-nez v7, :cond_1a

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    :cond_1a
    invoke-static {v2, v12, v2, v4}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_1b
    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v12, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_1d

    if-ne v7, v13, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    goto :goto_12

    :cond_1d
    :goto_11
    new-instance v7, Lo0/b4;

    const/4 v1, 0x0

    invoke-direct {v7, v10, v1}, Lo0/b4;-><init>(Lo0/o4;I)V

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_12
    check-cast v7, Li9/c;

    invoke-static {v15, v7}, Lc2/x;->n(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v7

    sget-object v8, Lf1/c;->l:Lf1/j;

    invoke-static {v8, v1}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v9

    iget-wide v13, v12, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v7, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v13, v12, Lr0/q;->S:Z

    if-eqz v13, :cond_1e

    invoke-virtual {v12, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_13

    :cond_1e
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_13
    invoke-static {v6, v9, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v11, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v9, v12, Lr0/q;->S:Z

    if-nez v9, :cond_1f

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    :cond_1f
    invoke-static {v1, v12, v1, v4}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_20
    invoke-static {v2, v7, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v1, v16, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v7, v16, 0x9

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v9, p4

    invoke-virtual {v9, v10, v12, v7}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v12, v7}, Lr0/q;->q(Z)V

    sget-object v7, Lo0/u3;->m:Lo0/u3;

    invoke-static {v0, v7}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v8, v7}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v7

    iget-wide v13, v12, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v0, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v13, v12, Lr0/q;->S:Z

    if-eqz v13, :cond_21

    invoke-virtual {v12, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_14

    :cond_21
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_14
    invoke-static {v6, v7, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v11, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v3, v12, Lr0/q;->S:Z

    if-nez v3, :cond_22

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    invoke-static {v8, v12, v8, v4}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_23
    invoke-static {v2, v0, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v16, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v11, p5

    invoke-virtual {v11, v10, v12, v0}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lr0/q;->q(Z)V

    invoke-virtual {v12, v5}, Lr0/q;->q(Z)V

    goto :goto_15

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "steps should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_15
    invoke-virtual {v12}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_26

    new-instance v0, Lo0/i0;

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    move-object v5, v9

    move-object v2, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v7}, Lo0/i0;-><init>(Lf1/r;Lo0/o4;ZLs/i;Lz0/d;Lz0/d;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_26
    return-void
.end method

.method public static final e(F[FFF)F
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v0}, Lg5/f;->C(FFF)F

    move-result v3

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-gt v2, v1, :cond_3

    :goto_0
    aget v4, p1, v2

    invoke-static {p2, p3, v4}, Lg5/f;->C(FFF)F

    move-result v5

    sub-float/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_2

    move v0, v4

    move v3, v5

    :cond_2
    if-eq v2, v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p2, p3, p0}, Lg5/f;->C(FFF)F

    move-result p0

    :cond_4
    return p0
.end method
