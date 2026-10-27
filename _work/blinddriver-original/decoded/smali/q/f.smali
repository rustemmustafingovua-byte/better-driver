.class public abstract Lq/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Lf3/b0;->l:Lf3/b0;

    sget-object v0, Lf3/k;->a:Lr0/a0;

    sget-object v0, Lf3/b0;->l:Lf3/b0;

    sget-object v0, Lf3/b0;->l:Lf3/b0;

    new-instance v1, Lq/c;

    sget-wide v2, Lm1/p;->c:J

    sget-wide v4, Lm1/p;->b:J

    const v0, 0x3ec28f5c    # 0.38f

    invoke-static {v0, v4, v5}, Lm1/p;->b(FJ)J

    move-result-wide v8

    invoke-static {v0, v4, v5}, Lm1/p;->b(FJ)J

    move-result-wide v10

    move-wide v6, v4

    invoke-direct/range {v1 .. v11}, Lq/c;-><init>(JJJJJ)V

    sput-object v1, Lq/f;->a:Lq/c;

    return-void
.end method

.method public static final a(Lq/c;Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, -0x1f76910f

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, v1, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    :cond_3
    and-int/lit16 v6, v1, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v0, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v2, v6

    :cond_5
    and-int/lit16 v6, v2, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_6

    move v6, v9

    goto :goto_4

    :cond_6
    move v6, v8

    :goto_4
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7, v6}, Lr0/q;->T(IZ)Z

    move-result v6

    if-eqz v6, :cond_b

    sget v6, Lq/e;->d:F

    sget v7, Lq/e;->e:F

    invoke-static {v7}, La0/e;->a(F)La0/d;

    move-result-object v11

    int-to-float v7, v8

    invoke-static {v6, v7}, Lb3/f;->a(FF)I

    move-result v10

    if-lez v10, :cond_7

    move v12, v9

    goto :goto_5

    :cond_7
    move v12, v8

    :goto_5
    sget-wide v13, Lm1/w;->a:J

    invoke-static {v6, v7}, Lb3/f;->a(FF)I

    move-result v6

    if-gtz v6, :cond_9

    if-eqz v12, :cond_8

    goto :goto_6

    :cond_8
    move-object v6, v4

    goto :goto_7

    :cond_9
    :goto_6
    new-instance v10, Lj1/n;

    move-wide v15, v13

    invoke-direct/range {v10 .. v16}, Lj1/n;-><init>(Lm1/h0;ZJJ)V

    invoke-interface {v4, v10}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v6

    :goto_7
    iget-wide v10, v3, Lq/c;->a:J

    sget-object v7, Lm1/v;->b:Lm1/e0;

    invoke-static {v6, v10, v11, v7}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v6

    sget-object v7, Lu/f0;->m:Lu/f0;

    invoke-static {v6, v7}, Lu/b;->w(Lf1/r;Lu/f0;)Lf1/r;

    move-result-object v6

    const/4 v7, 0x0

    sget v10, Lq/e;->i:F

    invoke-static {v6, v7, v10, v9}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v6

    invoke-static {v0}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v7

    invoke-static {v6, v7}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v6

    shl-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0x1c00

    sget-object v7, Lu/h;->c:Lu/c;

    sget-object v10, Lf1/c;->x:Lf1/h;

    invoke-static {v7, v10, v0, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v10, v0, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v6, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v12, v0, Lr0/q;->S:Z

    if-eqz v12, :cond_a

    invoke-virtual {v0, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_8
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v7, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v10, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v0, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v0, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v7, Le2/g;->d:Le2/e;

    invoke-static {v7, v6, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v2, v2, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v6, Lu/s;->a:Lu/s;

    invoke-virtual {v5, v6, v0, v2}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_9
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Lb0/a3;

    const/16 v2, 0xd

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final b(Lf1/r;Lq/c;Li9/c;Lr0/q;II)V
    .locals 8

    const v0, -0x2548d191

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v1, p4, 0x6

    goto :goto_1

    :cond_0
    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    :goto_1
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_2
    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :goto_3
    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_4

    :cond_4
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    if-eq v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {p3, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    sget-object p0, Lf1/o;->a:Lf1/o;

    :cond_6
    if-eqz v2, :cond_7

    sget-object p1, Lq/f;->a:Lq/c;

    :cond_7
    new-instance v0, Lb0/l2;

    const/4 v2, 0x7

    invoke-direct {v0, v2, p2, p1}, Lb0/l2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v2, -0xeebf658

    invoke-static {v2, v0, p3}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x180

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {p1, p0, v0, p3, v1}, Lq/f;->a(Lq/c;Lf1/r;Lz0/d;Lr0/q;I)V

    :goto_6
    move-object v3, p0

    move-object v4, p1

    goto :goto_7

    :cond_8
    invoke-virtual {p3}, Lr0/q;->W()V

    goto :goto_6

    :goto_7
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v2, Lb0/a3;

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lb0/a3;-><init>(Lf1/r;Lq/c;Li9/c;II)V

    iput-object v2, p0, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final c(Ljava/lang/String;ZLq/c;Lf1/r;Li9/f;Li9/a;Lr0/q;I)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v8, p6

    move/from16 v1, p7

    const v2, -0x774762b3

    invoke-virtual {v8, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v1, 0x6

    const/4 v3, 0x4

    if-nez v2, :cond_1

    invoke-virtual {v8, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v5, v1, 0x30

    const/16 v6, 0x20

    if-nez v5, :cond_3

    invoke-virtual {v8, v11}, Lr0/q;->h(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_3
    and-int/lit16 v5, v1, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v8, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v1, 0xc00

    if-nez v5, :cond_7

    invoke-virtual {v8, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v2, v5

    :cond_7
    and-int/lit16 v5, v1, 0x6000

    if-nez v5, :cond_9

    invoke-virtual {v8, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_5

    :cond_8
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v2, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v1

    const/high16 v7, 0x20000

    if-nez v5, :cond_b

    invoke-virtual {v8, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    goto :goto_6

    :cond_a
    const/high16 v5, 0x10000

    :goto_6
    or-int/2addr v2, v5

    :cond_b
    const v5, 0x12493

    and-int/2addr v5, v2

    const v9, 0x12492

    if-eq v5, v9, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    and-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Lq/e;->f:Lf1/i;

    sget-object v9, Lu/h;->a:Lu/n;

    sget v9, Lq/e;->h:F

    invoke-static {v9}, Lu/h;->g(F)Lu/f;

    move-result-object v10

    and-int/lit8 v4, v2, 0x70

    if-ne v4, v6, :cond_d

    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    const/high16 v6, 0x70000

    and-int/2addr v6, v2

    if-ne v6, v7, :cond_e

    const/4 v6, 0x1

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    :goto_9
    or-int/2addr v4, v6

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_f

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v6, v4, :cond_10

    :cond_f
    new-instance v6, Lb0/q0;

    invoke-direct {v6, v11, v15, v3}, Lb0/q0;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v6, Li9/a;

    const/16 v3, 0xc

    invoke-static {v13, v11, v0, v6, v3}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    sget v6, Lq/e;->a:F

    sget v7, Lq/e;->b:F

    sget v4, Lq/e;->c:F

    invoke-static {v3, v6, v4, v7, v4}, Lu/b1;->n(Lf1/r;FFFF)Lf1/r;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v9, v4, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v10, v5, v8, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v5, v8, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v3, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v9, v8, Lr0/q;->S:Z

    if-eqz v9, :cond_11

    invoke-virtual {v8, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_a
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v4, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v8, v5, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v8, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v10, Le2/g;->d:Le2/e;

    invoke-static {v10, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-nez v14, :cond_12

    const v3, -0x5f3ebcd6

    invoke-virtual {v8, v3}, Lr0/q;->b0(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lr0/q;->q(Z)V

    move/from16 v17, v2

    goto :goto_d

    :cond_12
    const v3, -0x5f3ebcd5

    invoke-virtual {v8, v3}, Lr0/q;->b0(I)V

    sget v19, Lq/e;->j:F

    const/16 v20, 0x0

    const/16 v23, 0x2

    sget-object v18, Lf1/o;->a:Lf1/o;

    move/from16 v21, v19

    move/from16 v22, v19

    invoke-static/range {v18 .. v23}, Lu/b1;->k(Lf1/r;FFFFI)Lf1/r;

    move-result-object v3

    sget-object v0, Lf1/c;->l:Lf1/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v0

    move/from16 v17, v2

    iget-wide v1, v8, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v3, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v11, v8, Lr0/q;->S:Z

    if-eqz v11, :cond_13

    invoke-virtual {v8, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_b

    :cond_13
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_b
    invoke-static {v9, v0, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v8, v6, v8, v5}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v10, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz p1, :cond_14

    iget-wide v0, v12, Lq/c;->c:J

    goto :goto_c

    :cond_14
    iget-wide v0, v12, Lq/c;->e:J

    :goto_c
    new-instance v2, Lm1/p;

    invoke-direct {v2, v0, v1}, Lm1/p;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v2, v8, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v8, v1}, Lr0/q;->q(Z)V

    :goto_d
    if-eqz p1, :cond_15

    iget-wide v0, v12, Lq/c;->b:J

    :goto_e
    move-wide/from16 v19, v0

    goto :goto_f

    :cond_15
    iget-wide v0, v12, Lq/c;->d:J

    goto :goto_e

    :goto_f
    sget v26, Lq/e;->g:I

    sget-wide v21, Lq/e;->m:J

    sget-object v23, Lq/e;->n:Lt2/k;

    sget-wide v27, Lq/e;->o:J

    sget-wide v24, Lq/e;->p:J

    new-instance v2, Lp2/m0;

    const v29, 0xfd7f78

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v29}, Lp2/m0;-><init>(JJLt2/k;JIJI)V

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_16

    goto :goto_10

    :cond_16
    const-string v1, "invalid weight; must be greater than zero"

    invoke-static {v1}, Lv/a;->a(Ljava/lang/String;)V

    :goto_10
    new-instance v1, Lu/j0;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lu/j0;-><init>(FZ)V

    and-int/lit8 v0, v17, 0xe

    const/high16 v4, 0x180000

    or-int v9, v0, v4

    const/16 v10, 0x3b8

    move/from16 v16, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v11, v16

    invoke-static/range {v0 .. v10}, Lb0/n1;->b(Ljava/lang/String;Lf1/r;Lp2/m0;Li9/c;IZIILr0/q;II)V

    invoke-virtual {v8, v11}, Lr0/q;->q(Z)V

    goto :goto_11

    :cond_17
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_11
    invoke-virtual {v8}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_18

    new-instance v0, Lo0/i0;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v7, p7

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lo0/i0;-><init>(Ljava/lang/String;ZLq/c;Lf1/r;Li9/f;Li9/a;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_18
    return-void
.end method
