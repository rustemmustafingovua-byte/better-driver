.class public abstract Lod/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xff2a2a2aL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lod/e4;->a:J

    const-wide v0, 0xff3c3c3cL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    sput-wide v0, Lod/e4;->b:J

    return-void
.end method

.method public static final a(ILi9/a;Li9/a;Lf1/r;ZLr0/q;I)V
    .locals 19

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v0, p5

    const-string v4, "onConfirm"

    invoke-static {v2, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onCancel"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x672f15d0

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p6, v4

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v4, v6

    invoke-virtual {v0, v5}, Lr0/q;->h(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x4000

    goto :goto_3

    :cond_3
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v4, v6

    and-int/lit16 v6, v4, 0x2493

    const/16 v7, 0x2492

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    move v6, v8

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v4, v8

    invoke-virtual {v0, v4, v6}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide v6, 0xffe65100L

    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v6

    const v4, 0x3f51eb85    # 0.82f

    invoke-static {v4, v6, v7}, Lm1/p;->b(FJ)J

    move-result-wide v8

    sget-wide v10, Lm1/p;->c:J

    sget-object v4, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v0, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/q3;

    iget-object v7, v4, Lo0/q3;->d:La0/d;

    new-instance v4, Lm0/g;

    invoke-direct {v4, v5, v1, v2, v3}, Lm0/g;-><init>(ZILi9/a;Li9/a;)V

    const v6, 0x7154e2cb

    invoke-static {v6, v4, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v15

    const v17, 0xc00d86

    const/16 v18, 0x70

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p3

    move-object/from16 v16, v0

    invoke-static/range {v6 .. v18}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    :goto_5
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v0, Lod/e;

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lod/e;-><init>(ILi9/a;Li9/a;Lf1/r;ZI)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final b(Lwc/b;Lf1/r;Lr0/q;I)V
    .locals 14

    move-object/from16 v10, p2

    move/from16 v13, p3

    const v0, -0x100fce06

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {v10, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lwc/b;->a:Lua/nav/cameras/SpeedCamera;

    iget-object v0, v0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lwc/b;->c:F

    int-to-float v0, v0

    iget v2, p0, Lwc/b;->d:F

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    const-wide v0, 0xffc62828L

    :goto_2
    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    goto :goto_3

    :cond_2
    const-wide v0, 0xff37474fL

    goto :goto_2

    :goto_3
    const v2, 0x3f51eb85    # 0.82f

    invoke-static {v2, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v2

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v1, v0, Lo0/q3;->c:La0/d;

    new-instance v0, Lb0/x;

    const/16 v4, 0x16

    invoke-direct {v0, v4, p0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    const v4, 0x4bff037f    # 3.342515E7f

    invoke-static {v4, v0, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc00006

    const/16 v12, 0x78

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lg0/k;

    const/16 v3, 0xd

    invoke-direct {v2, v13, v3, p0, p1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final c(Lf1/r;JFLr0/q;II)V
    .locals 8

    const v1, 0x1b8d50a5

    invoke-virtual {p4, v1}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v1, p5, 0x6

    and-int/lit8 v2, p5, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_1

    and-int/lit8 v2, p6, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p4, p1, p2}, Lr0/q;->f(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit16 v2, p5, 0x180

    if-nez v2, :cond_3

    invoke-virtual {p4, p3}, Lr0/q;->d(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_1

    :cond_2
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v1, 0x93

    const/16 v4, 0x92

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_4

    move v2, v7

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {p4, v4, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p4}, Lr0/q;->Y()V

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p4}, Lr0/q;->C()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_8

    and-int/lit8 v1, v1, -0x71

    goto :goto_4

    :cond_6
    :goto_3
    and-int/lit8 p0, p6, 0x2

    if-eqz p0, :cond_7

    sget-object p0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p4, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo0/u0;

    iget-wide p1, p0, Lo0/u0;->a:J

    and-int/lit8 v1, v1, -0x71

    :cond_7
    sget-object p0, Lf1/o;->a:Lf1/o;

    :cond_8
    :goto_4
    invoke-virtual {p4}, Lr0/q;->r()V

    invoke-static {p0, p3}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v2

    and-int/lit8 v4, v1, 0x70

    xor-int/lit8 v4, v4, 0x30

    if-le v4, v3, :cond_9

    invoke-virtual {p4, p1, p2}, Lr0/q;->f(J)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_9
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v3, :cond_a

    goto :goto_5

    :cond_a
    move v7, v6

    :cond_b
    :goto_5
    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v7, :cond_c

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v1, v3, :cond_d

    :cond_c
    new-instance v1, Lad/c;

    const/16 v3, 0x9

    invoke-direct {v1, v3, p1, p2}, Lad/c;-><init>(IJ)V

    invoke-virtual {p4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v1, Li9/c;

    invoke-static {v6, v2, v1, p4}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    :goto_6
    move-object v1, p0

    move-wide v2, p1

    goto :goto_7

    :cond_e
    invoke-virtual {p4}, Lr0/q;->W()V

    goto :goto_6

    :goto_7
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_f

    new-instance v0, Lod/q3;

    move v4, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lod/q3;-><init>(Lf1/r;JFII)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_f
    return-void
.end method

.method public static final d(Ljava/lang/Float;ZLf1/r;FLr0/q;I)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p4

    const v3, -0x5eafdc7e

    invoke-virtual {v0, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p5, v3

    invoke-virtual {v0, v2}, Lr0/q;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v3, v5

    and-int/lit16 v5, v3, 0x493

    const/16 v6, 0x492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_3

    move v5, v8

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    and-int/2addr v3, v8

    invoke-virtual {v0, v3, v5}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p2 .. p3}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v3

    sget-object v5, La0/e;->a:La0/d;

    invoke-static {v3, v5}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v3

    sget-wide v9, Lm1/p;->c:J

    sget-object v6, Lm1/v;->b:Lm1/e0;

    invoke-static {v3, v9, v10, v6}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    const/16 v6, 0x9

    int-to-float v6, v6

    div-float v6, p3, v6

    if-eqz v2, :cond_4

    const-wide v9, 0xffd32f2fL

    :goto_4
    invoke-static {v9, v10}, Lm1/v;->d(J)J

    move-result-wide v9

    goto :goto_5

    :cond_4
    const-wide v9, 0xff1565c0L

    goto :goto_4

    :goto_5
    invoke-static {v3, v6, v9, v10, v5}, Lp/o;->h(Lf1/r;FJLm1/h0;)Lf1/r;

    move-result-object v3

    sget-object v5, Lf1/c;->p:Lf1/j;

    invoke-static {v5, v7}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v5

    iget-wide v6, v0, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v3, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_5

    invoke-virtual {v0, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_6
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v5, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v7, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v0, v5, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v0, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v3, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v5, v3

    sget-object v3, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide v9, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double/2addr v5, v9

    :cond_6
    invoke-static {v5, v6}, Ll9/a;->y(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    const-string v3, "\u2014"

    :goto_7
    sget-wide v5, Lm1/p;->b:J

    sget-object v9, Lt2/k;->q:Lt2/k;

    const/16 v7, 0x16

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/high16 v11, 0x42c70000    # 99.5f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    const/16 v10, 0x12

    invoke-static {v10}, La/a;->k(I)J

    move-result-wide v10

    goto :goto_8

    :cond_8
    invoke-static {v7}, La/a;->k(I)J

    move-result-wide v10

    :goto_8
    invoke-static {v7}, La/a;->k(I)J

    move-result-wide v14

    const/16 v24, 0x6

    const v25, 0x1fbd2

    const/4 v4, 0x0

    move-wide/from16 v26, v10

    move v11, v8

    move-wide/from16 v7, v26

    const/4 v10, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    const v23, 0x30180

    move/from16 v26, v22

    move-object/from16 v22, v0

    move/from16 v0, v26

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_9
    move-object v3, v0

    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_9
    invoke-virtual {v3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v0, Lod/j3;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lod/j3;-><init>(Ljava/lang/Float;ZLf1/r;FI)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final e(FIJLf1/r;Lr0/q;)V
    .locals 12

    move-object/from16 v0, p5

    const v1, 0x4a5e476e    # 3641819.5f

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v1, p1, 0x16

    and-int/lit16 v2, p1, 0x180

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, Lr0/q;->d(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x100

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    and-int/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lr0/q;->W()V

    move-wide v1, p2

    move-object/from16 v3, p4

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v1, v1, Lo0/u0;->a:J

    sget-object v3, Lf1/o;->a:Lf1/o;

    :goto_3
    invoke-virtual {v0}, Lr0/q;->r()V

    invoke-static {v3, p0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v7

    invoke-virtual {v0, v1, v2}, Lr0/q;->f(J)Z

    move-result v8

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v9, v8, :cond_6

    :cond_5
    new-instance v9, Lad/c;

    const/16 v8, 0x8

    invoke-direct {v9, v8, v1, v2}, Lad/c;-><init>(IJ)V

    invoke-virtual {v0, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Li9/c;

    invoke-static {v6, v7, v9, v0}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    move-wide v10, v1

    move-object v1, v3

    move-wide v2, v10

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lr0/q;->W()V

    move-wide v2, p2

    move-object/from16 v1, p4

    :goto_4
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v0, Lod/o3;

    const/4 v6, 0x0

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lod/o3;-><init>(Lf1/r;JFII)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method

.method public static final f(Lua/nav/routing/Step;Lf1/r;Lr0/q;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const v2, -0x43652156

    invoke-virtual {v1, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lod/e4;->t(Lua/nav/routing/Step;)Ljava/lang/Integer;

    move-result-object v24

    sget-object v2, Lf1/c;->p:Lf1/j;

    invoke-static {v2, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v3, v1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

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

    invoke-static {v8, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v1, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v1, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v7, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0}, Lod/e4;->s(Lua/nav/routing/Step;)Ljava/lang/String;

    move-result-object v1

    sget-wide v3, Lm1/p;->c:J

    const/16 v2, 0x28

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v7

    const/16 v2, 0x2a

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v12

    const/16 v22, 0x6

    const v23, 0x1fbf2

    const/4 v2, 0x0

    move v9, v6

    move-wide/from16 v26, v7

    move v8, v5

    move-wide/from16 v5, v26

    const/4 v7, 0x0

    move v10, v8

    const/4 v8, 0x0

    move v14, v9

    move v11, v10

    const-wide/16 v9, 0x0

    move v15, v11

    const/4 v11, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v25, v21

    const/16 v21, 0xd80

    move/from16 v0, v20

    move-object/from16 v20, p2

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    if-eqz v24, :cond_4

    const v2, -0x2123582a

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_3

    const/16 v5, 0xf

    :goto_3
    invoke-static {v5}, La/a;->k(I)J

    move-result-wide v5

    goto :goto_4

    :cond_3
    const/16 v5, 0x14

    goto :goto_3

    :goto_4
    sget-object v7, Lt2/k;->r:Lt2/k;

    const/16 v8, 0x16

    invoke-static {v8}, La/a;->k(I)J

    move-result-wide v12

    const/16 v22, 0x6

    const v23, 0x1fbd2

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v21, 0x30180

    move-object/from16 v20, p2

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    :goto_5
    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    const/4 v15, 0x1

    goto :goto_6

    :cond_4
    const v2, -0x345b60e

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    goto :goto_5

    :goto_6
    invoke-virtual {v1, v15}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_5
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lg0/k;

    const/16 v2, 0xc

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct {v1, v5, v2, v3, v4}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final g(Lad/a0;Lf1/r;Lr0/q;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v15, p3

    const-string v2, "g"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x23419a8b

    invoke-virtual {v12, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v12, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v15

    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v5

    invoke-virtual {v12, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lad/a0;->n:Z

    if-eqz v2, :cond_2

    const-wide v2, 0xffb71c1cL

    :goto_2
    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    goto :goto_3

    :cond_2
    const-wide v2, 0xff0d47a1L

    goto :goto_2

    :goto_3
    const v4, 0x3f51eb85    # 0.82f

    invoke-static {v4, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v4

    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v12, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v3, v2, Lo0/q3;->d:La0/d;

    const-string v2, "maneuver"

    const/16 v6, 0x36

    invoke-static {v1, v2, v12, v6}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    new-instance v6, Lb0/x;

    const/16 v7, 0x14

    invoke-direct {v6, v7, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    const v7, 0x50d22190

    invoke-static {v7, v6, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const/high16 v13, 0xc00000

    const/16 v14, 0x78

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lg0/k;

    const/16 v4, 0xb

    invoke-direct {v3, v15, v4, v0, v1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v2, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final h(Ljava/lang/String;JLt2/k;JLf1/r;Lr0/q;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    const-string v2, "fontWeight"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x33c7fa0a

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p8, v2

    move-wide/from16 v6, p1

    invoke-virtual {v0, v6, v7}, Lr0/q;->f(J)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    or-int/lit16 v2, v2, 0x6000

    and-int/lit16 v4, v2, 0x2493

    const/16 v5, 0x2492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v4, v5, :cond_2

    move v4, v10

    goto :goto_2

    :cond_2
    move v4, v9

    :goto_2
    and-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    and-int/lit8 v4, v2, 0xe

    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v10, v9

    :goto_3
    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-nez v10, :cond_4

    if-ne v3, v4, :cond_5

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "   |   "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    move-object v5, v1

    :goto_4
    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v11, Lf1/o;->a:Lf1/o;

    invoke-static {v11, v10}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v10

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    int-to-float v9, v9

    new-instance v12, Lp/q;

    invoke-direct {v12, v9}, Lp/q;-><init>(F)V

    invoke-static {v10, v12}, Lp/o;->g(Lf1/r;Lp/q;)Lf1/r;

    move-result-object v10

    :cond_7
    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_8

    if-ne v12, v4, :cond_9

    :cond_8
    new-instance v12, Lb0/y;

    const/16 v4, 0x14

    invoke-direct {v12, v3, v4}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v0, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v19, v12

    check-cast v19, Li9/c;

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0x1c00

    const/high16 v3, 0x30000

    or-int v22, v2, v3

    const/16 v23, 0xc36

    const v24, 0x153d4

    move-object v2, v5

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v12, v11

    const-wide/16 v10, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v0

    move-object v0, v13

    move-wide/from16 v13, p4

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object v7, v0

    goto :goto_5

    :cond_a
    invoke-virtual/range {p7 .. p7}, Lr0/q;->W()V

    move-object/from16 v7, p6

    :goto_5
    invoke-virtual/range {p7 .. p7}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_b

    new-instance v0, Lod/x3;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lod/x3;-><init>(Ljava/lang/String;JLt2/k;JLf1/r;I)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final i(Lad/a0;Li9/c;Lf1/r;Lr0/q;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p3

    const-string v0, "g"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChange"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x566181c5

    invoke-virtual {v13, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v13, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v13, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x93

    const/16 v6, 0x92

    const/4 v8, 0x1

    if-eq v4, v6, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v13, v6, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v4, v1, Lad/a0;->F:I

    iget v6, v1, Lad/a0;->l:F

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_3

    move v6, v8

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    sget-object v9, Lf2/l1;->l:Lr0/s2;

    invoke-virtual {v13, v9}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt1/a;

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-ne v10, v11, :cond_4

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v10

    invoke-virtual {v13, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v10, Lr0/u0;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v4}, Lr0/q;->e(I)Z

    move-result v14

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    const/4 v7, 0x0

    if-nez v14, :cond_5

    if-ne v15, v11, :cond_6

    :cond_5
    new-instance v15, Lod/y3;

    invoke-direct {v15, v4, v10, v7}, Lod/y3;-><init>(ILr0/u0;Ly8/c;)V

    invoke-virtual {v13, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v15, Li9/e;

    invoke-static {v15, v12, v13}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v6, :cond_7

    const-wide v14, 0xff66bb6aL

    :goto_4
    invoke-static {v14, v15}, Lm1/v;->d(J)J

    move-result-wide v14

    goto :goto_5

    :cond_7
    const-wide v14, 0xffef5350L

    goto :goto_4

    :goto_5
    if-eq v4, v8, :cond_9

    if-eq v4, v3, :cond_8

    const-wide v17, 0xff37474fL

    :goto_6
    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v17

    goto :goto_7

    :cond_8
    const-wide v17, 0xffc62828L

    goto :goto_6

    :cond_9
    const-wide v17, 0xff2e7d32L

    goto :goto_6

    :goto_7
    sget-object v3, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v13, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/q3;

    iget-object v3, v3, Lo0/q3;->c:La0/d;

    if-nez v4, :cond_b

    const/4 v7, 0x3

    int-to-float v7, v7

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_8
    move/from16 v19, v6

    goto :goto_9

    :cond_a
    const v10, 0x3e99999a    # 0.3f

    goto :goto_8

    :goto_9
    invoke-static {v10, v14, v15}, Lm1/p;->b(FJ)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lp/o;->a(FJ)Lp/x;

    move-result-object v7

    goto :goto_a

    :cond_b
    move/from16 v19, v6

    :goto_a
    invoke-virtual {v13, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit8 v0, v0, 0x70

    const/16 v12, 0x20

    if-ne v0, v12, :cond_c

    move v6, v8

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    or-int/2addr v5, v6

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_d

    if-ne v6, v11, :cond_e

    :cond_d
    new-instance v6, Lb0/n;

    const/16 v5, 0x12

    invoke-direct {v6, v5, v9, v2}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Li9/a;

    const/16 v12, 0x20

    if-ne v0, v12, :cond_f

    move/from16 v16, v8

    goto :goto_c

    :cond_f
    const/16 v16, 0x0

    :goto_c
    invoke-virtual {v13, v4}, Lr0/q;->e(I)Z

    move-result v0

    or-int v0, v16, v0

    move/from16 v8, v19

    invoke-virtual {v13, v8}, Lr0/q;->h(Z)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_10

    if-ne v5, v11, :cond_11

    :cond_10
    new-instance v5, Lod/s3;

    invoke-direct {v5, v4, v2, v8}, Lod/s3;-><init>(ILi9/c;Z)V

    invoke-virtual {v13, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Li9/a;

    move-object/from16 v0, p2

    invoke-static {v0, v6, v5}, Lp/o;->m(Lf1/r;Li9/a;Li9/a;)Lf1/r;

    move-result-object v5

    new-instance v6, Lod/t3;

    invoke-direct {v6, v4, v14, v15}, Lod/t3;-><init>(IJ)V

    const v4, -0x1517efa0

    invoke-static {v4, v6, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v12

    const/high16 v14, 0xc00000

    const/16 v15, 0x38

    move-object v11, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    move-object v3, v5

    move-wide/from16 v5, v17

    invoke-static/range {v3 .. v15}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_d

    :cond_12
    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Lr0/q;->W()V

    :goto_d
    invoke-virtual/range {p3 .. p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_13

    new-instance v0, Lb0/k0;

    const/4 v5, 0x7

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/r;II)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_13
    return-void
.end method

.method public static final j(Lad/a0;Li9/c;Li9/a;Li9/a;FZLi9/a;Li9/a;Lf1/r;ZZLi9/c;Ljava/lang/String;ZLr0/q;III)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v0, p6

    move-object/from16 v13, p7

    move-object/from16 v10, p14

    move/from16 v15, p15

    move/from16 v14, p17

    const-string v4, "g"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v1, Lad/a0;->l:F

    iget-boolean v6, v1, Lad/a0;->m:Z

    const-string v7, "onNudge"

    invoke-static {v2, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onReroute"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onCenter"

    move-object/from16 v12, p3

    invoke-static {v12, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onToggleRec"

    invoke-static {v0, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onStop"

    invoke-static {v13, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0xe32aaf4

    invoke-virtual {v10, v7}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v15

    and-int/lit8 v11, v15, 0x30

    const/16 v16, 0x10

    const/16 v17, 0x20

    if-nez v11, :cond_2

    invoke-virtual {v10, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move/from16 v11, v17

    goto :goto_1

    :cond_1
    move/from16 v11, v16

    :goto_1
    or-int/2addr v7, v11

    :cond_2
    and-int/lit16 v11, v15, 0x180

    const/16 v18, 0x80

    const/16 v19, 0x100

    if-nez v11, :cond_4

    invoke-virtual {v10, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move/from16 v11, v19

    goto :goto_2

    :cond_3
    move/from16 v11, v18

    :goto_2
    or-int/2addr v7, v11

    :cond_4
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_6

    invoke-virtual {v10, v5}, Lr0/q;->d(F)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x4000

    goto :goto_3

    :cond_5
    const/16 v11, 0x2000

    :goto_3
    or-int/2addr v7, v11

    :cond_6
    const/high16 v11, 0x30000

    and-int/2addr v11, v15

    if-nez v11, :cond_8

    move/from16 v11, p5

    invoke-virtual {v10, v11}, Lr0/q;->h(Z)Z

    move-result v20

    if-eqz v20, :cond_7

    const/high16 v20, 0x20000

    goto :goto_4

    :cond_7
    const/high16 v20, 0x10000

    :goto_4
    or-int v7, v7, v20

    goto :goto_5

    :cond_8
    move/from16 v11, p5

    :goto_5
    const/high16 v20, 0x180000

    and-int v20, v15, v20

    if-nez v20, :cond_a

    invoke-virtual {v10, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/high16 v20, 0x100000

    goto :goto_6

    :cond_9
    const/high16 v20, 0x80000

    :goto_6
    or-int v7, v7, v20

    :cond_a
    const/high16 v20, 0xc00000

    and-int v20, v15, v20

    if-nez v20, :cond_c

    invoke-virtual {v10, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/high16 v20, 0x800000

    goto :goto_7

    :cond_b
    const/high16 v20, 0x400000

    :goto_7
    or-int v7, v7, v20

    :cond_c
    and-int/lit16 v8, v14, 0x200

    const/high16 v21, 0x30000000

    if-eqz v8, :cond_e

    or-int v7, v7, v21

    move/from16 v9, p9

    :cond_d
    :goto_8
    move/from16 v22, v7

    goto :goto_a

    :cond_e
    and-int v21, v15, v21

    move/from16 v9, p9

    if-nez v21, :cond_d

    invoke-virtual {v10, v9}, Lr0/q;->h(Z)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x20000000

    goto :goto_9

    :cond_f
    const/high16 v22, 0x10000000

    :goto_9
    or-int v7, v7, v22

    goto :goto_8

    :goto_a
    and-int/lit16 v7, v14, 0x400

    if-eqz v7, :cond_10

    or-int/lit8 v20, p16, 0x6

    move/from16 v0, p10

    goto :goto_c

    :cond_10
    and-int/lit8 v23, p16, 0x6

    move/from16 v0, p10

    if-nez v23, :cond_12

    invoke-virtual {v10, v0}, Lr0/q;->h(Z)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v20, 0x4

    goto :goto_b

    :cond_11
    const/16 v20, 0x2

    :goto_b
    or-int v20, p16, v20

    goto :goto_c

    :cond_12
    move/from16 v20, p16

    :goto_c
    and-int/lit8 v21, p16, 0x30

    move-object/from16 v12, p11

    if-nez v21, :cond_14

    invoke-virtual {v10, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    move/from16 v16, v17

    :cond_13
    or-int v20, v20, v16

    :cond_14
    move/from16 v0, v20

    and-int/lit16 v2, v14, 0x1000

    if-eqz v2, :cond_15

    or-int/lit16 v0, v0, 0x180

    goto :goto_d

    :cond_15
    move/from16 v16, v0

    move-object/from16 v0, p12

    invoke-virtual {v10, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    move/from16 v18, v19

    :cond_16
    or-int v16, v16, v18

    move/from16 v0, v16

    :goto_d
    move/from16 v16, v2

    and-int/lit16 v2, v14, 0x2000

    if-eqz v2, :cond_17

    or-int/lit16 v0, v0, 0xc00

    goto :goto_f

    :cond_17
    move/from16 v17, v0

    move/from16 v0, p13

    invoke-virtual {v10, v0}, Lr0/q;->h(Z)Z

    move-result v18

    if-eqz v18, :cond_18

    const/16 v18, 0x800

    goto :goto_e

    :cond_18
    const/16 v18, 0x400

    :goto_e
    or-int v17, v17, v18

    move/from16 v0, v17

    :goto_f
    const v17, 0x12492493

    move/from16 v18, v2

    and-int v2, v22, v17

    const v3, 0x12492492

    const/4 v12, 0x0

    if-ne v2, v3, :cond_1a

    and-int/lit16 v0, v0, 0x493

    const/16 v2, 0x492

    if-eq v0, v2, :cond_19

    goto :goto_10

    :cond_19
    move v0, v12

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v0, 0x1

    :goto_11
    and-int/lit8 v2, v22, 0x1

    invoke-virtual {v10, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz v8, :cond_1b

    move v0, v12

    goto :goto_12

    :cond_1b
    move v0, v9

    :goto_12
    if-eqz v7, :cond_1c

    move v2, v12

    goto :goto_13

    :cond_1c
    move/from16 v2, p10

    :goto_13
    if-eqz v16, :cond_1d

    const/16 v16, 0x0

    goto :goto_14

    :cond_1d
    move-object/from16 v16, p12

    :goto_14
    if-eqz v18, :cond_1e

    move/from16 v18, v12

    goto :goto_15

    :cond_1e
    move/from16 v18, p13

    :goto_15
    iget-boolean v7, v1, Lad/a0;->p:Z

    if-nez v7, :cond_22

    const v7, 0x4c345eb6    # 4.7282904E7f

    invoke-virtual {v10, v7}, Lr0/q;->b0(I)V

    const/4 v7, 0x6

    int-to-float v7, v7

    const/16 v8, 0x18

    int-to-float v8, v8

    const/16 v26, 0x0

    const/16 v28, 0x4

    sget-object v23, Lf1/o;->a:Lf1/o;

    move/from16 v27, v7

    move/from16 v24, v7

    move/from16 v25, v8

    invoke-static/range {v23 .. v28}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v7

    move-object/from16 v8, v23

    sget-object v9, Lf1/c;->l:Lf1/j;

    invoke-static {v9, v12}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v12, v10, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    invoke-static {v7, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    sget-object v20, Le2/h;->b:Le2/g;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v20, v0

    sget-object v0, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    move/from16 p10, v2

    iget-boolean v2, v10, Lr0/q;->S:Z

    if-eqz v2, :cond_1f

    invoke-virtual {v10, v0}, Lr0/q;->l(Li9/a;)V

    goto :goto_16

    :cond_1f
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_16
    sget-object v0, Le2/g;->f:Le2/e;

    invoke-static {v0, v3, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v13, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v10, v0, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v10, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v7, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v6, :cond_20

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_17

    :cond_20
    const/4 v0, 0x0

    :goto_17
    if-eqz v6, :cond_21

    iget-object v2, v1, Lad/a0;->u:Ljava/lang/Integer;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    cmpl-float v2, v4, v2

    if-lez v2, :cond_21

    const/4 v7, 0x1

    goto :goto_18

    :cond_21
    const/4 v7, 0x0

    :goto_18
    const/16 v2, 0x38

    int-to-float v2, v2

    const-string v3, "speed"

    const/16 v4, 0x36

    invoke-static {v8, v3, v10, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v8

    const/16 v11, 0xc00

    move-object v6, v0

    move-object v0, v9

    move v9, v2

    invoke-static/range {v6 .. v11}, Lod/e4;->d(Ljava/lang/Float;ZLf1/r;FLr0/q;I)V

    iget-object v4, v1, Lad/a0;->u:Ljava/lang/Integer;

    iget v5, v1, Lad/a0;->l:F

    const/16 v2, 0x24

    int-to-float v7, v2

    sget-object v2, Lu/n;->b:Lu/n;

    invoke-virtual {v2, v0}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v0

    const/16 v2, 0x26

    int-to-float v2, v2

    const/16 v3, -0x16

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lu/b;->n(Lf1/r;FF)Lf1/r;

    move-result-object v0

    const-string v2, "limit"

    const/16 v3, 0x30

    invoke-static {v0, v2, v10, v3}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v6

    const v0, 0xe000

    and-int v0, v22, v0

    const v2, 0x30c00

    or-int v11, v0, v2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move/from16 v8, p4

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static/range {v4 .. v12}, Lod/e4;->q(Ljava/lang/Integer;FLf1/r;FFZLr0/q;II)V

    move-object v13, v10

    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    goto :goto_19

    :cond_22
    move/from16 v20, v0

    move/from16 p10, v2

    move-object v13, v10

    move v2, v12

    const/4 v0, 0x1

    const v3, 0x3a5ff1ce

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    :goto_19
    const v3, 0x3f51eb85    # 0.82f

    if-eqz v18, :cond_23

    const v4, 0x4c34af0d    # 4.7365172E7f

    invoke-virtual {v13, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    sget-wide v4, Lod/e4;->a:J

    invoke-static {v3, v4, v5}, Lm1/p;->b(FJ)J

    move-result-wide v3

    :goto_1a
    move-wide/from16 v21, v3

    goto :goto_1b

    :cond_23
    const v4, 0x4c34b72d    # 4.7373492E7f

    invoke-virtual {v13, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->p:J

    invoke-static {v3, v4, v5}, Lm1/p;->b(FJ)J

    move-result-wide v3

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    goto :goto_1a

    :goto_1b
    if-eqz v18, :cond_24

    const v3, 0x4c34bf79    # 4.7381988E7f

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    sget-wide v2, Lm1/p;->c:J

    move-wide/from16 v23, v2

    goto :goto_1c

    :cond_24
    const v3, 0x4c34c41d    # 4.738674E7f

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->q:J

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    move-wide/from16 v23, v3

    :goto_1c
    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v13, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v2, v2, Lo0/q3;->d:La0/d;

    if-eqz v18, :cond_25

    int-to-float v0, v0

    sget-wide v3, Lod/e4;->b:J

    invoke-static {v0, v3, v4}, Lp/o;->a(FJ)Lp/x;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_1d

    :cond_25
    const/16 v17, 0x0

    :goto_1d
    new-instance v0, Lod/r3;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v10, p7

    move-object/from16 v3, p11

    move-object v4, v1

    move-object/from16 v5, v16

    move/from16 v6, v18

    move/from16 v1, v20

    move-object/from16 v16, v2

    move/from16 v2, p10

    invoke-direct/range {v0 .. v12}, Lod/r3;-><init>(ZZLi9/c;Lad/a0;Ljava/lang/String;ZLi9/c;Li9/a;Li9/a;Li9/a;ZLi9/a;)V

    move/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v25, v6

    const v1, -0x7ba19f07

    invoke-static {v1, v0, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc00006

    const/16 v12, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p8

    move-object v10, v13

    move-object/from16 v1, v16

    move-object/from16 v8, v17

    move-wide/from16 v2, v21

    move-wide/from16 v4, v23

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move/from16 v11, v18

    move-object/from16 v13, v19

    move/from16 v10, v20

    move/from16 v14, v25

    goto :goto_1e

    :cond_26
    invoke-virtual/range {p14 .. p14}, Lr0/q;->W()V

    move/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v14, p13

    move v10, v9

    :goto_1e
    invoke-virtual/range {p14 .. p14}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_27

    move-object v1, v0

    new-instance v0, Lod/w3;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lod/w3;-><init>(Lad/a0;Li9/c;Li9/a;Li9/a;FZLi9/a;Li9/a;Lf1/r;ZZLi9/c;Ljava/lang/String;ZIII)V

    move-object/from16 v1, v29

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_27
    return-void
.end method

.method public static final k(Lad/a0;Li9/c;Li9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 13

    move-object/from16 v4, p4

    move-object/from16 v10, p6

    const-string v0, "g"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNudge"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReroute"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCenter"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStop"

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1e4c91d5

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v10, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v10, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v10, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4000

    goto :goto_3

    :cond_3
    const/16 v2, 0x2000

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v6, p5

    invoke-virtual {v10, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v2, 0x10000

    :goto_4
    or-int v7, v0, v2

    const v0, 0x12493

    and-int/2addr v0, v7

    const v2, 0x12492

    if-eq v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    and-int/lit8 v2, v7, 0x1

    invoke-virtual {v10, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v2, v0, Lo0/u0;->p:J

    const v0, 0x3f51eb85    # 0.82f

    invoke-static {v0, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v8

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v11, v0, Lo0/q3;->d:La0/d;

    new-instance v0, Lg0/p;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lg0/p;-><init>(Li9/a;Lad/a0;Li9/a;Li9/a;Li9/c;)V

    const v1, 0x538b829a

    invoke-static {v1, v0, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    shr-int/lit8 v1, v7, 0xf

    and-int/lit8 v1, v1, 0xe

    const/high16 v2, 0xc00000

    or-int/2addr v1, v2

    const/16 v12, 0x78

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v8

    const/4 v8, 0x0

    move-object v9, v11

    move v11, v1

    move-object v1, v9

    move-object v9, v0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    :goto_6
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v0, Lod/z0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lod/z0;-><init>(Lad/a0;Li9/c;Li9/a;Li9/a;Li9/a;Lf1/r;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final l(ZJFLf1/r;Lr0/q;I)V
    .locals 10

    const v1, -0x8825fec

    invoke-virtual {p5, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p5, p0}, Lr0/q;->h(Z)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p6, v1

    invoke-virtual {p5, p1, p2}, Lr0/q;->f(J)Z

    move-result v3

    const/16 v5, 0x20

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    invoke-virtual {p5, p3}, Lr0/q;->d(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v1, v3

    or-int/lit16 v1, v1, 0xc00

    and-int/lit16 v3, v1, 0x493

    const/16 v6, 0x492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_3

    move v3, v8

    goto :goto_3

    :cond_3
    move v3, v7

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-virtual {p5, v6, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, p3}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v6

    and-int/lit8 v9, v1, 0xe

    if-ne v9, v2, :cond_4

    move v2, v8

    goto :goto_4

    :cond_4
    move v2, v7

    :goto_4
    and-int/lit8 v1, v1, 0x70

    if-ne v1, v5, :cond_5

    goto :goto_5

    :cond_5
    move v8, v7

    :goto_5
    or-int v1, v2, v8

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_7

    :cond_6
    new-instance v2, Lod/u3;

    invoke-direct {v2, p0, p1, p2}, Lod/u3;-><init>(ZJ)V

    invoke-virtual {p5, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Li9/c;

    invoke-static {v7, v6, v2, p5}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    move-object v5, v3

    goto :goto_6

    :cond_8
    invoke-virtual {p5}, Lr0/q;->W()V

    move-object v5, p4

    :goto_6
    invoke-virtual {p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_9

    new-instance v0, Lod/v3;

    move v1, p0

    move-wide v2, p1

    move v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lod/v3;-><init>(ZJFLf1/r;I)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final m(ILi9/c;Lf1/r;FLr0/q;I)V
    .locals 28

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v10, p4

    const-string v0, "onNudge"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x41b565a1

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    or-int v0, p5, v0

    and-int/lit16 v1, v0, 0x2493

    const/16 v3, 0x2492

    const/4 v6, 0x1

    if-eq v1, v3, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v6

    invoke-virtual {v10, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v13, v0

    check-cast v13, Lr0/u0;

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v14, v0

    check-cast v14, Lr0/u0;

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    invoke-static {v10}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v0

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v12, v0

    check-cast v12, Lu9/t;

    invoke-static {v2, v10}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v0

    const/16 v3, 0x14

    int-to-float v3, v3

    invoke-static {v3}, La0/e;->a(F)La0/d;

    move-result-object v7

    sget-object v8, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo0/u0;

    iget-wide v8, v8, Lo0/u0;->a:J

    invoke-static/range {p2 .. p3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v11

    invoke-static {v11, v7}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v11

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    const v15, 0x3e8f5c29    # 0.28f

    :goto_2
    invoke-static {v15, v8, v9}, Lm1/p;->b(FJ)J

    move-result-wide v15

    move-wide v5, v15

    goto :goto_3

    :cond_5
    const v15, 0x3dcccccd    # 0.1f

    goto :goto_2

    :goto_3
    sget-object v15, Lm1/v;->b:Lm1/e0;

    invoke-static {v11, v5, v6, v15}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v5

    const/4 v6, 0x2

    int-to-float v6, v6

    invoke-static {v5, v6, v8, v9, v7}, Lp/o;->h(Lf1/r;FJLm1/h0;)Lf1/r;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v10, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v7, v11

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_6

    if-ne v11, v1, :cond_7

    :cond_6
    new-instance v11, Lod/b4;

    move/from16 v15, p0

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lod/b4;-><init>(Lu9/t;Lr0/u0;Lr0/u0;ILr0/u0;)V

    invoke-virtual {v10, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v5, v6, v11}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v0

    sget-object v1, Lf1/c;->p:Lf1/j;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v6, v10, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v0, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v12, v10, Lr0/q;->S:Z

    if-eqz v12, :cond_8

    invoke-virtual {v10, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_4
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v1, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v7, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v10, v6, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v6, Le2/g;->h:Le2/d;

    invoke-static {v10, v6}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v15, Le2/g;->d:Le2/e;

    invoke-static {v15, v0, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lf1/c;->v:Lf1/i;

    sget-object v5, Lu/h;->a:Lu/n;

    const/16 v2, 0x30

    invoke-static {v5, v0, v10, v2}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v0

    move v5, v3

    iget-wide v2, v10, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    move-wide/from16 v19, v8

    sget-object v9, Lf1/o;->a:Lf1/o;

    invoke-static {v9, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    invoke-virtual {v10}, Lr0/q;->e0()V

    move/from16 v16, v5

    iget-boolean v5, v10, Lr0/q;->S:Z

    if-eqz v5, :cond_9

    invoke-virtual {v10, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v12, v0, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v3, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v10, v7, v10, v6}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v15, v8, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_a

    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpl-double v0, v2, v5

    if-lez v0, :cond_a

    const v0, -0x316c46bd

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%+d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v9

    sget-object v11, Lt2/k;->r:Lt2/k;

    const/16 v26, 0xc00

    const v27, 0x1dfd2

    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/4 v0, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-wide/from16 v7, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v25, 0x30c00

    move-object/from16 v24, p4

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v24

    invoke-virtual {v10, v0}, Lr0/q;->q(Z)V

    goto/16 :goto_7

    :cond_a
    move-wide/from16 v7, v19

    const/4 v0, 0x0

    const/4 v2, 0x1

    const v3, -0x316a205e

    invoke-virtual {v10, v3}, Lr0/q;->b0(I)V

    if-lez p0, :cond_b

    move v5, v2

    goto :goto_6

    :cond_b
    move v5, v0

    :goto_6
    const/16 v3, 0x24

    int-to-float v3, v3

    invoke-static {v4, v3}, Lb3/f;->a(FF)I

    move-result v6

    if-gez v6, :cond_c

    const/16 v6, 0x10

    int-to-float v6, v6

    move/from16 v16, v6

    :cond_c
    move-object v6, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v12, v6

    move-wide v6, v7

    move/from16 v8, v16

    invoke-static/range {v5 .. v11}, Lod/e4;->l(ZJFLf1/r;Lr0/q;I)V

    move-wide v7, v6

    const/4 v5, 0x3

    int-to-float v5, v5

    invoke-static {v12, v5}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    invoke-static {v5, v10}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3}, Lb3/f;->a(FF)I

    move-result v3

    if-gez v3, :cond_d

    const/16 v1, 0xf

    :cond_d
    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v11

    sget-object v1, Lt2/k;->r:Lt2/k;

    const/16 v26, 0xc00

    const v27, 0x1dfd2

    const/4 v6, 0x0

    move-wide v9, v11

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v25, 0x30000

    move-object/from16 v24, p4

    move-object v11, v1

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v24

    invoke-virtual {v10, v0}, Lr0/q;->q(Z)V

    :goto_7
    invoke-virtual {v10, v2}, Lr0/q;->q(Z)V

    invoke-virtual {v10, v2}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_8
    invoke-virtual {v10}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v0, Lod/n3;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lod/n3;-><init>(ILi9/c;Lf1/r;FI)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_f
    return-void
.end method

.method public static final n(FIJLf1/r;Lr0/q;)V
    .locals 8

    const v1, -0x744b6162

    invoke-virtual {p5, v1}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v1, p1, 0x6

    and-int/lit16 v2, p1, 0x180

    if-nez v2, :cond_1

    invoke-virtual {p5, p0}, Lr0/q;->d(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x100

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    and-int/2addr v1, v7

    invoke-virtual {p5, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, p0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v3, v7, :cond_3

    new-instance v3, Lad/c;

    const/16 v7, 0xa

    invoke-direct {v3, v7, p2, p3}, Lad/c;-><init>(IJ)V

    invoke-virtual {p5, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Li9/c;

    invoke-static {v6, v2, v3, p5}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p5}, Lr0/q;->W()V

    move-object v1, p4

    :goto_2
    invoke-virtual {p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v0, Lod/o3;

    const/4 v6, 0x1

    move v4, p0

    move v5, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lod/o3;-><init>(Lf1/r;JFII)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final o(Li9/a;Li9/a;Li9/a;Ljava/lang/String;Ljava/lang/String;ZLi9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 13

    move-object/from16 v6, p6

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    move-object/from16 v10, p10

    const-string v0, "onFromMap"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onToggleAuto"

    invoke-static {v6, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFromPin"

    invoke-static {v5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {v7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2b6801e2

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p11, v0

    invoke-virtual {v10, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v10, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v4, p3

    invoke-virtual {v10, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v1, p4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    move/from16 v9, p5

    invoke-virtual {v10, v9}, Lr0/q;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    invoke-virtual {v10, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    invoke-virtual {v10, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v2, 0x400000

    :goto_7
    or-int/2addr v0, v2

    invoke-virtual {v10, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v2, 0x2000000

    :goto_8
    or-int/2addr v0, v2

    const/high16 v2, 0x30000000

    or-int/2addr v0, v2

    const v2, 0x12492493

    and-int/2addr v2, v0

    const v8, 0x12492492

    const/4 v11, 0x1

    if-eq v2, v8, :cond_9

    move v2, v11

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    and-int/2addr v0, v11

    invoke-virtual {v10, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    int-to-float v11, v0

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v12, v0, Lo0/q3;->d:La0/d;

    new-instance v0, Lod/k3;

    move-object v2, p1

    move-object v3, p2

    move-object v8, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lod/k3;-><init>(Ljava/lang/String;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Ljava/lang/String;Z)V

    const v1, -0x6fa245c7

    invoke-static {v1, v0, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    move v6, v11

    const v11, 0xc06006

    move-object v1, v12

    const/16 v12, 0x6c

    sget-object v0, Lf1/o;->a:Lf1/o;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v10, v0

    goto :goto_a

    :cond_a
    invoke-virtual/range {p10 .. p10}, Lr0/q;->W()V

    move-object/from16 v10, p9

    :goto_a
    invoke-virtual/range {p10 .. p10}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_b

    new-instance v0, Lod/l3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lod/l3;-><init>(Li9/a;Li9/a;Li9/a;Ljava/lang/String;Ljava/lang/String;ZLi9/a;Li9/a;Li9/a;Lf1/r;I)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final p(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    const-string v0, "routes"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelect"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onApply"

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {v5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x19e8931f

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v10, p1}, Lr0/q;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v10, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {v10, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v10, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int/2addr v0, v1

    const v1, 0x12493

    and-int/2addr v1, v0

    const v2, 0x12492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    and-int/2addr v0, v3

    invoke-virtual {v10, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v1, v1, Lo0/u0;->p:J

    const v3, 0x3f6b851f    # 0.92f

    invoke-static {v3, v1, v2}, Lm1/p;->b(FJ)J

    move-result-wide v6

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v8, v0, Lo0/u0;->q:J

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v11, v0, Lo0/q3;->d:La0/d;

    new-instance v0, Lb4/c;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lb4/c;-><init>(Ljava/util/List;ILi9/c;Li9/a;Li9/a;)V

    const v1, 0x1e1287a6

    invoke-static {v1, v0, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    move-object v1, v11

    const v11, 0xc00006

    const/16 v12, 0x70

    move-wide v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v4, v8

    const/4 v8, 0x0

    move-object v9, v0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    :goto_6
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v0, Ln/j1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ln/j1;-><init>(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Lf1/r;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final q(Ljava/lang/Integer;FLf1/r;FFZLr0/q;II)V
    .locals 33

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v5, p4

    move-object/from16 v0, p6

    move/from16 v3, p7

    const v4, -0x2cc8d813

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

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

    invoke-virtual {v0, v2}, Lr0/q;->d(F)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit8 v6, p8, 0x4

    if-eqz v6, :cond_5

    or-int/lit16 v4, v4, 0x180

    :cond_4
    move-object/from16 v7, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_4

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_3

    :cond_6
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :goto_4
    and-int/lit8 v8, p8, 0x8

    if-eqz v8, :cond_8

    or-int/lit16 v4, v4, 0xc00

    :cond_7
    move/from16 v9, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v9, v3, 0xc00

    if-nez v9, :cond_7

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Lr0/q;->d(F)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x800

    goto :goto_5

    :cond_9
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v4, v10

    :goto_6
    and-int/lit16 v10, v3, 0x6000

    if-nez v10, :cond_b

    invoke-virtual {v0, v5}, Lr0/q;->d(F)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x4000

    goto :goto_7

    :cond_a
    const/16 v10, 0x2000

    :goto_7
    or-int/2addr v4, v10

    :cond_b
    and-int/lit8 v10, p8, 0x20

    const/high16 v11, 0x30000

    if-eqz v10, :cond_d

    or-int/2addr v4, v11

    :cond_c
    move/from16 v11, p5

    goto :goto_9

    :cond_d
    and-int/2addr v11, v3

    if-nez v11, :cond_c

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Lr0/q;->h(Z)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v12, 0x10000

    :goto_8
    or-int/2addr v4, v12

    :goto_9
    const v12, 0x12493

    and-int/2addr v12, v4

    const v13, 0x12492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v12, v13, :cond_f

    move v12, v15

    goto :goto_a

    :cond_f
    move v12, v14

    :goto_a
    and-int/2addr v4, v15

    invoke-virtual {v0, v4, v12}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v6, :cond_10

    sget-object v4, Lf1/o;->a:Lf1/o;

    goto :goto_b

    :cond_10
    move-object v4, v7

    :goto_b
    if-eqz v8, :cond_11

    const/16 v6, 0x2e

    int-to-float v6, v6

    goto :goto_c

    :cond_11
    move v6, v9

    :goto_c
    if-eqz v10, :cond_12

    move/from16 v29, v15

    goto :goto_d

    :cond_12
    move/from16 v29, v11

    :goto_d
    if-eqz v29, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    cmpl-float v7, v2, v7

    if-lez v7, :cond_13

    move v7, v15

    goto :goto_e

    :cond_13
    move v7, v14

    :goto_e
    const-wide v8, 0xffd32f2fL

    invoke-static {v8, v9}, Lm1/v;->d(J)J

    move-result-wide v8

    invoke-static {v4, v6}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v10

    sget-object v11, La0/e;->a:La0/d;

    invoke-static {v10, v11}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v10

    if-eqz v7, :cond_14

    move-wide v12, v8

    goto :goto_f

    :cond_14
    sget-wide v12, Lm1/p;->c:J

    :goto_f
    sget-object v15, Lm1/v;->b:Lm1/e0;

    invoke-static {v10, v12, v13, v15}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v10

    const/16 v12, 0x9

    int-to-float v12, v12

    div-float v12, v6, v12

    invoke-static {v10, v12, v8, v9, v11}, Lp/o;->h(Lf1/r;FJLm1/h0;)Lf1/r;

    move-result-object v8

    sget-object v9, Lf1/c;->p:Lf1/j;

    invoke-static {v9, v14}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v9

    iget-wide v10, v0, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v8, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v13, v0, Lr0/q;->S:Z

    if-eqz v13, :cond_15

    invoke-virtual {v0, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_10

    :cond_15
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_10
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v9, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v9, Le2/g;->e:Le2/e;

    invoke-static {v9, v11, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v0, v9, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v0, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->a()Z

    move-result v9

    if-eqz v9, :cond_16

    int-to-double v8, v8

    const-wide v10, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double/2addr v8, v10

    const/4 v10, 0x5

    int-to-double v11, v10

    div-double/2addr v8, v11

    invoke-static {v8, v9}, Ll9/a;->y(D)I

    move-result v8

    mul-int/2addr v8, v10

    if-ge v8, v10, :cond_16

    move v8, v10

    :cond_16
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_17
    const-string v8, "\u2014"

    :goto_11
    if-eqz v7, :cond_18

    sget-wide v9, Lm1/p;->c:J

    goto :goto_12

    :cond_18
    sget-wide v9, Lm1/p;->b:J

    :goto_12
    sget-object v12, Lt2/k;->q:Lt2/k;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v11, 0x64

    if-lt v7, v11, :cond_19

    const/16 v7, 0xf

    :goto_13
    invoke-static {v7}, La/a;->k(I)J

    move-result-wide v13

    goto :goto_14

    :cond_19
    const/16 v7, 0x13

    goto :goto_13

    :goto_14
    const/16 v7, 0x14

    invoke-static {v7}, La/a;->k(I)J

    move-result-wide v17

    const/16 v27, 0x6

    const v28, 0x1fbd2

    const/4 v7, 0x0

    move-wide/from16 v31, v13

    move v14, v6

    move-object v6, v8

    move-wide v8, v9

    move-wide/from16 v10, v31

    const/4 v13, 0x0

    move/from16 v19, v14

    const-wide/16 v14, 0x0

    const/16 v20, 0x1

    const/16 v16, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v22, v20

    const/16 v20, 0x0

    move/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    const/16 v22, 0x0

    move/from16 v25, v23

    const/16 v23, 0x0

    move/from16 v26, v24

    const/16 v24, 0x0

    move/from16 v30, v26

    const/high16 v26, 0x30000

    move/from16 p2, v25

    move-object/from16 v25, v0

    move/from16 v0, v30

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v6, v25

    invoke-virtual {v6, v0}, Lr0/q;->q(Z)V

    move-object v7, v4

    move/from16 v6, v29

    move/from16 v4, p2

    goto :goto_15

    :cond_1a
    move-object v6, v0

    invoke-virtual {v6}, Lr0/q;->W()V

    move v4, v9

    move v6, v11

    :goto_15
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_1b

    new-instance v0, Lod/m3;

    move-object v8, v7

    move v7, v3

    move-object v3, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lod/m3;-><init>(Ljava/lang/Integer;FLf1/r;FFZII)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_1b
    return-void
.end method

.method public static final r(ILi9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 17

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p4

    const-string v0, "onUndo"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {v3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2bd33296

    invoke-virtual {v14, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v14, v1}, Lr0/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v14, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v14, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    and-int/2addr v0, v6

    invoke-virtual {v14, v0, v4}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v0, v4, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v14, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lr0/u0;

    sget-object v5, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v14, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb3/c;

    const/16 v6, 0x50

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lb3/c;->V(F)F

    move-result v5

    invoke-static {v3, v14}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v6

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_5

    new-instance v7, Lb0/y;

    const/16 v8, 0x15

    invoke-direct {v7, v0, v8}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v14, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Li9/c;

    move-object/from16 v8, p3

    invoke-static {v8, v7}, Lu/b;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v7

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_6

    if-ne v10, v4, :cond_7

    :cond_6
    new-instance v10, Lb0/w0;

    const/4 v9, 0x5

    invoke-direct {v10, v9, v6}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v9, Lt8/z;->a:Lt8/z;

    invoke-static {v7, v9, v10}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v7

    invoke-virtual {v14, v5}, Lr0/q;->d(F)Z

    move-result v10

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_8

    if-ne v11, v4, :cond_9

    :cond_8
    new-instance v11, Lod/d4;

    invoke-direct {v11, v5, v0, v6}, Lod/d4;-><init>(FLr0/u0;Lr0/u0;)V

    invoke-virtual {v14, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v7, v9, v11}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v4

    const-wide v5, 0xff37474fL

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    const v0, 0x3f51eb85    # 0.82f

    invoke-static {v0, v5, v6}, Lm1/p;->b(FJ)J

    move-result-wide v6

    sget-wide v8, Lm1/p;->c:J

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v5, v0, Lo0/q3;->d:La0/d;

    new-instance v0, Lod/d;

    const/4 v10, 0x1

    invoke-direct {v0, v1, v10, v2}, Lod/d;-><init>(IILjava/lang/Object;)V

    const v10, 0x7c0e27af

    invoke-static {v10, v0, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v13

    const v15, 0xc00d80

    const/16 v16, 0x70

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v16}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v0, Lb0/a3;

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(ILi9/a;Li9/a;Lf1/r;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final s(Lua/nav/routing/Step;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "\u2022"

    return-object p0

    :cond_0
    iget-object v0, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "roundabout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v1, "rotary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v1, "roundabout turn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\u21bb"

    return-object p0

    :sswitch_3
    const-string v1, "depart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "\u25b2"

    return-object p0

    :sswitch_4
    const-string v1, "arrive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_0
    iget-object p0, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "uturn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "\u21b6"

    return-object p0

    :sswitch_6
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "\u21b1"

    return-object p0

    :sswitch_7
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "\u21b0"

    return-object p0

    :sswitch_8
    const-string v0, "sharp right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const-string p0, "\u2198"

    return-object p0

    :sswitch_9
    const-string v0, "slight left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const-string p0, "\u2196"

    return-object p0

    :sswitch_a
    const-string v0, "sharp left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    const-string p0, "\u2199"

    return-object p0

    :sswitch_b
    const-string v0, "slight right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    const-string p0, "\u2197"

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "\u2191"

    return-object p0

    :cond_b
    const-string p0, "\u2691"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53fe0929 -> :sswitch_4
        -0x4f97b80c -> :sswitch_3
        -0x41c5eac2 -> :sswitch_2
        -0x372522cf -> :sswitch_1
        -0x89ec541 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x782f53c1 -> :sswitch_b
        -0x5b485d83 -> :sswitch_a
        -0x2d2d9a7c -> :sswitch_9
        -0xd6cf19a -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
        0x6a73e72 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final t(Lua/nav/routing/Step;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "rotary"

    const-string v2, "roundabout turn"

    const-string v3, "roundabout"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_0

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method
