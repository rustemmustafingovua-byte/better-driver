.class public abstract Lo0/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:Ln/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lq0/c0;->p:F

    sput v0, Lo0/w4;->a:F

    sget v1, Lq0/c0;->z:F

    sput v1, Lo0/w4;->b:F

    sget v1, Lq0/c0;->w:F

    sput v1, Lo0/w4;->c:F

    sget v1, Lq0/c0;->t:F

    sput v1, Lo0/w4;->d:F

    sub-float/2addr v1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v0

    sput v1, Lo0/w4;->e:F

    new-instance v0, Ln/p0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln/p0;-><init>(I)V

    sput-object v0, Lo0/w4;->f:Ln/p0;

    return-void
.end method

.method public static final a(ZLi9/c;Lf1/r;ZLo0/u4;Lr0/q;I)V
    .locals 47

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    const v0, -0xfb23c9f

    invoke-virtual {v6, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p6, 0x6

    if-nez v0, :cond_1

    move/from16 v0, p0

    invoke-virtual {v6, v0}, Lr0/q;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p6, v3

    goto :goto_1

    :cond_1
    move/from16 v0, p0

    move/from16 v3, p6

    :goto_1
    and-int/lit8 v4, p6, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v6, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    or-int/lit16 v4, v3, 0x6d80

    const/high16 v5, 0x30000

    and-int v5, p6, v5

    if-nez v5, :cond_4

    const v4, 0x16d80

    or-int/2addr v4, v3

    :cond_4
    const/high16 v3, 0x180000

    or-int/2addr v3, v4

    const v4, 0x92493

    and-int/2addr v4, v3

    const v5, 0x92492

    const/4 v7, 0x0

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_3
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v6, v5, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Lr0/q;->Y()V

    and-int/lit8 v4, p6, 0x1

    sget-object v5, Lf1/o;->a:Lf1/o;

    const v9, -0x70001

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Lr0/q;->C()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Lr0/q;->W()V

    and-int/2addr v3, v9

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move v9, v3

    move/from16 v3, p3

    goto/16 :goto_6

    :cond_7
    :goto_4
    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v6, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-object v10, v4, Lo0/u0;->g0:Lo0/u4;

    iget-wide v11, v4, Lo0/u0;->p:J

    if-nez v10, :cond_8

    new-instance v13, Lo0/u4;

    sget-object v10, Lq0/c0;->o:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v14

    sget-object v10, Lq0/c0;->r:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v16

    sget-wide v18, Lm1/p;->f:J

    sget-object v10, Lq0/c0;->q:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v20

    sget-object v10, Lq0/c0;->y:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v22

    sget-object v10, Lq0/c0;->B:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v24

    sget-object v10, Lq0/c0;->x:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v26

    sget-object v10, Lq0/c0;->A:Lq0/g;

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v28

    sget-object v10, Lq0/c0;->a:Lq0/g;

    move/from16 v46, v9

    invoke-static {v4, v10}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget v10, Lq0/c0;->b:F

    invoke-static {v10, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v30

    sget-object v8, Lq0/c0;->e:Lq0/g;

    invoke-static {v4, v8}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget v10, Lq0/c0;->f:F

    invoke-static {v10, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v32

    sget-object v8, Lq0/c0;->c:Lq0/g;

    invoke-static {v4, v8}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget v1, Lq0/c0;->d:F

    invoke-static {v1, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v36

    sget-object v1, Lq0/c0;->g:Lq0/g;

    invoke-static {v4, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget v1, Lq0/c0;->h:F

    invoke-static {v1, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v38

    sget-object v1, Lq0/c0;->k:Lq0/g;

    invoke-static {v4, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v40

    sget-object v1, Lq0/c0;->l:Lq0/g;

    invoke-static {v4, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v42

    sget-object v1, Lq0/c0;->i:Lq0/g;

    invoke-static {v4, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget v1, Lq0/c0;->j:F

    invoke-static {v1, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Lm1/v;->k(JJ)J

    move-result-wide v44

    move-wide/from16 v34, v18

    invoke-direct/range {v13 .. v45}, Lo0/u4;-><init>(JJJJJJJJJJJJJJJJ)V

    iput-object v13, v4, Lo0/u0;->g0:Lo0/u4;

    move-object v10, v13

    goto :goto_5

    :cond_8
    move/from16 v46, v9

    :goto_5
    and-int v3, v3, v46

    move v9, v3

    move-object v8, v5

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v6}, Lr0/q;->r()V

    const v1, 0x696ac19a

    invoke-virtual {v6, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v1, v4, :cond_9

    new-instance v1, Ls/i;

    invoke-direct {v1}, Ls/i;-><init>()V

    invoke-virtual {v6, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v4, v1

    check-cast v4, Ls/i;

    invoke-virtual {v6, v7}, Lr0/q;->q(Z)V

    if-eqz v2, :cond_a

    sget-object v1, Lo0/n1;->a:Lc2/k;

    sget-object v0, Lo0/v1;->a:Lo0/v1;

    move-object v1, v4

    new-instance v4, Lm2/h;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lm2/h;-><init>(I)V

    move-object v5, v2

    move-object v2, v1

    move/from16 v1, p0

    invoke-static/range {v0 .. v5}, Lz/c;->b(Lf1/r;ZLs/i;ZLm2/h;Li9/c;)Lf1/r;

    move-result-object v0

    move-object v1, v2

    move-object v5, v0

    :goto_7
    move v2, v3

    goto :goto_8

    :cond_a
    move-object v1, v4

    goto :goto_7

    :goto_8
    invoke-interface {v8, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b1;->t(Lf1/r;)Lf1/r;

    move-result-object v0

    sget v3, Lo0/w4;->c:F

    sget v4, Lo0/w4;->d:F

    invoke-static {v0, v3, v4}, Lu/b1;->j(Lf1/r;FF)Lf1/r;

    move-result-object v0

    sget-object v3, Lq0/c0;->m:Lq0/y;

    invoke-static {v3, v6}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v5

    shl-int/lit8 v3, v9, 0x3

    and-int/lit8 v4, v3, 0x70

    shr-int/lit8 v7, v9, 0x6

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v4, v7

    const v7, 0xe000

    and-int/2addr v3, v7

    or-int v7, v4, v3

    move-object v4, v1

    move-object v3, v10

    move/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lo0/w4;->b(Lf1/r;ZZLo0/u4;Ls/i;Lm1/h0;Lr0/q;I)V

    move v4, v2

    move-object v5, v3

    move-object v3, v8

    goto :goto_9

    :cond_b
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    :goto_9
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_c

    new-instance v0, Lo0/k0;

    const/4 v7, 0x1

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lo0/k0;-><init>(ZLi9/c;Lf1/r;ZLjava/lang/Object;II)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final b(Lf1/r;ZZLo0/u4;Ls/i;Lm1/h0;Lr0/q;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v0, p6

    move/from16 v7, p7

    const v8, -0x27fd625d

    invoke-virtual {v0, v8}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v8, v7, 0x6

    if-nez v8, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    and-int/lit8 v11, v7, 0x30

    if-nez v11, :cond_3

    invoke-virtual {v0, v2}, Lr0/q;->h(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v8, v11

    :cond_3
    and-int/lit16 v11, v7, 0x180

    if-nez v11, :cond_5

    invoke-virtual {v0, v3}, Lr0/q;->h(Z)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_3

    :cond_4
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v8, v11

    :cond_5
    and-int/lit16 v11, v7, 0xc00

    if-nez v11, :cond_7

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_4

    :cond_6
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v8, v11

    :cond_7
    and-int/lit16 v11, v7, 0x6000

    if-nez v11, :cond_9

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_5

    :cond_8
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v8, v11

    :cond_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v7

    if-nez v11, :cond_b

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v11, 0x10000

    :goto_6
    or-int/2addr v8, v11

    :cond_b
    const/high16 v11, 0x180000

    and-int/2addr v11, v7

    if-nez v11, :cond_d

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v11, 0x80000

    :goto_7
    or-int/2addr v8, v11

    :cond_d
    const v11, 0x92493

    and-int/2addr v11, v8

    const v12, 0x92492

    const/4 v13, 0x1

    if-eq v11, v12, :cond_e

    move v11, v13

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_8
    and-int/2addr v8, v13

    invoke-virtual {v0, v8, v11}, Lr0/q;->T(IZ)Z

    move-result v8

    if-eqz v8, :cond_1e

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    iget-wide v11, v4, Lo0/u4;->b:J

    goto :goto_9

    :cond_f
    iget-wide v11, v4, Lo0/u4;->f:J

    goto :goto_9

    :cond_10
    if-eqz v2, :cond_11

    iget-wide v11, v4, Lo0/u4;->j:J

    goto :goto_9

    :cond_11
    iget-wide v11, v4, Lo0/u4;->n:J

    :goto_9
    if-eqz v3, :cond_13

    if-eqz v2, :cond_12

    iget-wide v9, v4, Lo0/u4;->a:J

    goto :goto_a

    :cond_12
    iget-wide v9, v4, Lo0/u4;->e:J

    goto :goto_a

    :cond_13
    if-eqz v2, :cond_14

    iget-wide v9, v4, Lo0/u4;->i:J

    goto :goto_a

    :cond_14
    iget-wide v9, v4, Lo0/u4;->m:J

    :goto_a
    sget-object v8, Lq0/c0;->v:Lq0/y;

    invoke-static {v8, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v8

    sget v15, Lq0/c0;->u:F

    if-eqz v3, :cond_16

    if-eqz v2, :cond_15

    iget-wide v13, v4, Lo0/u4;->c:J

    goto :goto_b

    :cond_15
    iget-wide v13, v4, Lo0/u4;->g:J

    goto :goto_b

    :cond_16
    if-eqz v2, :cond_17

    iget-wide v13, v4, Lo0/u4;->k:J

    goto :goto_b

    :cond_17
    iget-wide v13, v4, Lo0/u4;->o:J

    :goto_b
    invoke-static {v1, v15, v13, v14, v8}, Lp/o;->h(Lf1/r;FJLm1/h0;)Lf1/r;

    move-result-object v13

    invoke-static {v13, v11, v12, v8}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v8

    sget-object v11, Lf1/c;->l:Lf1/j;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v11

    iget-wide v12, v0, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    invoke-static {v8, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v15, v0, Lr0/q;->S:Z

    if-eqz v15, :cond_18

    invoke-virtual {v0, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_c

    :cond_18
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_c
    sget-object v15, Le2/g;->f:Le2/e;

    invoke-static {v15, v11, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v11, Le2/g;->e:Le2/e;

    invoke-static {v11, v13, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v13, Le2/g;->g:Le2/e;

    iget-boolean v1, v0, Lr0/q;->S:Z

    if-nez v1, :cond_19

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    invoke-static {v12, v0, v12, v13}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_1a
    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Lu/n;->b:Lu/n;

    sget-object v8, Lf1/c;->o:Lf1/j;

    invoke-virtual {v3, v8}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v3

    new-instance v8, Lo0/e5;

    sget-object v12, Lq0/q;->m:Lq0/q;

    invoke-static {v12, v0}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v12

    invoke-direct {v8, v5, v2, v12}, Lo0/e5;-><init>(Ls/i;ZLn/r0;)V

    invoke-interface {v3, v8}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    sget v8, Lq0/c0;->s:F

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v8, v12

    const/4 v2, 0x0

    const/4 v12, 0x4

    invoke-static {v12, v8, v2}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lp/b1;->a(Lf1/r;Ls/i;Lp/e1;)Lf1/r;

    move-result-object v3

    invoke-static {v3, v9, v10, v6}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    sget-object v8, Lf1/c;->p:Lf1/j;

    invoke-static {v8, v2}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v8

    iget-wide v9, v0, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v3, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_1b

    invoke-virtual {v0, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_d

    :cond_1b
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_d
    invoke-static {v15, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v9, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v8, v0, Lr0/q;->S:Z

    if-nez v8, :cond_1c

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    :cond_1c
    invoke-static {v2, v0, v2, v13}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_1d
    invoke-static {v1, v3, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v1, 0x49acf3f3

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_e
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_1f

    new-instance v0, Lo0/v4;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Lo0/v4;-><init>(Lf1/r;ZZLo0/u4;Ls/i;Lm1/h0;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_1f
    return-void
.end method
