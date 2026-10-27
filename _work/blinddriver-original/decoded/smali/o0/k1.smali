.class public abstract Lo0/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf1/o;->a:Lf1/o;

    sget v1, Lq0/b0;->a:F

    invoke-static {v0, v1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v0

    sput-object v0, Lo0/k1;->a:Lf1/r;

    return-void
.end method

.method public static final a(Lq1/b;Lf1/r;JLr0/q;I)V
    .locals 15

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v0, p4

    move/from16 v5, p5

    const v1, -0x7faffaf9

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, v5, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-nez v7, :cond_3

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    const/16 v10, 0x800

    if-nez v7, :cond_7

    invoke-virtual {v0, v3, v4}, Lr0/q;->f(J)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v10

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x493

    const/16 v11, 0x492

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v7, v11, :cond_8

    move v7, v13

    goto :goto_5

    :cond_8
    move v7, v12

    :goto_5
    and-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v11, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lr0/q;->W()V

    :cond_a
    :goto_6
    invoke-virtual {v0}, Lr0/q;->r()V

    and-int/lit16 v7, v6, 0x1c00

    xor-int/lit16 v7, v7, 0xc00

    if-le v7, v10, :cond_b

    invoke-virtual {v0, v3, v4}, Lr0/q;->f(J)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_b
    and-int/lit16 v6, v6, 0xc00

    if-ne v6, v10, :cond_c

    goto :goto_7

    :cond_c
    move v13, v12

    :cond_d
    :goto_7
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v13, :cond_e

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v6, v7, :cond_10

    :cond_e
    sget-wide v6, Lm1/p;->g:J

    invoke-static {v3, v4, v6, v7}, Lm1/p;->c(JJ)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    new-instance v8, Lm1/j;

    const/4 v6, 0x5

    invoke-direct {v8, v6, v3, v4}, Lm1/j;-><init>(IJ)V

    :goto_8
    invoke-virtual {v0, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v6, v8

    :cond_10
    move-object v10, v6

    check-cast v10, Lm1/j;

    const v6, -0x1fff68c5

    invoke-virtual {v0, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v12}, Lr0/q;->q(Z)V

    invoke-virtual {p0}, Lq1/b;->d()J

    move-result-wide v6

    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v6, v7, v13, v14}, Ll1/e;->a(JJ)Z

    move-result v6

    sget-object v13, Lf1/o;->a:Lf1/o;

    if-nez v6, :cond_12

    invoke-virtual {p0}, Lq1/b;->d()J

    move-result-wide v6

    shr-long v8, v6, v9

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v8

    if-eqz v8, :cond_11

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_9

    :cond_11
    move-object v6, v13

    goto :goto_a

    :cond_12
    :goto_9
    sget-object v6, Lo0/k1;->a:Lf1/r;

    :goto_a
    invoke-interface {v2, v6}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v11, 0x16

    sget-object v9, Lc2/h;->a:Lc2/x0;

    move-object v7, p0

    invoke-static/range {v6 .. v11}, Lj1/g;->g(Lf1/r;Lq1/b;Lf1/e;Lc2/x0;Lm1/j;I)Lf1/r;

    move-result-object v1

    invoke-interface {v1, v13}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0, v12}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_b
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v0, Lp0/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lp0/o;-><init>(Lq1/b;Lf1/r;JI)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_14
    return-void
.end method

.method public static final b(Lr1/f;Lf1/r;JLr0/q;I)V
    .locals 8

    const v0, -0x79033cc

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

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x100

    goto :goto_1

    :cond_1
    const/16 v3, 0x80

    :goto_1
    or-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x400

    and-int/lit16 v3, v0, 0x493

    const/16 v4, 0x492

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {p4, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p4}, Lr0/q;->Y()V

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p4}, Lr0/q;->C()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p4}, Lr0/q;->W()V

    and-int/lit16 v0, v0, -0x1c01

    move-wide v4, p2

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v3, Lo0/z0;->a:Lr0/a0;

    invoke-virtual {p4, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm1/p;

    iget-wide v3, v3, Lm1/p;->a:J

    and-int/lit16 v0, v0, -0x1c01

    move-wide v4, v3

    :goto_4
    invoke-virtual {p4}, Lr0/q;->r()V

    invoke-static {p0, p4}, Lr1/b;->d(Lr1/f;Lr0/q;)Lr1/j0;

    move-result-object v2

    and-int/lit16 v0, v0, 0x380

    const/16 v3, 0x38

    or-int v7, v3, v0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lo0/k1;->a(Lq1/b;Lf1/r;JLr0/q;I)V

    move-wide v3, v4

    goto :goto_5

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    move-wide v3, p2

    :goto_5
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v0, Lb0/c;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lb0/c;-><init>(Ljava/lang/Object;Lf1/r;JII)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method
