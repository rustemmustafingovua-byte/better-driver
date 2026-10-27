.class public final synthetic Lad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    iput p1, p0, Lad/c;->l:I

    iput-wide p2, p0, Lad/c;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lad/c;->l:I

    packed-switch v1, :pswitch_data_0

    iget-wide v0, v0, Lad/c;->m:J

    move-object/from16 v2, p1

    check-cast v2, Lr0/d;

    iget-object v3, v2, Lr0/d;->b:Li9/c;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lr0/d;->a:Lu9/g;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lm1/g;->e(FF)V

    invoke-virtual {v4, v2, v3}, Lm1/g;->d(FF)V

    const v2, 0x3f3851ec    # 0.72f

    mul-float/2addr v2, v3

    invoke-virtual {v4, v5, v2}, Lm1/g;->d(FF)V

    invoke-virtual {v4, v6, v3}, Lm1/g;->d(FF)V

    iget-object v2, v4, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v2, v4

    iget-wide v3, v0, Lad/c;->m:J

    invoke-static/range {v1 .. v6}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll1/e;->b(J)F

    move-result v11

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v2

    const v4, 0x3e99999a    # 0.3f

    mul-float v12, v11, v4

    const v4, 0x3de147ae    # 0.11f

    mul-float v9, v11, v4

    const/16 v4, 0x20

    shr-long v5, v2, v4

    long-to-int v13, v5

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    sub-float/2addr v5, v12

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v14, v2

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, v12

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move/from16 p1, v4

    int-to-long v4, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v4, v4, p1

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-wide v15, v6

    int-to-long v6, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v6, v6, p1

    and-long/2addr v4, v15

    or-long v15, v6, v4

    new-instance v5, Lo1/h;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lo1/h;-><init>(IIIFF)V

    move-wide v6, v2

    iget-wide v2, v0, Lad/c;->m:J

    const/high16 v4, -0x3dcc0000    # -45.0f

    move-object v10, v5

    const v5, 0x438e8000    # 285.0f

    move-wide v8, v15

    invoke-interface/range {v1 .. v10}, Lo1/d;->s(JFFJJLo1/h;)V

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const v4, 0x40860a92

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v12

    add-float/2addr v6, v0

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v12, v7

    add-float/2addr v12, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v0, v7

    neg-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3e2e147b    # 0.17f

    mul-float/2addr v5, v11

    const v9, 0x3e75c28f    # 0.24f

    mul-float/2addr v11, v9

    move v9, v4

    move-wide v3, v2

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v2

    mul-float/2addr v8, v5

    add-float v10, v6, v8

    mul-float/2addr v5, v9

    add-float v9, v12, v5

    invoke-virtual {v2, v10, v9}, Lm1/g;->e(FF)V

    sub-float v8, v6, v8

    sub-float v5, v12, v5

    invoke-virtual {v2, v8, v5}, Lm1/g;->d(FF)V

    mul-float/2addr v0, v11

    add-float/2addr v0, v6

    mul-float/2addr v7, v11

    add-float/2addr v7, v12

    invoke-virtual {v2, v0, v7}, Lm1/g;->d(FF)V

    iget-object v0, v2, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    invoke-static/range {v1 .. v6}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll1/e;->b(J)F

    move-result v11

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v5

    const v2, 0x3e8a3d71    # 0.27f

    mul-float v4, v11, v2

    const v2, 0x3dae147b    # 0.085f

    mul-float v8, v11, v2

    new-instance v7, Lo1/h;

    const/4 v14, 0x0

    const/16 v15, 0x1e

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v12, v7

    move/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Lo1/h;-><init>(IIIFF)V

    const/16 v8, 0x68

    iget-wide v2, v0, Lad/c;->m:J

    invoke-static/range {v1 .. v8}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    move-wide v12, v5

    const v0, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v4

    const/16 v14, 0x20

    shr-long v4, v12, v14

    long-to-int v15, v4

    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long/2addr v4, v14

    const-wide v18, 0xffffffffL

    and-long v6, v6, v18

    or-long/2addr v4, v6

    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    and-long v7, v12, v18

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move/from16 p0, v14

    move/from16 p1, v15

    int-to-long v14, v6

    shl-long v8, v9, p0

    and-long v14, v14, v18

    or-long/2addr v8, v14

    move-wide/from16 v25, v8

    move v8, v7

    move-wide/from16 v6, v25

    const/4 v9, 0x1

    const/16 v10, 0x1e0

    move v14, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v10}, Lo1/d;->u0(Lo1/d;JJJFII)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v4, v4, p0

    and-long v6, v6, v18

    or-long/2addr v4, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-float/2addr v7, v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v9, v9, p0

    and-long v6, v6, v18

    or-long/2addr v6, v9

    const/4 v9, 0x1

    const/16 v10, 0x1e0

    invoke-static/range {v1 .. v10}, Lo1/d;->u0(Lo1/d;JJJFII)V

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v9, v4

    shl-long v4, v5, p0

    and-long v6, v9, v18

    or-long/2addr v4, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    sub-float/2addr v6, v0

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v9, v9, p0

    and-long v6, v6, v18

    or-long/2addr v6, v9

    const/4 v9, 0x1

    const/16 v10, 0x1e0

    invoke-static/range {v1 .. v10}, Lo1/d;->u0(Lo1/d;JJJFII)V

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v9, v4

    shl-long v4, v5, p0

    and-long v6, v9, v18

    or-long/2addr v4, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float/2addr v6, v0

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    shl-long v6, v6, p0

    and-long v9, v9, v18

    or-long/2addr v6, v9

    const/4 v9, 0x1

    const/16 v10, 0x1e0

    invoke-static/range {v1 .. v10}, Lo1/d;->u0(Lo1/d;JJJFII)V

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v4, v8, v0

    const/4 v7, 0x0

    const/16 v8, 0x78

    move-wide v5, v12

    invoke-static/range {v1 .. v8}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll1/e;->b(J)F

    move-result v12

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v5

    const v2, 0x3ef5c28f    # 0.48f

    mul-float v13, v12, v2

    const v2, 0x3eae147b    # 0.34f

    mul-float v14, v12, v2

    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v2, v12

    add-float v3, v14, v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v3, v15

    new-instance v16, Lo1/h;

    sub-float v20, v14, v2

    const/16 v18, 0x0

    const/16 v19, 0x1e

    const/16 v17, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v21}, Lo1/h;-><init>(IIIFF)V

    const/16 v8, 0x68

    iget-wide v2, v0, Lad/c;->m:J

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v8}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    move-wide/from16 v25, v5

    move-wide v4, v2

    move-wide/from16 v2, v25

    const v0, 0x3e2e147b    # 0.17f

    mul-float/2addr v0, v12

    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    int-to-float v7, v6

    const/high16 v8, 0x42340000    # 45.0f

    mul-float/2addr v7, v8

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v8

    invoke-virtual {v8}, Lg5/m;->m()J

    move-result-wide v9

    invoke-virtual {v8}, Lg5/m;->h()Lm1/o;

    move-result-object v11

    invoke-interface {v11}, Lm1/o;->h()V

    :try_start_1
    iget-object v11, v8, Lg5/m;->m:Ljava/lang/Object;

    check-cast v11, Lm2/j;

    invoke-virtual {v11, v7, v2, v3}, Lm2/j;->w(FJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 p0, v8

    const/16 p1, 0x20

    shr-long v7, v2, p1

    long-to-int v7, v7

    :try_start_2
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    div-float v8, v0, v15

    sub-float/2addr v7, v8

    const-wide v16, 0xffffffffL

    move/from16 v18, v0

    move-object v8, v1

    and-long v0, v2, v16

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float/2addr v0, v13

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    move v7, v0

    int-to-long v0, v1

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move-wide/from16 v19, v0

    int-to-long v0, v7

    shl-long v19, v19, p1

    and-long v0, v0, v16

    or-long v0, v19, v0

    sub-float v7, v13, v14

    const v11, 0x3d75c28f    # 0.06f

    mul-float/2addr v11, v12

    add-float/2addr v11, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move-wide/from16 v19, v0

    int-to-long v0, v7

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move-wide/from16 v21, v0

    int-to-long v0, v7

    shl-long v21, v21, p1

    and-long v0, v0, v16

    or-long v0, v21, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v7, v7, v18

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    move-wide/from16 v21, v0

    int-to-long v0, v11

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v23, v0

    int-to-long v0, v7

    shl-long v23, v23, p1

    and-long v0, v0, v16

    or-long v0, v23, v0

    move-wide/from16 v16, v9

    const/4 v10, 0x0

    const/16 v11, 0xf0

    move-wide/from16 v25, v0

    move-object v1, v8

    move-wide/from16 v8, v25

    move v0, v6

    move/from16 p1, v12

    move-wide/from16 v6, v21

    move-wide/from16 v25, v19

    move/from16 v19, v13

    move-wide/from16 v12, v16

    move-wide/from16 v16, v2

    move-wide v2, v4

    move-wide/from16 v4, v25

    :try_start_3
    invoke-static/range {v1 .. v11}, Lo1/d;->g0(Lo1/d;JJJJLo1/e;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lg5/m;->h()Lm1/o;

    move-result-object v4

    invoke-interface {v4}, Lm1/o;->q()V

    move-object/from16 v4, p0

    invoke-virtual {v4, v12, v13}, Lg5/m;->w(J)V

    add-int/lit8 v6, v0, 0x1

    move/from16 v12, p1

    move-wide v4, v2

    move-wide/from16 v2, v16

    move/from16 v0, v18

    move/from16 v13, v19

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v4, p0

    :goto_3
    move-wide v12, v9

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v8

    goto :goto_3

    :goto_4
    invoke-static {v4, v12, v13}, Lm/a;->t(Lg5/m;J)V

    throw v0

    :cond_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll1/e;->b(J)F

    move-result v11

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v5

    const v2, 0x3db851ec    # 0.09f

    mul-float v16, v11, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float v4, v11, v2

    const/4 v7, 0x0

    const/16 v8, 0x78

    iget-wide v2, v0, Lad/c;->m:J

    invoke-static/range {v1 .. v8}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    move-wide/from16 v18, v5

    const v0, 0x3e75c28f    # 0.24f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const v4, 0x3ed70a3d    # 0.42f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v20, v4, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    mul-float v21, v5, v11

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x428c0000    # 70.0f

    sub-float/2addr v5, v4

    neg-float v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v7, 0x43340000    # 180.0f

    div-float v6, v5, v6

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/16 v6, 0x20

    shr-long v7, v18, v6

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    sub-float v7, v7, v21

    const-wide v8, 0xffffffffL

    and-long v12, v18, v8

    long-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    sub-float v10, v10, v21

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v12, v7

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v14, v7

    shl-long/2addr v12, v6

    and-long/2addr v14, v8

    or-long v23, v12, v14

    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float v7, v7, v21

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v12, v10

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v14, v7

    shl-long v6, v12, v6

    and-long/2addr v8, v14

    or-long/2addr v8, v6

    new-instance v10, Lo1/h;

    const/4 v14, 0x0

    const/16 v15, 0x1a

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Lo1/h;-><init>(IIIFF)V

    move-wide/from16 v6, v23

    invoke-interface/range {v1 .. v10}, Lo1/d;->s(JFFJJLo1/h;)V

    goto :goto_6

    :cond_3
    move/from16 v4, v20

    goto/16 :goto_5

    :cond_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Lm2/x;

    sget-object v2, Lm0/s0;->c:Lm2/w;

    new-instance v3, Lm0/r0;

    sget-object v4, Lb0/d1;->l:Lb0/d1;

    sget-object v7, Lm0/q0;->m:Lm0/q0;

    const/4 v8, 0x1

    iget-wide v5, v0, Lad/c;->m:J

    invoke-direct/range {v3 .. v8}, Lm0/r0;-><init>(Lb0/d1;JLm0/q0;Z)V

    invoke-interface {v1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Lj1/c;

    iget-object v2, v1, Lj1/c;->l:Lj1/a;

    invoke-interface {v2}, Lj1/a;->d()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lm0/d1;->q(Lj1/c;F)Lm1/e;

    move-result-object v3

    new-instance v4, Lm1/j;

    const/4 v5, 0x5

    iget-wide v6, v0, Lad/c;->m:J

    invoke-direct {v4, v5, v6, v7}, Lm1/j;-><init>(IJ)V

    new-instance v0, Lb0/f;

    invoke-direct {v0, v2, v3, v4}, Lb0/f;-><init>(FLm1/e;Lm1/j;)V

    invoke-virtual {v1, v0}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lad/c;->m:J

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x3a98

    cmp-long v0, v3, v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lad/h1;

    const-string v2, "it"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v1, Lad/h1;->a:J

    iget-wide v3, v0, Lad/c;->m:J

    sub-long/2addr v3, v1

    const-wide/32 v0, 0xea60

    cmp-long v0, v3, v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Lad/z0;

    const-string v2, "it"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v1, Lad/z0;->a:J

    iget-wide v3, v0, Lad/c;->m:J

    sub-long/2addr v3, v1

    const-wide/32 v0, 0x15f90

    cmp-long v0, v3, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Lad/u0;

    const-string v2, "it"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v1, Lad/u0;->a:J

    iget-wide v3, v0, Lad/c;->m:J

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x7530

    cmp-long v0, v3, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lad/c;->m:J

    sub-long/2addr v3, v1

    const-wide/32 v0, 0x927c0

    cmp-long v0, v3, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
