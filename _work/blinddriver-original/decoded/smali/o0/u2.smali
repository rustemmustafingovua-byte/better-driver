.class public abstract Lo0/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:Ln/r;

.field public static final f:Ln/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf0

    int-to-float v0, v0

    sput v0, Lo0/u2;->a:F

    sget v0, Lq0/n;->a:F

    sget v0, Lq0/n;->a:F

    sput v0, Lo0/u2;->b:F

    const/4 v0, 0x6

    int-to-float v0, v0

    sput v0, Lo0/u2;->c:F

    sget v0, Lq0/d;->a:F

    sget v0, Lq0/d;->a:F

    sput v0, Lo0/u2;->d:F

    sget-object v0, Lq0/r;->a:Ln/r;

    sget-object v0, Lq0/r;->a:Ln/r;

    sput-object v0, Lo0/u2;->e:Ln/r;

    sget-object v0, Lq0/r;->c:Ln/r;

    sput-object v0, Lo0/u2;->f:Ln/r;

    return-void
.end method

.method public static final a(Lf1/r;JFJIFLr0/q;II)V
    .locals 28

    move-object/from16 v0, p8

    move/from16 v9, p9

    const v1, 0x13db87c1

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, p10, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v3, v9, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v9

    :goto_1
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_4

    and-int/lit8 v5, p10, 0x2

    move-wide/from16 v7, p1

    if-nez v5, :cond_3

    invoke-virtual {v0, v7, v8}, Lr0/q;->f(J)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    goto :goto_3

    :cond_4
    move-wide/from16 v7, p1

    :goto_3
    and-int/lit8 v5, p10, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v4, v4, 0x180

    :cond_5
    move/from16 v11, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v11, v9, 0x180

    if-nez v11, :cond_5

    move/from16 v11, p3

    invoke-virtual {v0, v11}, Lr0/q;->d(F)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_7
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v4, v12

    :goto_5
    const v12, 0x36400

    or-int/2addr v4, v12

    const v12, 0x12493

    and-int/2addr v12, v4

    const v13, 0x12492

    if-eq v12, v13, :cond_8

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v0, v13, v12}, Lr0/q;->T(IZ)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v12, v9, 0x1

    if-eqz v12, :cond_b

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int/lit8 v1, p10, 0x2

    if-eqz v1, :cond_a

    and-int/lit8 v4, v4, -0x71

    :cond_a
    and-int/lit16 v1, v4, -0x1c01

    move-object v12, v3

    move v3, v1

    move-object v1, v12

    move-wide/from16 v12, p4

    move/from16 v18, p6

    move/from16 v19, p7

    goto :goto_9

    :cond_b
    :goto_7
    if-eqz v1, :cond_c

    sget-object v1, Lf1/o;->a:Lf1/o;

    goto :goto_8

    :cond_c
    move-object v1, v3

    :goto_8
    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_d

    sget v3, Lo0/m2;->a:F

    sget-object v3, Lq0/w;->a:Lq0/g;

    invoke-static {v3, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v7

    and-int/lit8 v4, v4, -0x71

    :cond_d
    if-eqz v5, :cond_e

    sget v3, Lo0/m2;->a:F

    move v11, v3

    :cond_e
    sget v3, Lo0/m2;->a:F

    sget-wide v12, Lm1/p;->f:J

    and-int/lit16 v3, v4, -0x1c01

    sget v4, Lo0/m2;->c:I

    sget v5, Lo0/m2;->f:F

    move/from16 v18, v4

    move/from16 v19, v5

    :goto_9
    invoke-virtual {v0}, Lr0/q;->r()V

    sget-object v4, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v0, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/c;

    new-instance v25, Lo1/h;

    invoke-interface {v4, v11}, Lb3/c;->V(F)F

    move-result v4

    const/4 v5, 0x0

    const/16 v16, 0x1a

    const/16 v17, 0x0

    move/from16 p4, v4

    move/from16 p2, v5

    move/from16 p3, v16

    move/from16 p5, v17

    move/from16 p1, v18

    move-object/from16 p0, v25

    invoke-direct/range {p0 .. p5}, Lo1/h;-><init>(IIIFF)V

    move-object/from16 v4, p0

    invoke-static {v0}, Ln/d;->l(Lr0/q;)Ln/e0;

    move-result-object v5

    sget-object v14, Ln/w;->b:Lc2/c0;

    const/16 v6, 0x1770

    invoke-static {v6, v2, v14}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v2

    move/from16 v20, v11

    const-wide/16 v10, 0x0

    const/4 v14, 0x6

    invoke-static {v2, v10, v11, v14}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v2

    const/4 v15, 0x0

    const/high16 v6, 0x44870000    # 1080.0f

    invoke-static {v5, v15, v6, v2, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v2

    new-instance v6, Ln/p1;

    const/16 v15, 0xa

    invoke-direct {v6, v15}, Ln/p1;-><init>(I)V

    new-instance v15, Ln/h0;

    new-instance v10, Ln/g0;

    invoke-direct {v10}, Ln/g0;-><init>()V

    invoke-virtual {v6, v10}, Ln/p1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v15, v10}, Ln/h0;-><init>(Ln/g0;)V

    const-wide/16 v10, 0x0

    invoke-static {v15, v10, v11, v14}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v6

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    invoke-static {v5, v11, v10, v6, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v6

    new-instance v10, Ln/h0;

    new-instance v11, Ln/g0;

    invoke-direct {v11}, Ln/g0;-><init>()V

    const/16 v15, 0x1770

    iput v15, v11, Ln/g0;->a:I

    const p2, 0x3f5eb852    # 0.87f

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/16 v15, 0xbb8

    invoke-virtual {v11, v14, v15}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    move-result-object v14

    sget-object v15, Lo0/u2;->f:Ln/r;

    iput-object v15, v14, Ln/f0;->b:Ln/v;

    const v14, 0x3dcccccd    # 0.1f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v14, 0x1770

    invoke-virtual {v11, v15, v14}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    invoke-direct {v10, v11}, Ln/h0;-><init>(Ln/g0;)V

    const/4 v11, 0x6

    const-wide/16 v14, 0x0

    invoke-static {v10, v14, v15, v11}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v10

    move/from16 v11, p2

    const v14, 0x3dcccccd    # 0.1f

    invoke-static {v5, v14, v11, v10, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v5

    new-instance v10, Ln/p1;

    const/16 v11, 0x1b

    invoke-direct {v10, v11}, Ln/p1;-><init>(I)V

    const/4 v11, 0x1

    invoke-static {v1, v11, v10}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v10

    sget v14, Lo0/u2;->d:F

    invoke-static {v10, v14}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v10

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    and-int/lit16 v15, v3, 0x380

    const/16 v11, 0x100

    if-ne v15, v11, :cond_f

    const/4 v11, 0x1

    goto :goto_a

    :cond_f
    const/4 v11, 0x0

    :goto_a
    or-int/2addr v11, v14

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v0, v12, v13}, Lr0/q;->f(J)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    and-int/lit8 v14, v3, 0x70

    xor-int/lit8 v14, v14, 0x30

    const/16 v15, 0x20

    if-le v14, v15, :cond_10

    invoke-virtual {v0, v7, v8}, Lr0/q;->f(J)Z

    move-result v14

    if-nez v14, :cond_11

    :cond_10
    and-int/lit8 v3, v3, 0x30

    if-ne v3, v15, :cond_12

    :cond_11
    const/4 v15, 0x1

    goto :goto_b

    :cond_12
    const/4 v15, 0x0

    :goto_b
    or-int v3, v11, v15

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_14

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v11, v3, :cond_13

    goto :goto_c

    :cond_13
    move-wide/from16 v26, v7

    move-wide/from16 v23, v12

    goto :goto_d

    :cond_14
    :goto_c
    new-instance v16, Lo0/n2;

    move-object/from16 v21, v2

    move-object/from16 v25, v4

    move-object/from16 v17, v5

    move-object/from16 v22, v6

    move-wide/from16 v26, v7

    move-wide/from16 v23, v12

    invoke-direct/range {v16 .. v27}, Lo0/n2;-><init>(Ln/c0;IFFLn/c0;Ln/c0;JLo1/h;J)V

    move-object/from16 v11, v16

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_d
    check-cast v11, Li9/c;

    const/4 v2, 0x0

    invoke-static {v2, v10, v11, v0}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v4, v20

    move-wide/from16 v5, v23

    move-wide/from16 v2, v26

    goto :goto_e

    :cond_15
    invoke-virtual {v0}, Lr0/q;->W()V

    move-wide/from16 v5, p4

    move-object v1, v3

    move-wide v2, v7

    move v4, v11

    move/from16 v7, p6

    move/from16 v8, p7

    :goto_e
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_16

    new-instance v0, Lo0/o2;

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lo0/o2;-><init>(Lf1/r;JFJIFII)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_16
    return-void
.end method

.method public static final b(Li9/a;Lf1/r;JJIFLi9/c;Lr0/q;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    const v2, -0x144387f6

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p10, v2

    const v5, 0xb6480

    or-int/2addr v2, v5

    const v5, 0x92493

    and-int/2addr v5, v2

    const v6, 0x92492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v5, p10, 0x1

    const v6, -0x381f81

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int/2addr v2, v6

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v6, p8

    goto :goto_3

    :cond_3
    :goto_2
    sget v5, Lo0/m2;->a:F

    sget-object v5, Lq0/w;->a:Lq0/g;

    invoke-static {v5, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v10

    sget-object v5, Lq0/w;->b:Lq0/g;

    invoke-static {v5, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v12

    sget v5, Lo0/m2;->b:I

    sget v14, Lo0/m2;->e:F

    invoke-virtual {v0, v10, v11}, Lr0/q;->f(J)Z

    move-result v15

    move/from16 v16, v6

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v15, :cond_4

    if-ne v6, v9, :cond_5

    :cond_4
    new-instance v6, Lo0/p2;

    invoke-direct {v6, v5, v10, v11}, Lo0/p2;-><init>(IJ)V

    invoke-virtual {v0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v6, Li9/c;

    and-int v2, v2, v16

    move/from16 v16, v5

    move/from16 v17, v14

    :goto_3
    invoke-virtual {v0}, Lr0/q;->r()V

    and-int/lit8 v2, v2, 0xe

    if-ne v2, v4, :cond_6

    move v2, v8

    goto :goto_4

    :cond_6
    move v2, v7

    :goto_4
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_7

    if-ne v4, v9, :cond_8

    :cond_7
    new-instance v4, Lkd/p;

    invoke-direct {v4, v1, v3}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Li9/a;

    sget-object v2, Lp0/b;->d:Lf1/r;

    move-object/from16 v5, p1

    invoke-interface {v5, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_9

    if-ne v15, v9, :cond_a

    :cond_9
    new-instance v15, Lm0/f1;

    invoke-direct {v15, v4, v3}, Lm0/f1;-><init>(Li9/a;I)V

    invoke-virtual {v0, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v15, Li9/c;

    invoke-static {v2, v8, v15}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v2

    sget v3, Lo0/u2;->a:F

    sget v8, Lo0/u2;->b:F

    invoke-static {v2, v3, v8}, Lu/b1;->m(Lf1/r;FF)Lf1/r;

    move-result-object v2

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v12, v13}, Lr0/q;->f(J)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v0, v10, v11}, Lr0/q;->f(J)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_c

    if-ne v8, v9, :cond_b

    goto :goto_5

    :cond_b
    move-object/from16 v23, v6

    move-wide/from16 v21, v10

    move-wide/from16 v19, v12

    goto :goto_6

    :cond_c
    :goto_5
    new-instance v15, Lo0/q2;

    move-object/from16 v18, v4

    move-object/from16 v23, v6

    move-wide/from16 v21, v10

    move-wide/from16 v19, v12

    invoke-direct/range {v15 .. v23}, Lo0/q2;-><init>(IFLi9/a;JJLi9/c;)V

    invoke-virtual {v0, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v8, v15

    :goto_6
    check-cast v8, Li9/c;

    invoke-static {v7, v2, v8, v0}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    move/from16 v7, v16

    move/from16 v8, v17

    move-wide/from16 v5, v19

    move-wide/from16 v3, v21

    move-object/from16 v9, v23

    goto :goto_7

    :cond_d
    move-object/from16 v5, p1

    invoke-virtual {v0}, Lr0/q;->W()V

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    :goto_7
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_e

    new-instance v0, Lo0/r2;

    move-object/from16 v2, p1

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lo0/r2;-><init>(Li9/a;Lf1/r;JJIFLi9/c;I)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public static final c(Lf1/r;JJIFLr0/q;I)V
    .locals 25

    move-object/from16 v0, p7

    move/from16 v8, p8

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v5, 0x21d4b971

    invoke-virtual {v0, v5}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit16 v5, v8, 0x6c90

    and-int/lit16 v6, v5, 0x2493

    const/16 v7, 0x2492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v7, :cond_0

    move v6, v10

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    and-int/2addr v5, v10

    invoke-virtual {v0, v5, v6}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lr0/q;->W()V

    move-wide/from16 v5, p1

    move-wide/from16 v11, p3

    move/from16 v15, p5

    move/from16 v16, p6

    goto :goto_2

    :cond_2
    :goto_1
    sget v5, Lo0/m2;->a:F

    sget-object v5, Lq0/w;->a:Lq0/g;

    invoke-static {v5, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v5

    sget-object v7, Lq0/w;->b:Lq0/g;

    invoke-static {v7, v0}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v11

    sget v7, Lo0/m2;->b:I

    sget v13, Lo0/m2;->e:F

    move v15, v7

    move/from16 v16, v13

    :goto_2
    invoke-virtual {v0}, Lr0/q;->r()V

    invoke-static {v0}, Ln/d;->l(Lr0/q;)Ln/e0;

    move-result-object v7

    new-instance v13, Ln/h0;

    new-instance v14, Ln/g0;

    invoke-direct {v14}, Ln/g0;-><init>()V

    const/16 v10, 0x6d6

    iput v10, v14, Ln/g0;->a:I

    invoke-virtual {v14, v4, v9}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    move-result-object v10

    sget-object v9, Lo0/u2;->e:Ln/r;

    iput-object v9, v10, Ln/f0;->b:Ln/v;

    const/16 v10, 0x3e8

    invoke-virtual {v14, v2, v10}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    invoke-direct {v13, v14}, Ln/h0;-><init>(Ln/g0;)V

    move-object v14, v2

    const-wide/16 v1, 0x0

    const/4 v10, 0x6

    invoke-static {v13, v1, v2, v10}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v13

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v7, v3, v1, v13, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v2

    new-instance v13, Ln/h0;

    new-instance v1, Ln/g0;

    invoke-direct {v1}, Ln/g0;-><init>()V

    const/16 v3, 0x6d6

    iput v3, v1, Ln/g0;->a:I

    const/16 v3, 0xfa

    invoke-virtual {v1, v4, v3}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    move-result-object v3

    iput-object v9, v3, Ln/f0;->b:Ln/v;

    const/16 v3, 0x4e2

    invoke-virtual {v1, v14, v3}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    invoke-direct {v13, v1}, Ln/h0;-><init>(Ln/g0;)V

    move-wide/from16 v21, v5

    const-wide/16 v5, 0x0

    invoke-static {v13, v5, v6, v10}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v7, v5, v3, v1, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v1

    new-instance v5, Ln/h0;

    new-instance v6, Ln/g0;

    invoke-direct {v6}, Ln/g0;-><init>()V

    const/16 v13, 0x6d6

    iput v13, v6, Ln/g0;->a:I

    const/16 v13, 0x28a

    invoke-virtual {v6, v4, v13}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    move-result-object v13

    iput-object v9, v13, Ln/f0;->b:Ln/v;

    const/16 v13, 0x5dc

    invoke-virtual {v6, v14, v13}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    invoke-direct {v5, v6}, Ln/h0;-><init>(Ln/g0;)V

    move-object v6, v4

    const-wide/16 v3, 0x0

    invoke-static {v5, v3, v4, v10}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v5

    const/4 v3, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v7, v3, v13, v5, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v4

    new-instance v5, Ln/h0;

    new-instance v3, Ln/g0;

    invoke-direct {v3}, Ln/g0;-><init>()V

    const/16 v13, 0x6d6

    iput v13, v3, Ln/g0;->a:I

    const/16 v10, 0x384

    invoke-virtual {v3, v6, v10}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    move-result-object v6

    iput-object v9, v6, Ln/f0;->b:Ln/v;

    invoke-virtual {v3, v14, v13}, Ln/g0;->a(Ljava/lang/Float;I)Ln/f0;

    invoke-direct {v5, v3}, Ln/h0;-><init>(Ln/g0;)V

    const/4 v3, 0x6

    const-wide/16 v9, 0x0

    invoke-static {v5, v9, v10, v3}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v3

    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v5, v10, v3, v0}, Ln/d;->e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;

    move-result-object v3

    sget-object v5, Lp0/b;->d:Lf1/r;

    move-object/from16 v6, p0

    invoke-interface {v6, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v5

    new-instance v7, Ln/p1;

    const/16 v9, 0x1b

    invoke-direct {v7, v9}, Ln/p1;-><init>(I)V

    const/4 v9, 0x1

    invoke-static {v5, v9, v7}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v5

    sget v7, Lo0/u2;->a:F

    sget v9, Lo0/u2;->b:F

    invoke-static {v5, v7, v9}, Lu/b1;->m(Lf1/r;FF)Lf1/r;

    move-result-object v5

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v11, v12}, Lr0/q;->f(J)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    move-wide/from16 v9, v21

    invoke-virtual {v0, v9, v10}, Lr0/q;->f(J)Z

    move-result v13

    or-int/2addr v7, v13

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v7, v13

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v7, v13

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_4

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v13, v7, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v21, v9

    move-wide/from16 v18, v11

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v14, Lo0/s2;

    move-object/from16 v20, v1

    move-object/from16 v17, v2

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-wide/from16 v21, v9

    move-wide/from16 v18, v11

    invoke-direct/range {v14 .. v24}, Lo0/s2;-><init>(IFLn/c0;JLn/c0;JLn/c0;Ln/c0;)V

    invoke-virtual {v0, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v13, v14

    :goto_4
    check-cast v13, Li9/c;

    const/4 v1, 0x0

    invoke-static {v1, v5, v13, v0}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    move v6, v15

    move/from16 v7, v16

    move-wide/from16 v4, v18

    move-wide/from16 v2, v21

    goto :goto_5

    :cond_5
    move-object/from16 v6, p0

    invoke-virtual {v0}, Lr0/q;->W()V

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_5
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_6

    new-instance v0, Lo0/t2;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lo0/t2;-><init>(Lf1/r;JJIFI)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final d(Lo1/d;FFJLo1/h;)V
    .locals 10

    iget v0, p5, Lo1/h;->a:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v0, v7

    or-long/2addr v5, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v0, v4

    and-long/2addr v2, v7

    or-long v7, v0, v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v1, p3

    move-object v9, p5

    invoke-interface/range {v0 .. v9}, Lo1/d;->s(JFFJJLo1/h;)V

    return-void
.end method

.method public static final e(Lo1/d;FFJFI)V
    .locals 21

    invoke-interface/range {p0 .. p0}, Lo1/d;->d()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface/range {p0 .. p0}, Lo1/d;->d()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v4, v1, v3

    invoke-interface/range {p0 .. p0}, Lo1/d;->getLayoutDirection()Lb3/m;

    move-result-object v7

    sget-object v8, Lb3/m;->l:Lb3/m;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1

    move/from16 v9, p1

    goto :goto_1

    :cond_1
    sub-float v9, v8, p2

    :goto_1
    mul-float/2addr v9, v0

    if-eqz v7, :cond_2

    move/from16 v8, p2

    goto :goto_2

    :cond_2
    sub-float v8, v8, p1

    :goto_2
    mul-float/2addr v8, v0

    if-nez p6, :cond_3

    goto :goto_3

    :cond_3
    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    :goto_3
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v9, v3

    shl-long/2addr v0, v2

    and-long/2addr v9, v5

    or-long v14, v0, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v0, v2

    and-long v2, v3, v5

    or-long v16, v0, v2

    const/16 v19, 0x0

    const/16 v20, 0x1f0

    move-object/from16 v11, p0

    move-wide/from16 v12, p3

    move/from16 v18, p5

    invoke-static/range {v11 .. v20}, Lo1/d;->u0(Lo1/d;JJJFII)V

    return-void

    :cond_4
    div-float v1, p5, v3

    sub-float/2addr v0, v1

    cmpg-float v3, v9, v1

    if-gez v3, :cond_5

    move v9, v1

    :cond_5
    cmpl-float v3, v9, v0

    if-lez v3, :cond_6

    move v9, v0

    :cond_6
    cmpg-float v3, v8, v1

    if-gez v3, :cond_7

    move v8, v1

    :cond_7
    cmpl-float v1, v8, v0

    if-lez v1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v8

    :goto_4
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v9, v1

    shl-long/2addr v7, v2

    and-long/2addr v9, v5

    or-long/2addr v7, v9

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v0, v2

    and-long v2, v3, v5

    or-long v5, v0, v2

    const/16 v9, 0x1e0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide v3, v7

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lo1/d;->u0(Lo1/d;JJJFII)V

    :cond_9
    return-void
.end method
