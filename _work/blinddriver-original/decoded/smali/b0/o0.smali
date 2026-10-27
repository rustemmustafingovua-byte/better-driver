.class public final synthetic Lb0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/v1;


# direct methods
.method public synthetic constructor <init>(Lm0/v1;I)V
    .locals 0

    iput p2, p0, Lb0/o0;->l:I

    iput-object p1, p0, Lb0/o0;->m:Lm0/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lb0/o0;->l:I

    const/4 v2, 0x0

    iget-object v0, v0, Lb0/o0;->m:Lm0/v1;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lc2/u;

    iget-object v3, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v3, :cond_7

    iget-boolean v5, v3, Lb0/r1;->p:Z

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    iget-object v5, v0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v6

    iget-wide v6, v6, Lu2/x;->b:J

    sget v8, Lp2/l0;->c:I

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-interface {v5, v6}, Lu2/q;->s(I)I

    move-result v5

    iget-object v6, v0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v7

    iget-wide v9, v7, Lu2/x;->b:J

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    long-to-int v7, v9

    invoke-interface {v6, v7}, Lu2/q;->s(I)I

    move-result v6

    iget-object v7, v0, Lm0/v1;->d:Lb0/r1;

    const-wide/16 v9, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lb0/r1;->c()Lc2/u;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lm0/v1;->l(Z)J

    move-result-wide v13

    invoke-interface {v7, v13, v14}, Lc2/u;->R(J)J

    move-result-wide v13

    goto :goto_1

    :cond_1
    move-wide v13, v9

    :goto_1
    iget-object v7, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lb0/r1;->c()Lc2/u;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v2}, Lm0/v1;->l(Z)J

    move-result-wide v9

    invoke-interface {v7, v9, v10}, Lc2/u;->R(J)J

    move-result-wide v9

    :cond_2
    iget-object v2, v0, Lm0/v1;->d:Lb0/r1;

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lb0/r1;->c()Lc2/u;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lb0/r1;->d()Lb0/z2;

    move-result-object v15

    if-eqz v15, :cond_3

    iget-object v15, v15, Lb0/z2;->a:Lp2/j0;

    invoke-virtual {v15, v5}, Lp2/j0;->c(I)Ll1/c;

    move-result-object v5

    iget v5, v5, Ll1/c;->b:F

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 p1, v5

    int-to-long v4, v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v16, v7

    move/from16 p1, v8

    int-to-long v7, v15

    shl-long v4, v4, p1

    and-long/2addr v7, v11

    or-long/2addr v4, v7

    invoke-interface {v2, v4, v5}, Lc2/u;->R(J)J

    move-result-wide v4

    and-long/2addr v4, v11

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_3

    :cond_4
    move/from16 v16, v7

    move/from16 p1, v8

    move/from16 v2, v16

    :goto_3
    iget-object v4, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lb0/r1;->c()Lc2/u;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lb0/r1;->d()Lb0/z2;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v5, Lb0/z2;->a:Lp2/j0;

    invoke-virtual {v5, v6}, Lp2/j0;->c(I)Ll1/c;

    move-result-object v5

    iget v5, v5, Ll1/c;->b:F

    goto :goto_4

    :cond_5
    move/from16 v5, v16

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-wide/from16 v17, v11

    int-to-long v11, v5

    shl-long v5, v6, p1

    and-long v7, v11, v17

    or-long/2addr v5, v7

    invoke-interface {v4, v5, v6}, Lc2/u;->R(J)J

    move-result-wide v4

    and-long v4, v4, v17

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    goto :goto_5

    :cond_6
    move-wide/from16 v17, v11

    move/from16 v7, v16

    :goto_5
    shr-long v4, v13, p1

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    shr-long v11, v9, p1

    long-to-int v6, v11

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    and-long v6, v13, v17

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    and-long v7, v9, v17

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/16 v7, 0x19

    int-to-float v7, v7

    iget-object v3, v3, Lb0/r1;->a:Lb0/b2;

    iget-object v3, v3, Lb0/b2;->g:Lb3/c;

    invoke-interface {v3}, Lb3/c;->a()F

    move-result v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    new-instance v6, Ll1/c;

    invoke-direct {v6, v5, v2, v4, v3}, Ll1/c;-><init>(FFFF)V

    goto :goto_6

    :cond_7
    sget-object v6, Ll1/c;->e:Ll1/c;

    :goto_6
    iget-object v0, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lb0/r1;->c()Lc2/u;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v6, v0, v1}, Lh0/h;->e(Ll1/c;Lc2/u;Lc2/u;)Ll1/c;

    move-result-object v4

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v4, 0x0

    :goto_8
    return-object v4

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ll1/b;

    invoke-virtual {v0}, Lm0/v1;->r()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    new-instance v1, Lb0/u0;

    invoke-direct {v1, v2, v0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
