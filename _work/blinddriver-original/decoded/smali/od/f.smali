.class public abstract Lod/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xffd32f2fL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lod/f;->a:J

    const-wide v0, 0xfffbc02dL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lod/f;->b:J

    return-void
.end method

.method public static final a(Ltc/a;Li9/a;Lf1/r;ZLr0/q;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v15, p4

    move/from16 v0, p5

    const-string v3, "onClick"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x1a61bbf

    invoke-virtual {v15, v3}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v3, v0, 0x6

    const/4 v5, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_0

    invoke-virtual {v15, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    or-int/2addr v3, v0

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    and-int/lit8 v6, v0, 0x30

    if-nez v6, :cond_4

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_3

    :cond_3
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v3, v6

    :cond_4
    or-int/lit16 v3, v3, 0x180

    and-int/lit16 v6, v0, 0xc00

    if-nez v6, :cond_6

    invoke-virtual {v15, v4}, Lr0/q;->h(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x800

    goto :goto_4

    :cond_5
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v3, v6

    :cond_6
    and-int/lit16 v6, v3, 0x493

    const/16 v7, 0x492

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_7

    move v6, v9

    goto :goto_5

    :cond_7
    move v6, v8

    :goto_5
    and-int/2addr v3, v9

    invoke-virtual {v15, v3, v6}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v1, Ltc/a;->a:Ltc/f;

    sget-object v6, Ltc/f;->n:Ltc/f;

    if-ne v3, v6, :cond_8

    sget-wide v6, Lod/f;->a:J

    goto :goto_6

    :cond_8
    sget-wide v6, Lod/f;->b:J

    :goto_6
    sget-object v3, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v15, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/q3;

    iget-object v3, v3, Lo0/q3;->c:La0/d;

    new-instance v9, Lf1/v;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-direct {v9, v10}, Lf1/v;-><init>(F)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v9

    const/16 v10, 0x28

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v5}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v5

    const/4 v9, 0x0

    const/16 v10, 0xf

    invoke-static {v5, v8, v9, v2, v10}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v5

    new-instance v8, Lb0/n0;

    const/4 v9, 0x2

    invoke-direct {v8, v1, v4, v9}, Lb0/n0;-><init>(Ljava/lang/Object;ZI)V

    const v9, 0x10d0625c

    invoke-static {v9, v8, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const/high16 v16, 0xc00000

    const/16 v17, 0x78

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v7, v6

    move-object v6, v3

    invoke-static/range {v5 .. v17}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    sget-object v3, Lf1/o;->a:Lf1/o;

    goto :goto_7

    :cond_9
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    move-object/from16 v3, p2

    :goto_7
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v0, Lod/e;

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lod/e;-><init>(Ltc/a;Li9/a;Lf1/r;ZI)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final b(ZLr0/q;I)V
    .locals 12

    const v0, -0x56795842

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->h(Z)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v3, v0, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_6

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object v2

    iget-object v2, v2, Ltc/e;->f:Lx9/l0;

    invoke-static {v2, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v2

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object v4

    iget-object v4, v4, Ltc/e;->h:Lx9/l0;

    invoke-static {v4, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v4

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v5

    iget-object v5, v5, Lua/nav/a;->o:Lx9/l0;

    invoke-static {v5, p1}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v5

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ltc/a;

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lnd/o;

    invoke-direct {v0, p2, v1, p0}, Lnd/o;-><init>(IIZ)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    return-void

    :cond_2
    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v6, Ltc/a;->a:Ltc/f;

    sget-object v2, Ltc/f;->l:Ltc/f;

    if-eq v1, v2, :cond_3

    invoke-virtual {v6}, Ltc/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v9, p0

    move-object v10, p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_5

    new-instance v1, Ln/k1;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ln/k1;-><init>(I)V

    invoke-virtual {p1, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v7, v1

    check-cast v7, Li9/a;

    shl-int/lit8 v0, v0, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/16 v1, 0x30

    or-int v11, v1, v0

    const/4 v8, 0x0

    move v9, p0

    move-object v10, p1

    invoke-static/range {v6 .. v11}, Lod/f;->a(Ltc/a;Li9/a;Lf1/r;ZLr0/q;I)V

    sget-object p0, Lf1/o;->a:Lf1/o;

    int-to-float p1, v3

    invoke-static {p0, p1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object p0

    invoke-static {p0, v10}, Lu/b;->e(Lf1/r;Lr0/q;)V

    goto :goto_3

    :goto_2
    invoke-virtual {v10}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p1, Lnd/o;

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0, v9}, Lnd/o;-><init>(IIZ)V

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    return-void

    :cond_6
    move v9, p0

    move-object v10, p1

    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {v10}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p1, Lnd/o;

    invoke-direct {p1, p2, v3, v9}, Lnd/o;-><init>(IIZ)V

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final c(Ltc/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const-string v0, "onClick"

    invoke-static {v7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x31a18ef1    # -9.3298784E8f

    invoke-virtual {v8, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v8, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v8, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x180

    and-int/lit16 v2, v0, 0x93

    const/16 v3, 0x92

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    and-int/2addr v0, v5

    invoke-virtual {v8, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v2, 0xfff2f4f7L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v12

    const-wide v2, 0xffb8c0ccL

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    iget-object v0, v1, Ltc/a;->a:Ltc/f;

    sget-object v6, Ltc/f;->n:Ltc/f;

    move-wide v9, v2

    if-ne v0, v6, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    const-wide v14, 0xff1b2028L

    invoke-static {v14, v15}, Lm1/v;->d(J)J

    move-result-wide v14

    const v0, 0x3f75c28f    # 0.96f

    invoke-static {v0, v14, v15}, Lm1/p;->b(FJ)J

    move-result-wide v14

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v11, v0, Lo0/q3;->c:La0/d;

    const/16 v0, 0x154

    int-to-float v0, v0

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/4 v6, 0x0

    invoke-static {v3, v6, v0, v5}, Lu/b1;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-static {v0, v4, v5, v7, v6}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v16

    new-instance v0, Lod/b;

    move-object/from16 v21, v3

    move-wide v5, v9

    move-wide v3, v12

    invoke-direct/range {v0 .. v6}, Lod/b;-><init>(Ltc/a;ZJJ)V

    const v1, 0x763fcb54

    invoke-static {v1, v0, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v17

    const v19, 0xc00d80

    const/16 v20, 0x70

    move-object v9, v11

    move-wide v10, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, v16

    const/16 v16, 0x0

    move-object/from16 v18, p3

    invoke-static/range {v8 .. v20}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object/from16 v3, v21

    goto :goto_4

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lr0/q;->W()V

    move-object/from16 v3, p2

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v0, Lod/a;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p4

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lod/a;-><init>(Ltc/a;Li9/a;Lf1/r;II)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final d(Ltc/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    iget-object v3, v1, Ltc/a;->a:Ltc/f;

    const-string v4, "onClick"

    invoke-static {v2, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x6ce82cf8

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p4, v4

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x180

    and-int/lit16 v5, v4, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    and-int/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x28

    int-to-float v4, v4

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v4}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v6, La0/e;->a:La0/d;

    invoke-static {v4, v6}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v4

    sget-object v6, Ltc/f;->n:Ltc/f;

    if-ne v3, v6, :cond_3

    sget-wide v9, Lod/f;->a:J

    goto :goto_3

    :cond_3
    sget-wide v9, Lod/f;->b:J

    :goto_3
    sget-object v11, Lm1/v;->b:Lm1/e0;

    invoke-static {v4, v9, v10, v11}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v4

    const/4 v9, 0x0

    const/16 v10, 0xf

    invoke-static {v4, v7, v9, v2, v10}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v4

    sget-object v9, Lf1/c;->p:Lf1/j;

    invoke-static {v9, v7}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v7

    iget-wide v9, v0, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v4, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v12, v0, Lr0/q;->S:Z

    if-eqz v12, :cond_4

    invoke-virtual {v0, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_4
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v7, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v10, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v9, Le2/g;->g:Le2/e;

    invoke-static {v0, v7, v9}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v0, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v7, Le2/g;->d:Le2/e;

    invoke-static {v7, v4, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-ne v3, v6, :cond_5

    sget-wide v3, Lm1/p;->c:J

    goto :goto_5

    :cond_5
    sget-wide v3, Lm1/p;->b:J

    :goto_5
    const/16 v6, 0x18

    invoke-static {v6}, La/a;->k(I)J

    move-result-wide v6

    sget-object v9, Lt2/k;->r:Lt2/k;

    const/16 v24, 0x0

    const v25, 0x1ffd2

    move-object v10, v5

    move-wide/from16 v27, v3

    move v4, v8

    move-wide v7, v6

    move-wide/from16 v5, v27

    const-string v3, "!"

    move v11, v4

    const/4 v4, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move v13, v11

    move-object v14, v12

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    move/from16 v16, v15

    const-wide/16 v14, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v26, v23

    const v23, 0x30c06

    move/from16 v27, v22

    move-object/from16 v22, v0

    move/from16 v0, v27

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_6
    move-object v3, v0

    invoke-virtual {v3}, Lr0/q;->W()V

    move-object/from16 v26, p2

    :goto_6
    invoke-virtual {v3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v0, Lod/a;

    const/4 v5, 0x0

    move/from16 v4, p4

    move-object/from16 v3, v26

    invoke-direct/range {v0 .. v5}, Lod/a;-><init>(Ltc/a;Li9/a;Lf1/r;II)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final e(Li9/e;Lr0/q;II)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const v3, -0x334db97a

    invoke-virtual {v0, v3}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    or-int/lit8 v6, v1, 0x6

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    move-object/from16 v6, p0

    invoke-virtual {v0, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    or-int/2addr v7, v1

    :goto_1
    and-int/lit8 v8, v7, 0x3

    const/4 v9, 0x0

    if-eq v8, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v9

    :goto_2
    and-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v8, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v3, :cond_3

    const/4 v6, 0x0

    :cond_3
    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object v3

    iget-object v3, v3, Ltc/e;->f:Lx9/l0;

    invoke-static {v3, v0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v3

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-ne v11, v12, :cond_4

    new-instance v11, Ln/k1;

    const/16 v13, 0x11

    invoke-direct {v11, v13}, Ln/k1;-><init>(I)V

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v11, Li9/a;

    invoke-static {v8, v11, v0}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/a;

    if-eqz v3, :cond_5

    iget-object v11, v3, Ltc/a;->a:Ltc/f;

    sget-object v13, Ltc/f;->l:Ltc/f;

    if-eq v11, v13, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    const/4 v11, 0x6

    int-to-float v13, v11

    sget-object v14, Lf1/o;->a:Lf1/o;

    invoke-static {v14, v13}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v13

    invoke-static {v13, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/16 v13, 0x8

    int-to-float v13, v13

    invoke-static {v13}, Lu/h;->g(F)Lu/f;

    move-result-object v13

    sget-object v15, Lf1/c;->v:Lf1/i;

    const/16 v5, 0x36

    invoke-static {v13, v15, v0, v5}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v5

    iget-wide v10, v0, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v14, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v15

    sget-object v16, Le2/h;->b:Le2/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v4, v0, Lr0/q;->S:Z

    if-eqz v4, :cond_6

    invoke-virtual {v0, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_4
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, v5, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v11, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v0, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v0, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v15, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v4, -0x6b4908b1

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    invoke-static {v0, v9}, Lod/f;->g(Lr0/q;I)V

    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    if-nez v6, :cond_7

    const v4, 0x2286a17

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    :goto_5
    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_7
    const v4, -0x6b4904d6

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    and-int/lit8 v4, v7, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_a

    const v4, -0x6b4900ab

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_8

    if-ne v5, v12, :cond_9

    :cond_8
    new-instance v5, Lb0/u;

    const/4 v4, 0x6

    invoke-direct {v5, v8, v4}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v0, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Li9/a;

    const/4 v4, 0x0

    invoke-static {v3, v5, v4, v0, v9}, Lod/f;->d(Ltc/a;Li9/a;Lf1/r;Lr0/q;I)V

    :goto_7
    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    const/4 v13, 0x1

    goto :goto_8

    :cond_a
    const v4, 0x229aac0

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    if-eqz v3, :cond_d

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, -0x41d7a9ad

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    const/4 v4, 0x4

    int-to-float v4, v4

    invoke-static {v14, v4}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-static {v4, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_b

    if-ne v5, v12, :cond_c

    :cond_b
    new-instance v5, Lb0/u;

    const/4 v4, 0x7

    invoke-direct {v5, v8, v4}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v0, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Li9/a;

    const/4 v4, 0x0

    invoke-static {v3, v5, v4, v0, v9}, Lod/f;->c(Ltc/a;Li9/a;Lf1/r;Lr0/q;I)V

    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_d
    const v3, -0x41d5a764

    invoke-virtual {v0, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_9
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v3, Lod/d;

    invoke-direct {v3, v1, v2, v6}, Lod/d;-><init>(IILi9/e;)V

    iput-object v3, v0, Lr0/n1;->d:Li9/e;

    :cond_f
    return-void
.end method

.method public static final f(JFLr0/q;I)V
    .locals 4

    const v0, 0x5b1d21c2

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x13

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p4, 0x1

    invoke-virtual {p3, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lf1/o;->a:Lf1/o;

    invoke-static {v0, p2}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v1, v3, :cond_1

    new-instance v1, Lad/c;

    const/4 v3, 0x7

    invoke-direct {v1, v3, p0, p1}, Lad/c;-><init>(IJ)V

    invoke-virtual {p3, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Li9/c;

    invoke-static {v2, v0, v1, p3}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Lod/c;

    invoke-direct {v0, p0, p1, p2, p4}, Lod/c;-><init>(JFI)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final g(Lr0/q;I)V
    .locals 7

    const v0, -0x5985ef6

    invoke-virtual {p0, v0}, Lr0/q;->c0(I)Lr0/q;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    and-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v2

    iget-object v2, v2, Lkd/j;->j:Lx9/l0;

    invoke-static {v2, p0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v2

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v3

    iget-object v3, v3, Lkd/j;->p:Lx9/l0;

    invoke-static {v3, p0}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v3

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, 0xff2e7d32L

    :goto_1
    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide v3, 0xff1565c0L

    goto :goto_1

    :cond_2
    const-wide v3, 0xff78909cL

    goto :goto_1

    :goto_2
    const/16 v5, 0x28

    int-to-float v5, v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v5}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v6, La0/e;->a:La0/d;

    invoke-static {v5, v6}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v5

    sget-object v6, Lm1/v;->b:Lm1/e0;

    invoke-static {v5, v3, v4, v6}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    invoke-virtual {p0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v5, v4, :cond_4

    :cond_3
    new-instance v5, Lm0/w0;

    const/4 v4, 0x2

    invoke-direct {v5, v2, v4}, Lm0/w0;-><init>(Lr0/r2;I)V

    invoke-virtual {p0, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Li9/a;

    const/16 v2, 0xf

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v5, v2}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->p:Lf1/j;

    invoke-static {v3, v0}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v0

    iget-wide v3, p0, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {p0}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v2, p0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p0}, Lr0/q;->e0()V

    iget-boolean v6, p0, Lr0/q;->S:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lr0/q;->o0()V

    :goto_3
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v4, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {p0, v0, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {p0, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v2, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-wide v2, Lm1/p;->c:J

    const/16 v0, 0x1a

    int-to-float v0, v0

    const/16 v4, 0x36

    invoke-static {v2, v3, v0, p0, v4}, Lod/f;->f(JFLr0/q;I)V

    invoke-virtual {p0, v1}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p0}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lb0/u2;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, Lb0/u2;-><init>(II)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method
