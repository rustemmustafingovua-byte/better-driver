.class public final synthetic Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lm0/r;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lm0/a;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/a;->o:Ljava/lang/Object;

    iput-boolean p2, p0, Lm0/a;->m:Z

    iput-boolean p3, p0, Lm0/a;->n:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLnd/h;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lm0/a;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm0/a;->m:Z

    iput-object p2, p0, Lm0/a;->o:Ljava/lang/Object;

    iput-boolean p3, p0, Lm0/a;->n:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lm0/a;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lm0/a;->o:Ljava/lang/Object;

    check-cast v1, Lnd/h;

    iget-wide v2, v1, Lnd/h;->a:J

    iget v4, v1, Lnd/h;->b:F

    move-object/from16 v5, p1

    check-cast v5, Lo1/d;

    const-string v6, "$this$Canvas"

    invoke-static {v5, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lo1/d;->d()J

    move-result-wide v6

    const/16 v13, 0x20

    shr-long/2addr v6, v13

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-interface {v5}, Lo1/d;->d()J

    move-result-wide v7

    const-wide v14, 0xffffffffL

    and-long/2addr v7, v14

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    iget-boolean v8, v0, Lm0/a;->m:Z

    if-eqz v8, :cond_0

    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v9, 0x3f333333    # 0.7f

    :goto_0
    mul-float/2addr v7, v9

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long/2addr v9, v13

    and-long/2addr v6, v14

    or-long v16, v9, v6

    const/16 v18, 0x0

    if-eqz v8, :cond_1

    move/from16 v6, v18

    goto :goto_1

    :cond_1
    neg-float v6, v4

    :goto_1
    invoke-interface {v5}, Lo1/d;->Y()Lg5/m;

    move-result-object v7

    invoke-virtual {v7}, Lg5/m;->m()J

    move-result-wide v9

    invoke-virtual {v7}, Lg5/m;->h()Lm1/o;

    move-result-object v11

    invoke-interface {v11}, Lm1/o;->h()V

    :try_start_0
    iget-object v11, v7, Lg5/m;->m:Ljava/lang/Object;

    check-cast v11, Lm2/j;

    move/from16 p1, v13

    move-wide/from16 v19, v14

    shr-long v13, v16, p1

    long-to-int v12, v13

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    and-long v13, v16, v19

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Lm2/j;->F(FF)V

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v6, v12, v13}, Lm2/j;->w(FJ)V

    iget-boolean v13, v1, Lnd/h;->d:Z

    iget-boolean v1, v1, Lnd/h;->c:Z

    shr-long v14, v2, p1

    long-to-int v6, v14

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    neg-float v6, v6

    and-long v2, v2, v19

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v11, v6, v2}, Lm2/j;->F(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v2, v7

    :try_start_1
    sget-wide v6, Lnd/k;->a:J

    const v3, -0x3b448000    # -1500.0f

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    const v14, -0x3af68000    # -2200.0f

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v22, v3

    move/from16 v21, v4

    int-to-long v3, v15

    shl-long v11, v11, p1

    and-long v3, v3, v19

    or-long/2addr v3, v11

    const v11, 0x45834000    # 4200.0f

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    const/high16 v15, 0x45480000    # 3200.0f

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v23, v14

    int-to-long v14, v15

    shl-long v11, v11, p1

    and-long v14, v14, v19

    or-long/2addr v11, v14

    move-wide v14, v9

    move-wide v10, v11

    const/16 v12, 0x78

    move-wide/from16 v26, v3

    move v3, v8

    move-wide/from16 v8, v26

    :try_start_2
    invoke-static/range {v5 .. v12}, Lo1/d;->h(Lo1/d;JJJI)V

    sget-wide v6, Lnd/k;->b:J

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    const/high16 v4, -0x3be00000    # -640.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    shl-long v8, v8, p1

    and-long v10, v10, v19

    or-long/2addr v8, v10

    const/high16 v4, 0x43d20000    # 420.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    move/from16 v24, v3

    int-to-long v3, v4

    shl-long v10, v10, p1

    and-long v3, v3, v19

    or-long/2addr v10, v3

    const/16 v12, 0x78

    invoke-static/range {v5 .. v12}, Lo1/d;->h(Lo1/d;JJJI)V

    const/high16 v3, -0x3c100000    # -480.0f

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/high16 v8, -0x3b860000    # -1000.0f

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v3, v3, p1

    and-long v8, v8, v19

    or-long/2addr v8, v3

    const/high16 v3, 0x43dc0000    # 440.0f

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/high16 v25, 0x438c0000    # 280.0f

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long v3, v3, p1

    and-long v10, v10, v19

    or-long/2addr v10, v3

    const/16 v12, 0x78

    invoke-static/range {v5 .. v12}, Lo1/d;->h(Lo1/d;JJJI)V

    const v3, 0x44548000    # 850.0f

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/high16 v8, -0x3c5b0000    # -330.0f

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v3, v3, p1

    and-long v8, v8, v19

    or-long/2addr v8, v3

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long v3, v3, p1

    and-long v10, v10, v19

    or-long/2addr v10, v3

    const/16 v12, 0x78

    invoke-static/range {v5 .. v12}, Lo1/d;->h(Lo1/d;JJJI)V

    sget-object v3, Lnd/k;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v6, v6, p1

    and-long v8, v8, v19

    or-long/2addr v6, v8

    const v8, 0x4528c000    # 2700.0f

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    shl-long v8, v8, p1

    and-long v10, v10, v19

    or-long/2addr v8, v10

    invoke-static {v5, v6, v7, v8, v9}, Lnd/k;->c(Lo1/d;JJ)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    sget-object v3, Lnd/k;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v6, v6, p1

    and-long v8, v8, v19

    or-long/2addr v6, v8

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    shl-long v8, v8, p1

    and-long v10, v10, v19

    or-long/2addr v8, v10

    invoke-static {v5, v6, v7, v8, v9}, Lnd/k;->c(Lo1/d;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_3
    iget-boolean v0, v0, Lm0/a;->n:Z

    if-eqz v0, :cond_6

    if-eqz v13, :cond_4

    :try_start_3
    sget-wide v3, Lnd/k;->g:J

    :goto_4
    move-wide v7, v3

    goto :goto_5

    :cond_4
    sget-wide v3, Lnd/k;->e:J

    goto :goto_4

    :goto_5
    sget-object v6, Lnd/i;->b:Ljava/util/List;

    sget-wide v3, Lnd/k;->f:J

    if-eqz v13, :cond_5

    const v0, 0x3eb33333    # 0.35f

    goto :goto_6

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    invoke-static {v0, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lnd/k;->d(Lo1/d;Ljava/util/List;JJ)V

    if-eqz v13, :cond_6

    sget-object v0, Lnd/i;->a:Ljava/util/List;

    const/high16 v6, 0x44af0000    # 1400.0f

    invoke-static {v0, v6}, Lnd/i;->c(Ljava/util/List;F)J

    move-result-wide v6

    new-instance v0, Ll1/b;

    invoke-direct {v0, v6, v7}, Ll1/b;-><init>(J)V

    const/high16 v6, 0x44480000    # 800.0f

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    const/high16 v9, -0x3bd10000    # -700.0f

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    shl-long v7, v7, p1

    and-long v9, v9, v19

    or-long/2addr v7, v9

    new-instance v9, Ll1/b;

    invoke-direct {v9, v7, v8}, Ll1/b;-><init>(J)V

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    const/high16 v8, -0x3b6a0000    # -1200.0f

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v10, v8

    shl-long v6, v6, p1

    and-long v10, v10, v19

    or-long/2addr v6, v10

    new-instance v8, Ll1/b;

    invoke-direct {v8, v6, v7}, Ll1/b;-><init>(J)V

    filled-new-array {v0, v9, v8}, [Ll1/b;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-wide v7, Lnd/k;->e:J

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lnd/k;->d(Lo1/d;Ljava/util/List;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    invoke-static {v2, v14, v15}, Lm/a;->t(Lg5/m;J)V

    if-eqz v24, :cond_7

    move/from16 v4, v21

    goto :goto_7

    :cond_7
    move/from16 v4, v18

    :goto_7
    if-eqz v1, :cond_8

    const v0, 0x332f6bd6

    invoke-static {v0}, Lm1/v;->c(I)J

    move-result-wide v6

    const/4 v11, 0x0

    const/16 v12, 0x78

    const/high16 v8, 0x42580000    # 54.0f

    move-wide/from16 v9, v16

    invoke-static/range {v5 .. v12}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    goto :goto_8

    :cond_8
    move-wide/from16 v9, v16

    :goto_8
    if-eqz v1, :cond_9

    const-wide v2, 0xff2f6bd6L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v6

    new-instance v11, Lo1/h;

    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v12, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lo1/h;-><init>(IIIFF)V

    const/16 v12, 0x68

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static/range {v5 .. v12}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    :cond_9
    invoke-interface {v5}, Lo1/d;->Y()Lg5/m;

    move-result-object v2

    invoke-virtual {v2}, Lg5/m;->m()J

    move-result-wide v6

    invoke-virtual {v2}, Lg5/m;->h()Lm1/o;

    move-result-object v0

    invoke-interface {v0}, Lm1/o;->h()V

    :try_start_4
    iget-object v0, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    invoke-virtual {v0, v4, v9, v10}, Lm2/j;->w(FJ)V

    if-eqz v1, :cond_a

    const-wide v0, 0xff8a8a8aL

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_a
    const-wide v0, 0xff1565c0L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    :goto_9
    invoke-static {v5, v9, v10, v0, v1}, Lnd/k;->b(Lo1/d;JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2, v6, v7}, Lm/a;->t(Lg5/m;J)V

    :goto_a
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_b
    invoke-static {v2, v6, v7}, Lm/a;->t(Lg5/m;J)V

    throw v0

    :catchall_2
    move-exception v0

    :goto_c
    move-wide v14, v9

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v7

    goto :goto_c

    :goto_d
    invoke-static {v2, v14, v15}, Lm/a;->t(Lg5/m;J)V

    throw v0

    :pswitch_0
    iget-object v1, v0, Lm0/a;->o:Ljava/lang/Object;

    check-cast v1, Lm0/r;

    move-object/from16 v2, p1

    check-cast v2, Lm2/x;

    invoke-interface {v1}, Lm0/r;->a()J

    move-result-wide v5

    sget-object v1, Lm0/s0;->c:Lm2/w;

    new-instance v3, Lm0/r0;

    iget-boolean v4, v0, Lm0/a;->m:Z

    if-eqz v4, :cond_b

    sget-object v4, Lb0/d1;->m:Lb0/d1;

    goto :goto_e

    :cond_b
    sget-object v4, Lb0/d1;->n:Lb0/d1;

    :goto_e
    iget-boolean v0, v0, Lm0/a;->n:Z

    if-eqz v0, :cond_c

    sget-object v0, Lm0/q0;->l:Lm0/q0;

    :goto_f
    move-object v7, v0

    goto :goto_10

    :cond_c
    sget-object v0, Lm0/q0;->n:Lm0/q0;

    goto :goto_f

    :goto_10
    const-wide v8, 0x7fffffff7fffffffL

    and-long/2addr v8, v5

    const-wide v10, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v8, v10

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_11
    move v8, v0

    goto :goto_12

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :goto_12
    invoke-direct/range {v3 .. v8}, Lm0/r0;-><init>(Lb0/d1;JLm0/q0;Z)V

    invoke-interface {v2, v1, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
