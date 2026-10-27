.class public abstract Lo0/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Lo0/x2;->a:F

    const/16 v1, 0xc

    int-to-float v1, v1

    sput v1, Lo0/x2;->b:F

    sput v0, Lo0/x2;->c:F

    return-void
.end method

.method public static final a(ZLi9/a;Lf1/r;ZLo0/v2;Lr0/q;I)V
    .locals 20

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    const v0, 0x185a72e8

    invoke-virtual {v7, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v7, v1}, Lr0/q;->h(Z)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v7, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    const v5, 0x32d80

    or-int/2addr v0, v5

    const v5, 0x12493

    and-int/2addr v5, v0

    const v6, 0x12492

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v6, :cond_2

    move v5, v9

    goto :goto_2

    :cond_2
    move v5, v8

    :goto_2
    and-int/2addr v0, v9

    invoke-virtual {v7, v0, v5}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7}, Lr0/q;->Y()V

    and-int/lit8 v0, p6, 0x1

    move v5, v0

    sget-object v0, Lf1/o;->a:Lf1/o;

    if-eqz v5, :cond_4

    invoke-virtual {v7}, Lr0/q;->C()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lr0/q;->W()V

    move-object/from16 v9, p2

    move/from16 v19, p3

    move-object/from16 v10, p4

    goto :goto_5

    :cond_4
    :goto_3
    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v7, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-object v6, v5, Lo0/u0;->d0:Lo0/v2;

    if-nez v6, :cond_5

    new-instance v10, Lo0/v2;

    sget-object v6, Lq0/x;->d:Lq0/g;

    invoke-static {v5, v6}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v11

    sget-object v6, Lq0/x;->f:Lq0/g;

    invoke-static {v5, v6}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v13

    sget-object v6, Lq0/x;->a:Lq0/g;

    move-object/from16 p2, v10

    invoke-static {v5, v6}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v9

    const v6, 0x3ec28f5c    # 0.38f

    invoke-static {v6, v9, v10}, Lm1/p;->b(FJ)J

    move-result-wide v15

    sget-object v9, Lq0/x;->b:Lq0/g;

    invoke-static {v5, v9}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lm1/p;->b(FJ)J

    move-result-wide v17

    move-object/from16 v10, p2

    invoke-direct/range {v10 .. v18}, Lo0/v2;-><init>(JJJJ)V

    iput-object v10, v5, Lo0/u0;->d0:Lo0/v2;

    goto :goto_4

    :cond_5
    move-object v10, v6

    :goto_4
    move-object v9, v0

    const/16 v19, 0x1

    :goto_5
    invoke-virtual {v7}, Lr0/q;->r()V

    if-eqz v1, :cond_6

    sget v5, Lo0/x2;->b:F

    int-to-float v6, v4

    div-float/2addr v5, v6

    goto :goto_6

    :cond_6
    int-to-float v5, v8

    :goto_6
    sget-object v6, Lq0/q;->m:Lq0/q;

    invoke-static {v6, v7}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v6

    invoke-static {v5, v6, v7}, Ln/e;->a(FLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v19, :cond_7

    if-eqz v1, :cond_7

    iget-wide v5, v10, Lo0/v2;->a:J

    goto :goto_7

    :cond_7
    if-eqz v19, :cond_8

    if-nez v1, :cond_8

    iget-wide v5, v10, Lo0/v2;->b:J

    goto :goto_7

    :cond_8
    if-nez v19, :cond_9

    if-eqz v1, :cond_9

    iget-wide v5, v10, Lo0/v2;->c:J

    goto :goto_7

    :cond_9
    iget-wide v5, v10, Lo0/v2;->d:J

    :goto_7
    if-eqz v19, :cond_a

    const v12, 0x47359f1d

    invoke-virtual {v7, v12}, Lr0/q;->b0(I)V

    sget-object v12, Lq0/q;->n:Lq0/q;

    invoke-static {v12, v7}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v12

    invoke-static {v5, v6, v12, v7}, Lm/h0;->a(JLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v5

    invoke-virtual {v7, v8}, Lr0/q;->q(Z)V

    :goto_8
    move-object v12, v5

    goto :goto_9

    :cond_a
    const v12, 0x4738551a

    invoke-virtual {v7, v12}, Lr0/q;->b0(I)V

    new-instance v12, Lm1/p;

    invoke-direct {v12, v5, v6}, Lm1/p;-><init>(J)V

    invoke-static {v12, v7}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v5

    invoke-virtual {v7, v8}, Lr0/q;->q(Z)V

    goto :goto_8

    :goto_9
    if-eqz v2, :cond_b

    sget v5, Lq0/x;->e:F

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v3, v5, v8}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v3

    new-instance v5, Lm2/h;

    const/4 v4, 0x3

    invoke-direct {v5, v4}, Lm2/h;-><init>(I)V

    const/4 v2, 0x0

    move-object/from16 v6, p1

    move/from16 v4, v19

    invoke-static/range {v0 .. v6}, Lz/c;->a(Lf1/r;ZLs/i;Lo0/b3;ZLm2/h;Li9/a;)Lf1/r;

    move-result-object v2

    goto :goto_a

    :cond_b
    move/from16 v4, v19

    move-object v2, v0

    :goto_a
    if-eqz p1, :cond_c

    sget-object v0, Lo0/n1;->a:Lc2/k;

    sget-object v0, Lo0/v1;->a:Lo0/v1;

    :cond_c
    invoke-interface {v9, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b1;->t(Lf1/r;)Lf1/r;

    move-result-object v0

    sget v1, Lo0/x2;->a:F

    invoke-static {v0, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    sget v1, Lq0/x;->c:F

    invoke-static {v0, v1}, Lu/b1;->i(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {v7, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_d

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_e

    :cond_d
    new-instance v2, Lb0/r0;

    const/16 v1, 0x12

    invoke-direct {v2, v1, v12, v11}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Li9/c;

    invoke-static {v8, v0, v2, v7}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    move-object v3, v9

    move-object v5, v10

    goto :goto_b

    :cond_f
    invoke-virtual {v7}, Lr0/q;->W()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    :goto_b
    invoke-virtual {v7}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v0, Lo0/w2;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lo0/w2;-><init>(ZLi9/a;Lf1/r;ZLo0/v2;I)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method
