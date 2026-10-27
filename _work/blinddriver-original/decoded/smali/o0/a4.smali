.class public final Lo0/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/a4;

.field public static final b:F

.field public static final c:F

.field public static final d:Lm1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/a4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/a4;->a:Lo0/a4;

    sget v0, Lq0/a0;->o:F

    sput v0, Lo0/a4;->b:F

    sput v0, Lo0/a4;->c:F

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    sput-object v0, Lo0/a4;->d:Lm1/g;

    return-void
.end method

.method public static d(Lr0/q;)Lo0/t3;
    .locals 30

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-object v1, v0, Lo0/u0;->f0:Lo0/t3;

    if-nez v1, :cond_0

    new-instance v2, Lo0/t3;

    sget-object v1, Lq0/a0;->i:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    sget-object v1, Lq0/a0;->b:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v5

    sget-object v7, Lq0/a0;->m:Lq0/g;

    invoke-static {v0, v7}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    invoke-static {v0, v7}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v10

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v12

    sget-object v1, Lq0/a0;->e:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v14

    sget v1, Lq0/a0;->f:F

    invoke-static {v1, v14, v15}, Lm1/p;->b(FJ)J

    move-result-wide v14

    move-object/from16 p0, v2

    iget-wide v1, v0, Lo0/u0;->p:J

    invoke-static {v14, v15, v1, v2}, Lm1/v;->k(JJ)J

    move-result-wide v1

    sget-object v7, Lq0/a0;->c:Lq0/g;

    invoke-static {v0, v7}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v14

    move-wide/from16 v16, v1

    sget v1, Lq0/a0;->d:F

    invoke-static {v1, v14, v15}, Lm1/p;->b(FJ)J

    move-result-wide v14

    sget-object v2, Lq0/a0;->g:Lq0/g;

    move-wide/from16 v18, v3

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    move-wide/from16 v20, v5

    sget v5, Lq0/a0;->h:F

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v3

    move-wide/from16 v22, v3

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v2

    invoke-static {v0, v7}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lm1/p;->b(FJ)J

    move-result-wide v4

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide/from16 v24, v2

    move-object/from16 v2, p0

    move-wide/from16 v26, v18

    move-wide/from16 v28, v20

    move-wide/from16 v19, v24

    move-wide/from16 v24, v22

    move-wide/from16 v21, v4

    move-wide/from16 v3, v26

    move-wide/from16 v5, v28

    move-wide/from16 v26, v16

    move-wide v15, v14

    move-wide/from16 v13, v26

    move-wide/from16 v17, v24

    invoke-direct/range {v2 .. v22}, Lo0/t3;-><init>(JJJJJJJJJJ)V

    iput-object v2, v0, Lo0/u0;->f0:Lo0/t3;

    return-object v2

    :cond_0
    return-object v1
.end method

.method public static e(Lo1/d;Lr/m1;JJJFF)V
    .locals 22

    move-wide/from16 v0, p2

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    or-long v14, v2, v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v2, v6

    and-long/2addr v4, v7

    or-long v16, v2, v4

    sget-object v2, Lr/m1;->l:Lr/m1;

    move-object/from16 v3, p1

    if-ne v3, v2, :cond_0

    shr-long v2, p4, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v3, p4, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object v0

    new-instance v9, Ll1/d;

    iget v10, v0, Ll1/c;->a:F

    iget v11, v0, Ll1/c;->b:F

    iget v12, v0, Ll1/c;->c:F

    iget v13, v0, Ll1/c;->d:F

    move-wide/from16 v18, v16

    move-wide/from16 v16, v14

    move-wide/from16 v20, v18

    invoke-direct/range {v9 .. v21}, Ll1/d;-><init>(FFFFJJJJ)V

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v16

    shr-long v2, p4, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v3, p4, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object v0

    new-instance v9, Ll1/d;

    iget v10, v0, Ll1/c;->a:F

    iget v11, v0, Ll1/c;->b:F

    iget v12, v0, Ll1/c;->c:F

    iget v13, v0, Ll1/c;->d:F

    move-wide/from16 v20, v14

    invoke-direct/range {v9 .. v21}, Ll1/d;-><init>(FFFFJJJJ)V

    :goto_0
    sget-object v1, Lo0/a4;->d:Lm1/g;

    invoke-static {v1, v9}, Lm1/g;->b(Lm1/g;Ll1/d;)V

    const/4 v4, 0x0

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-wide/from16 v2, p6

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    invoke-virtual {v1}, Lm1/g;->h()V

    return-void
.end method


# virtual methods
.method public final a(Ls/i;Lf1/r;Lo0/t3;ZJLr0/q;I)V
    .locals 16

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v0, p7

    const v1, -0x114d4821

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int v1, p8, v1

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x100

    goto :goto_1

    :cond_1
    const/16 v7, 0x80

    :goto_1
    or-int/2addr v1, v7

    invoke-virtual {v0, v5}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x800

    goto :goto_2

    :cond_2
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v1, v7

    or-int/lit16 v1, v1, 0x6000

    const v7, 0x12493

    and-int/2addr v7, v1

    const v8, 0x12492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_3

    move v7, v10

    goto :goto_3

    :cond_3
    move v7, v9

    :goto_3
    and-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v7, p8, 0x1

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v11, p2

    move-wide/from16 v7, p5

    goto :goto_5

    :cond_5
    :goto_4
    sget-wide v7, Lo0/m4;->c:J

    sget-object v11, Lf1/o;->a:Lf1/o;

    :goto_5
    invoke-virtual {v0}, Lr0/q;->r()V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lr0/m;->a:Lr0/e;

    if-ne v12, v13, :cond_6

    new-instance v12, Ld1/v;

    invoke-direct {v12}, Ld1/v;-><init>()V

    invoke-virtual {v0, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v12, Ld1/v;

    and-int/lit8 v1, v1, 0xe

    if-ne v1, v6, :cond_7

    move v9, v10

    :cond_7
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_8

    if-ne v1, v13, :cond_9

    :cond_8
    new-instance v1, Lo0/s;

    const/4 v6, 0x3

    const/4 v9, 0x0

    invoke-direct {v1, v2, v12, v9, v6}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    invoke-virtual {v0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Li9/e;

    invoke-static {v1, v2, v0}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v12}, Ld1/v;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v7, v8}, Lb3/h;->b(J)F

    move-result v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v7, v8}, Lb3/h;->a(J)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v9, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v12, v1

    const/16 v1, 0x20

    shl-long/2addr v9, v1

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    or-long/2addr v9, v12

    goto :goto_6

    :cond_a
    move-wide v9, v7

    :goto_6
    sget-object v1, Lu/b1;->a:Lu/v;

    invoke-static {v9, v10}, Lb3/h;->b(J)F

    move-result v1

    invoke-static {v9, v10}, Lb3/h;->a(J)F

    move-result v3

    invoke-static {v11, v1, v3}, Lu/b1;->m(Lf1/r;FF)Lf1/r;

    move-result-object v1

    invoke-static {v1, v2}, Lp/o;->o(Lf1/r;Ls/i;)Lf1/r;

    move-result-object v1

    if-eqz v5, :cond_b

    iget-wide v9, v4, Lo0/t3;->a:J

    goto :goto_7

    :cond_b
    iget-wide v9, v4, Lo0/t3;->f:J

    :goto_7
    sget-object v3, Lq0/a0;->k:Lq0/y;

    invoke-static {v3, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v3

    invoke-static {v1, v9, v10, v3}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    move-wide v6, v7

    move-object v3, v11

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    :goto_8
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_d

    new-instance v0, Lo0/y3;

    move-object/from16 v1, p0

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lo0/y3;-><init>(Lo0/a4;Ls/i;Lf1/r;Lo0/t3;ZJI)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method

.method public final b(Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFLr0/q;I)V
    .locals 13

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p9

    move/from16 v12, p10

    const v0, 0x2fab503

    invoke-virtual {v9, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v9, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    or-int/lit8 v0, v0, 0x30

    and-int/lit16 v1, v12, 0x180

    const/16 v2, 0x100

    if-nez v1, :cond_3

    invoke-virtual {v9, v3}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v12, 0xc00

    const/16 v4, 0x800

    if-nez v1, :cond_5

    invoke-virtual {v9, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v12, 0x6000

    if-nez v1, :cond_6

    or-int/lit16 v0, v0, 0x2000

    :cond_6
    const/high16 v1, 0xdb0000

    or-int/2addr v0, v1

    const/high16 v1, 0x6000000

    and-int/2addr v1, v12

    if-nez v1, :cond_8

    invoke-virtual {v9, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x4000000

    goto :goto_4

    :cond_7
    const/high16 v1, 0x2000000

    :goto_4
    or-int/2addr v0, v1

    :cond_8
    const v1, 0x2492493

    and-int/2addr v1, v0

    const v6, 0x2492492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v6, :cond_9

    move v1, v8

    goto :goto_5

    :cond_9
    move v1, v7

    :goto_5
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v9, v6, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v9}, Lr0/q;->Y()V

    and-int/lit8 v1, v12, 0x1

    const v6, -0xe001

    if-eqz v1, :cond_b

    invoke-virtual {v9}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v9}, Lr0/q;->W()V

    and-int/2addr v0, v6

    move-object v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    goto :goto_8

    :cond_b
    :goto_6
    and-int/lit16 v1, v0, 0x1c00

    xor-int/lit16 v1, v1, 0xc00

    if-le v1, v4, :cond_c

    invoke-virtual {v9, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    and-int/lit16 v1, v0, 0xc00

    if-ne v1, v4, :cond_e

    :cond_d
    move v1, v8

    goto :goto_7

    :cond_e
    move v1, v7

    :goto_7
    and-int/lit16 v4, v0, 0x380

    if-ne v4, v2, :cond_f

    move v7, v8

    :cond_f
    or-int/2addr v1, v7

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-nez v1, :cond_10

    if-ne v2, v4, :cond_11

    :cond_10
    new-instance v2, Lb0/n0;

    const/4 v1, 0x1

    invoke-direct {v2, v5, v3, v1}, Lb0/n0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    move-object v1, v2

    check-cast v1, Li9/e;

    and-int/2addr v0, v6

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    sget-object v2, Lo0/z3;->m:Lo0/z3;

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Li9/f;

    sget v4, Lo0/m4;->d:F

    sget v6, Lo0/m4;->e:F

    sget-object v7, Lf1/o;->a:Lf1/o;

    move-object v5, v1

    move v8, v6

    move-object v6, v2

    move-object v2, v7

    move v7, v4

    :goto_8
    invoke-virtual {v9}, Lr0/q;->r()V

    const v1, 0x30000030

    and-int/lit8 v4, v0, 0xe

    or-int/2addr v1, v4

    shl-int/lit8 v4, v0, 0x3

    and-int/lit16 v10, v4, 0x380

    or-int/2addr v1, v10

    and-int/lit16 v10, v4, 0x1c00

    or-int/2addr v1, v10

    const v10, 0xe000

    and-int/2addr v10, v4

    or-int/2addr v1, v10

    const/high16 v10, 0x380000

    and-int/2addr v10, v4

    or-int/2addr v1, v10

    const/high16 v10, 0x1c00000

    and-int/2addr v10, v4

    or-int/2addr v1, v10

    const/high16 v10, 0xe000000

    and-int/2addr v4, v10

    or-int v10, v1, v4

    shr-int/lit8 v0, v0, 0x15

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v11, v0, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v11}, Lo0/a4;->c(Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFLr0/q;II)V

    move-object v3, v2

    move v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    goto :goto_9

    :cond_13
    invoke-virtual/range {p9 .. p9}, Lr0/q;->W()V

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    :goto_9
    invoke-virtual/range {p9 .. p9}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_14

    new-instance v0, Lo0/x3;

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move v10, v12

    invoke-direct/range {v0 .. v10}, Lo0/x3;-><init>(Lo0/a4;Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFI)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_14
    return-void
.end method

.method public final c(Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFLr0/q;II)V
    .locals 26

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v0, p4

    move-object/from16 v2, p9

    move/from16 v3, p10

    const v4, 0x7f37829    # 3.66332E-34f

    invoke-virtual {v2, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v7, v3, 0x30

    if-nez v7, :cond_3

    const/high16 v7, 0x7fc00000    # Float.NaN

    invoke-virtual {v2, v7}, Lr0/q;->d(F)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_3
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v2, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v4, v7

    :cond_5
    and-int/lit16 v7, v3, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v2, v15}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v4, v7

    :cond_7
    and-int/lit16 v7, v3, 0x6000

    if-nez v7, :cond_9

    invoke-virtual {v2, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_5

    :cond_8
    const/16 v7, 0x2000

    :goto_5
    or-int/2addr v4, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v3

    move-object/from16 v12, p5

    if-nez v7, :cond_b

    invoke-virtual {v2, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v7, 0x10000

    :goto_6
    or-int/2addr v4, v7

    :cond_b
    const/high16 v7, 0x180000

    and-int/2addr v7, v3

    if-nez v7, :cond_d

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v11, 0x80000

    :goto_7
    or-int/2addr v4, v11

    goto :goto_8

    :cond_d
    move-object/from16 v7, p6

    :goto_8
    const/high16 v11, 0xc00000

    and-int/2addr v11, v3

    if-nez v11, :cond_f

    move/from16 v11, p7

    invoke-virtual {v2, v11}, Lr0/q;->d(F)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v16, 0x400000

    :goto_9
    or-int v4, v4, v16

    goto :goto_a

    :cond_f
    move/from16 v11, p7

    :goto_a
    const/high16 v16, 0x6000000

    and-int v16, v3, v16

    move/from16 v10, p8

    if-nez v16, :cond_11

    invoke-virtual {v2, v10}, Lr0/q;->d(F)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v17, 0x2000000

    :goto_b
    or-int v4, v4, v17

    :cond_11
    const/high16 v17, 0x30000000

    and-int v17, v3, v17

    const/4 v9, 0x0

    if-nez v17, :cond_13

    invoke-virtual {v2, v9}, Lr0/q;->h(Z)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x10000000

    :goto_c
    or-int v4, v4, v17

    :cond_13
    and-int/lit8 v17, p11, 0x6

    if-nez v17, :cond_15

    invoke-virtual {v2, v9}, Lr0/q;->h(Z)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x4

    goto :goto_d

    :cond_14
    move/from16 v17, v5

    :goto_d
    or-int v17, p11, v17

    goto :goto_e

    :cond_15
    move/from16 v17, p11

    :goto_e
    const v18, 0x12492493

    and-int v6, v4, v18

    const v13, 0x12492492

    const/4 v8, 0x1

    if-ne v6, v13, :cond_17

    and-int/lit8 v6, v17, 0x3

    if-eq v6, v5, :cond_16

    goto :goto_f

    :cond_16
    move v5, v9

    goto :goto_10

    :cond_17
    :goto_f
    move v5, v8

    :goto_10
    and-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v0, v15, v9}, Lo0/t3;->a(ZZ)J

    move-result-wide v5

    invoke-virtual {v0, v15, v8}, Lo0/t3;->a(ZZ)J

    move-result-wide v9

    if-eqz v15, :cond_18

    move-wide/from16 v20, v9

    iget-wide v8, v0, Lo0/t3;->e:J

    goto :goto_11

    :cond_18
    move-wide/from16 v20, v9

    iget-wide v8, v0, Lo0/t3;->j:J

    :goto_11
    if-eqz v15, :cond_19

    iget-wide v13, v0, Lo0/t3;->c:J

    goto :goto_12

    :cond_19
    iget-wide v13, v0, Lo0/t3;->h:J

    :goto_12
    iget-object v10, v1, Lo0/o4;->m:Lr/m1;

    sget-object v0, Lr/m1;->l:Lr/m1;

    if-ne v10, v0, :cond_1a

    sget v0, Lo0/m4;->a:F

    move-object/from16 v10, p2

    invoke-static {v10, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    sget-object v3, Lu/b1;->b:Lu/v;

    invoke-interface {v0, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    goto :goto_13

    :cond_1a
    move-object/from16 v10, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v10, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    sget v3, Lo0/m4;->a:F

    invoke-static {v0, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    :goto_13
    and-int/lit8 v3, v4, 0x70

    move/from16 v22, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    or-int v4, v4, v23

    move/from16 v23, v4

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-nez v23, :cond_1c

    if-ne v4, v7, :cond_1d

    :cond_1c
    new-instance v4, Lb0/x2;

    const/4 v10, 0x7

    invoke-direct {v4, v10, v1}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1d
    check-cast v4, Li9/f;

    sget-object v10, Lf1/o;->a:Lf1/o;

    invoke-static {v10, v4}, Lc2/x;->k(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v4

    invoke-interface {v0, v4}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x1

    goto :goto_15

    :cond_1e
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v5, v6}, Lr0/q;->f(J)Z

    move-result v4

    or-int/2addr v3, v4

    move-object v4, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lr0/q;->f(J)Z

    move-result v10

    or-int/2addr v3, v10

    invoke-virtual {v2, v8, v9}, Lr0/q;->f(J)Z

    move-result v10

    or-int/2addr v3, v10

    invoke-virtual {v2, v13, v14}, Lr0/q;->f(J)Z

    move-result v10

    or-int/2addr v3, v10

    const/high16 v10, 0x1c00000

    and-int v10, v22, v10

    const/high16 v0, 0x800000

    if-ne v10, v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_16

    :cond_1f
    const/4 v0, 0x0

    :goto_16
    or-int/2addr v0, v3

    const/high16 v1, 0xe000000

    and-int v1, v22, v1

    const/high16 v3, 0x4000000

    if-ne v1, v3, :cond_20

    const/4 v1, 0x1

    goto :goto_17

    :cond_20
    const/4 v1, 0x0

    :goto_17
    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int v1, v22, v1

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_21

    const/4 v1, 0x1

    goto :goto_18

    :cond_21
    const/4 v1, 0x0

    :goto_18
    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int v1, v22, v1

    const/high16 v3, 0x100000

    if-ne v1, v3, :cond_22

    const/4 v1, 0x1

    goto :goto_19

    :cond_22
    const/4 v1, 0x0

    :goto_19
    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int v1, v22, v1

    const/high16 v3, 0x20000000

    if-ne v1, v3, :cond_23

    const/4 v1, 0x1

    goto :goto_1a

    :cond_23
    const/4 v1, 0x0

    :goto_1a
    or-int/2addr v0, v1

    and-int/lit8 v1, v17, 0xe

    const/4 v3, 0x4

    if-ne v1, v3, :cond_24

    const/16 v19, 0x1

    goto :goto_1b

    :cond_24
    const/16 v19, 0x0

    :goto_1b
    or-int v0, v0, v19

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_26

    if-ne v1, v7, :cond_25

    goto :goto_1c

    :cond_25
    move-object v14, v2

    move-object v15, v4

    goto :goto_1d

    :cond_26
    :goto_1c
    new-instance v0, Lo0/v3;

    move-wide/from16 v24, v13

    move-object v14, v2

    move-wide v2, v5

    move-wide v6, v8

    move-wide/from16 v8, v24

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    move-object v15, v4

    move v10, v11

    move-wide/from16 v4, v20

    move/from16 v11, p8

    invoke-direct/range {v0 .. v13}, Lo0/v3;-><init>(Lo0/o4;JJJJFFLi9/e;Li9/f;)V

    invoke-virtual {v14, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1d
    check-cast v1, Li9/c;

    const/4 v10, 0x0

    invoke-static {v10, v15, v1, v14}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_1e

    :cond_27
    move-object v14, v2

    invoke-virtual {v14}, Lr0/q;->W()V

    :goto_1e
    invoke-virtual {v14}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_28

    new-instance v0, Lo0/w3;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lo0/w3;-><init>(Lo0/a4;Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFII)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_28
    return-void
.end method
