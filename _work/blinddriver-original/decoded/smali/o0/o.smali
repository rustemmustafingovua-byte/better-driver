.class public abstract Lo0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf3/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3/a0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lf3/a0;-><init>(I)V

    sput-object v0, Lo0/o;->a:Lf3/a0;

    return-void
.end method

.method public static final a(ZLi9/a;Lf1/r;JLp/a2;Lf3/a0;Lm1/h0;JFFLz0/d;Lr0/q;I)V
    .locals 24

    move-object/from16 v0, p13

    const v1, 0x66dab59f

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    move/from16 v3, p0

    invoke-virtual {v0, v3}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p14, v1

    const v2, 0x364b2d80

    or-int/2addr v1, v2

    const v2, 0x12492493

    and-int/2addr v2, v1

    const v4, 0x12492492

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    and-int/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v1, p14, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v14, p2

    move-wide/from16 v1, p3

    move-object/from16 v17, p5

    move-object/from16 v12, p6

    move-object/from16 v18, p7

    move-wide/from16 v19, p8

    move/from16 v21, p10

    move/from16 v22, p11

    goto :goto_3

    :cond_3
    :goto_2
    int-to-float v1, v5

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v6, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v1, v8

    or-long/2addr v1, v6

    invoke-static {v0}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v4

    sget v6, Lo0/p1;->a:F

    sget-object v6, Lq0/p;->c:Lq0/y;

    invoke-static {v6, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v6

    sget-object v7, Lq0/p;->a:Lq0/g;

    invoke-static {v7, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v7

    sget v9, Lo0/p1;->a:F

    sget v10, Lo0/p1;->b:F

    sget-object v11, Lf1/o;->a:Lf1/o;

    sget-object v12, Lo0/o;->a:Lf3/a0;

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v14, v11

    :goto_3
    invoke-virtual {v0}, Lr0/q;->r()V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v4, v6, :cond_4

    new-instance v4, Ln/i0;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v7}, Ln/i0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v15, v4

    check-cast v15, Ln/i0;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v7, v15, Ln/i0;->c:Lr0/e1;

    invoke-virtual {v7, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v4, v15, Ln/i0;->b:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v15, Ln/i0;->c:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const v4, 0x458e7b43

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_6
    :goto_4
    const v4, 0x457e4eb4

    invoke-virtual {v0, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_7

    sget-wide v7, Lm1/k0;->b:J

    new-instance v4, Lm1/k0;

    invoke-direct {v4, v7, v8}, Lm1/k0;-><init>(J)V

    invoke-static {v4}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v4

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v4, Lr0/u0;

    sget-object v7, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v0, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb3/c;

    invoke-virtual {v0, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_8

    if-ne v9, v6, :cond_9

    :cond_8
    new-instance v9, Lp0/i;

    new-instance v6, Lo0/k;

    invoke-direct {v6, v4, v5}, Lo0/k;-><init>(Lr0/u0;I)V

    invoke-direct {v9, v1, v2, v7, v6}, Lp0/i;-><init>(JLb3/c;Lo0/k;)V

    invoke-virtual {v0, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lp0/i;

    new-instance v13, Lo0/n;

    move-object/from16 v23, p12

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v23}, Lo0/n;-><init>(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;)V

    const v4, -0x36afd328    # -852685.5f

    invoke-static {v4, v13, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v4

    const/16 v6, 0xdb0

    const/4 v7, 0x0

    move-object/from16 p3, p1

    move-object/from16 p6, v0

    move-object/from16 p5, v4

    move/from16 p7, v6

    move/from16 p8, v7

    move-object/from16 p2, v9

    move-object/from16 p4, v12

    invoke-static/range {p2 .. p8}, Lf3/k;->a(Lf3/z;Li9/a;Lf3/a0;Lz0/d;Lr0/q;II)V

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    :goto_5
    move-wide v6, v1

    move-object v9, v12

    move-object v5, v14

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-wide/from16 v11, v19

    move/from16 v13, v21

    move/from16 v14, v22

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    :goto_6
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v2, Lo0/l;

    move-object/from16 v4, p1

    move-object/from16 v15, p12

    move/from16 v16, p14

    invoke-direct/range {v2 .. v16}, Lo0/l;-><init>(ZLi9/a;Lf1/r;JLp/a2;Lf3/a0;Lm1/h0;JFFLz0/d;I)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V
    .locals 21

    move-object/from16 v6, p6

    const v0, -0x1fc44f8d

    invoke-virtual {v6, v0}, Lr0/q;->c0(I)Lr0/q;

    move-object/from16 v1, p1

    invoke-virtual {v6, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int v0, p7, v0

    const v2, 0x6cb6d80

    or-int/2addr v0, v2

    const v2, 0x2492493

    and-int/2addr v2, v0

    const v3, 0x2492492

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v6, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lr0/q;->Y()V

    and-int/lit8 v2, p7, 0x1

    const v3, -0x380001

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Lr0/q;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lr0/q;->W()V

    and-int/2addr v0, v3

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto :goto_4

    :cond_3
    :goto_2
    sget v2, Lo0/p1;->a:F

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v6, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-object v5, v2, Lo0/u0;->c0:Lo0/q1;

    if-nez v5, :cond_4

    new-instance v7, Lo0/q1;

    sget-object v5, Lq0/o;->g:Lq0/g;

    invoke-static {v2, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v8

    sget-object v5, Lq0/o;->h:Lq0/g;

    invoke-static {v2, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v10

    sget-object v5, Lq0/o;->i:Lq0/g;

    invoke-static {v2, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v12

    sget-object v5, Lq0/o;->a:Lq0/g;

    invoke-static {v2, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v14

    sget v5, Lq0/o;->b:F

    invoke-static {v5, v14, v15}, Lm1/p;->b(FJ)J

    move-result-wide v14

    sget-object v5, Lq0/o;->c:Lq0/g;

    move/from16 v20, v3

    invoke-static {v2, v5}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    sget v5, Lq0/o;->d:F

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v16

    sget-object v3, Lq0/o;->e:Lq0/g;

    invoke-static {v2, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    sget v5, Lq0/o;->f:F

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v18

    invoke-direct/range {v7 .. v19}, Lo0/q1;-><init>(JJJJJJ)V

    iput-object v7, v2, Lo0/u0;->c0:Lo0/q1;

    move-object v5, v7

    goto :goto_3

    :cond_4
    move/from16 v20, v3

    :goto_3
    and-int v0, v0, v20

    sget-object v2, Lo0/p1;->c:Lu/s0;

    sget-object v3, Lf1/o;->a:Lf1/o;

    move-object v4, v5

    move-object v5, v2

    move-object v2, v3

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v6}, Lr0/q;->r()V

    const v7, 0xffffffe

    and-int/2addr v7, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v7}, Lo0/u1;->b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V

    move-object v6, v4

    move-object v7, v5

    move-object v4, v2

    move v5, v3

    goto :goto_5

    :cond_5
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    :goto_5
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lo0/m;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lo0/m;-><init>(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method
