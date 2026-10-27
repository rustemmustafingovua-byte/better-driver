.class public abstract Lo0/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lo0/t4;->a:Lr0/a0;

    return-void
.end method

.method public static final a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V
    .locals 1

    and-int/lit8 p11, p12, 0x1

    if-eqz p11, :cond_0

    sget-object p0, Lf1/o;->a:Lf1/o;

    :cond_0
    and-int/lit8 p11, p12, 0x2

    if-eqz p11, :cond_1

    sget-object p1, Lm1/v;->b:Lm1/e0;

    :cond_1
    and-int/lit8 p11, p12, 0x4

    if-eqz p11, :cond_2

    sget-object p2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p10, p2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo0/u0;

    iget-wide p2, p2, Lo0/u0;->p:J

    :cond_2
    and-int/lit8 p11, p12, 0x8

    if-eqz p11, :cond_3

    invoke-static {p2, p3, p10}, Lo0/v0;->b(JLr0/q;)J

    move-result-wide p4

    :cond_3
    and-int/lit8 p11, p12, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_4

    int-to-float p6, v0

    :cond_4
    and-int/lit8 p11, p12, 0x20

    if-eqz p11, :cond_5

    int-to-float p7, v0

    :cond_5
    and-int/lit8 p11, p12, 0x40

    if-eqz p11, :cond_6

    const/4 p8, 0x0

    :cond_6
    sget-object p11, Lo0/t4;->a:Lr0/a0;

    invoke-virtual {p10, p11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p12

    check-cast p12, Lb3/f;

    iget p12, p12, Lb3/f;->l:F

    add-float/2addr p6, p12

    sget-object p12, Lo0/z0;->a:Lr0/a0;

    new-instance v0, Lm1/p;

    invoke-direct {v0, p4, p5}, Lm1/p;-><init>(J)V

    invoke-virtual {p12, v0}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object p4

    new-instance p5, Lb3/f;

    invoke-direct {p5, p6}, Lb3/f;-><init>(F)V

    invoke-virtual {p11, p5}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object p5

    filled-new-array {p4, p5}, [Lj6/g0;

    move-result-object p11

    move-wide p4, p2

    move-object p3, p1

    new-instance p1, Lo0/q4;

    move-object p2, p8

    move p8, p7

    move-object p7, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p9}, Lo0/q4;-><init>(Lf1/r;Lm1/h0;JFLp/x;FLz0/d;)V

    const p0, 0x1923bae6

    invoke-static {p0, p1, p10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 p1, 0x38

    invoke-static {p11, p0, p10, p1}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    return-void
.end method

.method public static final b(ZLi9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V
    .locals 16

    move-object/from16 v0, p13

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x40

    move-wide/from16 v6, p5

    if-eqz v2, :cond_0

    invoke-static {v6, v7, v0}, Lo0/v0;->b(JLr0/q;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p7

    :goto_0
    const/4 v4, 0x0

    int-to-float v5, v4

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    int-to-float v1, v4

    move v14, v1

    goto :goto_1

    :cond_1
    move/from16 v14, p9

    :goto_1
    if-nez p11, :cond_3

    const v1, 0x5b159de8

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v1, v8, :cond_2

    new-instance v1, Ls/i;

    invoke-direct {v1}, Ls/i;-><init>()V

    invoke-virtual {v0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Ls/i;

    invoke-virtual {v0, v4}, Lr0/q;->q(Z)V

    move-object v11, v1

    goto :goto_2

    :cond_3
    const v1, -0xd93f531

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v4}, Lr0/q;->q(Z)V

    move-object/from16 v11, p11

    :goto_2
    sget-object v1, Lo0/t4;->a:Lr0/a0;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/f;

    iget v4, v4, Lb3/f;->l:F

    add-float v8, v4, v5

    sget-object v4, Lo0/z0;->a:Lr0/a0;

    new-instance v5, Lm1/p;

    invoke-direct {v5, v2, v3}, Lm1/p;-><init>(J)V

    invoke-virtual {v4, v5}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v2

    new-instance v3, Lb3/f;

    invoke-direct {v3, v8}, Lb3/f;-><init>(F)V

    invoke-virtual {v1, v3}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    filled-new-array {v2, v1}, [Lj6/g0;

    move-result-object v1

    new-instance v3, Lo0/s4;

    move/from16 v10, p0

    move-object/from16 v13, p1

    move-object/from16 v4, p2

    move/from16 v12, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p10

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lo0/s4;-><init>(Lf1/r;Lm1/h0;JFLp/x;ZLs/i;ZLi9/a;FLz0/d;)V

    const v2, 0x59ed78f3

    invoke-static {v2, v3, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v1, v2, v0, v3}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    return-void
.end method

.method public static final c(Li9/a;Lf1/r;ZLm1/h0;JJFLp/x;Ls/i;Lz0/d;Lr0/q;II)V
    .locals 15

    move-object/from16 v0, p12

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v11, v2

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    :goto_0
    and-int/lit8 v2, v1, 0x20

    move-wide/from16 v6, p4

    if-eqz v2, :cond_1

    invoke-static {v6, v7, v0}, Lo0/v0;->b(JLr0/q;)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p6

    :goto_1
    const/4 v4, 0x0

    int-to-float v5, v4

    and-int/lit16 v8, v1, 0x80

    if-eqz v8, :cond_2

    int-to-float v8, v4

    move v13, v8

    goto :goto_2

    :cond_2
    move/from16 v13, p8

    :goto_2
    and-int/lit16 v8, v1, 0x100

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    move-object v8, v9

    goto :goto_3

    :cond_3
    move-object/from16 v8, p9

    :goto_3
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v9, p10

    :goto_4
    if-nez v9, :cond_6

    const v1, -0x6563c494

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-ne v1, v9, :cond_5

    new-instance v1, Ls/i;

    invoke-direct {v1}, Ls/i;-><init>()V

    invoke-virtual {v0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v9, v1

    check-cast v9, Ls/i;

    :goto_5
    invoke-virtual {v0, v4}, Lr0/q;->q(Z)V

    move-object v10, v9

    goto :goto_6

    :cond_6
    const v1, 0x7899accb

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    goto :goto_5

    :goto_6
    sget-object v1, Lo0/t4;->a:Lr0/a0;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/f;

    iget v4, v4, Lb3/f;->l:F

    add-float/2addr v4, v5

    sget-object v5, Lo0/z0;->a:Lr0/a0;

    new-instance v9, Lm1/p;

    invoke-direct {v9, v2, v3}, Lm1/p;-><init>(J)V

    invoke-virtual {v5, v9}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v2

    new-instance v3, Lb3/f;

    invoke-direct {v3, v4}, Lb3/f;-><init>(F)V

    invoke-virtual {v1, v3}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    filled-new-array {v2, v1}, [Lj6/g0;

    move-result-object v1

    new-instance v3, Lo0/r4;

    move-object v12, p0

    move-object/from16 v5, p3

    move-object/from16 v14, p11

    move-object v9, v8

    move v8, v4

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v14}, Lo0/r4;-><init>(Lf1/r;Lm1/h0;JFLp/x;Ls/i;ZLi9/a;FLz0/d;)V

    const p0, 0x329de4cf

    invoke-static {p0, v3, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 v2, 0x38

    invoke-static {v1, p0, v0, v2}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    return-void
.end method

.method public static final d(Lf1/r;Lm1/h0;JLp/x;F)Lf1/r;
    .locals 16

    move-object/from16 v15, p4

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    move v1, v0

    sget-object v0, Lf1/o;->a:Lf1/o;

    if-lez v1, :cond_0

    sget-wide v6, Lm1/k0;->b:J

    sget-wide v10, Lm1/w;->a:J

    const/4 v14, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v12, v10

    move-object/from16 v8, p1

    move/from16 v4, p5

    invoke-static/range {v0 .. v14}, Lm1/v;->p(Lf1/r;FFFFFJLm1/h0;ZJJI)Lf1/r;

    move-result-object v1

    :goto_0
    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p1

    move-object v1, v0

    goto :goto_0

    :goto_1
    invoke-interface {v2, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    if-eqz v15, :cond_1

    iget v0, v15, Lp/x;->a:F

    iget-object v2, v15, Lp/x;->b:Lm1/j0;

    new-instance v3, Lp/w;

    invoke-direct {v3, v0, v2, v8}, Lp/w;-><init>(FLm1/j0;Lm1/h0;)V

    move-object v0, v3

    :cond_1
    invoke-interface {v1, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v8}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v0

    invoke-static {v0, v8}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v0

    return-object v0
.end method

.method public static final e(JFLr0/q;)J
    .locals 4

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p3, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    sget-object v1, Lo0/v0;->b:Lr0/s2;

    invoke-virtual {p3, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-wide v1, v0, Lo0/u0;->p:J

    invoke-static {p0, p1, v1, v2}, Lm1/p;->c(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    const/4 p0, 0x0

    int-to-float p0, p0

    invoke-static {p2, p0}, Lb3/f;->b(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    return-wide v1

    :cond_0
    const/4 p0, 0x1

    int-to-float p0, p0

    add-float/2addr p2, p0

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x40900000    # 4.5f

    mul-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    add-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    iget-wide p1, v0, Lo0/u0;->t:J

    invoke-static {p0, p1, p2}, Lm1/p;->b(FJ)J

    move-result-wide p0

    invoke-static {p0, p1, v1, v2}, Lm1/v;->k(JJ)J

    move-result-wide p0

    :cond_1
    return-wide p0
.end method
