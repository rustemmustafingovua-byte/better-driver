.class public final Lr/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr/n2;


# direct methods
.method public constructor <init>(Lr/n2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/l2;->a:Lr/n2;

    return-void
.end method


# virtual methods
.method public final a(IJ)J
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v1, v1, Lr/l2;->a:Lr/n2;

    iput v0, v1, Lr/n2;->j:I

    iget-object v4, v1, Lr/n2;->b:Lp/j;

    if-eqz v4, :cond_36

    iget-object v5, v1, Lr/n2;->a:Lr/h2;

    invoke-interface {v5}, Lr/h2;->d()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lr/n2;->a:Lr/h2;

    invoke-interface {v5}, Lr/h2;->c()Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_0
    iget v0, v1, Lr/n2;->j:I

    iget-object v1, v1, Lr/n2;->m:Lb0/a;

    iget-object v5, v4, Lp/j;->c:Lp/l0;

    iget-wide v6, v4, Lp/j;->g:J

    invoke-static {v6, v7}, Ll1/e;->c(J)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v1, Lb0/a;->m:Ljava/lang/Object;

    check-cast v0, Lr/n2;

    iget-object v1, v0, Lr/n2;->k:Lr/s1;

    iget v4, v0, Lr/n2;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lr/n2;->c(Lr/s1;JI)J

    move-result-wide v0

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    iget-wide v0, v2, Ll1/b;->a:J

    return-wide v0

    :cond_1
    iget-boolean v6, v4, Lp/j;->f:Z

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_6

    iget-object v6, v5, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v7, v8}, Lp/j;->f(J)F

    :cond_2
    iget-object v6, v5, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v7, v8}, Lp/j;->g(J)F

    :cond_3
    iget-object v6, v5, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v7, v8}, Lp/j;->h(J)F

    :cond_4
    iget-object v6, v5, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v6}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v7, v8}, Lp/j;->e(J)F

    :cond_5
    iput-boolean v9, v4, Lp/j;->f:Z

    :cond_6
    sget v6, Lp/l;->a:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    const/high16 v6, 0x40800000    # 4.0f

    goto :goto_0

    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v6, v2, v3}, Ll1/b;->f(FJ)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long v14, v2, v12

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-nez v15, :cond_9

    move-wide/from16 p0, v12

    :cond_8
    move/from16 v12, v16

    goto/16 :goto_1

    :cond_9
    iget-object v15, v5, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    cmpg-float v15, v15, v16

    if-gez v15, :cond_c

    invoke-virtual {v4, v10, v11}, Lp/j;->h(J)F

    move-result v15

    move-wide/from16 p0, v12

    iget-object v12, v5, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v5}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->finish()V

    :cond_a
    and-long v12, v10, p0

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    cmpg-float v12, v15, v12

    if-nez v12, :cond_b

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    goto :goto_1

    :cond_b
    div-float v12, v15, v6

    goto :goto_1

    :cond_c
    move-wide/from16 p0, v12

    iget-object v12, v5, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    cmpl-float v12, v12, v16

    if-lez v12, :cond_8

    invoke-virtual {v4, v10, v11}, Lp/j;->e(J)F

    move-result v12

    iget-object v13, v5, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v5}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    :cond_d
    and-long v7, v10, p0

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    cmpg-float v7, v12, v7

    if-nez v7, :cond_e

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    goto :goto_1

    :cond_e
    div-float/2addr v12, v6

    :goto_1
    const/16 v13, 0x20

    shr-long v7, v2, v13

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpg-float v8, v8, v16

    if-nez v8, :cond_10

    :cond_f
    move/from16 v6, v16

    goto :goto_2

    :cond_10
    iget-object v8, v5, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpg-float v8, v8, v16

    if-gez v8, :cond_13

    invoke-virtual {v4, v10, v11}, Lp/j;->f(J)F

    move-result v8

    iget-object v15, v5, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-nez v15, :cond_11

    invoke-virtual {v5}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    :cond_11
    shr-long/2addr v10, v13

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    cmpg-float v10, v8, v10

    if-nez v10, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_2

    :cond_12
    div-float v6, v8, v6

    goto :goto_2

    :cond_13
    iget-object v8, v5, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    cmpl-float v8, v8, v16

    if-lez v8, :cond_f

    invoke-virtual {v4, v10, v11}, Lp/j;->g(J)F

    move-result v8

    iget-object v15, v5, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual {v5}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    :cond_14
    shr-long/2addr v10, v13

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    cmpg-float v10, v8, v10

    if-nez v10, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v10, v6

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move v12, v13

    move v8, v14

    int-to-long v13, v6

    shl-long/2addr v10, v12

    and-long v13, v13, p0

    or-long/2addr v10, v13

    const-wide/16 v13, 0x0

    invoke-static {v10, v11, v13, v14}, Ll1/b;->b(JJ)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v4}, Lp/j;->d()V

    :cond_15
    invoke-static {v2, v3, v10, v11}, Ll1/b;->d(JJ)J

    move-result-wide v2

    iget-object v1, v1, Lb0/a;->m:Ljava/lang/Object;

    check-cast v1, Lr/n2;

    iget-object v6, v1, Lr/n2;->k:Lr/s1;

    iget v13, v1, Lr/n2;->j:I

    invoke-virtual {v1, v6, v2, v3, v13}, Lr/n2;->c(Lr/s1;JI)J

    move-result-wide v13

    new-instance v1, Ll1/b;

    invoke-direct {v1, v13, v14}, Ll1/b;-><init>(J)V

    iget-wide v13, v1, Ll1/b;->a:J

    move-wide/from16 v17, v10

    invoke-static {v2, v3, v13, v14}, Ll1/b;->d(JJ)J

    move-result-wide v9

    move v6, v12

    move-wide/from16 p2, v13

    shr-long v12, v2, v6

    long-to-int v11, v12

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_16

    and-long v11, v2, p0

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_16

    goto :goto_3

    :cond_16
    shr-long v11, p2, v6

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_17

    and-long v11, p2, p0

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v16

    if-nez v11, :cond_17

    goto :goto_3

    :cond_17
    iget-object v11, v5, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v5, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v5, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-nez v11, :cond_18

    iget-object v11, v5, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v11

    if-eqz v11, :cond_19

    :cond_18
    invoke-virtual {v4}, Lp/j;->a()V

    :cond_19
    :goto_3
    const/4 v11, 0x0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    shr-long v12, v9, v6

    long-to-int v0, v12

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const/high16 v12, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v12

    const/high16 v13, -0x41000000    # -0.5f

    if-lez v6, :cond_1a

    invoke-virtual {v4, v9, v10}, Lp/j;->f(J)F

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_1a
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float v0, v0, v13

    if-gez v0, :cond_1b

    invoke-virtual {v4, v9, v10}, Lp/j;->g(J)F

    goto :goto_4

    :cond_1b
    move v0, v11

    :goto_5
    and-long v14, v9, p0

    long-to-int v6, v14

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    cmpl-float v12, v14, v12

    if-lez v12, :cond_1c

    invoke-virtual {v4, v9, v10}, Lp/j;->h(J)F

    :goto_6
    move v6, v1

    goto :goto_7

    :cond_1c
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    cmpg-float v6, v6, v13

    if-gez v6, :cond_1d

    invoke-virtual {v4, v9, v10}, Lp/j;->e(J)F

    goto :goto_6

    :cond_1d
    move v6, v11

    :goto_7
    if-nez v0, :cond_1e

    if-eqz v6, :cond_1f

    :cond_1e
    move v0, v1

    :goto_8
    const-wide/16 v13, 0x0

    goto :goto_9

    :cond_1f
    move v0, v11

    goto :goto_8

    :goto_9
    invoke-static {v2, v3, v13, v14}, Ll1/b;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, v5, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v2, v2, v16

    if-gez v2, :cond_22

    invoke-virtual {v5}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    instance-of v6, v2, Lp/r0;

    if-eqz v6, :cond_20

    check-cast v2, Lp/r0;

    iget v6, v2, Lp/r0;->b:F

    add-float/2addr v6, v3

    iput v6, v2, Lp/r0;->b:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, v2, Lp/r0;->a:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21

    invoke-virtual {v2}, Lp/r0;->onRelease()V

    goto :goto_a

    :cond_20
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_21
    :goto_a
    iget-object v2, v5, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v2

    goto :goto_b

    :cond_22
    move v2, v11

    :goto_b
    iget-object v3, v5, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v16

    if-lez v3, :cond_27

    invoke-virtual {v5}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    instance-of v7, v3, Lp/r0;

    if-eqz v7, :cond_23

    check-cast v3, Lp/r0;

    iget v7, v3, Lp/r0;->b:F

    add-float/2addr v7, v6

    iput v7, v3, Lp/r0;->b:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Lp/r0;->a:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_24

    invoke-virtual {v3}, Lp/r0;->onRelease()V

    goto :goto_c

    :cond_23
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_24
    :goto_c
    if-nez v2, :cond_26

    iget-object v2, v5, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_d

    :cond_25
    move v2, v11

    goto :goto_e

    :cond_26
    :goto_d
    move v2, v1

    :cond_27
    :goto_e
    iget-object v3, v5, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float v3, v3, v16

    if-gez v3, :cond_2c

    invoke-virtual {v5}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    instance-of v7, v3, Lp/r0;

    if-eqz v7, :cond_28

    check-cast v3, Lp/r0;

    iget v7, v3, Lp/r0;->b:F

    add-float/2addr v7, v6

    iput v7, v3, Lp/r0;->b:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Lp/r0;->a:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_29

    invoke-virtual {v3}, Lp/r0;->onRelease()V

    goto :goto_f

    :cond_28
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_29
    :goto_f
    if-nez v2, :cond_2b

    iget-object v2, v5, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_10

    :cond_2a
    move v2, v11

    goto :goto_11

    :cond_2b
    :goto_10
    move v2, v1

    :cond_2c
    :goto_11
    iget-object v3, v5, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v16

    if-lez v3, :cond_31

    invoke-virtual {v5}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    instance-of v7, v3, Lp/r0;

    if-eqz v7, :cond_2d

    check-cast v3, Lp/r0;

    iget v7, v3, Lp/r0;->b:F

    add-float/2addr v7, v6

    iput v7, v3, Lp/r0;->b:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Lp/r0;->a:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2e

    invoke-virtual {v3}, Lp/r0;->onRelease()V

    goto :goto_12

    :cond_2d
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_2e
    :goto_12
    if-nez v2, :cond_30

    iget-object v2, v5, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_13

    :cond_2f
    move v2, v11

    goto :goto_14

    :cond_30
    :goto_13
    move v2, v1

    :cond_31
    :goto_14
    if-nez v2, :cond_33

    if-eqz v0, :cond_32

    goto :goto_15

    :cond_32
    move v9, v11

    goto :goto_16

    :cond_33
    :goto_15
    move v9, v1

    :goto_16
    move v0, v9

    :cond_34
    if-eqz v0, :cond_35

    invoke-virtual {v4}, Lp/j;->d()V

    :cond_35
    move-wide/from16 v2, p2

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v2, v3}, Ll1/b;->e(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_36
    iget-object v4, v1, Lr/n2;->k:Lr/s1;

    invoke-virtual {v1, v4, v2, v3, v0}, Lr/n2;->c(Lr/s1;JI)J

    move-result-wide v0

    return-wide v0
.end method
