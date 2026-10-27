.class public final synthetic Lb0/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Li9/e;Lq/d;Li9/f;Li9/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lb0/e2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/e2;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/e2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/e2;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/e2;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lb0/e2;->l:I

    iput-object p1, p0, Lb0/e2;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/e2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/e2;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/e2;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    iget v1, v0, Lb0/e2;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lb0/e2;->m:Ljava/lang/Object;

    check-cast v1, Li9/e;

    iget-object v2, v0, Lb0/e2;->n:Ljava/lang/Object;

    check-cast v2, Lq/d;

    iget-object v3, v0, Lb0/e2;->o:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Li9/f;

    iget-object v0, v0, Lb0/e2;->p:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Li9/a;

    move-object/from16 v7, p1

    check-cast v7, Lq/c;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v10, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v0, v3

    :cond_1
    and-int/lit8 v3, v0, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v10, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Label must not be blank"

    invoke-static {v1}, Lt/b;->c(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    shl-int/lit8 v0, v0, 0x9

    and-int/lit16 v0, v0, 0x1c00

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v4, Lq/b;->a:Lz0/d;

    invoke-virtual/range {v4 .. v11}, Lz0/d;->e(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;Ljava/lang/Integer;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lb0/e2;->m:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, v0, Lb0/e2;->n:Ljava/lang/Object;

    check-cast v2, Lr0/r2;

    iget-object v3, v0, Lb0/e2;->o:Ljava/lang/Object;

    check-cast v3, Lr0/r2;

    iget-object v0, v0, Lb0/e2;->p:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    move-object/from16 v4, p1

    check-cast v4, Lu/s;

    move-object/from16 v13, p2

    check-cast v13, Lr0/q;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "$this$Section"

    invoke-static {v4, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v6, v5, 0x6

    const/4 v11, 0x4

    if-nez v6, :cond_6

    invoke-virtual {v13, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    const/4 v6, 0x2

    :goto_3
    or-int/2addr v5, v6

    :cond_6
    move/from16 v28, v5

    and-int/lit8 v5, v28, 0x13

    const/16 v6, 0x12

    const/16 v29, 0x1

    const/4 v12, 0x0

    if-eq v5, v6, :cond_7

    move/from16 v5, v29

    goto :goto_4

    :cond_7
    move v5, v12

    :goto_4
    and-int/lit8 v6, v28, 0x1

    invoke-virtual {v13, v6, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "\u041a\u043e\u043b\u0438 GPS \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u0439\u043e\u0433\u043e \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e, \u0456\u043d\u0448\u0456 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0438 \u043e\u0442\u0440\u0438\u043c\u0443\u044e\u0442\u044c \u043f\u043e\u0437\u0438\u0446\u0456\u044e BlindDriver (\u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a + \u043c\u0435\u0440\u0435\u0436\u0430) \u0437\u0430\u043c\u0456\u0441\u0442\u044c \u00ab\u043d\u0435\u043c\u0430\u0454 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432\u00bb. \u041a\u043e\u043b\u0438 GPS \u0443 \u043d\u043e\u0440\u043c\u0456 \u2014 \u0431\u0430\u0447\u0430\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS. \u041f\u0440\u0430\u0446\u044e\u0454, \u043f\u043e\u043a\u0438 BlindDriver \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438\u0439 \u0430\u0431\u043e \u0432\u0435\u0434\u0435."

    invoke-static {v5}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-ne v5, v14, :cond_8

    new-instance v5, Ln/p1;

    const/16 v8, 0x14

    invoke-direct {v5, v8}, Ln/p1;-><init>(I)V

    invoke-virtual {v13, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v8, v5

    check-cast v8, Li9/c;

    const/16 v10, 0xc06

    const-string v5, "\u0414\u0456\u043b\u0438\u0442\u0438\u0441\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u0437 Waze \u0456 \u043a\u0430\u0440\u0442\u0430\u043c\u0438"

    move-object v9, v13

    invoke-static/range {v5 .. v10}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    const v2, -0x39d9718

    invoke-virtual {v13, v2}, Lr0/q;->b0(I)V

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkd/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-wide v5, 0xffc62828L

    packed-switch v2, :pswitch_data_1

    const v0, -0x21262007

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_1
    const v0, -0x2125ad4a

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v0, Lm1/p;

    invoke-direct {v0, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v5, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430 \u043f\u0456\u0434\u043c\u0456\u043d\u0438 (\u0434\u0438\u0432. \u043b\u043e\u0433, \u00abshare error\u00bb)."

    invoke-direct {v2, v5, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    const v0, -0x2125cb53

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u043f\u0456\u0434\u043c\u0456\u043d\u0438: \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438 \u0441\u0445\u043e\u0436\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u043b\u0438\u0441\u044f, \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u044f\u044e \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS (\u0434\u043e 10 \u0441). Waze \u043d\u0430 \u0446\u0435\u0439 \u0447\u0430\u0441 \u0431\u0430\u0447\u0438\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS."

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v5, 0xff6a1b9aL

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v2, Lm1/p;

    invoke-direct {v2, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v5, Lt8/j;

    invoke-direct {v5, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    move-object v2, v5

    goto/16 :goto_7

    :pswitch_3
    const v2, -0x2125dd7b

    invoke-virtual {v13, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    double-to-int v0, v5

    goto :goto_6

    :cond_9
    move v0, v12

    :goto_6
    const-string v2, "\u041f\u0435\u0440\u0435\u0434\u0430\u044e \u043f\u043e\u0437\u0438\u0446\u0456\u044e BlindDriver, \u00b1"

    const-string v5, " \u043c."

    invoke-static {v0, v2, v5}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v5, 0xff1565c0L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v2, Lm1/p;

    invoke-direct {v2, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v5, Lt8/j;

    invoke-direct {v5, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    const v0, -0x212602e1

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    const-wide v5, 0xff2e7d32L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v0, Lm1/p;

    invoke-direct {v0, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v5, "GPS \u0443 \u043d\u043e\u0440\u043c\u0456 \u2014 \u0456\u043d\u0448\u0456 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0438 \u0431\u0430\u0447\u0430\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS."

    invoke-direct {v2, v5, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    const v0, -0x2125f1c6

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    const-wide v5, 0xffef6c00L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v0, Lm1/p;

    invoke-direct {v0, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v5, "GPS \u043d\u0435\u043c\u0430\u0454, \u0430\u043b\u0435 \u0432\u043b\u0430\u0441\u043d\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0449\u0435 \u043d\u0435\u0442\u043e\u0447\u043d\u0430 \u0430\u0431\u043e \u0449\u043e\u0439\u043d\u043e \u0437\u043d\u0438\u043a GPS \u2014 \u043f\u043e\u043a\u0438 \u043d\u0435 \u043f\u0435\u0440\u0435\u0434\u0430\u044e."

    invoke-direct {v2, v5, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_6
    const v0, -0x212619d4

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v0, Lm1/p;

    invoke-direct {v0, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v5, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0432\u0438\u0431\u0440\u0430\u0442\u0438 BlindDriver: \u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u2192 \u00ab\u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0434\u043b\u044f \u0444\u0456\u043a\u0442\u0438\u0432\u043d\u0438\u0445 \u043c\u0456\u0441\u0446\u0435\u0437\u043d\u0430\u0445\u043e\u0434\u0436\u0435\u043d\u044c\u00bb."

    invoke-direct {v2, v5, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_7
    const v0, -0x21259dc9

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v5, v0, Lo0/u0;->s:J

    new-instance v0, Lm1/p;

    invoke-direct {v0, v5, v6}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v5, "\u0417\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c\u0441\u044f, \u0449\u043e\u0439\u043d\u043e \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438\u043c\u0435 \u0432\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457."

    invoke-direct {v2, v5, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    :goto_7
    iget-object v0, v2, Lt8/j;->l:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Lm1/p;

    iget-wide v7, v0, Lm1/p;->a:J

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->k:Lp2/m0;

    const/16 v26, 0x0

    const v27, 0xfffa

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move v15, v11

    const/4 v11, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v24, v13

    move-object/from16 v17, v14

    const-wide/16 v13, 0x0

    move/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v19, v16

    move-object/from16 v20, v17

    const-wide/16 v16, 0x0

    move/from16 v21, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v23, v20

    const/16 v20, 0x0

    move/from16 v25, v21

    const/16 v21, 0x0

    move/from16 v30, v22

    const/16 v22, 0x0

    move/from16 v31, v25

    const/16 v25, 0x0

    move-object/from16 v32, v23

    move-object/from16 v23, v2

    move/from16 v2, v31

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v24

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkd/b;

    sget-object v5, Lkd/b;->m:Lkd/b;

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v7, Lf1/o;->a:Lf1/o;

    if-ne v3, v5, :cond_d

    const v3, -0x389e1f7

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    and-int/lit8 v3, v28, 0xe

    if-ne v3, v2, :cond_a

    move/from16 v12, v29

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v12

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_b

    move-object/from16 v3, v32

    if-ne v5, v3, :cond_c

    goto :goto_9

    :cond_b
    move-object/from16 v3, v32

    :goto_9
    new-instance v5, Lnd/p;

    const/4 v8, 0x4

    invoke-direct {v5, v4, v1, v8}, Lnd/p;-><init>(Lu/s;Landroid/content/Context;I)V

    invoke-virtual {v13, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Li9/a;

    move v8, v6

    invoke-static {v7, v8}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    sget-object v12, Lod/m;->X0:Lz0/d;

    const v14, 0x30000030

    const/16 v15, 0x1fc

    move-object v9, v7

    const/4 v7, 0x0

    move v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v33, v17

    invoke-static/range {v5 .. v15}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_d
    move-object/from16 v33, v7

    move-object/from16 v3, v32

    const/4 v5, 0x0

    const v6, -0x384a993

    invoke-virtual {v13, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    :goto_a
    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_11

    const v5, -0x382cf21

    invoke-virtual {v13, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const/16 v26, 0x0

    const v27, 0xfffe

    const-string v5, "\u0429\u043e\u0431 \u0432\u0456\u043a\u043d\u043e \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u0437\'\u044f\u0432\u043b\u044f\u043b\u043e\u0441\u044f \u043f\u043e\u0432\u0435\u0440\u0445 Waze, \u0434\u043e\u0437\u0432\u043e\u043b\u044c\u0442\u0435 \u00ab\u041f\u043e\u043a\u0430\u0437 \u043f\u043e\u0432\u0435\u0440\u0445 \u0456\u043d\u0448\u0438\u0445 \u0432\u0456\u043a\u043e\u043d\u00bb."

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v24, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x6

    move-object/from16 v23, v0

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v24

    and-int/lit8 v0, v28, 0xe

    if-ne v0, v2, :cond_e

    goto :goto_b

    :cond_e
    const/16 v29, 0x0

    :goto_b
    invoke-virtual {v13, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v29, v0

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_f

    if-ne v2, v3, :cond_10

    :cond_f
    new-instance v2, Lnd/p;

    const/4 v0, 0x5

    invoke-direct {v2, v4, v1, v0}, Lnd/p;-><init>(Lu/s;Landroid/content/Context;I)V

    invoke-virtual {v13, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    move-object v5, v2

    check-cast v5, Li9/a;

    move-object/from16 v9, v33

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    sget-object v12, Lod/m;->Y0:Lz0/d;

    const v14, 0x30000030

    const/16 v15, 0x1fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v15}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_11
    const v1, -0x377f407

    invoke-virtual {v13, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    const/16 v26, 0x0

    const v27, 0xfffe

    const-string v5, "\u041a\u043e\u043b\u0438 BlindDriver \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u043e, \u043f\u043e\u0432\u0435\u0440\u0445 \u0456\u043d\u0448\u0438\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0456\u0432 \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0432\u0456\u043a\u043d\u043e: \u043c\u0430\u0440\u0448\u0440\u0443\u0442, \u2193100 / \u2191100 \u0456 \u21bb \u00ab\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438\u00bb. \u041f\u0456\u0434\u043c\u0456\u043d\u0443 \u0437\u043d\u0456\u043c\u0430\u0454\u043c\u043e \u043d\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434 \u043b\u0438\u0448\u0435 \u0442\u043e\u0434\u0456, \u043a\u043e\u043b\u0438 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438, \u0441\u0445\u043e\u0436\u0435, \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u043b\u0438\u0441\u044f, \u2014 \u0449\u043e\u0431 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS."

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v24, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x6

    move-object/from16 v23, v0

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v24

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    :goto_c
    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_12
    move v5, v12

    const v0, -0x3734913

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_13
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_8
    iget-object v1, v0, Lb0/e2;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/a;

    iget-object v2, v1, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    iget-object v3, v0, Lb0/e2;->n:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Li9/c;

    iget-object v3, v0, Lb0/e2;->o:Ljava/lang/Object;

    check-cast v3, Lr0/r2;

    iget-object v0, v0, Lb0/e2;->p:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    move-object/from16 v4, p1

    check-cast v4, Lu/s;

    move-object/from16 v12, p2

    check-cast v12, Lr0/q;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "$this$Section"

    invoke-static {v4, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v4, v5, 0x11

    const/16 v6, 0x10

    const/4 v14, 0x1

    if-eq v4, v6, :cond_14

    move v4, v14

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    :goto_e
    and-int/2addr v5, v14

    invoke-virtual {v12, v5, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "\u0423 \u0432\u0438\u043f\u0443\u0449\u0435\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c: \u0443 \u043b\u043e\u0433\u0430\u0445 \u0442\u0440\u0435\u043a\u0438 \u0432\u0430\u0448\u0438\u0445 \u043f\u043e\u0457\u0437\u0434\u043e\u043a. \u0417\u0430\u043f\u0438\u0441 \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u043a\u043d\u043e\u043f\u043a\u043e\u044e REC, \u043a\u043e\u043b\u0438 \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0437\u0430\u043f\u0438\u0441\u0430\u0442\u0438 \u043b\u043e\u0433. \u0411\u0435\u0437 \u0437\u0430\u043f\u0438\u0441\u0443 \u043d\u0435 \u0437\u0431\u0438\u0440\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0440\u0435\u043a \u0434\u043b\u044f \u00ab\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043a\u0443 \u044f\u043a \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u00bb."

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-nez v3, :cond_15

    if-ne v4, v5, :cond_16

    :cond_15
    new-instance v4, Lod/b6;

    const/4 v3, 0x6

    invoke-direct {v4, v1, v3}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v12, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object v11, v4

    check-cast v11, Li9/c;

    const/4 v13, 0x6

    const-string v8, "\u0410\u0432\u0442\u043e\u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443 \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443"

    invoke-static/range {v8 .. v13}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_17

    const-string v3, "log_trim"

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v3

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Lr0/u0;

    const-string v4, "log_trim_m"

    const/16 v6, 0x12c

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x64

    const/16 v6, 0x3e8

    invoke-static {v2, v4, v6}, Lg6/c1;->f(III)I

    move-result v2

    const-string v4, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443 \u0456 \u00ab\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f\u00bb \u0432\u0438\u0440\u0456\u0437\u0430\u044e\u0442\u044c\u0441\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0431\u043b\u0438\u0436\u0447\u0435 "

    const-string v6, " \u043c \u0434\u043e \u0441\u0442\u0430\u0440\u0442\u0443 \u0439 \u0444\u0456\u043d\u0456\u0448\u0443 (\u0434\u0456\u043c, \u0440\u043e\u0431\u043e\u0442\u0430). "

    invoke-static {v2, v4, v6}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u0423\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c; \u0440\u0430\u0434\u0456\u0443\u0441 \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u00ab\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433\u00bb."

    invoke-static {v2, v4}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_18

    if-ne v4, v5, :cond_19

    :cond_18
    new-instance v4, Lb0/r0;

    const/16 v2, 0x1a

    invoke-direct {v4, v2, v1, v3}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    move-object v11, v4

    check-cast v11, Li9/c;

    const/4 v13, 0x6

    const-string v8, "\u041e\u0431\u0440\u0456\u0437\u0430\u0442\u0438 \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0456 \u043a\u0456\u043d\u0435\u0446\u044c \u043f\u043e\u0457\u0437\u0434\u043a\u0438"

    invoke-static/range {v8 .. v13}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    sget-object v1, Lsc/w0;->q:Lsc/w0;

    invoke-static {v1}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lua/nav/Tuning;

    const/4 v6, 0x1

    const/16 v9, 0x186

    move-object v8, v12

    invoke-static/range {v4 .. v9}, Lod/v6;->f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V

    goto :goto_f

    :cond_1a
    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    iget-object v1, v0, Lb0/e2;->m:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lm1/j0;

    iget-object v1, v0, Lb0/e2;->n:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lb0/r1;

    iget-object v1, v0, Lb0/e2;->o:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lu2/x;

    iget-wide v1, v5, Lu2/x;->b:J

    iget-object v0, v0, Lb0/e2;->p:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lu2/q;

    move-object/from16 v0, p1

    check-cast v0, Lf1/r;

    move-object/from16 v9, p2

    check-cast v9, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x5097aed    # -6.4000205E35f

    invoke-virtual {v9, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lf2/l1;->w:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v9, v3}, Lr0/q;->h(Z)Z

    move-result v8

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-nez v8, :cond_1b

    if-ne v10, v11, :cond_1c

    :cond_1b
    new-instance v10, Lk0/h;

    invoke-direct {v10, v3}, Lk0/h;-><init>(Z)V

    invoke-virtual {v9, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1c
    move-object v3, v10

    check-cast v3, Lk0/h;

    iget-wide v12, v7, Lm1/j0;->a:J

    const-wide/16 v14, 0x10

    cmp-long v8, v12, v14

    const/4 v10, 0x0

    if-nez v8, :cond_1d

    move v8, v10

    goto :goto_10

    :cond_1d
    const/4 v8, 0x1

    :goto_10
    sget-object v12, Lf2/l1;->t:Lr0/s2;

    invoke-virtual {v9, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf2/s2;

    check-cast v12, Lf2/x1;

    iget-object v12, v12, Lf2/x1;->a:Lr0/e1;

    invoke-virtual {v12}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {v6}, Lb0/r1;->b()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-static {v1, v2}, Lp2/l0;->c(J)Z

    move-result v12

    if-eqz v12, :cond_22

    if-eqz v8, :cond_22

    const v8, -0x2a2b68da

    invoke-virtual {v9, v8}, Lr0/q;->b0(I)V

    iget-object v8, v5, Lu2/x;->a:Lp2/g;

    new-instance v12, Lp2/l0;

    invoke-direct {v12, v1, v2}, Lp2/l0;-><init>(J)V

    invoke-virtual {v9, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1e

    if-ne v2, v11, :cond_1f

    :cond_1e
    new-instance v2, Lad/w;

    const/4 v1, 0x0

    const/4 v13, 0x3

    invoke-direct {v2, v3, v1, v13}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1f
    check-cast v2, Li9/e;

    invoke-static {v8, v12, v2, v9}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-virtual {v9, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v9, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v9, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v9, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_20

    if-ne v2, v11, :cond_21

    :cond_20
    new-instance v2, Lb0/d2;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lb0/d2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_21
    check-cast v2, Li9/c;

    invoke-static {v0, v2}, Lj1/g;->f(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    invoke-virtual {v9, v10}, Lr0/q;->q(Z)V

    goto :goto_11

    :cond_22
    const v0, -0x2a0caad9

    invoke-virtual {v9, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v9, v10}, Lr0/q;->q(Z)V

    sget-object v0, Lf1/o;->a:Lf1/o;

    :goto_11
    invoke-virtual {v9, v10}, Lr0/q;->q(Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
