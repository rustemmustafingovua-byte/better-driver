.class public final Lp/s0;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/n;


# instance fields
.field public final synthetic B:I

.field public final C:Lp/j;

.field public final D:Lp/l0;

.field public E:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ly1/k0;Lp/j;Lp/l0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp/s0;->B:I

    .line 1
    invoke-direct {p0}, Le2/k;-><init>()V

    .line 2
    iput-object p2, p0, Lp/s0;->C:Lp/j;

    .line 3
    iput-object p3, p0, Lp/s0;->D:Lp/l0;

    .line 4
    invoke-virtual {p0, p1}, Le2/k;->M0(Le2/j;)Le2/j;

    return-void
.end method

.method public constructor <init>(Ly1/k0;Lp/j;Lp/l0;Lu/s0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp/s0;->B:I

    .line 5
    invoke-direct {p0}, Le2/k;-><init>()V

    .line 6
    iput-object p2, p0, Lp/s0;->C:Lp/j;

    .line 7
    iput-object p3, p0, Lp/s0;->D:Lp/l0;

    .line 8
    iput-object p4, p0, Lp/s0;->E:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1}, Le2/k;->M0(Le2/j;)Le2/j;

    return-void
.end method

.method public static P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method

.method public static Q0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 3

    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p4, p0}, Landroid/graphics/Canvas;->rotate(F)V

    const/16 p0, 0x20

    shr-long v1, p1, p0

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p4, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p3, p4}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method


# virtual methods
.method public R0()Landroid/graphics/RenderNode;
    .locals 2

    iget-object v0, p0, Lp/s0;->E:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "AndroidEdgeEffectOverscrollEffect"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lp/s0;->E:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final z(Le2/j0;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lp/s0;->B:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Le2/j0;->l:Lo1/b;

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v3

    iget-object v5, v0, Lp/s0;->C:Lp/j;

    invoke-virtual {v5, v3, v4}, Lp/j;->i(J)V

    iget-object v3, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v3}, Lg5/m;->h()Lm1/o;

    move-result-object v3

    invoke-static {v3}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, v5, Lp/j;->d:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ll1/e;->c(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Le2/j0;->b()V

    goto/16 :goto_19

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    iget-object v6, v0, Lp/s0;->D:Lp/l0;

    if-nez v4, :cond_9

    iget-object v0, v6, Lp/l0;->d:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1
    iget-object v0, v6, Lp/l0;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    iget-object v0, v6, Lp/l0;->f:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_3
    iget-object v0, v6, Lp/l0;->g:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_4
    iget-object v0, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_5
    iget-object v0, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_6
    iget-object v0, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_7
    iget-object v0, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_8
    invoke-virtual {v1}, Le2/j0;->b()V

    goto/16 :goto_19

    :cond_9
    sget v4, Lp/c0;->a:F

    invoke-virtual {v1, v4}, Le2/j0;->V(F)F

    move-result v4

    iget-object v7, v6, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_b

    iget-object v7, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, v6, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_0

    :cond_a
    move v7, v9

    goto :goto_1

    :cond_b
    :goto_0
    move v7, v8

    :goto_1
    iget-object v10, v6, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v6, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_2

    :cond_c
    move v10, v9

    goto :goto_3

    :cond_d
    :goto_2
    move v10, v8

    :goto_3
    if-eqz v7, :cond_e

    if-eqz v10, :cond_e

    invoke-virtual {v0}, Lp/s0;->R0()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-virtual {v11, v9, v9, v12, v13}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_4

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v0}, Lp/s0;->R0()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-static {v4}, Ll9/a;->z(F)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v12

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-virtual {v11, v9, v9, v13, v12}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_4

    :cond_f
    if-eqz v10, :cond_33

    invoke-virtual {v0}, Lp/s0;->R0()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-static {v4}, Ll9/a;->z(F)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v13

    invoke-virtual {v11, v9, v9, v12, v14}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    :goto_4
    invoke-virtual {v0}, Lp/s0;->R0()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v11

    iget-object v12, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v12

    const/high16 v13, 0x42b40000    # 90.0f

    if-eqz v12, :cond_11

    iget-object v12, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    if-nez v12, :cond_10

    sget-object v12, Lr/m1;->m:Lr/m1;

    invoke-virtual {v6, v12}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v12

    iput-object v12, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    :cond_10
    invoke-static {v13, v12, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->finish()V

    :cond_11
    iget-object v12, v6, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v12

    const/high16 v14, 0x43870000    # 270.0f

    const-wide v18, 0xffffffffL

    const/16 v15, 0x1f

    if-eqz v12, :cond_16

    invoke-virtual {v6}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v12

    invoke-static {v14, v12, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v16

    iget-object v13, v6, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual {v5}, Lp/j;->c()J

    move-result-wide v20

    move v13, v10

    and-long v9, v20, v18

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    iget-object v10, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    if-nez v10, :cond_12

    sget-object v10, Lr/m1;->m:Lr/m1;

    invoke-virtual {v6, v10}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v10

    iput-object v10, v6, Lp/l0;->j:Landroid/widget/EdgeEffect;

    :cond_12
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v15, :cond_13

    invoke-static {v12}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v12

    :goto_5
    move/from16 v21, v4

    goto :goto_6

    :cond_13
    const/4 v12, 0x0

    goto :goto_5

    :goto_6
    int-to-float v4, v8

    sub-float/2addr v4, v9

    if-lt v14, v15, :cond_14

    invoke-static {v10, v12, v4}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    goto :goto_7

    :cond_14
    invoke-virtual {v10, v12, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_7

    :cond_15
    move/from16 v21, v4

    move v13, v10

    goto :goto_7

    :cond_16
    move/from16 v21, v4

    move v13, v10

    const/16 v16, 0x0

    :goto_7
    iget-object v4, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v4

    const/high16 v9, 0x43340000    # 180.0f

    if-eqz v4, :cond_18

    iget-object v4, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_17

    sget-object v4, Lr/m1;->l:Lr/m1;

    invoke-virtual {v6, v4}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v4

    iput-object v4, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    :cond_17
    invoke-static {v9, v4, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    :cond_18
    iget-object v4, v6, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v4

    const/16 v10, 0x20

    if-eqz v4, :cond_1e

    invoke-virtual {v6}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v4

    const/4 v12, 0x0

    invoke-static {v12, v4, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v14

    if-nez v14, :cond_1a

    if-eqz v16, :cond_19

    goto :goto_8

    :cond_19
    const/16 v16, 0x0

    goto :goto_9

    :cond_1a
    :goto_8
    move/from16 v16, v8

    :goto_9
    iget-object v12, v6, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {v5}, Lp/j;->c()J

    move-result-wide v22

    shr-long v8, v22, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget-object v9, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_1b

    sget-object v9, Lr/m1;->l:Lr/m1;

    invoke-virtual {v6, v9}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v6, Lp/l0;->h:Landroid/widget/EdgeEffect;

    :cond_1b
    move/from16 v22, v10

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v15, :cond_1c

    invoke-static {v4}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v4

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    :goto_a
    if-lt v10, v15, :cond_1d

    invoke-static {v9, v4, v8}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    goto :goto_b

    :cond_1d
    invoke-virtual {v9, v4, v8}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_b

    :cond_1e
    move/from16 v22, v10

    :goto_b
    iget-object v4, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_1f

    sget-object v4, Lr/m1;->m:Lr/m1;

    invoke-virtual {v6, v4}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v4

    iput-object v4, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    :cond_1f
    const/high16 v8, 0x43870000    # 270.0f

    invoke-static {v8, v4, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    :cond_20
    iget-object v4, v6, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v6}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v4

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v8, v4, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v8

    if-nez v8, :cond_22

    if-eqz v16, :cond_21

    goto :goto_c

    :cond_21
    const/16 v16, 0x0

    goto :goto_d

    :cond_22
    :goto_c
    const/16 v16, 0x1

    :goto_d
    iget-object v8, v6, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v5}, Lp/j;->c()J

    move-result-wide v8

    and-long v8, v8, v18

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget-object v9, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_23

    sget-object v9, Lr/m1;->m:Lr/m1;

    invoke-virtual {v6, v9}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v6, Lp/l0;->k:Landroid/widget/EdgeEffect;

    :cond_23
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v15, :cond_24

    invoke-static {v4}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v4

    goto :goto_e

    :cond_24
    const/4 v4, 0x0

    :goto_e
    if-lt v10, v15, :cond_25

    invoke-static {v9, v4, v8}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    goto :goto_f

    :cond_25
    invoke-virtual {v9, v4, v8}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_26
    :goto_f
    iget-object v4, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_27

    sget-object v4, Lr/m1;->l:Lr/m1;

    invoke-virtual {v6, v4}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v4

    iput-object v4, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    :cond_27
    const/4 v8, 0x0

    invoke-static {v8, v4, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_10

    :cond_28
    const/4 v8, 0x0

    :goto_10
    iget-object v4, v6, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v6}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v4

    const/high16 v14, 0x43340000    # 180.0f

    invoke-static {v14, v4, v11}, Lp/s0;->P0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v9

    if-nez v9, :cond_2a

    if-eqz v16, :cond_29

    goto :goto_11

    :cond_29
    const/4 v9, 0x0

    goto :goto_12

    :cond_2a
    :goto_11
    const/4 v9, 0x1

    :goto_12
    iget-object v10, v6, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-eqz v10, :cond_2e

    invoke-virtual {v5}, Lp/j;->c()J

    move-result-wide v16

    move v10, v9

    shr-long v8, v16, v22

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget-object v9, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_2b

    sget-object v9, Lr/m1;->l:Lr/m1;

    invoke-virtual {v6, v9}, Lp/l0;->a(Lr/m1;)Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v6, Lp/l0;->i:Landroid/widget/EdgeEffect;

    :cond_2b
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v15, :cond_2c

    invoke-static {v4}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v4

    move v12, v4

    :goto_13
    const/4 v4, 0x1

    goto :goto_14

    :cond_2c
    const/4 v12, 0x0

    goto :goto_13

    :goto_14
    int-to-float v4, v4

    sub-float/2addr v4, v8

    if-lt v6, v15, :cond_2d

    invoke-static {v9, v12, v4}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    goto :goto_15

    :cond_2d
    invoke-virtual {v9, v12, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_15

    :cond_2e
    move v10, v9

    :goto_15
    move/from16 v16, v10

    :cond_2f
    if-eqz v16, :cond_30

    invoke-virtual {v5}, Lp/j;->d()V

    :cond_30
    if-eqz v13, :cond_31

    const/4 v12, 0x0

    goto :goto_16

    :cond_31
    move/from16 v12, v21

    :goto_16
    if-eqz v7, :cond_32

    const/4 v4, 0x0

    goto :goto_17

    :cond_32
    move/from16 v4, v21

    :goto_17
    invoke-virtual {v1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v5

    new-instance v6, Lm1/a;

    invoke-direct {v6}, Lm1/a;-><init>()V

    iput-object v11, v6, Lm1/a;->a:Landroid/graphics/Canvas;

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v7

    iget-object v9, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v9}, Lg5/m;->j()Lb3/c;

    move-result-object v9

    iget-object v10, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v10}, Lg5/m;->k()Lb3/m;

    move-result-object v10

    iget-object v11, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v11}, Lg5/m;->h()Lm1/o;

    move-result-object v11

    iget-object v13, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v13}, Lg5/m;->m()J

    move-result-wide v13

    iget-object v15, v2, Lo1/b;->m:Lg5/m;

    iget-object v0, v15, Lg5/m;->n:Ljava/lang/Object;

    move-object/from16 v16, v3

    move-object v3, v0

    check-cast v3, Lp1/b;

    invoke-virtual {v15, v1}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v15, v5}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v15, v6}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v15, v7, v8}, Lg5/m;->w(J)V

    const/4 v0, 0x0

    iput-object v0, v15, Lg5/m;->n:Ljava/lang/Object;

    invoke-virtual {v6}, Lm1/a;->h()V

    :try_start_0
    iget-object v0, v2, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    invoke-virtual {v0, v12, v4}, Lm2/j;->F(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Le2/j0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v2, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    neg-float v1, v12

    neg-float v4, v4

    invoke-virtual {v0, v1, v4}, Lm2/j;->F(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Lm1/a;->q()V

    iget-object v0, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v0, v9}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v0, v10}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v0, v11}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v0, v13, v14}, Lg5/m;->w(J)V

    iput-object v3, v0, Lg5/m;->n:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lp/s0;->R0()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    move-result v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Lp/s0;->R0()Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_18

    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, v2, Lo1/b;->m:Lg5/m;

    iget-object v1, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lm2/j;

    neg-float v5, v12

    neg-float v4, v4

    invoke-virtual {v1, v5, v4}, Lm2/j;->F(FF)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_18
    invoke-virtual {v6}, Lm1/a;->q()V

    iget-object v1, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v1, v9}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v1, v10}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v1, v11}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v1, v13, v14}, Lg5/m;->w(J)V

    iput-object v3, v1, Lg5/m;->n:Ljava/lang/Object;

    throw v0

    :cond_33
    invoke-virtual {v1}, Le2/j0;->b()V

    :goto_19
    return-void

    :pswitch_0
    iget-object v2, v0, Lp/s0;->E:Ljava/lang/Object;

    check-cast v2, Lu/s0;

    iget-object v3, v1, Le2/j0;->l:Lo1/b;

    invoke-interface {v3}, Lo1/d;->d()J

    move-result-wide v4

    iget-object v6, v0, Lp/s0;->C:Lp/j;

    invoke-virtual {v6, v4, v5}, Lp/j;->i(J)V

    invoke-interface {v3}, Lo1/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ll1/e;->c(J)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v1}, Le2/j0;->b()V

    goto/16 :goto_1f

    :cond_34
    invoke-virtual {v1}, Le2/j0;->b()V

    iget-object v4, v6, Lp/j;->d:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    iget-object v4, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v4}, Lg5/m;->h()Lm1/o;

    move-result-object v4

    invoke-static {v4}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v4

    iget-object v0, v0, Lp/s0;->D:Lp/l0;

    iget-object v5, v0, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v5}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v5

    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    const/4 v10, 0x0

    if-eqz v5, :cond_35

    invoke-virtual {v0}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-interface {v3}, Lo1/d;->d()J

    move-result-wide v11

    and-long/2addr v11, v8

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    neg-float v11, v11

    invoke-virtual {v1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v12

    invoke-virtual {v2, v12}, Lu/s0;->a(Lb3/m;)F

    move-result v12

    invoke-virtual {v1, v12}, Le2/j0;->V(F)F

    move-result v12

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v13, v11

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    shl-long/2addr v13, v7

    and-long/2addr v11, v8

    or-long/2addr v11, v13

    const/high16 v13, 0x43870000    # 270.0f

    invoke-static {v13, v11, v12, v5, v4}, Lp/s0;->Q0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v5

    goto :goto_1a

    :cond_35
    move v5, v10

    :goto_1a
    iget-object v11, v0, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v11}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_38

    invoke-virtual {v0}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v11

    iget v14, v2, Lu/s0;->b:F

    invoke-virtual {v1, v14}, Le2/j0;->V(F)F

    move-result v14

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 p0, v7

    move-wide/from16 v16, v8

    int-to-long v7, v15

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v14, v9

    shl-long v7, v7, p0

    and-long v14, v14, v16

    or-long/2addr v7, v14

    invoke-static {v12, v7, v8, v11, v4}, Lp/s0;->Q0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v7

    if-nez v7, :cond_37

    if-eqz v5, :cond_36

    goto :goto_1b

    :cond_36
    move v5, v10

    goto :goto_1c

    :cond_37
    :goto_1b
    move v5, v13

    goto :goto_1c

    :cond_38
    move/from16 p0, v7

    move-wide/from16 v16, v8

    :goto_1c
    iget-object v7, v0, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v0}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-interface {v3}, Lo1/d;->d()J

    move-result-wide v8

    shr-long v8, v8, p0

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v8}, Ll9/a;->z(F)I

    move-result v8

    invoke-virtual {v1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v9

    invoke-virtual {v2, v9}, Lu/s0;->b(Lb3/m;)F

    move-result v9

    int-to-float v8, v8

    neg-float v8, v8

    invoke-virtual {v1, v9}, Le2/j0;->V(F)F

    move-result v9

    add-float/2addr v9, v8

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v11, v11, p0

    and-long v8, v8, v16

    or-long/2addr v8, v11

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-static {v11, v8, v9, v7, v4}, Lp/s0;->Q0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v7

    if-nez v7, :cond_3a

    if-eqz v5, :cond_39

    goto :goto_1d

    :cond_39
    move v5, v10

    goto :goto_1e

    :cond_3a
    :goto_1d
    move v5, v13

    :cond_3b
    :goto_1e
    iget-object v7, v0, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->f(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v0}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v0

    iget v2, v2, Lu/s0;->d:F

    invoke-virtual {v1, v2}, Le2/j0;->V(F)F

    move-result v1

    invoke-interface {v3}, Lo1/d;->d()J

    move-result-wide v7

    shr-long v7, v7, p0

    long-to-int v2, v7

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    neg-float v2, v2

    invoke-interface {v3}, Lo1/d;->d()J

    move-result-wide v7

    and-long v7, v7, v16

    long-to-int v3, v7

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v7, v3

    shl-long v1, v1, p0

    and-long v7, v7, v16

    or-long/2addr v1, v7

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v3, v1, v2, v0, v4}, Lp/s0;->Q0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_3c

    if-eqz v5, :cond_3d

    :cond_3c
    move v10, v13

    :cond_3d
    move v5, v10

    :cond_3e
    if-eqz v5, :cond_3f

    invoke-virtual {v6}, Lp/j;->d()V

    :cond_3f
    :goto_1f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
