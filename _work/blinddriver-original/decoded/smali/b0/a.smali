.class public final synthetic Lb0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/a;->l:I

    iput-object p2, p0, Lb0/a;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lb0/a;->l:I

    iput-object p2, p0, Lb0/a;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lb0/a;->l:I

    const/4 v3, 0x3

    const-wide v6, 0xffffffffL

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lr/n2;

    check-cast v1, Ll1/b;

    iget-object v2, v0, Lr/n2;->k:Lr/s1;

    iget-wide v3, v1, Ll1/b;->a:J

    iget v1, v0, Lr/n2;->j:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lr/n2;->c(Lr/s1;JI)J

    move-result-wide v0

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    return-object v2

    :pswitch_0
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lo0/k;

    check-cast v1, Ly1/u;

    invoke-static {v1, v13}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v2

    shr-long/2addr v2, v10

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo0/k;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ly1/u;->a()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lod/y2;

    check-cast v1, Ly1/u;

    invoke-static {v1, v13}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v2

    new-instance v4, Ll1/b;

    invoke-direct {v4, v2, v3}, Ll1/b;-><init>(J)V

    invoke-virtual {v0, v1, v4}, Lod/y2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ly1/u;->a()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/update/a;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lua/nav/update/a;->j:Lx9/l0;

    new-instance v2, Lqd/g;

    invoke-direct {v2, v1}, Lqd/g;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, La1/b;

    const-string v2, "it"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, La1/b;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    check-cast v1, Lm1/f0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lm1/f0;->c(F)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lp/a2;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lp/a2;->a:Lr0/b1;

    invoke-virtual {v2}, Lr0/b1;->g()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v0, Lp/a2;->f:F

    add-float/2addr v3, v4

    iget-object v4, v0, Lp/a2;->e:Lr0/b1;

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v9, v4}, Lg6/c1;->e(FFF)F

    move-result v4

    cmpg-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    invoke-virtual {v2}, Lr0/b1;->g()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Lr0/b1;->g()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lr0/b1;->h(I)V

    int-to-float v2, v3

    sub-float v2, v4, v2

    iput v2, v0, Lp/a2;->f:F

    if-nez v12, :cond_1

    move v1, v4

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Le2/j0;

    check-cast v1, Lo1/d;

    invoke-virtual {v0}, Le2/j0;->b()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lp/v;

    check-cast v1, Lj1/c;

    iget v2, v0, Lp/v;->C:F

    invoke-virtual {v1}, Lj1/c;->a()F

    move-result v3

    mul-float/2addr v3, v2

    cmpl-float v2, v3, v9

    if-ltz v2, :cond_20

    iget-object v2, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v2}, Lj1/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll1/e;->b(J)F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_20

    iget v2, v0, Lp/v;->C:F

    invoke-static {v2, v9}, Lb3/f;->b(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    iget v2, v0, Lp/v;->C:F

    invoke-virtual {v1}, Lj1/c;->a()F

    move-result v9

    mul-float/2addr v9, v2

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v2, v14

    :goto_1
    iget-object v9, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v9}, Lj1/a;->d()J

    move-result-wide v14

    invoke-static {v14, v15}, Ll1/e;->b(J)F

    move-result v9

    int-to-float v8, v8

    div-float/2addr v9, v8

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v9, v14

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v18

    div-float v2, v18, v8

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v14, v9

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    const-wide/16 v16, 0x0

    int-to-long v4, v9

    shl-long/2addr v14, v10

    and-long/2addr v4, v6

    or-long v21, v14, v4

    iget-object v4, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v4}, Lj1/a;->d()J

    move-result-wide v4

    shr-long/2addr v4, v10

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float v4, v4, v18

    iget-object v5, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v5}, Lj1/a;->d()J

    move-result-wide v14

    and-long/2addr v14, v6

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    sub-float v5, v5, v18

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v14, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v14, v10

    and-long/2addr v4, v6

    or-long v23, v14, v4

    mul-float v29, v18, v8

    iget-object v4, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v4}, Lj1/a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ll1/e;->b(J)F

    move-result v4

    cmpl-float v4, v29, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v13

    :goto_2
    iget-object v5, v0, Lp/v;->E:Lm1/h0;

    iget-object v8, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v8}, Lj1/a;->d()J

    move-result-wide v8

    iget-object v14, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v14}, Lj1/a;->getLayoutDirection()Lb3/m;

    move-result-object v14

    invoke-interface {v5, v8, v9, v14, v1}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v5

    instance-of v8, v5, Lm1/a0;

    if-eqz v8, :cond_16

    iget-object v2, v0, Lp/v;->D:Lm1/j0;

    check-cast v5, Lm1/a0;

    iget-object v8, v5, Lm1/a0;->c:Lm1/g;

    if-eqz v4, :cond_4

    new-instance v0, Lb0/r0;

    const/16 v3, 0x1d

    invoke-direct {v0, v3, v5, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    goto/16 :goto_f

    :cond_4
    if-eqz v2, :cond_5

    iget-wide v14, v2, Lm1/j0;->a:J

    invoke-static {v3, v14, v15}, Lm1/p;->b(FJ)J

    move-result-wide v3

    new-instance v9, Lm1/j;

    const/4 v14, 0x5

    invoke-direct {v9, v14, v3, v4}, Lm1/j;-><init>(IJ)V

    move-object/from16 v20, v9

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v20, v11

    move v3, v13

    :goto_3
    invoke-virtual {v8}, Lm1/g;->c()Ll1/c;

    move-result-object v4

    iget v9, v4, Ll1/c;->b:F

    iget v14, v4, Ll1/c;->a:F

    iget-object v15, v0, Lp/v;->B:Lp/r;

    if-nez v15, :cond_6

    new-instance v15, Lp/r;

    invoke-direct {v15}, Lp/r;-><init>()V

    iput-object v15, v0, Lp/v;->B:Lp/r;

    :cond_6
    iget-object v15, v0, Lp/v;->B:Lp/r;

    invoke-static {v15}, Lj9/n;->d(Ljava/lang/Object;)V

    move-wide/from16 v36, v6

    iget-object v6, v15, Lp/r;->d:Lm1/g;

    if-nez v6, :cond_7

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v6

    iput-object v6, v15, Lp/r;->d:Lm1/g;

    :cond_7
    invoke-virtual {v6}, Lm1/g;->g()V

    sget-object v7, Lm1/d0;->l:[Lm1/d0;

    iget v7, v4, Ll1/c;->a:F

    iget v15, v4, Ll1/c;->d:F

    move/from16 v19, v10

    iget v10, v4, Ll1/c;->c:F

    iget v11, v4, Ll1/c;->b:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_9

    :cond_8
    const-string v16, "Invalid rectangle, make sure no value is NaN"

    invoke-static/range {v16 .. v16}, Lm1/i;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v12, v6, Lm1/g;->b:Landroid/graphics/RectF;

    if-nez v12, :cond_a

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v6, Lm1/g;->b:Landroid/graphics/RectF;

    :cond_a
    iget-object v12, v6, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {v12}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v12, v7, v11, v10, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v6, Lm1/g;->a:Landroid/graphics/Path;

    iget-object v10, v6, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {v10}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {v6, v6, v8, v13}, Lm1/g;->f(Lm1/g;Lm1/g;I)Z

    new-instance v7, Lj9/y;

    invoke-direct {v7}, Lj9/y;-><init>()V

    iget v8, v4, Ll1/c;->c:F

    sub-float/2addr v8, v14

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v8, v10

    float-to-int v8, v8

    iget v10, v4, Ll1/c;->d:F

    sub-float/2addr v10, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-int v10, v10

    int-to-long v11, v8

    shl-long v11, v11, v19

    move v8, v14

    int-to-long v13, v10

    and-long v13, v13, v36

    or-long v10, v11, v13

    iget-object v0, v0, Lp/v;->B:Lp/r;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v12, v0, Lp/r;->a:Lm1/e;

    iget-object v13, v0, Lp/r;->b:Lm1/a;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lm1/e;->a()I

    move-result v14

    new-instance v15, Lm1/x;

    invoke-direct {v15, v14}, Lm1/x;-><init>(I)V

    goto :goto_4

    :cond_b
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_c

    goto :goto_5

    :cond_c
    iget v14, v15, Lm1/x;->a:I

    if-nez v14, :cond_d

    goto :goto_8

    :cond_d
    :goto_5
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lm1/e;->a()I

    move-result v14

    new-instance v15, Lm1/x;

    invoke-direct {v15, v14}, Lm1/x;-><init>(I)V

    goto :goto_6

    :cond_e
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_f

    goto :goto_7

    :cond_f
    iget v14, v15, Lm1/x;->a:I

    if-eq v3, v14, :cond_10

    :goto_7
    const/16 v27, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/16 v27, 0x1

    :goto_9
    if-eqz v12, :cond_12

    if-eqz v13, :cond_12

    iget-object v14, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v14}, Lj1/a;->d()J

    move-result-wide v14

    shr-long v14, v14, v19

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    iget-object v15, v12, Lm1/e;->a:Landroid/graphics/Bitmap;

    move-object/from16 v32, v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v14, v2

    if-gtz v2, :cond_11

    iget-object v2, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v2}, Lj1/a;->d()J

    move-result-wide v16

    move-wide/from16 p0, v10

    and-long v10, v16, v36

    long-to-int v2, v10

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v2, v2, v10

    if-gtz v2, :cond_13

    if-nez v27, :cond_14

    goto :goto_b

    :cond_11
    :goto_a
    move-wide/from16 p0, v10

    goto :goto_b

    :cond_12
    move-object/from16 v32, v2

    goto :goto_a

    :cond_13
    :goto_b
    shr-long v10, p0, v19

    long-to-int v2, v10

    and-long v10, p0, v36

    long-to-int v10, v10

    invoke-static {v2, v10, v3}, Lm1/v;->f(III)Lm1/e;

    move-result-object v12

    iput-object v12, v0, Lp/r;->a:Lm1/e;

    invoke-static {v12}, Lm1/v;->a(Lm1/e;)Lm1/a;

    move-result-object v13

    iput-object v13, v0, Lp/r;->b:Lm1/a;

    :cond_14
    iget-object v2, v0, Lp/r;->c:Lo1/b;

    if-nez v2, :cond_15

    new-instance v2, Lo1/b;

    invoke-direct {v2}, Lo1/b;-><init>()V

    iput-object v2, v0, Lp/r;->c:Lo1/b;

    :cond_15
    iget-object v3, v2, Lo1/b;->m:Lg5/m;

    iget-object v0, v2, Lo1/b;->l:Lo1/a;

    invoke-static/range {p0 .. p1}, Ly4/s;->E(J)J

    move-result-wide v10

    iget-object v14, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v14}, Lj1/a;->getLayoutDirection()Lb3/m;

    move-result-object v14

    iget-object v15, v0, Lo1/a;->a:Lb3/c;

    move-object/from16 v21, v2

    iget-object v2, v0, Lo1/a;->b:Lb3/m;

    move-object/from16 v16, v4

    iget-object v4, v0, Lo1/a;->c:Lm1/o;

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    iget-wide v6, v0, Lo1/a;->d:J

    iput-object v1, v0, Lo1/a;->a:Lb3/c;

    iput-object v14, v0, Lo1/a;->b:Lb3/m;

    iput-object v13, v0, Lo1/a;->c:Lm1/o;

    iput-wide v10, v0, Lo1/a;->d:J

    invoke-virtual {v13}, Lm1/a;->h()V

    sget-wide v22, Lm1/p;->b:J

    const-wide/16 v24, 0x0

    const/16 v28, 0x3a

    move-wide/from16 v26, v10

    invoke-static/range {v21 .. v28}, Lo1/d;->h(Lo1/d;JJJI)V

    neg-float v8, v8

    neg-float v9, v9

    iget-object v10, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v10, Lm2/j;

    invoke-virtual {v10, v8, v9}, Lm2/j;->F(FF)V

    :try_start_0
    iget-object v5, v5, Lm1/a0;->c:Lm1/g;

    new-instance v34, Lo1/h;

    const/16 v27, 0x0

    const/16 v28, 0x1e

    const/16 v30, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v34

    invoke-direct/range {v25 .. v30}, Lo1/h;-><init>(IIIFF)V

    const/16 v35, 0x34

    const/16 v33, 0x0

    move-object/from16 v31, v5

    move-object/from16 v30, v21

    invoke-static/range {v30 .. v35}, Lo1/d;->t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V

    invoke-interface/range {v21 .. v21}, Lo1/d;->d()J

    move-result-wide v10

    shr-long v10, v10, v19

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const/4 v10, 0x1

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-interface/range {v21 .. v21}, Lo1/d;->d()J

    move-result-wide v22

    move v14, v10

    shr-long v10, v22, v19

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    div-float/2addr v5, v10

    invoke-interface/range {v21 .. v21}, Lo1/d;->d()J

    move-result-wide v10

    and-long v10, v10, v36

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    add-float/2addr v10, v14

    invoke-interface/range {v21 .. v21}, Lo1/d;->d()J

    move-result-wide v22

    move v14, v10

    and-long v10, v22, v36

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    div-float v10, v14, v10

    move-object v11, v13

    invoke-interface/range {v21 .. v21}, Lo1/d;->j0()J

    move-result-wide v13

    move-object/from16 v19, v11

    move-object/from16 v22, v12

    invoke-virtual {v3}, Lg5/m;->m()J

    move-result-wide v11

    invoke-virtual {v3}, Lg5/m;->h()Lm1/o;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lm1/o;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v28, v1

    :try_start_1
    iget-object v1, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lm2/j;

    invoke-virtual {v1, v5, v10, v13, v14}, Lm2/j;->A(FFJ)V

    const/16 v34, 0x0

    const/16 v35, 0x1c

    const/16 v33, 0x0

    move-object/from16 v31, v17

    move-object/from16 v30, v21

    invoke-static/range {v30 .. v35}, Lo1/d;->t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Lg5/m;->h()Lm1/o;

    move-result-object v1

    invoke-interface {v1}, Lm1/o;->q()V

    invoke-virtual {v3, v11, v12}, Lg5/m;->w(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lm2/j;

    neg-float v3, v8

    neg-float v5, v9

    invoke-virtual {v1, v3, v5}, Lm2/j;->F(FF)V

    invoke-virtual/range {v19 .. v19}, Lm1/a;->q()V

    iput-object v15, v0, Lo1/a;->a:Lb3/c;

    iput-object v2, v0, Lo1/a;->b:Lb3/m;

    iput-object v4, v0, Lo1/a;->c:Lm1/o;

    iput-wide v6, v0, Lo1/a;->d:J

    move-object/from16 v12, v22

    iget-object v0, v12, Lm1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object/from16 v0, v18

    iput-object v12, v0, Lj9/y;->m:Ljava/lang/Object;

    new-instance v15, Lp/u;

    move-wide/from16 v18, p0

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lp/u;-><init>(Ll1/c;Lj9/y;JLm1/j;)V

    move-object/from16 v1, v28

    invoke-virtual {v1, v15}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Lg5/m;->h()Lm1/o;

    move-result-object v1

    invoke-interface {v1}, Lm1/o;->q()V

    invoke-virtual {v3, v11, v12}, Lg5/m;->w(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_c
    iget-object v1, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lm2/j;

    neg-float v2, v8

    neg-float v3, v9

    invoke-virtual {v1, v2, v3}, Lm2/j;->F(FF)V

    throw v0

    :cond_16
    instance-of v3, v5, Lm1/c0;

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lp/v;->D:Lm1/j0;

    check-cast v5, Lm1/c0;

    iget-object v5, v5, Lm1/c0;->c:Ll1/d;

    invoke-static {v5}, Lr5/h1;->r(Ll1/d;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-wide v5, v5, Ll1/d;->e:J

    new-instance v14, Lo1/h;

    const/16 v16, 0x0

    const/16 v17, 0x1e

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lo1/h;-><init>(IIIFF)V

    new-instance v0, Lp/t;

    move/from16 v19, v2

    move-object/from16 v16, v3

    move v15, v4

    move-object/from16 v25, v14

    move/from16 v20, v18

    move-object v14, v0

    move-wide/from16 v17, v5

    invoke-direct/range {v14 .. v25}, Lp/t;-><init>(ZLm1/j0;JFFJJLo1/h;)V

    invoke-virtual {v1, v14}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    goto/16 :goto_f

    :cond_17
    move-object v2, v3

    move v12, v4

    move/from16 v15, v18

    iget-object v3, v0, Lp/v;->B:Lp/r;

    if-nez v3, :cond_18

    new-instance v3, Lp/r;

    invoke-direct {v3}, Lp/r;-><init>()V

    iput-object v3, v0, Lp/v;->B:Lp/r;

    :cond_18
    iget-object v0, v0, Lp/v;->B:Lp/r;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, v0, Lp/r;->d:Lm1/g;

    if-nez v3, :cond_19

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v3

    iput-object v3, v0, Lp/r;->d:Lm1/g;

    :cond_19
    invoke-virtual {v3}, Lm1/g;->g()V

    invoke-static {v3, v5}, Lm1/g;->b(Lm1/g;Ll1/d;)V

    if-nez v12, :cond_1a

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    invoke-virtual {v5}, Ll1/d;->b()F

    move-result v4

    sub-float v17, v4, v15

    invoke-virtual {v5}, Ll1/d;->a()F

    move-result v4

    sub-float v18, v4, v15

    iget-wide v6, v5, Ll1/d;->e:J

    invoke-static {v15, v6, v7}, Lp/o;->s(FJ)J

    move-result-wide v19

    iget-wide v6, v5, Ll1/d;->f:J

    invoke-static {v15, v6, v7}, Lp/o;->s(FJ)J

    move-result-wide v21

    iget-wide v6, v5, Ll1/d;->h:J

    invoke-static {v15, v6, v7}, Lp/o;->s(FJ)J

    move-result-wide v25

    iget-wide v4, v5, Ll1/d;->g:J

    invoke-static {v15, v4, v5}, Lp/o;->s(FJ)J

    move-result-wide v23

    new-instance v14, Ll1/d;

    move/from16 v16, v15

    invoke-direct/range {v14 .. v26}, Ll1/d;-><init>(FFFFJJJJ)V

    invoke-static {v0, v14}, Lm1/g;->b(Lm1/g;Ll1/d;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v3, v0, v4}, Lm1/g;->f(Lm1/g;Lm1/g;I)Z

    :cond_1a
    new-instance v0, Lb0/r0;

    const/16 v4, 0x1c

    invoke-direct {v0, v4, v3, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    goto :goto_f

    :cond_1b
    move v12, v4

    instance-of v2, v5, Lm1/b0;

    if-eqz v2, :cond_1f

    iget-object v4, v0, Lp/v;->D:Lm1/j0;

    if-eqz v12, :cond_1c

    move-wide/from16 v5, v16

    goto :goto_d

    :cond_1c
    move-wide/from16 v5, v21

    :goto_d
    if-eqz v12, :cond_1d

    iget-object v0, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v0}, Lj1/a;->d()J

    move-result-wide v23

    :cond_1d
    move-wide/from16 v7, v23

    if-eqz v12, :cond_1e

    sget-object v0, Lo1/g;->a:Lo1/g;

    move-object v9, v0

    goto :goto_e

    :cond_1e
    new-instance v14, Lo1/h;

    const/16 v16, 0x0

    const/16 v17, 0x1e

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lo1/h;-><init>(IIIFF)V

    move-object v9, v14

    :goto_e
    new-instance v3, Lp/s;

    invoke-direct/range {v3 .. v9}, Lp/s;-><init>(Lm1/j0;JJLo1/e;)V

    invoke-virtual {v1, v3}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    goto :goto_f

    :cond_1f
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    new-instance v0, Ln/p1;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Ln/p1;-><init>(I)V

    invoke-virtual {v1, v0}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    :goto_f
    return-object v0

    :pswitch_8
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Ljd/b;

    check-cast v1, Lw/e;

    const-string v2, "$this$group"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lod/m;->o0:Lz0/d;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object v2, Lod/m;->q0:Lz0/d;

    invoke-static {v1, v4, v2, v3}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v2, Lb0/x2;

    const/16 v5, 0xa

    invoke-direct {v2, v5, v0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lz0/d;

    const v5, 0x7d0dc2e9

    const/4 v10, 0x1

    invoke-direct {v0, v5, v10, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v4, v0, v3}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lr0/a1;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lr0/a1;->h(F)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_a
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lp2/k0;

    check-cast v1, Lp2/e;

    iget-object v2, v1, Lp2/e;->a:Ljava/lang/Object;

    check-cast v2, Lp2/b;

    instance-of v3, v2, Lp2/l;

    const/16 v4, 0xe

    if-eqz v3, :cond_21

    move-object v3, v2

    check-cast v3, Lp2/l;

    iget-object v5, v3, Lp2/l;->b:Lp2/k0;

    if-nez v5, :cond_21

    iget-object v2, v3, Lp2/l;->a:Ljava/lang/String;

    new-instance v3, Lp2/l;

    invoke-direct {v3, v2, v0}, Lp2/l;-><init>(Ljava/lang/String;Lp2/k0;)V

    const/4 v0, 0x0

    invoke-static {v1, v3, v0, v4}, Lp2/e;->a(Lp2/e;Lp2/b;II)Lp2/e;

    move-result-object v1

    goto :goto_10

    :cond_21
    instance-of v3, v2, Lp2/k;

    if-eqz v3, :cond_22

    check-cast v2, Lp2/k;

    iget-object v3, v2, Lp2/k;->b:Lp2/k0;

    if-nez v3, :cond_22

    iget-object v2, v2, Lp2/k;->a:Ljava/lang/String;

    new-instance v3, Lp2/k;

    invoke-direct {v3, v2, v0}, Lp2/k;-><init>(Ljava/lang/String;Lp2/k0;)V

    const/4 v0, 0x0

    invoke-static {v1, v3, v0, v4}, Lp2/e;->a(Lp2/e;Lp2/b;II)Lp2/e;

    move-result-object v1

    :cond_22
    :goto_10
    return-object v1

    :pswitch_b
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Li9/e;

    sget-object v2, Ln/d;->j:Ln/o1;

    check-cast v1, Ln/i;

    iget-object v3, v1, Ln/i;->e:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Ln/o1;->b:Li9/c;

    iget-object v1, v1, Ln/i;->f:Ln/p;

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_c
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lm0/o;

    check-cast v1, Ly1/u;

    iget-wide v2, v1, Ly1/u;->c:J

    invoke-interface {v0, v2, v3}, Lm0/o;->a(J)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ly1/u;->a()V

    :cond_23
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_d
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lk0/t;

    check-cast v1, Lu2/g;

    invoke-virtual {v0, v1}, Lk0/t;->a(Lu2/g;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    const-wide/16 v16, 0x0

    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lid/l0;

    check-cast v1, Ldd/m0;

    iget-object v2, v1, Ldd/m0;->b:Ljava/lang/Float;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-wide v3, v1, Ldd/m0;->e:J

    float-to-double v1, v2

    iget-wide v5, v0, Lid/l0;->q:J

    cmp-long v7, v5, v16

    if-ltz v7, :cond_24

    iget-wide v7, v0, Lid/l0;->p:D

    sub-long v5, v3, v5

    long-to-double v5, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double v11, v5, v9

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v11 .. v16}, Lg6/c1;->d(DDD)D

    move-result-wide v5

    mul-double/2addr v1, v5

    add-double/2addr v1, v7

    iput-wide v1, v0, Lid/l0;->p:D

    :cond_24
    iput-wide v3, v0, Lid/l0;->q:J

    :cond_25
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_f
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Li0/c;

    check-cast v1, Lr0/g0;

    new-instance v1, Lb0/u0;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object v1

    :pswitch_10
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lhd/e;

    check-cast v1, Lhd/n;

    const-string v2, "st"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_29

    const/4 v10, 0x1

    if-eq v1, v10, :cond_28

    if-eq v1, v8, :cond_27

    if-ne v1, v3, :cond_26

    sget-object v1, Lhd/l;->s:Lhd/l;

    goto :goto_11

    :cond_26
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v1, Lhd/l;->r:Lhd/l;

    goto :goto_11

    :cond_28
    sget-object v1, Lhd/l;->q:Lhd/l;

    goto :goto_11

    :cond_29
    sget-object v1, Lhd/l;->p:Lhd/l;

    :goto_11
    iget-object v0, v0, Lhd/e;->f:Lx9/l0;

    new-instance v2, Lhd/m;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhd/m;

    iget-object v3, v3, Lhd/m;->b:Ljava/lang/Integer;

    const/4 v4, 0x4

    invoke-direct {v2, v1, v3, v4}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_11
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lb0/a;

    check-cast v1, Le2/e2;

    instance-of v2, v1, Lh0/a;

    if-eqz v2, :cond_2a

    check-cast v1, Lh0/a;

    iget-object v1, v1, Lh0/a;->z:Lb0/a;

    invoke-virtual {v0, v1}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Ld0/a;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_13
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lh0/c;

    check-cast v1, Ld0/a;

    iget-object v2, v0, Lh0/c;->B:Li9/e;

    sget-object v3, Lf2/o0;->b:Lr0/s2;

    invoke-static {v0, v3}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_14
    move-wide/from16 v36, v6

    move/from16 v19, v10

    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v1, Lo1/d;

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v2

    invoke-virtual {v2}, Lg5/m;->h()Lm1/o;

    move-result-object v2

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v3

    shr-long v3, v3, v19

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v4

    and-long v4, v4, v36

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v2}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_15
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lorg/maplibre/geojson/MultiPolygon;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v0, "style"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    const/high16 v8, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-direct/range {v1 .. v8}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDF)V

    return-object v1

    :pswitch_16
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lorg/maplibre/android/geometry/LatLngBounds;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v0, "style"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    const/high16 v8, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-direct/range {v1 .. v8}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;-><init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDF)V

    return-object v1

    :pswitch_17
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Ld1/b0;

    iget-object v2, v0, Ld1/b0;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, v0, Ld1/b0;->i:Ld1/a0;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, v0, Ld1/a0;->b:Ljava/lang/Object;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v4, v0, Ld1/a0;->d:I

    iget-object v5, v0, Ld1/a0;->c:Lk/d0;

    if-nez v5, :cond_2b

    new-instance v5, Lk/d0;

    invoke-direct {v5}, Lk/d0;-><init>()V

    iput-object v5, v0, Ld1/a0;->c:Lk/d0;

    iget-object v6, v0, Ld1/a0;->f:Lk/m0;

    invoke-virtual {v6, v3, v5}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    invoke-virtual {v0, v1, v4, v3, v5}, Ld1/a0;->b(Ljava/lang/Object;ILjava/lang/Object;Lk/d0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v2

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_18
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lca/c;

    check-cast v1, Ljava/lang/Throwable;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/c;->f(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_19
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lc1/d;

    iget-object v0, v0, Lc1/d;->n:Lc1/f;

    if-eqz v0, :cond_2c

    invoke-interface {v0, v1}, Lc1/f;->b(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_12

    :cond_2c
    const/4 v12, 0x1

    :goto_12
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1a
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lc/f;

    check-cast v1, Lb4/g;

    iget-object v2, v0, Lc/f;->a:Lb/i0;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lb/b0;->e(Z)V

    iget-object v2, v0, Lc/f;->b:Ld/a;

    invoke-virtual {v2, v10}, Lh4/d;->f(Z)V

    new-instance v2, Lc/d;

    invoke-direct {v2, v1, v0}, Lc/d;-><init>(Lb4/g;Lc/f;)V

    return-object v2

    :pswitch_1b
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lb0/v2;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lb0/v2;->a:Lr0/a1;

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result v3

    add-float/2addr v3, v1

    iget-object v0, v0, Lb0/v2;->b:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2d

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result v1

    sub-float v1, v0, v1

    goto :goto_13

    :cond_2d
    cmpg-float v0, v3, v9

    if-gez v0, :cond_2e

    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result v0

    neg-float v1, v0

    :cond_2e
    :goto_13
    invoke-virtual {v2}, Lr0/a1;->g()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lr0/a1;->h(F)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_1c
    iget-object v0, v0, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lm0/r;

    check-cast v1, Lm2/x;

    sget-object v2, Lm0/s0;->c:Lm2/w;

    new-instance v3, Lm0/r0;

    sget-object v4, Lb0/d1;->l:Lb0/d1;

    invoke-interface {v0}, Lm0/r;->a()J

    move-result-wide v5

    sget-object v7, Lm0/q0;->m:Lm0/q0;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lm0/r0;-><init>(Lb0/d1;JLm0/q0;Z)V

    invoke-interface {v1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
