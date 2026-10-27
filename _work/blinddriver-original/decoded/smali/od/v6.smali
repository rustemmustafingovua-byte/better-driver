.class public abstract Lod/v6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(JLz0/d;Lr0/q;I)V
    .locals 7

    const v0, 0x2b89c50d

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0, p1}, Lr0/q;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2c

    int-to-float v0, v0

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, v0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v0

    sget-object v1, La0/e;->a:La0/d;

    invoke-static {v0, v1}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v0

    sget-object v1, Lm1/v;->b:Lm1/e0;

    invoke-static {v0, p0, p1, v1}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v0

    sget-object v1, Lf1/c;->p:Lf1/j;

    invoke-static {v1, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

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

    if-eqz v6, :cond_3

    invoke-virtual {p3, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lr0/q;->o0()V

    :goto_3
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v1, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {p3, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {p3, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v0, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v4}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_5

    new-instance v0, Lod/e6;

    invoke-direct {v0, p0, p1, p2, p4}, Lod/e6;-><init>(JLz0/d;I)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final B(Ljava/lang/String;Lz0/d;Lr0/q;I)V
    .locals 8

    const-string v0, "title"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x55880116

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v0, v0, Lo0/u0;->r:J

    const v2, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v0

    const/16 v5, 0x6000

    const/16 v6, 0xe

    const-wide/16 v2, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lo0/z2;->h(JJLr0/q;II)Lo0/a0;

    move-result-object v2

    new-instance v0, Lb0/l2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lb0/l2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v1, -0x57235cc8

    invoke-static {v1, v0, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/high16 v6, 0x30000

    const/16 v7, 0x1b

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lo0/z2;->c(Lf1/r;Lm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;II)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lb0/h;

    const/4 v2, 0x3

    invoke-direct {v1, p3, v2, p0, p1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final C(Lua/nav/a;Ljd/b;ZLi9/a;Li9/a;Lr0/q;I)V
    .locals 18

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v15, p5

    const-string v0, "onClose"

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5fdf9aa2

    invoke-virtual {v15, v0}, Lr0/q;->c0(I)Lr0/q;

    move-object/from16 v1, p0

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    move-object/from16 v2, p1

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v15, v3}, Lr0/q;->h(Z)Z

    move-result v5

    const/16 v6, 0x100

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x2493

    const/16 v7, 0x2492

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v7, :cond_3

    move v5, v9

    goto :goto_3

    :cond_3
    move v5, v8

    :goto_3
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v15, v7, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v5, v7, :cond_5

    if-eqz v3, :cond_4

    sget-object v5, Lod/f4;->o:Lod/f4;

    goto :goto_4

    :cond_4
    sget-object v5, Lod/f4;->l:Lod/f4;

    :goto_4
    invoke-static {v5}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v5

    invoke-virtual {v15, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v10, v5

    check-cast v10, Lr0/u0;

    and-int/lit16 v0, v0, 0x380

    if-ne v0, v6, :cond_6

    goto :goto_5

    :cond_6
    move v9, v8

    :goto_5
    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v9, :cond_7

    if-ne v0, v7, :cond_8

    :cond_7
    new-instance v0, Lod/z5;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v10, v5}, Lod/z5;-><init>(ZLjava/lang/Object;Lr0/u0;I)V

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v9, v0

    check-cast v9, Li9/a;

    invoke-virtual {v15, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_9

    if-ne v5, v7, :cond_a

    :cond_9
    new-instance v5, Lkd/p;

    const/16 v0, 0x9

    invoke-direct {v5, v9, v0}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v15, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Li9/a;

    invoke-static {v8, v5, v15, v8}, Lwa/h;->a(ZLi9/a;Lr0/q;I)V

    sget-object v0, Lu/b1;->c:Lu/v;

    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v11, v5, Lo0/u0;->n:J

    new-instance v5, Lg0/p;

    move-object/from16 v8, p4

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lg0/p;-><init>(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Lr0/u0;)V

    const v1, 0x165ac83d

    invoke-static {v1, v5, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const v16, 0xc00006

    const/16 v17, 0x7a

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-wide v7, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v17}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_6

    :cond_b
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    :goto_6
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v0, Lod/y;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lod/y;-><init>(Lua/nav/a;Ljd/b;ZLi9/a;Li9/a;I)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final D(Lr0/q;I)V
    .locals 14

    const v0, -0x1a678972    # -8.999833E22f

    invoke-virtual {p0, v0}, Lr0/q;->c0(I)Lr0/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Lnd/p;

    const/4 v1, 0x6

    invoke-direct {v2, v0, v1}, Lnd/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v3, v2

    check-cast v3, Li9/a;

    sget-object v0, Lf1/o;->a:Lf1/o;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v10, Lod/m;->q1:Lz0/d;

    const v12, 0x30000030

    const/16 v13, 0x1fc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p0

    invoke-static/range {v3 .. v13}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_1

    :cond_3
    move-object v11, p0

    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {v11}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lod/u;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lod/u;-><init>(II)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final E(Lkd/j;Lr0/q;I)V
    .locals 7

    const v0, 0x35f91a7e

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lkd/j;->j:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v3

    iget-object v0, p0, Lkd/j;->l:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v4

    iget-object v0, p0, Lkd/j;->n:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v5

    new-instance v1, Lb0/e2;

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lb0/e2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0x15587b2b

    invoke-static {v0, v1, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u043b\u044f \u0456\u043d\u0448\u0438\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0456\u0432 (\u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f)"

    const/16 v2, 0x36

    invoke-static {v1, v0, p1, v2}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lb0/x;

    const/16 v1, 0x1d

    invoke-direct {v0, p2, v1, p0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v3, p5

    const-string v4, "title"

    invoke-static {v0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "hint"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onChange"

    invoke-static {v2, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x63611a0d

    invoke-virtual {v5, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v5, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v5, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    move/from16 v6, p2

    invoke-virtual {v5, v6}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v4, v7

    and-int/lit16 v7, v3, 0xc00

    if-nez v7, :cond_6

    invoke-virtual {v5, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x800

    goto :goto_4

    :cond_5
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v4, v7

    :cond_6
    and-int/lit16 v7, v4, 0x493

    const/16 v8, 0x492

    if-eq v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v5, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lf1/c;->v:Lf1/i;

    sget-object v8, Lf1/o;->a:Lf1/o;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v11}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v12

    sget-object v13, Lu/h;->a:Lu/n;

    const/16 v14, 0x30

    invoke-static {v13, v7, v5, v14}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v7

    iget-wide v13, v5, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v14

    invoke-static {v12, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v12

    sget-object v15, Le2/h;->b:Le2/g;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Le2/g;->b:Le2/f;

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v9, v5, Lr0/q;->S:Z

    if-eqz v9, :cond_8

    invoke-virtual {v5, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_6
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v7, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v14, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Le2/g;->g:Le2/e;

    invoke-static {v5, v13, v14}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v13, Le2/g;->h:Le2/d;

    invoke-static {v5, v13}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v10, Le2/g;->d:Le2/e;

    invoke-static {v10, v12, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    float-to-double v0, v11

    const-wide/16 v18, 0x0

    cmpl-double v0, v0, v18

    if-lez v0, :cond_9

    goto :goto_7

    :cond_9
    const-string v0, "invalid weight; must be greater than zero"

    invoke-static {v0}, Lv/a;->a(Ljava/lang/String;)V

    :goto_7
    new-instance v0, Lu/j0;

    const/4 v1, 0x1

    invoke-direct {v0, v11, v1}, Lu/j0;-><init>(FZ)V

    sget-object v11, Lu/h;->c:Lu/c;

    sget-object v12, Lf1/c;->x:Lf1/h;

    const/4 v1, 0x0

    invoke-static {v11, v12, v5, v1}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v11

    iget-wide v1, v5, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v0, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v12, v5, Lr0/q;->S:Z

    if-eqz v12, :cond_a

    invoke-virtual {v5, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_8
    invoke-static {v9, v11, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v2, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v5, v14, v5, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v10, v0, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v5, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->j:Lp2/m0;

    and-int/lit8 v20, v4, 0xe

    const/16 v21, 0x0

    const v22, 0xfffe

    move-object/from16 v18, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v7, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v9, v7

    const/4 v7, 0x0

    move-object v11, v8

    move v10, v9

    const-wide/16 v8, 0x0

    move v12, v10

    const/4 v10, 0x0

    move-object v14, v11

    move v13, v12

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v23, v15

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x1

    const/16 v17, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v19

    move-object/from16 v0, p0

    move-object/from16 v19, p4

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v5, v19

    invoke-static/range {p1 .. p1}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x36392a71

    invoke-virtual {v5, v0}, Lr0/q;->b0(I)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v5, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v2, v1, Lo0/u0;->s:J

    shr-int/lit8 v1, v23, 0x3

    and-int/lit8 v20, v1, 0xe

    const/16 v21, 0x0

    const v22, 0xfffa

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, p4

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v5, v19

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    const/4 v7, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    const v0, 0x363ab85b

    invoke-virtual {v5, v0}, Lr0/q;->b0(I)V

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v7}, Lr0/q;->q(Z)V

    const/16 v0, 0x8

    int-to-float v0, v0

    move-object/from16 v11, v27

    invoke-static {v11, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    shr-int/lit8 v0, v23, 0x6

    and-int/lit8 v6, v0, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v6}, Lo0/w4;->a(ZLi9/c;Lf1/r;ZLo0/u4;Lr0/q;I)V

    invoke-virtual {v5, v7}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_c
    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_b
    invoke-virtual {v5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_d

    new-instance v0, Lod/e;

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lod/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLi9/c;II)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method

.method public static final G(Lsc/v0;Lua/nav/Tuning;Li9/c;Lr0/q;I)V
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move/from16 v0, p4

    const v3, 0x7d005520

    invoke-virtual {v9, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v9, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    const/16 v26, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move/from16 v3, v26

    :goto_0
    or-int/2addr v3, v0

    invoke-virtual {v9, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x180

    if-nez v4, :cond_3

    move-object/from16 v4, p2

    invoke-virtual {v9, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v3, v6

    goto :goto_3

    :cond_3
    move-object/from16 v4, p2

    :goto_3
    and-int/lit16 v6, v3, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x0

    const/4 v10, 0x1

    if-eq v6, v7, :cond_4

    move v6, v10

    goto :goto_4

    :cond_4
    move v6, v8

    :goto_4
    and-int/lit8 v7, v3, 0x1

    invoke-virtual {v9, v7, v6}, Lr0/q;->T(IZ)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v1, Lsc/v0;->i:Li9/c;

    iget-wide v11, v1, Lsc/v0;->h:D

    iget-wide v13, v1, Lsc/v0;->f:D

    move-wide v15, v11

    iget-wide v11, v1, Lsc/v0;->g:D

    invoke-interface {v6, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Lr0/q;->c(D)Z

    move-result v17

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    move-wide/from16 v19, v11

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-nez v17, :cond_5

    if-ne v5, v11, :cond_6

    :cond_5
    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v5

    invoke-virtual {v9, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lr0/u0;

    sub-double v6, v19, v13

    div-double/2addr v6, v15

    double-to-int v6, v6

    if-ge v6, v10, :cond_7

    move v6, v10

    :cond_7
    sget-object v7, Lu/h;->c:Lu/c;

    sget-object v12, Lf1/c;->x:Lf1/h;

    invoke-static {v7, v12, v9, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    move-object/from16 v17, v11

    iget-wide v10, v9, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    sget-object v8, Lf1/o;->a:Lf1/o;

    invoke-static {v8, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v12

    sget-object v23, Le2/h;->b:Le2/g;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    move/from16 v23, v3

    iget-boolean v3, v9, Lr0/q;->S:Z

    if-eqz v3, :cond_8

    invoke-virtual {v9, v0}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_5
    sget-object v3, Le2/g;->f:Le2/e;

    invoke-static {v3, v7, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v11, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v9, v10, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v10, Le2/g;->h:Le2/d;

    invoke-static {v9, v10}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v12, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v12, Lf1/c;->v:Lf1/i;

    move-object/from16 v24, v5

    sget-object v5, Lu/h;->a:Lu/n;

    move/from16 v25, v6

    const/16 v6, 0x30

    invoke-static {v5, v12, v9, v6}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v5

    move-wide/from16 v27, v13

    iget-wide v12, v9, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v8, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v13, v9, Lr0/q;->S:Z

    if-eqz v13, :cond_9

    invoke-virtual {v9, v0}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v3, v5, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v12, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v9, v11, v9, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v4, v8, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v3, v1, Lsc/v0;->c:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a

    goto :goto_7

    :cond_a
    const-string v4, "invalid weight; must be greater than zero"

    invoke-static {v4}, Lv/a;->a(Ljava/lang/String;)V

    :goto_7
    new-instance v4, Lu/j0;

    const/4 v12, 0x1

    invoke-direct {v4, v0, v12}, Lu/j0;-><init>(FZ)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->k:Lp2/m0;

    move-object/from16 v6, v24

    const/16 v24, 0x0

    move/from16 v10, v25

    const v25, 0xfffc

    move-object/from16 v21, v5

    move-object v7, v6

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v11, v7

    move v13, v8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move v14, v10

    const/4 v10, 0x0

    move-object/from16 v22, v11

    move/from16 v29, v12

    const-wide/16 v11, 0x0

    move/from16 v30, v13

    const/4 v13, 0x0

    move-wide/from16 v31, v15

    move/from16 v16, v14

    const-wide/16 v14, 0x0

    move/from16 v33, v16

    const/16 v16, 0x0

    move-object/from16 v34, v17

    const/16 v17, 0x0

    const/16 v35, 0x100

    const/16 v18, 0x0

    move-wide/from16 v36, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v38, v23

    const/16 v23, 0x0

    move-wide/from16 v40, v27

    move/from16 v2, v29

    move/from16 v44, v33

    move-object/from16 v45, v34

    move-wide/from16 v42, v36

    move/from16 v39, v38

    move-object/from16 v27, v22

    move-object/from16 v22, p3

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v22

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, v1, Lsc/v0;->e:Ljava/lang/String;

    const-string v6, "unit"

    invoke-static {v5, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v31, v6

    if-ltz v6, :cond_b

    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v31, v6

    if-ltz v6, :cond_c

    :goto_8
    move/from16 v6, v26

    goto :goto_9

    :cond_c
    const/16 v26, 0x3

    goto :goto_8

    :goto_9
    if-nez v6, :cond_d

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_d
    const-string v7, "%."

    const-string v8, "f"

    invoke-static {v6, v7, v8}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-static {v5}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_b

    :cond_e
    const-string v4, " "

    invoke-static {v3, v4, v5}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_b
    sget-object v4, Lt2/k;->q:Lt2/k;

    invoke-virtual {v9, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->k:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xffde

    move-object v9, v4

    const/4 v4, 0x0

    move-object/from16 v21, v5

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v23, 0x30000

    move-object/from16 v22, p3

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v22

    invoke-virtual {v9, v2}, Lr0/q;->q(Z)V

    iget-object v3, v1, Lsc/v0;->d:Ljava/lang/String;

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const v3, -0x2fb4c620

    invoke-virtual {v9, v3}, Lr0/q;->b0(I)V

    iget-object v3, v1, Lsc/v0;->d:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v9, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v5, v4, Lo0/u0;->s:J

    const/16 v24, 0x0

    const v25, 0xfffa

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p3

    move-object/from16 v21, v0

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v22

    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v9, v13}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_f
    const/4 v13, 0x0

    const v0, -0x2fb330b4

    invoke-virtual {v9, v0}, Lr0/q;->b0(I)V

    goto :goto_c

    :goto_d
    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move-wide/from16 v3, v40

    double-to-float v0, v3

    move-wide/from16 v3, v42

    double-to-float v3, v3

    new-instance v7, Lo9/a;

    invoke-direct {v7, v0, v3}, Lo9/a;-><init>(FF)V

    const/16 v0, 0x14

    move/from16 v14, v44

    if-gt v14, v0, :cond_10

    add-int/lit8 v8, v14, -0x1

    :goto_e
    move-object/from16 v11, v27

    goto :goto_f

    :cond_10
    move v8, v13

    goto :goto_e

    :goto_f
    invoke-virtual {v9, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_11

    move-object/from16 v0, v45

    if-ne v3, v0, :cond_12

    goto :goto_10

    :cond_11
    move-object/from16 v0, v45

    :goto_10
    new-instance v3, Lb0/r0;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v1, v11}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    move-object v10, v3

    check-cast v10, Li9/c;

    invoke-virtual {v9, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v9, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v9, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    move/from16 v5, v39

    and-int/lit16 v5, v5, 0x380

    const/16 v12, 0x100

    if-ne v5, v12, :cond_13

    move v13, v2

    :cond_13
    or-int/2addr v3, v13

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_15

    if-ne v5, v0, :cond_14

    goto :goto_11

    :cond_14
    move v12, v2

    goto :goto_12

    :cond_15
    :goto_11
    new-instance v0, Lh5/m;

    const/16 v5, 0x9

    move-object/from16 v3, p2

    move v12, v2

    move-object v2, v4

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_12
    check-cast v5, Li9/a;

    move-object v1, v10

    const/4 v10, 0x0

    const/16 v11, 0x18c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v7

    const/4 v7, 0x0

    move v0, v6

    move-object v6, v5

    move v5, v8

    const/4 v8, 0x0

    invoke-static/range {v0 .. v11}, Lo0/m4;->b(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;Lr0/q;II)V

    invoke-virtual {v9, v12}, Lr0/q;->q(Z)V

    goto :goto_13

    :cond_16
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_13
    invoke-virtual {v9}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_17

    new-instance v0, Lb0/a3;

    const/16 v2, 0xb

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_17
    return-void
.end method

.method public static final H(Lua/nav/a;Lr0/q;I)V
    .locals 10

    const v0, 0xae1d8b

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lua/nav/a;->i:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v8

    iget-object v0, p0, Lua/nav/a;->k:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v7

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    sget-object v0, Lsc/i0;->K:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/i;

    iget-object v0, v0, Lua/nav/routing/i;->i:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v9

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-object v0, v0, Luc/f;->h:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc/c;

    invoke-virtual {v0}, Luc/c;->a()Z

    move-result v5

    new-instance v4, Lod/u5;

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lod/u5;-><init>(ZLua/nav/a;Lr0/u0;Lr0/u0;Lr0/u0;)V

    const p0, -0x4aa3781e

    invoke-static {p0, v4, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const-string v0, "\u0422\u0438\u043f \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044f"

    const/16 v1, 0x36

    invoke-static {v0, p0, p1, v1}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_2
    move-object v6, p0

    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lod/v5;

    invoke-direct {p1, v6, p2, v3}, Lod/v5;-><init>(Lua/nav/a;II)V

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final I(Lad/r2;Lr0/q;I)V
    .locals 9

    const v0, -0x1f267e2d

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lad/r2;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v0

    check-cast v4, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lad/r2;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v5, v0

    check-cast v5, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lad/r2;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v0

    check-cast v6, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lad/r2;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v7, v0

    check-cast v7, Lr0/u0;

    new-instance v2, Lod/p6;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lod/p6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const p0, -0x2178ccd6

    invoke-static {p0, v2, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const-string v0, "\u0413\u043e\u043b\u043e\u0441"

    const/16 v1, 0x36

    invoke-static {v0, p0, p1, v1}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_6
    move-object v3, p0

    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p1, Lb0/x;

    const/16 v0, 0x1c

    invoke-direct {p1, p2, v0, v3}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final J(DLsc/v0;)D
    .locals 8

    const-string v0, "f"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p2, Lsc/v0;->f:D

    sub-double/2addr p0, v0

    iget-wide v0, p2, Lsc/v0;->h:D

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    iget-wide v4, p2, Lsc/v0;->f:D

    long-to-double p0, p0

    mul-double/2addr p0, v0

    add-double v2, p0, v4

    iget-wide v6, p2, Lsc/v0;->g:D

    invoke-static/range {v2 .. v7}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final K(Ljd/b;Ljava/lang/String;La9/c;)Ljava/io/Serializable;
    .locals 6

    instance-of v0, p2, Lod/u6;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lod/u6;

    iget v1, v0, Lod/u6;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lod/u6;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lod/u6;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lod/u6;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lod/u6;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lod/u6;->m:Ljava/lang/String;

    iget-object p1, v0, Lod/u6;->l:Ljd/b;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {p1}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lid/n;->a:Lr9/i;

    const-string p2, "token"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "sk."

    const/4 v4, 0x0

    invoke-static {p2, v2, v4}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    const-string p2, "\u0426\u0435 \u0441\u0435\u043a\u0440\u0435\u0442\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 (sk.\u2026): \u0439\u043e\u0433\u043e \u043d\u0435 \u043c\u043e\u0436\u043d\u0430 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u0432 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443. \u0421\u0442\u0432\u043e\u0440\u0456\u0442\u044c \u0443 Mapbox \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 (pk.\u2026)."

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    sget-object p2, Lid/n;->a:Lr9/i;

    invoke-static {p1}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    const-string p2, "\u0421\u0445\u043e\u0436\u0435 \u043d\u0430 \u043d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u0438\u0439 \u0444\u043e\u0440\u043c\u0430\u0442: \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 Mapbox \u043f\u043e\u0447\u0438\u043d\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u00abpk.\u00bb \u0456 \u0441\u043a\u043b\u0430\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u0434\u0432\u043e\u0445 \u0434\u043e\u0432\u0433\u0438\u0445 \u0447\u0430\u0441\u0442\u0438\u043d \u0447\u0435\u0440\u0435\u0437 \u043a\u0440\u0430\u043f\u043a\u0443."

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    iput-object p0, v0, Lod/u6;->l:Ljd/b;

    iput-object p1, v0, Lod/u6;->m:Ljava/lang/String;

    iput v3, v0, Lod/u6;->o:I

    sget-object p2, Lu9/e0;->a:Lba/e;

    sget-object p2, Lba/d;->n:Lba/d;

    new-instance v2, Lgd/f;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Lgd/f;-><init>(Ljava/lang/String;Ly8/c;I)V

    invoke-static {p2, v2, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lid/m;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u0443\u0432\u0430\u0442\u0438 \u0439 \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043a\u043b\u044e\u0447 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const-string v1, "mapbox_token"

    if-eqz p2, :cond_a

    if-eq p2, v3, :cond_9

    const/4 v2, 0x2

    if-eq p2, v2, :cond_8

    const/4 v2, 0x3

    if-ne p2, v2, :cond_7

    invoke-virtual {p0, v1, p1}, Ljd/b;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    const-string p2, "\u041a\u043b\u044e\u0447 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e, \u0430\u043b\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f: \u043d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 Mapbox. \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435."

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    invoke-direct {p1, p0, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    const-string p2, "Mapbox \u043d\u0435 \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0454 \u0446\u044c\u043e\u043c\u0443 \u043a\u043b\u044e\u0447\u0443 \u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 (403): \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043f\u0440\u0430\u0432\u0430 \u0439 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043a\u043b\u044e\u0447\u0430."

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    const-string p2, "Mapbox \u0432\u0456\u0434\u0445\u0438\u043b\u0438\u0432 \u043a\u043b\u044e\u0447 (401): \u0432\u0456\u043d \u043d\u0435\u0434\u0456\u0439\u0441\u043d\u0438\u0439."

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_a
    invoke-virtual {p0, v1, p1}, Ljd/b;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    const-string p2, "\u041a\u043b\u044e\u0447 \u0434\u0456\u0439\u0441\u043d\u0438\u0439 \u0456 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0439."

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lt8/j;

    invoke-direct {p1, p0, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static final a(Lua/nav/a;Lr0/q;I)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, -0x489a412e

    invoke-virtual {v1, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p2, v2

    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lu/b1;->c:Lu/v;

    invoke-static {v1}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v3

    invoke-static {v2, v3}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v2

    const/16 v3, 0x10

    int-to-float v3, v3

    invoke-static {v2, v3}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/16 v3, 0xc

    int-to-float v3, v3

    invoke-static {v3}, Lu/h;->g(F)Lu/f;

    move-result-object v3

    sget-object v4, Lf1/c;->x:Lf1/h;

    const/4 v7, 0x6

    invoke-static {v3, v4, v1, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v8, v1, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v11, v1, Lr0/q;->S:Z

    if-eqz v11, :cond_2

    invoke-virtual {v1, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_2
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v9, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Le2/g;->g:Le2/e;

    invoke-static {v1, v8, v9}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v8, Le2/g;->h:Le2/d;

    invoke-static {v1, v8}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v12, Le2/g;->d:Le2/e;

    invoke-static {v12, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo0/h5;

    iget-object v13, v13, Lo0/h5;->e:Lp2/m0;

    move v14, v7

    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v22, 0x0

    const v23, 0xffde

    const-string v1, "BlindDriver"

    move-object v15, v2

    const/4 v2, 0x0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const-wide/16 v3, 0x0

    move/from16 v18, v5

    move/from16 v19, v6

    const-wide/16 v5, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v24, v9

    move-object/from16 v21, v10

    const-wide/16 v9, 0x0

    move-object/from16 v25, v11

    const/4 v11, 0x0

    move-object/from16 v26, v12

    move/from16 v27, v19

    move-object/from16 v19, v13

    const-wide/16 v12, 0x0

    move/from16 v28, v14

    const/4 v14, 0x0

    move-object/from16 v29, v15

    const/4 v15, 0x0

    move-object/from16 v30, v16

    const/16 v16, 0x0

    move-object/from16 v31, v17

    const/16 v17, 0x0

    move/from16 v32, v18

    const/16 v18, 0x0

    move-object/from16 v33, v21

    const v21, 0x30006

    move-object/from16 v38, v20

    move-object/from16 v37, v24

    move-object/from16 v35, v25

    move-object/from16 v39, v26

    move-object/from16 v0, v29

    move-object/from16 v36, v31

    move-object/from16 v34, v33

    move-object/from16 v20, p1

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->j:Lp2/m0;

    const v23, 0xfffe

    const-string v1, "\u041d\u0430\u0432\u0456\u0433\u0430\u0442\u043e\u0440 \u0434\u043b\u044f \u0423\u043a\u0440\u0430\u0457\u043d\u0438, \u044f\u043a\u0438\u0439 \u043d\u0435 \u0433\u0443\u0431\u0438\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u0431\u0440\u0435\u0448\u0435."

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x6

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    const-string v2, "\u0412\u0435\u0440\u0441\u0456\u044f"

    const-string v3, "1.0.1 (26102401)"

    const/4 v14, 0x6

    invoke-static {v2, v3, v1, v14}, Lod/v6;->k(Ljava/lang/String;Ljava/lang/String;Lr0/q;I)V

    const-string v2, "\u0417\u0431\u0456\u0440\u043a\u0430"

    const-string v3, "release"

    invoke-static {v2, v3, v1, v14}, Lod/v6;->k(Ljava/lang/String;Ljava/lang/String;Lr0/q;I)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lod/m;->E(Lr0/q;I)V

    sget-object v3, Lu/h;->c:Lu/c;

    move-object/from16 v4, v30

    invoke-static {v3, v4, v1, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v4, v1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v7, v1, Lr0/q;->S:Z

    if-eqz v7, :cond_3

    move-object/from16 v7, v34

    invoke-virtual {v1, v7}, Lr0/q;->l(Li9/a;)V

    :goto_3
    move-object/from16 v7, v35

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Lr0/q;->o0()V

    goto :goto_3

    :goto_4
    invoke-static {v7, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v36

    invoke-static {v3, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v37

    move-object/from16 v5, v38

    invoke-static {v4, v1, v3, v1, v5}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v3, v39

    invoke-static {v3, v6, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->n:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v1, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->s:J

    const/16 v22, 0x0

    const v23, 0xfffa

    const-string v1, "ID \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438"

    move/from16 v32, v2

    const/4 v2, 0x0

    move-object/from16 v19, v3

    move-object v7, v4

    move-wide v3, v5

    const-wide/16 v5, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v11, v9

    const-wide/16 v9, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    const/16 v21, 0x6

    move-object/from16 v40, v20

    move-object/from16 v20, p1

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    new-instance v2, Lod/v5;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lod/v5;-><init>(Lua/nav/a;)V

    const v4, -0x7bd16edf

    invoke-static {v4, v2, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x30

    invoke-static {v4, v2, v1, v5}, Lm0/d1;->c(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    move-object/from16 v14, v40

    invoke-virtual {v1, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v6, v2, Lo0/u0;->s:J

    const-string v1, "\u0412\u0438\u043f\u0430\u0434\u043a\u043e\u0432\u0438\u0439 \u043d\u043e\u043c\u0435\u0440 \u0431\u0435\u0437 \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u0434\u043e \u0432\u0430\u0441 \u0447\u0438 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430. \u0412\u0456\u043d \u0437\u043d\u0430\u0434\u043e\u0431\u0438\u0442\u044c\u0441\u044f, \u0449\u043e\u0431 \u043f\u043e\u0432\'\u044f\u0437\u0430\u0442\u0438 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u043b\u043e\u0433\u0438 \u0439 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443, \u043a\u043e\u043b\u0438 \u0446\u0456 \u0444\u0443\u043d\u043a\u0446\u0456\u0457 \u0437\'\u044f\u0432\u043b\u044f\u0442\u044c\u0441\u044f."

    const/4 v2, 0x0

    move-wide v3, v6

    move v7, v5

    const-wide/16 v5, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v11, v9

    const-wide/16 v9, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    move-object/from16 v19, v0

    move/from16 v0, v20

    move-object/from16 v20, p1

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lod/v6;->D(Lr0/q;I)V

    const-string v4, "\u0421\u043f\u0456\u043b\u044c\u043d\u043e\u0442\u0430 \u0439 \u0441\u0430\u0439\u0442"

    sget-object v5, Lod/m;->k1:Lz0/d;

    const/16 v6, 0x36

    invoke-static {v4, v5, v1, v6}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    const-string v4, "\u0414\u0430\u043d\u0456 \u0439 \u0441\u0435\u0440\u0432\u0456\u0441\u0438"

    sget-object v5, Lod/m;->l1:Lz0/d;

    invoke-static {v4, v5, v1, v6}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    sget-object v4, Lcd/d;->n:Lcd/c;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lod/m;->m1:Lz0/d;

    invoke-static {v3, v4, v1, v0}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    const-string v0, "\u041f\u0440\u0438\u0432\u0430\u0442\u043d\u0456\u0441\u0442\u044c"

    sget-object v3, Lod/m;->p1:Lz0/d;

    invoke-static {v0, v3, v1, v6}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lod/v5;

    const/4 v2, 0x3

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-direct {v1, v3, v4, v2}, Lod/v5;-><init>(Lua/nav/a;II)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final b(Lvc/f;Lr0/q;I)V
    .locals 5

    const v0, -0xd9a33ca

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvc/f;->g:Lx9/l0;

    invoke-static {v0, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lvc/f;->e:Landroid/content/SharedPreferences;

    const-string v2, "enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lr0/u0;

    new-instance v2, Lod/o1;

    invoke-direct {v2, p0, v1, v0}, Lod/o1;-><init>(Lvc/f;Lr0/u0;Lr0/u0;)V

    const v0, 0x709f403f

    invoke-static {v0, v2, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u0428\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438 BYD (\u0442\u0435\u0441\u0442)"

    const/16 v2, 0x36

    invoke-static {v1, v0, p1, v2}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lb0/x;

    const/16 v1, 0x1a

    invoke-direct {v0, p2, v1, p0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final c(Lr0/q;I)V
    .locals 33

    move-object/from16 v8, p0

    const v0, -0x5c32efd1

    invoke-virtual {v8, v0}, Lr0/q;->c0(I)Lr0/q;

    const/4 v11, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {v8, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    const/16 v12, 0xb

    if-eqz v1, :cond_b

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v13, Lr0/m;->a:Lr0/e;

    if-ne v1, v13, :cond_1

    invoke-static {v8}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v1

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v23, v1

    check-cast v23, Lu9/t;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v14, v1

    check-cast v14, Lr0/u0;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v24, v1

    check-cast v24, Lr0/u0;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v25, v1

    check-cast v25, Lr0/u0;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_5

    const/4 v1, 0x0

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v15, v1

    check-cast v15, Lr0/u0;

    sget-object v1, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Landroid/content/Context;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_6

    new-instance v1, Lod/a1;

    invoke-direct {v1, v14, v15, v12}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v1, Li9/a;

    invoke-interface/range {v25 .. v25}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v2

    invoke-virtual {v2}, Lgd/d;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_1

    :cond_7
    move v2, v11

    :goto_1
    sget-object v7, Lod/m;->r1:Lz0/d;

    const v9, 0x30000006

    const/16 v10, 0x1fa

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v10}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    const v0, -0x4b8a19ca

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v11}, Lr0/q;->q(Z)V

    move-object v0, v8

    move v1, v11

    move-object/from16 v32, v13

    move-object/from16 v30, v14

    move-object/from16 v27, v15

    goto :goto_2

    :cond_8
    const v1, -0x4b8a19c9

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const/16 v21, 0x0

    const v22, 0xfffe

    move-object/from16 v18, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move/from16 v17, v11

    move/from16 v16, v12

    const-wide/16 v11, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v27, v15

    const/4 v15, 0x0

    move/from16 v28, v16

    const/16 v16, 0x0

    move/from16 v29, v17

    const/16 v17, 0x0

    move-object/from16 v30, v20

    const/16 v20, 0x0

    move-object/from16 v32, v19

    move-object/from16 v19, p0

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    :goto_2
    invoke-interface/range {v30 .. v30}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, -0x1b35f16e

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v32

    if-ne v2, v3, :cond_9

    new-instance v2, Lod/p4;

    const/16 v3, 0x1d

    move-object/from16 v5, v30

    invoke-direct {v2, v5, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    move-object/from16 v5, v30

    :goto_3
    move-object v9, v2

    check-cast v9, Li9/a;

    new-instance v2, Lod/z0;

    move-object/from16 v3, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    move-object/from16 v4, v26

    move-object/from16 v8, v27

    invoke-direct/range {v2 .. v8}, Lod/z0;-><init>(Lu9/t;Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    const v3, 0x60c16ec2

    invoke-static {v3, v2, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    new-instance v3, Lo0/k;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v4}, Lo0/k;-><init>(Lr0/u0;I)V

    const v4, 0x41d600

    invoke-static {v4, v3, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    sget-object v4, Lod/m;->u1:Lz0/d;

    new-instance v5, Lo0/k;

    const/16 v6, 0x12

    invoke-direct {v5, v7, v6}, Lo0/k;-><init>(Lr0/u0;I)V

    const v6, 0x6f8270dd

    invoke-static {v6, v5, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    const v18, 0x1b0c36

    const/16 v19, 0x3f94

    move/from16 v31, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, p0

    invoke-static/range {v0 .. v19}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object/from16 v8, v17

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_a
    move-object v8, v0

    const v0, -0x4b7042ad

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v1}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_b
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {v8}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lod/u;

    move/from16 v2, p1

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lod/u;-><init>(II)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final d(Ljava/lang/String;DDDLi9/c;Lr0/q;I)V
    .locals 22

    move-object/from16 v0, p8

    const v1, 0x347298b9

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lr0/q;->c(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    or-int v3, p9, v3

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x4000

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x2000

    :goto_1
    or-int/2addr v3, v4

    and-int/lit16 v4, v3, 0x2493

    const/16 v6, 0x2492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v6, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    and-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v4, v6, :cond_3

    invoke-static {v1, v2}, Lod/v6;->e(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v4

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v10, v4

    check-cast v10, Lr0/u0;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v11, 0x2c

    const/16 v12, 0x2e

    invoke-static {v4, v11, v12}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v4, p3, v11

    if-gtz v4, :cond_4

    cmpg-double v4, v11, p5

    if-gtz v4, :cond_4

    move v12, v8

    goto :goto_3

    :cond_4
    move v12, v7

    :goto_3
    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    xor-int/lit8 v18, v12, 0x1

    new-instance v11, Lb0/q1;

    const/16 v4, 0x9

    const/16 v13, 0x7b

    invoke-direct {v11, v4, v13}, Lb0/q1;-><init>(II)V

    sget-object v4, Lf1/o;->a:Lf1/o;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4, v13}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v19

    const v4, 0xe000

    and-int/2addr v3, v4

    if-ne v3, v5, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_6

    if-ne v3, v6, :cond_7

    :cond_6
    new-instance v4, Lod/j6;

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v4 .. v10}, Lod/j6;-><init>(DDLi9/c;Lr0/u0;)V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v3, v4

    :cond_7
    check-cast v3, Li9/c;

    new-instance v4, Lnd/e;

    const/16 v5, 0xb

    move-object/from16 v6, p0

    invoke-direct {v4, v6, v5}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v5, -0x16300fa1

    invoke-static {v5, v4, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    move-object v4, v11

    new-instance v11, Lod/o6;

    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    invoke-direct/range {v11 .. v16}, Lod/o6;-><init>(ZDD)V

    const v7, -0x1a0f9ace

    invoke-static {v7, v11, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v8

    const v20, 0xc30180

    const v21, 0x7d4fb8

    move-object v1, v3

    const/4 v3, 0x0

    move-object v11, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    const/16 v17, 0x0

    move-object/from16 v2, v19

    const v19, 0x180180

    move/from16 v9, v18

    move-object/from16 v18, p8

    invoke-static/range {v0 .. v21}, Lo0/j2;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V

    goto :goto_4

    :cond_8
    invoke-virtual/range {p8 .. p8}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p8 .. p8}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v2, Lod/q6;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lod/q6;-><init>(Ljava/lang/String;DDDLi9/c;I)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final e(D)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.2f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, p1, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    invoke-static {p0, v0}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [C

    const/16 v0, 0x2e

    aput-char v0, p1, v1

    invoke-static {p0, p1}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V
    .locals 7

    const v0, 0x1ababb72

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, p5

    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_2

    invoke-virtual {p4, p2}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x100

    goto :goto_1

    :cond_1
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    :cond_2
    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_2

    :cond_3
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p4, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lua/nav/Tuning;->W:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lsc/v0;

    iget-object v6, v5, Lsc/v0;->b:Lsc/w0;

    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v5, v5, Lsc/v0;->k:Z

    if-nez v5, :cond_6

    if-eqz p2, :cond_5

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lsc/v0;

    and-int/lit8 v5, v0, 0x70

    shr-int/lit8 v6, v0, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    invoke-static {v4, p1, p3, p4, v5}, Lod/v6;->G(Lsc/v0;Lua/nav/Tuning;Li9/c;Lr0/q;I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p4}, Lr0/q;->W()V

    :cond_9
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p4

    if-eqz p4, :cond_a

    new-instance v0, Lod/e;

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lod/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLi9/c;II)V

    iput-object v0, p4, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;ZLi9/a;Lr0/q;I)V
    .locals 9

    const v0, 0x54aad332

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p4, p2}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int v8, v0, v1

    and-int/lit16 v0, v8, 0x493

    const/16 v1, 0x492

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    and-int/lit8 v1, v8, 0x1

    invoke-virtual {p4, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v0, v0, Lo0/u0;->h:J

    const/16 v5, 0x6000

    const/16 v6, 0xe

    const-wide/16 v2, 0x0

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lo0/z2;->h(JJLr0/q;II)Lo0/a0;

    move-result-object v0

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    new-instance v2, Lb0/r2;

    invoke-direct {v2, p0, p1, p2}, Lb0/r2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const v3, -0x333ef6d9

    invoke-static {v3, v2, p4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    shr-int/lit8 v2, v8, 0x9

    and-int/lit8 v2, v2, 0xe

    const v3, 0x6000030

    or-int v8, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v7, p4

    move-object v4, v0

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Lo0/z2;->d(Li9/a;Lf1/r;ZLm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lnd/b;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lnd/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZLi9/a;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final h(Lod/i0;Lr0/q;I)V
    .locals 11

    const v1, -0x5cf0db63

    invoke-virtual {p1, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/2addr v1, p2

    and-int/lit8 v4, v1, 0x3

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eq v4, v3, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v8

    :goto_1
    and-int/2addr v1, v5

    invoke-virtual {p1, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, p0, Lod/e0;

    if-eqz v1, :cond_2

    const v1, 0x1bd87bad

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    move-object v1, p0

    check-cast v1, Lod/e0;

    iget-object v2, v1, Lod/e0;->a:Ljava/lang/String;

    iget-wide v3, v1, Lod/e0;->b:J

    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    iget-wide v9, v1, Lod/e0;->c:J

    invoke-static {v9, v10}, Lm1/v;->d(J)J

    move-result-wide v9

    const/4 v7, 0x0

    move-object v6, p1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v9

    invoke-static/range {v1 .. v7}, Lod/v6;->y(Ljava/lang/String;JJLr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto/16 :goto_3

    :cond_2
    instance-of v1, p0, Lod/g0;

    if-eqz v1, :cond_3

    const v1, 0x1bd8859c

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    move-object v1, p0

    check-cast v1, Lod/g0;

    iget-object v1, v1, Lod/g0;->a:Ljava/lang/String;

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->r:J

    invoke-virtual {p1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v9, v2, Lo0/u0;->q:J

    const/4 v7, 0x0

    move-object v6, p1

    move-wide v2, v3

    move-wide v4, v9

    invoke-static/range {v1 .. v7}, Lod/v6;->y(Ljava/lang/String;JJLr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto/16 :goto_3

    :cond_3
    instance-of v1, p0, Lod/f0;

    if-eqz v1, :cond_9

    const v1, 0x5f3a536c

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    move-object v1, p0

    check-cast v1, Lod/f0;

    iget-object v1, v1, Lod/f0;->a:Lod/h0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v4, 0x30

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_7

    const/16 v5, 0x36

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_4

    const v1, 0x1bd8bae4

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p1, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v1, v1, Lo0/u0;->p:J

    sget-object v3, Lod/m;->f1:Lz0/d;

    invoke-static {v1, v2, v3, p1, v4}, Lod/v6;->A(JLz0/d;Lr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_4
    const v0, 0x1bd89756

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    const v1, 0x1bd8d872

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    sget-wide v1, Lm1/p;->c:J

    sget-object v3, Lod/m;->h1:Lz0/d;

    invoke-static {v1, v2, v3, p1, v5}, Lod/v6;->A(JLz0/d;Lr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_6
    const v1, 0x1bd8ccb2

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    sget-wide v1, Lm1/p;->c:J

    sget-object v3, Lod/m;->g1:Lz0/d;

    invoke-static {v1, v2, v3, p1, v5}, Lod/v6;->A(JLz0/d;Lr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_7
    const v1, 0x1bd8aabb

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p1, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v1, v1, Lo0/u0;->a:J

    sget-object v3, Lod/m;->e1:Lz0/d;

    invoke-static {v1, v2, v3, p1, v4}, Lod/v6;->A(JLz0/d;Lr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_8
    const v1, 0x1bd89c88

    invoke-virtual {p1, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p1, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v1, v1, Lo0/u0;->p:J

    sget-object v3, Lod/m;->d1:Lz0/d;

    invoke-static {v1, v2, v3, p1, v4}, Lod/v6;->A(JLz0/d;Lr0/q;I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    :goto_2
    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_9
    const v0, 0x1bd87992

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Lb0/x;

    const/16 v3, 0x19

    invoke-direct {v2, p2, v3, p0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v2, v1, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final i(Li9/a;Lr0/q;I)V
    .locals 13

    move v12, p2

    const v0, 0x4e8fa96

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v12

    and-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    int-to-float v1, v1

    const/16 v3, 0x8

    int-to-float v3, v3

    new-instance v6, Lu/s0;

    invoke-direct {v6, v1, v3, v1, v3}, Lu/s0;-><init>(FFFF)V

    and-int/lit8 v0, v0, 0xe

    if-ne v0, v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_3

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Lm0/f1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lm0/f1;-><init>(Li9/a;I)V

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v8, v0

    check-cast v8, Li9/c;

    const/16 v10, 0x180

    const/16 v11, 0x1fb

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, p1

    invoke-static/range {v0 .. v11}, Lb6/g;->b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lod/n0;

    const/4 v2, 0x4

    invoke-direct {v1, p2, v2, p0}, Lod/n0;-><init>(IILi9/a;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final j(Lod/j0;Lr0/q;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x78616c59

    invoke-virtual {v1, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p2, v2

    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lf1/o;->a:Lf1/o;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    const/4 v7, 0x7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v4

    sget-object v7, Lf1/c;->u:Lf1/i;

    sget-object v8, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v8, v7, v1, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v7

    iget-wide v8, v1, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v4, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v11, v1, Lr0/q;->S:Z

    if-eqz v11, :cond_2

    invoke-virtual {v1, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_2
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v7, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v9, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Le2/g;->g:Le2/e;

    invoke-static {v1, v8, v9}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v8, Le2/g;->h:Le2/d;

    invoke-static {v1, v8}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v12, Le2/g;->d:Le2/e;

    invoke-static {v12, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v4, 0x54

    int-to-float v4, v4

    invoke-static {v2, v4}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v13, Lf1/c;->l:Lf1/j;

    invoke-static {v13, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v13

    iget-wide v14, v1, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v15

    invoke-static {v4, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v3, v1, Lr0/q;->S:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_3
    invoke-static {v11, v13, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v15, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v1, v9, v1, v8}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v12, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v3, v0, Lod/j0;->a:Lod/i0;

    invoke-static {v3, v1, v5}, Lod/v6;->h(Lod/i0;Lr0/q;I)V

    invoke-virtual {v1, v6}, Lr0/q;->q(Z)V

    const/16 v3, 0x8

    int-to-float v3, v3

    invoke-static {v2, v3}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v1}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v3, v2

    const-wide/16 v13, 0x0

    cmpl-double v3, v3, v13

    if-lez v3, :cond_4

    goto :goto_4

    :cond_4
    const-string v3, "invalid weight; must be greater than zero"

    invoke-static {v3}, Lv/a;->a(Ljava/lang/String;)V

    :goto_4
    new-instance v3, Lu/j0;

    invoke-direct {v3, v2, v6}, Lu/j0;-><init>(FZ)V

    sget-object v2, Lu/h;->c:Lu/c;

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v2, v4, v1, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v4, v1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v3, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v13, v1, Lr0/q;->S:Z

    if-eqz v13, :cond_5

    invoke-virtual {v1, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v11, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v1, v9, v1, v8}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v12, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v2, v0, Lod/j0;->b:Ljava/lang/String;

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->i:Lp2/m0;

    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v22, 0x0

    const v23, 0xffde

    move-object v1, v2

    const/4 v2, 0x0

    move-object v5, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    move-object v8, v5

    move v9, v6

    const-wide/16 v5, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move v12, v9

    move-object v11, v10

    const-wide/16 v9, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move v15, v12

    move-object v14, v13

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v24, v21

    const/high16 v21, 0x30000

    move-object/from16 v20, p1

    move-object/from16 v25, v24

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    iget-object v2, v0, Lod/j0;->c:Ljava/lang/String;

    move-object/from16 v13, v25

    invoke-virtual {v1, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const v23, 0xfffe

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v19, v3

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    const/16 v21, 0x0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lr0/q;->q(Z)V

    invoke-virtual {v1, v15}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Lb0/x;

    const/16 v3, 0x17

    move/from16 v4, p2

    invoke-direct {v2, v4, v3, v0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v2, v1, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final k(Ljava/lang/String;Ljava/lang/String;Lr0/q;I)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const v2, 0x11ea7f2a

    invoke-virtual {v1, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    or-int v24, p3, v2

    and-int/lit8 v2, v24, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    and-int/lit8 v3, v24, 0x1

    invoke-virtual {v1, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v6, Lu/h;->a:Lu/n;

    sget-object v7, Lf1/c;->u:Lf1/i;

    invoke-static {v6, v7, v1, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v6, v1, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v9, v1, Lr0/q;->S:Z

    if-eqz v9, :cond_2

    invoke-virtual {v1, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_2
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v7, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v1, v4, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v1, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v2, 0x6e

    int-to-float v2, v2

    invoke-static {v3, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->m:Lp2/m0;

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v1, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v6, v6, Lo0/u0;->s:J

    const/16 v22, 0x0

    const v23, 0xfff8

    move-object/from16 v19, v4

    move v8, v5

    move-wide/from16 v26, v6

    move-object v7, v3

    move-wide/from16 v3, v26

    const-wide/16 v5, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    move v12, v10

    const-wide/16 v9, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move v15, v12

    move-object v14, v13

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v25, v21

    const/16 v21, 0x36

    move-object/from16 v20, v1

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->j:Lp2/m0;

    sget-object v6, Lt2/k;->o:Lt2/k;

    shr-int/lit8 v2, v24, 0x3

    and-int/lit8 v2, v2, 0xe

    const/high16 v3, 0x30000

    or-int v20, v2, v3

    const/16 v21, 0x0

    const v22, 0xffde

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, p2

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v19

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lod/g4;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v2, v3, v0, v4}, Lod/g4;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v1, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final l(Ljd/b;Lr0/q;I)V
    .locals 11

    const v0, -0x2b462031

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v7, v0

    check-cast v7, Lu9/t;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    const-string v0, "mapbox_token"

    invoke-virtual {p0, v0}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v3, v0

    check-cast v3, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    const-string v0, ""

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v4, v0

    check-cast v4, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v5, v0

    check-cast v5, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object v9, v0

    check-cast v9, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    move-object v6, v0

    check-cast v6, Lr0/u0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v10, v0

    check-cast v10, Lr0/u0;

    new-instance v2, Lod/w5;

    move-object v8, p0

    invoke-direct/range {v2 .. v10}, Lod/w5;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Ljd/b;Lr0/u0;Lr0/u0;)V

    const p0, -0x733da6a8

    invoke-static {p0, v2, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const-string v0, "\u041a\u043b\u044e\u0447 Mapbox (\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438)"

    const/16 v1, 0x36

    invoke-static {v0, p0, p1, v1}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_9
    move-object v8, p0

    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p1, Lb0/x;

    const/16 v0, 0x18

    invoke-direct {p1, p2, v0, v8}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final m(Lr0/q;I)V
    .locals 20

    move-object/from16 v12, p0

    const v0, 0x332f74cf

    invoke-virtual {v12, v0}, Lr0/q;->c0(I)Lr0/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    invoke-virtual {v12, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v12, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lr0/u0;

    sget-object v2, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v2

    sget-object v3, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v12, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/q3;

    iget-object v3, v3, Lo0/q3;->b:La0/d;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->c:J

    sget-object v6, Lf1/o;->a:Lf1/o;

    const/4 v7, 0x4

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v6

    invoke-virtual {v12, v2}, Lr0/q;->h(Z)Z

    move-result v7

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_2

    if-ne v8, v1, :cond_3

    :cond_2
    new-instance v8, Lb0/q0;

    const/4 v7, 0x3

    invoke-direct {v8, v2, v0, v7}, Lb0/q0;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v12, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Li9/a;

    new-instance v7, Lnd/o;

    const/16 v9, 0xa

    invoke-direct {v7, v9, v2}, Lnd/o;-><init>(IZ)V

    const v2, -0x1ab8fddc

    invoke-static {v2, v7, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const/16 v13, 0x30

    const/16 v14, 0x3e4

    const/4 v2, 0x0

    move-object v9, v1

    move-object v1, v6

    const-wide/16 v6, 0x0

    move-object v10, v0

    move-object v0, v8

    const/4 v8, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object/from16 v15, v16

    invoke-static/range {v0 .. v14}, Lo0/t4;->c(Li9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V

    invoke-interface/range {v17 .. v17}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f95df39

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_4

    new-instance v0, Lod/p4;

    const/16 v1, 0x15

    move-object/from16 v10, v17

    invoke-direct {v0, v10, v1}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v12, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object/from16 v10, v17

    :goto_1
    check-cast v0, Li9/a;

    new-instance v1, Lo0/k;

    const/16 v2, 0xd

    invoke-direct {v1, v10, v2}, Lo0/k;-><init>(Lr0/u0;I)V

    const v2, -0x56d6f9a4

    invoke-static {v2, v1, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    new-instance v2, Lo0/k;

    const/16 v3, 0xe

    invoke-direct {v2, v10, v3}, Lo0/k;-><init>(Lr0/u0;I)V

    const v3, 0x7b38905e

    invoke-static {v3, v2, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    sget-object v4, Lod/m;->l0:Lz0/d;

    sget-object v5, Lod/m;->m0:Lz0/d;

    const/4 v2, 0x0

    const v18, 0x1b0c36

    const/16 v19, 0x3f94

    move v6, v2

    const/4 v2, 0x0

    move v7, v6

    const/4 v6, 0x0

    move v9, v7

    const-wide/16 v7, 0x0

    move v11, v9

    const-wide/16 v9, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move v15, v13

    const-wide/16 v13, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v17, p0

    invoke-static/range {v0 .. v19}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object/from16 v12, v17

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    const v0, 0x7f9cd293

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v15}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {v12}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lod/u;

    const/4 v2, 0x7

    move/from16 v3, p1

    invoke-direct {v1, v3, v2}, Lod/u;-><init>(II)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V
    .locals 9

    const v0, 0x34b752b0

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int v8, v0, v1

    and-int/lit16 v0, v8, 0x93

    const/16 v1, 0x92

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    and-int/lit8 v1, v8, 0x1

    invoke-virtual {p3, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p3, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v0, v0, Lo0/u0;->c:J

    const/16 v5, 0x6000

    const/16 v6, 0xe

    const-wide/16 v2, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lo0/z2;->h(JJLr0/q;II)Lo0/a0;

    move-result-object v0

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    new-instance v2, Lod/t5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lod/t5;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const v3, -0xb38bc25

    invoke-static {v3, v2, p3}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    shr-int/lit8 v2, v8, 0x6

    and-int/lit8 v2, v2, 0xe

    const v3, 0x6000030

    or-int v8, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v7, p3

    move-object v4, v0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lo0/z2;->d(Li9/a;Lf1/r;ZLm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lb0/a3;

    const/16 v3, 0xa

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v2, p4

    invoke-direct/range {v1 .. v6}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final o(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Lr0/q;I)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p7

    const v0, -0x3810ac6f

    invoke-virtual {v15, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v15, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v3, p6

    invoke-virtual {v15, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x100000

    goto :goto_2

    :cond_2
    const/high16 v6, 0x80000

    :goto_2
    or-int/2addr v0, v6

    const v6, 0x92493

    and-int/2addr v6, v0

    const v9, 0x92492

    const/4 v10, 0x0

    if-eq v6, v9, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    move v6, v10

    :goto_3
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v15, v9, v6}, Lr0/q;->T(IZ)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v7, Lua/nav/a;->y:Lx9/l0;

    invoke-static {v6, v15}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v9

    iget-object v6, v7, Lua/nav/a;->c:Lx9/l0;

    invoke-static {v6, v15}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v6

    iget-object v12, v7, Lua/nav/a;->e:Lx9/l0;

    invoke-static {v12, v15}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v12

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-ne v13, v14, :cond_4

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v13

    invoke-virtual {v15, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v13, Lr0/u0;

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v14, :cond_5

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v11

    invoke-virtual {v15, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v11, Lr0/u0;

    and-int/lit8 v5, v0, 0xe

    if-eq v5, v1, :cond_7

    invoke-virtual {v15, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v18, v10

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v18, 0x1

    :goto_5
    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v18, :cond_8

    if-ne v1, v14, :cond_9

    :cond_8
    new-instance v1, Lod/b6;

    const/16 v8, 0x8

    invoke-direct {v1, v7, v8}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v15, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v8, v1

    check-cast v8, Li9/c;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v14, :cond_a

    new-instance v10, Ln/k1;

    const/16 v4, 0x1c

    invoke-direct {v10, v4}, Ln/k1;-><init>(I)V

    invoke-virtual {v15, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Li9/a;

    invoke-static {v1, v10, v15}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/u0;

    const/16 v4, 0x10

    int-to-float v4, v4

    const/16 v10, 0x8

    int-to-float v10, v10

    move/from16 v20, v0

    new-instance v0, Lu/s0;

    invoke-direct {v0, v4, v10, v4, v10}, Lu/s0;-><init>(FFFF)V

    const/16 v4, 0xc

    int-to-float v4, v4

    invoke-static {v4}, Lu/h;->g(F)Lu/f;

    move-result-object v21

    const/high16 v4, 0x380000

    and-int v4, v20, v4

    const/high16 v10, 0x100000

    if-ne v4, v10, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v15, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v4, v10

    and-int/lit8 v10, v20, 0x70

    move-object/from16 v18, v0

    const/16 v0, 0x20

    if-eq v10, v0, :cond_d

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v0, 0x1

    :goto_8
    or-int/2addr v0, v4

    const/4 v4, 0x4

    if-eq v5, v4, :cond_f

    invoke-virtual {v15, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/16 v16, 0x1

    :goto_a
    or-int v0, v0, v16

    invoke-virtual {v15, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v15, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v15, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v15, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_11

    if-ne v4, v14, :cond_10

    goto :goto_b

    :cond_10
    move-object v12, v7

    move-object v13, v11

    move-object/from16 v22, v14

    goto :goto_c

    :cond_11
    :goto_b
    new-instance v0, Lod/g6;

    move-object v4, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v4

    move-object/from16 v4, p5

    move-object v5, v2

    move-object v10, v6

    move-object/from16 v22, v14

    move-object/from16 v2, p2

    move-object/from16 v14, p3

    move-object v6, v1

    move-object v1, v3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v14}, Lod/g6;-><init>(Li9/a;Li9/a;Li9/a;Li9/a;Ljd/b;Lr0/u0;Lua/nav/a;Li9/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Li9/a;)V

    move-object v12, v7

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_c
    move-object v8, v4

    check-cast v8, Li9/c;

    const/16 v10, 0x6180

    const/16 v11, 0x1eb

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v15

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-static/range {v0 .. v11}, Lb6/g;->b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, -0x5b73609a

    invoke-virtual {v9, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    new-instance v0, Lod/p4;

    const/16 v1, 0x14

    invoke-direct {v0, v13, v1}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v9, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    check-cast v0, Li9/a;

    new-instance v1, Lg0/k;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v12, v13}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v2, -0x3ea2245c

    invoke-static {v2, v1, v9}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    new-instance v2, Lo0/k;

    const/16 v3, 0xc

    invoke-direct {v2, v13, v3}, Lo0/k;-><init>(Lr0/u0;I)V

    const v3, -0x63115e1e

    invoke-static {v3, v2, v9}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    sget-object v4, Lod/m;->C0:Lz0/d;

    sget-object v5, Lod/m;->D0:Lz0/d;

    const v18, 0x1b0c36

    const/16 v19, 0x3f94

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, p7

    invoke-static/range {v0 .. v19}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object/from16 v9, v17

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    const v1, -0x5b6b3d2f

    invoke-virtual {v9, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v9, v0}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_14
    move-object v9, v15

    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_d
    invoke-virtual {v9}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_15

    new-instance v0, Lod/h6;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lod/h6;-><init>(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;I)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_15
    return-void
.end method

.method public static final p(Lw/e;Lr0/u0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;)V
    .locals 8

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x2c

    const/4 v4, 0x0

    aput-char v3, v2, v4

    invoke-static {v0, v2}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v0, "group_"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lod/u5;

    move-object v6, p1

    move-object v7, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Lod/u5;-><init>(Ljava/lang/String;Ljava/lang/String;ZLr0/u0;Ljava/lang/String;)V

    new-instance p1, Lz0/d;

    const p2, -0x1905cb31

    invoke-direct {p1, p2, v1, v2}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 p2, 0x2

    invoke-static {p0, v0, p1, p2}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    if-eqz v5, :cond_0

    invoke-interface {p5, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final q(JLr0/q;I)V
    .locals 3

    const v0, 0x5405b717

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    int-to-float v0, v0

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, v0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_1

    new-instance v1, Lad/c;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0, p1}, Lad/c;-><init>(IJ)V

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Li9/c;

    const/4 v2, 0x6

    invoke-static {v2, v0, v1, p2}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lod/n6;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, p0, p1}, Lod/n6;-><init>(IIJ)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final r(Lhd/e;Lr0/q;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Lhd/e;->e:Landroid/content/SharedPreferences;

    const v2, 0x77d2e18a

    invoke-virtual {v8, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int v2, p2, v2

    and-int/lit8 v5, v2, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x1

    if-eq v5, v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    and-int/lit8 v5, v2, 0x1

    invoke-virtual {v8, v5, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lhd/e;->g:Lx9/l0;

    invoke-static {v4, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v7

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Lr0/m;->a:Lr0/e;

    if-ne v4, v10, :cond_2

    const-string v4, "enabled"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v4

    invoke-virtual {v8, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lr0/u0;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_3

    const-string v5, "name"

    const/4 v11, 0x0

    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v5

    invoke-virtual {v8, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v11, v5

    check-cast v11, Lr0/u0;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v5, v0

    check-cast v5, Lr0/u0;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    sget-object v0, Lu8/r;->l:Lu8/r;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v0, Lr0/u0;

    new-instance v12, Lg/b;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lg/b;-><init>(I)V

    and-int/lit8 v2, v2, 0xe

    if-eq v2, v3, :cond_7

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v9

    :cond_7
    :goto_2
    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v6, :cond_8

    if-ne v2, v10, :cond_9

    :cond_8
    move-object v2, v0

    goto :goto_3

    :cond_9
    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :goto_3
    new-instance v0, Lb0/p0;

    move-object v3, v5

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_4
    check-cast v0, Li9/c;

    invoke-static {v12, v0, v8, v9}, Lr5/h1;->C(Lg/a;Li9/c;Lr0/q;I)Lc/i;

    move-result-object v0

    sget-object v1, Lcd/d;->p:Lcd/c;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v1, v2

    move-object v2, v0

    new-instance v0, Lod/y5;

    move-object v5, v4

    move-object v6, v11

    move-object v4, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lod/y5;-><init>(Lhd/e;Lc/i;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move-object v2, v4

    move-object v4, v5

    move-object v3, v6

    const v1, 0x4fa31cd3

    invoke-static {v1, v0, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v12, v0, v8, v1}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x596a51f

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_a

    new-instance v0, Lod/p4;

    const/16 v1, 0x1b

    invoke-direct {v0, v4, v1}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v0

    check-cast v6, Li9/a;

    new-instance v0, Lo0/k;

    const/16 v1, 0x10

    invoke-direct {v0, v4, v1}, Lo0/k;-><init>(Lr0/u0;I)V

    const v1, -0x36d618a3

    invoke-static {v1, v0, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    sget-object v10, Lod/m;->W0:Lz0/d;

    new-instance v0, Li0/d;

    const/4 v5, 0x4

    move-object v1, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Li0/d;-><init>(Lr0/u0;Ljava/lang/Object;Lr0/u0;Lr0/u0;I)V

    const v1, 0x2bb2ceb8

    invoke-static {v1, v0, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    const v18, 0x1b0036

    const/16 v19, 0x3f9c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    const/4 v6, 0x0

    move-object v1, v7

    const-wide/16 v7, 0x0

    move v11, v9

    move-object v4, v10

    const-wide/16 v9, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move v15, v13

    const-wide/16 v13, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v17, p1

    invoke-static/range {v0 .. v19}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object/from16 v8, v17

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_b
    move v13, v9

    const v0, 0x5a1cdd8

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v13}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {v8}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Lb0/x;

    const/16 v2, 0x1b

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-direct {v1, v4, v2, v3}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method

.method public static final s(Lua/nav/a;Lr0/q;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const v0, -0x605ff6be

    invoke-virtual {v8, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int v0, p2, v0

    and-int/lit8 v3, v0, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v3, v2, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    and-int/2addr v0, v10

    invoke-virtual {v8, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lua/nav/a;->q:Lx9/l0;

    invoke-static {v0, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v2

    iget-object v0, v1, Lua/nav/a;->s:Lx9/l0;

    invoke-static {v0, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v3

    iget-object v0, v1, Lua/nav/a;->u:Lx9/l0;

    invoke-static {v0, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v4

    iget-object v0, v1, Lua/nav/a;->w:Lx9/l0;

    invoke-static {v0, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v5

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v0

    iget-object v0, v0, Lfd/o;->d:Lx9/l0;

    invoke-static {v0, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v6

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-ne v0, v11, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v7, v0

    check-cast v7, Lr0/u0;

    new-instance v0, Lod/y5;

    invoke-direct/range {v0 .. v7}, Lod/y5;-><init>(Lua/nav/a;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    const v1, -0x4b771475

    invoke-static {v1, v0, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430"

    const/16 v2, 0x36

    invoke-static {v1, v0, v8, v2}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, -0x3f39014a

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_3

    new-instance v0, Lod/p4;

    const/16 v1, 0xb

    invoke-direct {v0, v7, v1}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Li9/a;

    new-instance v1, Lo0/k;

    const/16 v2, 0x9

    invoke-direct {v1, v7, v2}, Lo0/k;-><init>(Lr0/u0;I)V

    const v2, 0x34898c15

    invoke-static {v2, v1, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    new-instance v2, Lo0/k;

    const/16 v3, 0xa

    invoke-direct {v2, v7, v3}, Lo0/k;-><init>(Lr0/u0;I)V

    const v3, -0x78a7822d

    invoke-static {v3, v2, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    sget-object v4, Lod/m;->S0:Lz0/d;

    sget-object v5, Lod/m;->T0:Lz0/d;

    const v18, 0x1b0c36

    const/16 v19, 0x3f94

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v11, v9

    move v12, v10

    const-wide/16 v9, 0x0

    move v13, v11

    move v14, v12

    const-wide/16 v11, 0x0

    move v15, v13

    move/from16 v16, v14

    const-wide/16 v13, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v17, p1

    invoke-static/range {v0 .. v19}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object/from16 v8, v17

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_4
    move v13, v9

    const v0, -0x3f30e1a0

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v13}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {v8}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lod/v5;

    const/4 v14, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct {v1, v2, v3, v14}, Lod/v5;-><init>(Lua/nav/a;II)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final t(Lua/nav/routing/i;ZLr0/q;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const v2, 0x3a0ab3cc

    invoke-virtual {v1, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, p4, 0x1

    const/4 v3, 0x4

    if-nez v2, :cond_1

    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    or-int v2, p3, v2

    and-int/lit8 v4, p4, 0x2

    const/16 v5, 0x10

    if-eqz v4, :cond_3

    or-int/lit8 v2, v2, 0x30

    :cond_2
    move/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, p3, 0x30

    if-nez v6, :cond_2

    move/from16 v6, p1

    invoke-virtual {v1, v6}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    or-int/2addr v2, v7

    :goto_3
    and-int/lit8 v7, v2, 0x13

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_5

    move v7, v10

    goto :goto_4

    :cond_5
    move v7, v9

    :goto_4
    and-int/lit8 v8, v2, 0x1

    invoke-virtual {v1, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v1}, Lr0/q;->Y()V

    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Lr0/q;->C()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Lr0/q;->W()V

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7

    and-int/lit8 v2, v2, -0xf

    :cond_7
    move-object v14, v0

    move v13, v6

    goto :goto_6

    :cond_8
    :goto_5
    and-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_9

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->q()Lua/nav/routing/i;

    move-result-object v0

    and-int/lit8 v2, v2, -0xf

    :cond_9
    if-eqz v4, :cond_7

    move-object v14, v0

    move v13, v9

    :goto_6
    invoke-virtual {v1}, Lr0/q;->r()V

    iget-object v0, v14, Lua/nav/routing/i;->i:Lx9/l0;

    invoke-static {v0, v1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v15

    and-int/lit8 v0, v2, 0xe

    xor-int/lit8 v0, v0, 0x6

    if-le v0, v3, :cond_a

    invoke-virtual {v1, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    and-int/lit8 v0, v2, 0x6

    if-ne v0, v3, :cond_b

    goto :goto_7

    :cond_b
    move v10, v9

    :cond_c
    :goto_7
    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-nez v10, :cond_d

    if-ne v0, v2, :cond_e

    :cond_d
    new-instance v0, Lgd/c;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v14, v4, v3}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v0, Li9/e;

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-static {v0, v3, v1}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v16, v0

    check-cast v16, Lr0/u0;

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-object v0, v0, Luc/f;->h:Lx9/l0;

    invoke-static {v0, v1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc/c;

    invoke-virtual {v0}, Luc/c;->a()Z

    move-result v12

    if-eqz v13, :cond_10

    const-string v0, "\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a"

    goto :goto_8

    :cond_10
    const-string v0, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438"

    :goto_8
    new-instance v11, Lod/i6;

    invoke-direct/range {v11 .. v16}, Lod/i6;-><init>(ZZLua/nav/routing/i;Lr0/u0;Lr0/u0;)V

    move v4, v13

    move-object v3, v14

    move-object/from16 v6, v16

    const v7, -0x6da06fdd

    invoke-static {v7, v11, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    const/16 v8, 0x30

    invoke-static {v0, v7, v1, v8}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x63abffce

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_11

    new-instance v0, Lod/p4;

    const/16 v2, 0x1a

    invoke-direct {v0, v6, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v0, Li9/a;

    new-instance v2, Lg0/k;

    invoke-direct {v2, v5, v3, v6}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x71f19fd9

    invoke-static {v5, v2, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    new-instance v5, Lo0/k;

    const/16 v7, 0xf

    invoke-direct {v5, v6, v7}, Lo0/k;-><init>(Lr0/u0;I)V

    const v6, 0xb4df2db

    invoke-static {v6, v5, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    new-instance v6, Lnd/o;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v4}, Lnd/o;-><init>(IZ)V

    const v7, -0x5b55ba23

    invoke-static {v7, v6, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    new-instance v7, Lnd/o;

    const/16 v8, 0xc

    invoke-direct {v7, v8, v4}, Lnd/o;-><init>(IZ)V

    const v8, -0xea790a2

    invoke-static {v8, v7, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    const v18, 0x1b0c36

    const/16 v19, 0x3f94

    move-object v1, v2

    const/4 v2, 0x0

    move v13, v4

    move-object v4, v6

    const/4 v6, 0x0

    move-object v14, v3

    move-object v3, v5

    move-object v5, v7

    const-wide/16 v7, 0x0

    move v11, v9

    const-wide/16 v9, 0x0

    move v15, v11

    const-wide/16 v11, 0x0

    move/from16 v17, v13

    move-object/from16 v16, v14

    const-wide/16 v13, 0x0

    move/from16 v20, v15

    const/4 v15, 0x0

    move-object/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    move-object/from16 v17, p2

    invoke-static/range {v0 .. v19}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    move-object/from16 v1, v17

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_12
    move-object/from16 v21, v3

    move/from16 v20, v4

    move v11, v9

    const v0, 0x63b50836

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v1, v11}, Lr0/q;->q(Z)V

    :goto_9
    move/from16 v3, v20

    move-object/from16 v2, v21

    goto :goto_a

    :cond_13
    invoke-virtual {v1}, Lr0/q;->W()V

    move-object v2, v0

    move v3, v6

    :goto_a
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lnd/w;

    const/4 v6, 0x1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lnd/w;-><init>(Ljava/lang/Object;ZIII)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_14
    return-void
.end method

.method public static final u(J)Ljava/lang/String;
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.0f \u041c\u0411"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Lr0/q;I)V
    .locals 10

    const v0, 0x367859e8

    invoke-virtual {p0, v0}, Lr0/q;->c0(I)Lr0/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    iget-object v0, v0, Lua/nav/geo/c;->e:Lx9/l0;

    invoke-static {v0, p0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v1

    iget-object v1, v1, Lad/x;->k:Lx9/l0;

    invoke-static {v1, p0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v1

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v2, v3, :cond_1

    new-instance v2, Lf2/s0;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v4}, Lf2/s0;-><init>(ILy8/c;I)V

    invoke-virtual {p0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Li9/e;

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-static {v2, v3, p0}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/d;

    iget-object v2, v2, Lyc/d;->b:Ljava/util/List;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/d;

    iget-object v3, v3, Lyc/d;->a:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lua/nav/geo/PackInfo;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/d;

    iget-object v7, v7, Lyc/d;->b:Ljava/util/List;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/geo/PackInfo;

    iget-object v8, v8, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v9, v6, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lad/m0;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lad/m0;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lad/m0;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v3}, Lad/m0;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v4}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v3

    iget-object v3, v3, Luc/f;->h:Lx9/l0;

    invoke-static {v3, p0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v3

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luc/c;

    invoke-virtual {v3}, Luc/c;->a()Z

    move-result v3

    new-instance v4, Lod/k6;

    invoke-direct {v4, v3, v2, v0, v1}, Lod/k6;-><init>(ZLjava/util/List;Lr0/u0;Lr0/u0;)V

    const v0, 0xe489531

    invoke-static {v0, v4, p0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441"

    const/16 v2, 0x36

    invoke-static {v1, v0, p0, v2}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p0}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lod/u;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Lod/u;-><init>(II)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final w(Lr0/r2;Lua/nav/geo/PackInfo;)Z
    .locals 7

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/s;

    iget-object p0, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-wide v5, p0, Lua/nav/routing/GeoPoint;->a:D

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_1

    cmpg-double v1, v5, v3

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-wide p0, p0, Lua/nav/routing/GeoPoint;->b:D

    cmpg-double v2, v2, p0

    if-gtz v2, :cond_1

    cmpg-double p0, p0, v4

    if-gtz p0, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static final x(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xf4240

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f \u041c\u0411"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " \u041a\u0411"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Ljava/lang/String;JJLr0/q;I)V
    .locals 20

    move-object/from16 v6, p0

    move-wide/from16 v4, p3

    move-object/from16 v0, p5

    const v1, -0xe3b98b9

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p6, v1

    move-wide/from16 v9, p1

    invoke-virtual {v0, v9, v10}, Lr0/q;->f(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v4, v5}, Lr0/q;->f(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    and-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    int-to-float v2, v2

    invoke-static {v2}, La0/e;->a(F)La0/d;

    move-result-object v8

    const/16 v2, 0x28

    int-to-float v2, v2

    const/16 v3, 0x52

    int-to-float v3, v3

    sget-object v7, Lf1/o;->a:Lf1/o;

    invoke-static {v7, v2, v3}, Lu/b1;->q(Lf1/r;FF)Lf1/r;

    move-result-object v7

    new-instance v2, Lnd/x;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lnd/x;-><init>(IJLjava/lang/String;)V

    const v3, 0x1bf3d60c

    invoke-static {v3, v2, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v16

    shl-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0x380

    const v2, 0xc00006

    or-int v18, v1, v2

    const/16 v19, 0x78

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v7 .. v19}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v0, Lod/c6;

    move-wide/from16 v2, p1

    move/from16 v1, p6

    invoke-direct/range {v0 .. v6}, Lod/c6;-><init>(IJJLjava/lang/String;)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final z(Lr0/q;I)V
    .locals 3

    const v0, -0x1231456f

    invoke-virtual {p0, v0}, Lr0/q;->c0(I)Lr0/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->o()Lbd/i;

    move-result-object v0

    iget-object v0, v0, Lbd/i;->f:Lx9/l0;

    invoke-static {v0, p0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    new-instance v1, Lb0/x2;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    const v0, -0x5a28cbe6

    invoke-static {v0, v1, p0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u0421\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438, \u043f\u0435\u0440\u0435\u0457\u0437\u0434\u0438"

    const/16 v2, 0x36

    invoke-static {v1, v0, p0, v2}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {p0}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lod/u;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lod/u;-><init>(II)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_2
    return-void
.end method
