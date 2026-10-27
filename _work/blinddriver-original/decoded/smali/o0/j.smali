.class public abstract Lo0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:Lu/s0;

.field public static final f:Lu/s0;

.field public static final g:Lu/s0;

.field public static final h:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Lo0/j;->a:F

    const/16 v0, 0x230

    int-to-float v0, v0

    sput v0, Lo0/j;->b:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Lo0/j;->c:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Lo0/j;->d:F

    const/16 v0, 0x18

    int-to-float v0, v0

    new-instance v1, Lu/s0;

    invoke-direct {v1, v0, v0, v0, v0}, Lu/s0;-><init>(FFFF)V

    sput-object v1, Lo0/j;->e:Lu/s0;

    const/16 v1, 0x10

    int-to-float v1, v1

    invoke-static {v1}, Lu/b;->d(F)Lu/s0;

    invoke-static {v1}, Lu/b;->d(F)Lu/s0;

    move-result-object v1

    sput-object v1, Lo0/j;->f:Lu/s0;

    invoke-static {v0}, Lu/b;->d(F)Lu/s0;

    move-result-object v0

    sput-object v0, Lo0/j;->g:Lu/s0;

    new-instance v0, Ln/k1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lo0/j;->h:Lr0/a0;

    return-void
.end method

.method public static final a(Lz0/d;Lf1/r;Li9/e;Li9/e;Lm1/h0;JFJJJJLr0/q;I)V
    .locals 24

    move-object/from16 v10, p16

    const v0, 0x522d8af1

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v0, p17, 0x30

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :goto_0
    or-int/2addr v0, v1

    move-object/from16 v4, p2

    invoke-virtual {v10, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x800

    goto :goto_1

    :cond_1
    const/16 v1, 0x400

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v5, p3

    invoke-virtual {v10, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x4000

    goto :goto_2

    :cond_2
    const/16 v1, 0x2000

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v1, p4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x20000

    goto :goto_3

    :cond_3
    const/high16 v2, 0x10000

    :goto_3
    or-int/2addr v0, v2

    move-wide/from16 v2, p5

    invoke-virtual {v10, v2, v3}, Lr0/q;->f(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0x100000

    goto :goto_4

    :cond_4
    const/high16 v6, 0x80000

    :goto_4
    or-int/2addr v0, v6

    move/from16 v6, p7

    invoke-virtual {v10, v6}, Lr0/q;->d(F)Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x800000

    goto :goto_5

    :cond_5
    const/high16 v7, 0x400000

    :goto_5
    or-int/2addr v0, v7

    move-wide/from16 v7, p8

    invoke-virtual {v10, v7, v8}, Lr0/q;->f(J)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x4000000

    goto :goto_6

    :cond_6
    const/high16 v9, 0x2000000

    :goto_6
    or-int/2addr v0, v9

    move-wide/from16 v14, p10

    invoke-virtual {v10, v14, v15}, Lr0/q;->f(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/high16 v9, 0x20000000

    goto :goto_7

    :cond_7
    const/high16 v9, 0x10000000

    :goto_7
    or-int/2addr v0, v9

    move-wide/from16 v11, p12

    invoke-virtual {v10, v11, v12}, Lr0/q;->f(J)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x4

    :goto_8
    move/from16 v23, v0

    move-wide/from16 v0, p14

    goto :goto_9

    :cond_8
    const/4 v9, 0x2

    goto :goto_8

    :goto_9
    invoke-virtual {v10, v0, v1}, Lr0/q;->f(J)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x20

    goto :goto_a

    :cond_9
    const/16 v13, 0x10

    :goto_a
    or-int/2addr v9, v13

    const v13, 0x12492493

    and-int v13, v23, v13

    const v0, 0x12492492

    if-ne v13, v0, :cond_b

    and-int/lit8 v0, v9, 0x13

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    and-int/lit8 v1, v23, 0x1

    invoke-virtual {v10, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v11, Lo0/f;

    move-object/from16 v22, p0

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v20, v7

    invoke-direct/range {v11 .. v22}, Lo0/f;-><init>(Li9/e;Li9/e;JJJJLz0/d;)V

    const v0, -0x26e8eb4a

    invoke-static {v0, v11, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    shr-int/lit8 v0, v23, 0xc

    and-int/lit8 v1, v0, 0x70

    const v4, 0xc00006

    or-int/2addr v1, v4

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v23, 0x9

    const v4, 0xe000

    and-int/2addr v1, v4

    or-int v11, v0, v1

    const/16 v12, 0x68

    sget-object v0, Lf1/o;->a:Lf1/o;

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p4

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v3, v0

    goto :goto_d

    :cond_c
    invoke-virtual/range {p16 .. p16}, Lr0/q;->W()V

    move-object/from16 v3, p1

    :goto_d
    invoke-virtual/range {p16 .. p16}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Lo0/c;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lo0/c;-><init>(Lz0/d;Lf1/r;Li9/e;Li9/e;Lm1/h0;JFJJJJI)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method

.method public static final b(Lz0/d;Lr0/q;I)V
    .locals 7

    const v0, -0x36b20a24    # -843613.75f

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit16 v0, p2, 0x93

    const/16 v1, 0x92

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_1

    new-instance v0, Lo0/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lc2/r0;

    iget-wide v3, p1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v6, p1, Lr0/q;->S:Z

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_1
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v3, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v3, p1, Lr0/q;->S:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_4
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lo0/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lo0/d;-><init>(Lz0/d;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final c(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V
    .locals 26

    move-object/from16 v4, p17

    move/from16 v6, p18

    move/from16 v7, p19

    const v0, -0x33b6c663    # -5.274994E7f

    invoke-virtual {v4, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v6, 0x6

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v3, v6

    :goto_1
    and-int/lit8 v5, v6, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_3

    :cond_3
    move-object/from16 v5, p1

    :goto_3
    and-int/lit16 v10, v6, 0x180

    if-nez v10, :cond_5

    move-object/from16 v10, p2

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x100

    goto :goto_4

    :cond_4
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v3, v13

    goto :goto_5

    :cond_5
    move-object/from16 v10, p2

    :goto_5
    and-int/lit16 v13, v6, 0xc00

    if-nez v13, :cond_7

    move-object/from16 v13, p3

    invoke-virtual {v4, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_6

    :cond_6
    const/16 v16, 0x400

    :goto_6
    or-int v3, v3, v16

    goto :goto_7

    :cond_7
    move-object/from16 v13, p3

    :goto_7
    and-int/lit16 v1, v6, 0x6000

    if-nez v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_8

    :cond_8
    const/16 v1, 0x2000

    :goto_8
    or-int/2addr v3, v1

    :cond_9
    const/high16 v1, 0x30000

    and-int/2addr v1, v6

    if-nez v1, :cond_b

    move-object/from16 v1, p4

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v17, 0x10000

    :goto_9
    or-int v3, v3, v17

    goto :goto_a

    :cond_b
    move-object/from16 v1, p4

    :goto_a
    const/high16 v17, 0x180000

    and-int v17, v6, v17

    move-object/from16 v2, p5

    if-nez v17, :cond_d

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v18, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v18, 0x80000

    :goto_b
    or-int v3, v3, v18

    :cond_d
    const/high16 v18, 0xc00000

    and-int v18, v6, v18

    move-object/from16 v8, p6

    if-nez v18, :cond_f

    invoke-virtual {v4, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x800000

    goto :goto_c

    :cond_e
    const/high16 v19, 0x400000

    :goto_c
    or-int v3, v3, v19

    :cond_f
    const/high16 v19, 0x6000000

    and-int v19, v6, v19

    move-wide/from16 v9, p7

    if-nez v19, :cond_11

    invoke-virtual {v4, v9, v10}, Lr0/q;->f(J)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x4000000

    goto :goto_d

    :cond_10
    const/high16 v20, 0x2000000

    :goto_d
    or-int v3, v3, v20

    :cond_11
    const/high16 v20, 0x30000000

    and-int v20, v6, v20

    move-wide/from16 v11, p9

    if-nez v20, :cond_13

    invoke-virtual {v4, v11, v12}, Lr0/q;->f(J)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v22, 0x10000000

    :goto_e
    or-int v3, v3, v22

    :cond_13
    and-int/lit8 v22, v7, 0x6

    move-wide/from16 v14, p11

    if-nez v22, :cond_15

    invoke-virtual {v4, v14, v15}, Lr0/q;->f(J)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v16, 0x4

    goto :goto_f

    :cond_14
    const/16 v16, 0x2

    :goto_f
    or-int v16, v7, v16

    goto :goto_10

    :cond_15
    move/from16 v16, v7

    :goto_10
    and-int/lit8 v17, v7, 0x30

    move-wide/from16 v0, p13

    if-nez v17, :cond_17

    invoke-virtual {v4, v0, v1}, Lr0/q;->f(J)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v18, 0x20

    goto :goto_11

    :cond_16
    const/16 v18, 0x10

    :goto_11
    or-int v16, v16, v18

    :cond_17
    and-int/lit16 v0, v7, 0x180

    if-nez v0, :cond_19

    move/from16 v0, p15

    invoke-virtual {v4, v0}, Lr0/q;->d(F)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v20, 0x100

    goto :goto_12

    :cond_18
    const/16 v20, 0x80

    :goto_12
    or-int v16, v16, v20

    goto :goto_13

    :cond_19
    move/from16 v0, p15

    :goto_13
    and-int/lit16 v1, v7, 0xc00

    if-nez v1, :cond_1b

    move-object/from16 v1, p16

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v22, 0x800

    goto :goto_14

    :cond_1a
    const/16 v22, 0x400

    :goto_14
    or-int v16, v16, v22

    :goto_15
    move/from16 v0, v16

    goto :goto_16

    :cond_1b
    move-object/from16 v1, p16

    goto :goto_15

    :goto_16
    const v16, 0x12492493

    and-int v1, v3, v16

    const v2, 0x12492492

    if-ne v1, v2, :cond_1d

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    if-eq v1, v2, :cond_1c

    goto :goto_17

    :cond_1c
    const/4 v1, 0x0

    goto :goto_18

    :cond_1d
    :goto_17
    const/4 v1, 0x1

    :goto_18
    and-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v10, Lo0/i;

    move-wide/from16 v21, p13

    move/from16 v16, p15

    move-object/from16 v24, v5

    move-wide/from16 v17, v11

    move-object/from16 v23, v13

    move-wide/from16 v19, v14

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-wide/from16 v14, p7

    move-object v13, v8

    invoke-direct/range {v10 .. v24}, Lo0/i;-><init>(Li9/e;Li9/e;Lm1/h0;JFJJJLi9/e;Lz0/d;)V

    const v1, 0x1f6fcd57

    invoke-static {v1, v10, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    and-int/lit8 v2, v3, 0xe

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int v5, v2, v0

    move-object/from16 v0, p0

    move-object/from16 v2, p16

    move-object v3, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lo0/j;->d(Li9/a;Lf1/r;Lf3/u;Lz0/d;Lr0/q;I)V

    goto :goto_19

    :cond_1e
    invoke-virtual/range {p17 .. p17}, Lr0/q;->W()V

    :goto_19
    invoke-virtual/range {p17 .. p17}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v1, v0

    new-instance v0, Lo0/b;

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v25, v1

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v20}, Lo0/b;-><init>(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;III)V

    move-object/from16 v1, v25

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_1f
    return-void
.end method

.method public static final d(Li9/a;Lf1/r;Lf3/u;Lz0/d;Lr0/q;I)V
    .locals 7

    const v0, 0x17c55da

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p5, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p4, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p5, 0xc00

    if-nez v1, :cond_7

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_8

    move v1, v4

    goto :goto_5

    :cond_8
    move v1, v3

    :goto_5
    and-int/2addr v0, v4

    invoke-virtual {p4, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lo0/j;->h:Lr0/a0;

    invoke-virtual {p4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/c1;

    new-instance v1, Lg5/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lg5/i;-><init>(Li9/a;Lf1/r;Lf3/u;Lz0/d;)V

    invoke-virtual {v0, v1, p4, v3}, Lo0/c1;->a(Lg5/i;Lr0/q;I)V

    goto :goto_6

    :cond_9
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p4

    if-eqz p4, :cond_a

    new-instance v0, Lb4/c;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lb4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p4, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method
