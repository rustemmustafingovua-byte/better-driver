.class public final synthetic Lo0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;I)V
    .locals 0

    iput p2, p0, Lo0/k;->l:I

    iput-object p1, p0, Lo0/k;->m:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    iget v1, v0, Lo0/k;->l:I

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/16 v4, 0xf

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x8

    sget-object v7, Lf1/o;->a:Lf1/o;

    sget-object v8, Lr0/m;->a:Lr0/e;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lt8/z;->a:Lt8/z;

    const/4 v12, 0x2

    const/4 v13, 0x3

    iget-object v0, v0, Lo0/k;->m:Lr0/u0;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_0

    move v9, v10

    :cond_0
    and-int/2addr v2, v10

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_1

    new-instance v2, Lod/a7;

    invoke-direct {v2, v0, v13}, Lod/a7;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    move-object v14, v2

    check-cast v14, Li9/a;

    sget-object v20, Lod/m;->Z1:Lz0/d;

    const v22, 0x30000006

    const/16 v23, 0x1fe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v14 .. v23}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_0

    :cond_2
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lr0/q;->W()V

    :goto_0
    return-object v11

    :pswitch_0
    move-object/from16 v5, p1

    check-cast v5, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_3

    move v9, v10

    :cond_3
    and-int/2addr v1, v10

    invoke-virtual {v5, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    int-to-float v1, v6

    invoke-static {v1}, Lu/h;->g(F)Lu/f;

    move-result-object v1

    sget-object v2, Lf1/c;->x:Lf1/h;

    const/4 v3, 0x6

    invoke-static {v1, v2, v5, v3}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    iget-wide v2, v5, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v7, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v9, v5, Lr0/q;->S:Z

    if-eqz v9, :cond_4

    invoke-virtual {v5, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_1
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v1, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v5, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v5, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v12, Le2/g;->d:Le2/e;

    invoke-static {v12, v4, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v4, "\u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0431\u0443\u0434\u0435 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u043b\u043e\u0433\u0438, \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0443 \u0434\u043e Telegram \u0456 \u0432\u0430\u0448\u0456 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0438 (\u0442\u0435\u043b\u0435\u0444\u043e\u043d, e-mail). \u042f\u043a\u0449\u043e \u0443 \u0432\u0430\u0441 \u0454 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430, \u0432\u043e\u043d\u0430 \u0431\u0443\u0434\u0435 \u0432\u0442\u0440\u0430\u0447\u0435\u043d\u0430 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0430 \u0456\u043d\u0448\u0438\u0445 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430\u0445."

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget-object v13, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v5, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->k:Lp2/m0;

    const/16 v43, 0x0

    const v44, 0xfffe

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v42, 0x0

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    invoke-static/range {v22 .. v44}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v4, Lf1/c;->v:Lf1/i;

    sget-object v14, Lu/h;->a:Lu/n;

    const/16 v15, 0x30

    invoke-static {v14, v4, v5, v15}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v14, v5, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v15

    invoke-static {v7, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v10, v5, Lr0/q;->S:Z

    if-eqz v10, :cond_5

    invoke-virtual {v5, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v9, v4, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v15, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v5, v3, v5, v2}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v12, v7, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_6

    new-instance v2, Lb0/y;

    const/16 v3, 0x1c

    invoke-direct {v2, v0, v3}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v5, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Li9/c;

    const/4 v4, 0x0

    const/16 v6, 0x30

    move v0, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lo0/l0;->a(ZLi9/c;Lf1/r;ZLo0/f0;Lr0/q;I)V

    invoke-virtual {v5, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const/16 v43, 0x0

    const v44, 0xfffe

    const-string v22, "\u0422\u0430\u043a\u043e\u0436 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456"

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v42, 0x6

    move-object/from16 v40, v0

    move-object/from16 v41, v5

    invoke-static/range {v22 .. v44}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_3
    return-object v11

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_8

    const/4 v9, 0x1

    :cond_8
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_9

    new-instance v2, Lod/p4;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v12, v2

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->t1:Lz0/d;

    const v20, 0x30000006

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_4

    :cond_a
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_4
    return-object v11

    :pswitch_2
    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_b

    const/4 v9, 0x1

    :cond_b
    const/16 v16, 0x1

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_c

    new-instance v1, Lod/p4;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    move-object v0, v1

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->V0:Lz0/d;

    const v8, 0x30000006

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_5

    :cond_d
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_5
    return-object v11

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_e

    const/4 v9, 0x1

    :cond_e
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_f

    new-instance v2, Lod/p4;

    invoke-direct {v2, v0, v6}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    move-object v12, v2

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->J0:Lz0/d;

    const v20, 0x30000006

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_6

    :cond_10
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_6
    return-object v11

    :pswitch_4
    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_11

    const/4 v9, 0x1

    :cond_11
    const/16 v16, 0x1

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_12

    new-instance v1, Lod/p4;

    const/16 v2, 0x18

    invoke-direct {v1, v0, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    move-object v0, v1

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->k0:Lz0/d;

    const v8, 0x30000006

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_7

    :cond_13
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_7
    return-object v11

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_14

    const/4 v9, 0x1

    :cond_14
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_15

    new-instance v2, Lod/p4;

    const/16 v3, 0x16

    invoke-direct {v2, v0, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    move-object v12, v2

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->j0:Lz0/d;

    const v20, 0x30000006

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_8

    :cond_16
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_8
    return-object v11

    :pswitch_6
    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_17

    const/4 v9, 0x1

    :cond_17
    const/16 v16, 0x1

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_18

    new-instance v1, Lod/p4;

    const/16 v2, 0x17

    invoke-direct {v1, v0, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v0, v1

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->B0:Lz0/d;

    const v8, 0x30000006

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_9

    :cond_19
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_9
    return-object v11

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v5, v2, 0x3

    if-eq v5, v12, :cond_1a

    const/4 v5, 0x1

    :goto_a
    const/16 v16, 0x1

    goto :goto_b

    :cond_1a
    move v5, v9

    goto :goto_a

    :goto_b
    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v5}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "\u043f\u0440\u0438\u0445\u043e\u0432\u0430\u0442\u0438"

    :goto_c
    move-object v12, v2

    goto :goto_d

    :cond_1b
    const-string v2, "\u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0438"

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :goto_d
    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_1c

    new-instance v2, Lod/p4;

    const/16 v5, 0x19

    invoke-direct {v2, v0, v5}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1c
    check-cast v2, Li9/a;

    const/4 v0, 0x0

    invoke-static {v7, v9, v0, v2, v4}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    int-to-float v2, v6

    invoke-static {v0, v2}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v13

    invoke-static {v3}, La/a;->k(I)J

    move-result-wide v16

    const/16 v33, 0x0

    const v34, 0x1fff4

    const-wide/16 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0xc00

    move-object/from16 v31, v1

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_e

    :cond_1d
    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v31}, Lr0/q;->W()V

    :goto_e
    return-object v11

    :pswitch_8
    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_1e

    const/4 v9, 0x1

    :cond_1e
    const/16 v16, 0x1

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1f

    new-instance v1, Lod/p4;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1f
    move-object v0, v1

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->R0:Lz0/d;

    const v8, 0x30000006

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_f

    :cond_20
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_f
    return-object v11

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_21

    const/4 v9, 0x1

    :cond_21
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_22

    new-instance v2, Lod/p4;

    invoke-direct {v2, v0, v4}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_22
    move-object v12, v2

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->Q0:Lz0/d;

    const v20, 0x30000006

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_10

    :cond_23
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_10
    return-object v11

    :pswitch_a
    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_24

    const/4 v9, 0x1

    :cond_24
    const/4 v2, 0x1

    and-int/2addr v1, v2

    invoke-virtual {v7, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_25

    new-instance v1, Lod/p4;

    invoke-direct {v1, v0, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_25
    move-object v0, v1

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->f0:Lz0/d;

    const v8, 0x30000006

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_11

    :cond_26
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_11
    return-object v11

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_27

    const/4 v9, 0x1

    :cond_27
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_28

    new-instance v2, Lod/p4;

    invoke-direct {v2, v0, v12}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_28
    move-object v12, v2

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->c0:Lz0/d;

    const v20, 0x30000006

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_12

    :cond_29
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_12
    return-object v11

    :pswitch_c
    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_2a

    const/4 v9, 0x1

    :cond_2a
    const/16 v16, 0x1

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_2b

    new-instance v1, Lod/p4;

    invoke-direct {v1, v0, v13}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2b
    move-object v0, v1

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->Z:Lz0/d;

    const v8, 0x30000006

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_13

    :cond_2c
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_13
    return-object v11

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Ly1/u;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "<unused var>"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lod/e4;->c:I

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v11

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_2d

    const/4 v9, 0x1

    :cond_2d
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v14

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_2e

    new-instance v2, Lb0/y;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2e
    move-object v13, v2

    check-cast v13, Li9/c;

    const/high16 v32, 0xc00000

    const v33, 0x7dfff8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x1b0

    move-object/from16 v30, v1

    invoke-static/range {v12 .. v33}, Lo0/j2;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V

    goto :goto_14

    :cond_2f
    move-object/from16 v30, v1

    invoke-virtual/range {v30 .. v30}, Lr0/q;->W()V

    :goto_14
    return-object v11

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v4, v2, 0x3

    if-eq v4, v12, :cond_30

    const/4 v9, 0x1

    :cond_30
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/s;

    iget-wide v4, v0, Lad/s;->f:D

    const/16 v0, 0x64

    int-to-double v8, v0

    div-double/2addr v4, v8

    double-to-int v2, v4

    mul-int/2addr v2, v0

    int-to-double v4, v2

    sget-object v0, Lcd/j;->a:Lcd/j;

    invoke-virtual {v0, v4, v5}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcd/d;->P0:Lcd/c;

    invoke-virtual {v2, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    sget-wide v33, Lm1/p;->c:J

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    int-to-float v2, v3

    int-to-float v3, v6

    invoke-static {v7, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v32

    const/16 v52, 0x0

    const v53, 0xfff8

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v51, 0x1b0

    move-object/from16 v49, v0

    move-object/from16 v50, v1

    invoke-static/range {v31 .. v53}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_15

    :cond_31
    move-object/from16 v50, v1

    invoke-virtual/range {v50 .. v50}, Lr0/q;->W()V

    :goto_15
    return-object v11

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    if-eq v4, v12, :cond_32

    const/4 v4, 0x1

    :goto_16
    const/4 v6, 0x1

    goto :goto_17

    :cond_32
    move v4, v9

    goto :goto_16

    :goto_17
    and-int/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Lf1/c;->p:Lf1/j;

    invoke-static {v7, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    const/4 v5, 0x5

    int-to-float v5, v5

    invoke-static {v4, v2, v5, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    invoke-static {v3, v9}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v4, v1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v7, v1, Lr0/q;->S:Z

    if-eqz v7, :cond_33

    invoke-virtual {v1, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_18

    :cond_33
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_18
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v1, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v1, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lod/h3;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    if-ne v0, v12, :cond_34

    const-string v0, "\u263d"

    :goto_19
    move-object/from16 v17, v0

    goto :goto_1a

    :cond_34
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    const-string v0, "\u2600"

    goto :goto_19

    :cond_36
    const-string v0, "\u263d\u2600A"

    goto :goto_19

    :goto_1a
    sget-wide v19, Lm1/p;->c:J

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->i:Lp2/m0;

    const/16 v38, 0x0

    const v39, 0xfffa

    const/16 v18, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x180

    move-object/from16 v35, v0

    move-object/from16 v36, v1

    invoke-static/range {v17 .. v39}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v36

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lr0/q;->q(Z)V

    goto :goto_1b

    :cond_37
    move-object v0, v1

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_1b
    return-object v11

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v12, :cond_38

    const/4 v9, 0x1

    :cond_38
    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_39

    new-instance v2, Lb0/u;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_39
    move-object v12, v2

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->c:Lz0/d;

    const v20, 0x30000006

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_1c

    :cond_3a
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_1c
    return-object v11

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Lb3/k;

    move-object/from16 v3, p2

    check-cast v3, Lb3/k;

    sget v4, Lo0/u1;->a:F

    iget v4, v3, Lb3/k;->a:I

    iget v6, v3, Lb3/k;->d:I

    iget v7, v3, Lb3/k;->c:I

    iget v8, v3, Lb3/k;->b:I

    iget v9, v1, Lb3/k;->c:I

    iget v10, v1, Lb3/k;->b:I

    iget v13, v1, Lb3/k;->d:I

    iget v14, v1, Lb3/k;->a:I

    if-lt v4, v9, :cond_3b

    :goto_1d
    move v1, v2

    goto :goto_1e

    :cond_3b
    if-gt v7, v14, :cond_3c

    move v1, v5

    goto :goto_1e

    :cond_3c
    invoke-virtual {v3}, Lb3/k;->d()I

    move-result v9

    if-nez v9, :cond_3d

    goto :goto_1d

    :cond_3d
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v1, v1, Lb3/k;->c:I

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v9

    div-int/2addr v1, v12

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v3}, Lb3/k;->d()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    :goto_1e
    if-lt v8, v13, :cond_3e

    goto :goto_1f

    :cond_3e
    if-gt v6, v10, :cond_3f

    move v2, v5

    goto :goto_1f

    :cond_3f
    invoke-virtual {v3}, Lb3/k;->b()I

    move-result v4

    if-nez v4, :cond_40

    goto :goto_1f

    :cond_40
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v2

    div-int/2addr v4, v12

    sub-int/2addr v4, v8

    int-to-float v2, v4

    invoke-virtual {v3}, Lb3/k;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_1f
    invoke-static {v1, v2}, Lm1/v;->h(FF)J

    move-result-wide v1

    new-instance v3, Lm1/k0;

    invoke-direct {v3, v1, v2}, Lm1/k0;-><init>(J)V

    invoke-interface {v0, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v11

    :pswitch_data_0
    .packed-switch 0x0
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
