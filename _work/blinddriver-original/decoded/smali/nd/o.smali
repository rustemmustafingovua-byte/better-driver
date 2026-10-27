.class public final synthetic Lnd/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(IIZ)V
    .locals 0

    .line 1
    iput p2, p0, Lnd/o;->l:I

    iput-boolean p3, p0, Lnd/o;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lnd/o;->l:I

    iput-boolean p2, p0, Lnd/o;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    iget v1, v0, Lnd/o;->l:I

    const/16 v2, 0x36

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lod/m;->D(ZLr0/q;I)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v6, :cond_0

    move v5, v7

    :cond_0
    and-int/2addr v2, v7

    invoke-virtual {v1, v2, v5}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const-string v0, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0437\u043c\u043e\u0436\u0435 \u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0430\u0442\u044c \u0437\u043d\u043e\u0432\u0443."

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_1
    const-string v0, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043d\u0443\u0442\u044c \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438, \u043f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0430\u0442\u044c \u0437\u043d\u043e\u0432\u0443."

    goto :goto_1

    :goto_2
    const/16 v29, 0x0

    const v30, 0x1fffe

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_3

    :cond_2
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v6, :cond_3

    move v5, v7

    :cond_3
    and-int/2addr v2, v7

    invoke-virtual {v1, v2, v5}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    const-string v0, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0433\u0440\u0430\u0444 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a?"

    :goto_4
    move-object v8, v0

    goto :goto_5

    :cond_4
    const-string v0, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433?"

    goto :goto_4

    :goto_5
    const/16 v29, 0x0

    const v30, 0x1fffe

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_6

    :cond_5
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v6, :cond_6

    move v5, v7

    :cond_6
    and-int/2addr v2, v7

    invoke-virtual {v1, v2, v5}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    const-string v0, "\ud83c\uddfa\ud83c\uddf8"

    :goto_7
    move-object v8, v0

    goto :goto_8

    :cond_7
    const-string v0, "\ud83c\uddfa\ud83c\udde6"

    goto :goto_7

    :goto_8
    const/16 v0, 0x1a

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v12

    sget-object v0, Lf1/o;->a:Lf1/o;

    int-to-float v2, v4

    int-to-float v3, v6

    invoke-static {v0, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v9

    const/16 v29, 0x0

    const v30, 0x1fff4

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0xc30

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_9

    :cond_8
    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Lr0/q;->W()V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lod/m;->n(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lod/m;->n(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v6, :cond_9

    move v3, v7

    goto :goto_a

    :cond_9
    move v3, v5

    :goto_a
    and-int/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lf1/c;->p:Lf1/j;

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/4 v4, 0x5

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v7}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    invoke-static {v2, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v4, v1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v3, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v8, v1, Lr0/q;->S:Z

    if-eqz v8, :cond_a

    invoke-virtual {v1, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_b

    :cond_a
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_b
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v1, v2, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v1, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v0, :cond_b

    const-string v0, "N \u2191"

    :goto_c
    move-object v8, v0

    goto :goto_d

    :cond_b
    const-string v0, "\ud83e\udded"

    goto :goto_c

    :goto_d
    sget-wide v10, Lm1/p;->c:J

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->h:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffa

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x180

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_c
    move-object v0, v1

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lod/f;->b(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lod/f;->b(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_8
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lod/f;->b(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lnd/h0;->a(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Lf1/o;->a:Lf1/o;

    iget-boolean v12, v0, Lnd/o;->m:Z

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v8, v0, 0x3

    if-eq v8, v6, :cond_d

    move v8, v7

    goto :goto_f

    :cond_d
    move v8, v5

    :goto_f
    and-int/2addr v0, v7

    invoke-virtual {v13, v0, v8}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    int-to-float v0, v0

    int-to-float v4, v4

    invoke-static {v1, v0, v4}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v0

    sget-object v8, Lu/h;->c:Lu/c;

    sget-object v9, Lf1/c;->x:Lf1/h;

    invoke-static {v8, v9, v13, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v10

    iget-wide v14, v13, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v14

    invoke-static {v0, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v15, Le2/h;->b:Le2/g;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v6, v13, Lr0/q;->S:Z

    if-eqz v6, :cond_e

    invoke-virtual {v13, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_10

    :cond_e
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_10
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v10, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v10, Le2/g;->e:Le2/e;

    invoke-static {v10, v14, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v14, Le2/g;->g:Le2/e;

    invoke-static {v13, v11, v14}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v11, Le2/g;->h:Le2/d;

    invoke-static {v13, v11}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v0, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v0, "abrows"

    invoke-static {v1, v0, v13, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v0

    invoke-static {v8, v9, v13, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v8

    move-object/from16 p0, v3

    iget-wide v2, v13, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v0, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v9, v13, Lr0/q;->S:Z

    if-eqz v9, :cond_f

    invoke-virtual {v13, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_11

    :cond_f
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_11
    invoke-static {v6, v8, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10, v3, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v13, v14, v13, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, p0

    invoke-static {v2, v0, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v8, 0xff2e7d32L

    invoke-static {v8, v9}, Lm1/v;->d(J)J

    move-result-wide v8

    new-instance v0, Lcd/c;

    const-string v3, "\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435"

    const-string v7, "My location"

    invoke-direct {v0, v3, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x36

    const/16 v20, 0x8

    move-object/from16 v18, v13

    const-string v13, "A"

    const/16 v17, 0x0

    move-object/from16 v16, v0

    move-object v3, v14

    move-object v0, v15

    move-wide v14, v8

    invoke-static/range {v13 .. v20}, Lnd/h0;->d(Ljava/lang/String;JLcd/c;ZLr0/q;II)V

    const-wide v7, 0xffc62828L

    invoke-static {v7, v8}, Lm1/v;->d(J)J

    move-result-wide v7

    move-object v9, v11

    new-instance v11, Lcd/c;

    const-string v13, "\u0412\u0443\u043b. \u041b\u0435\u0441\u0456 \u0423\u043a\u0440\u0430\u0457\u043d\u043a\u0438, 12"

    const-string v14, "12 Lesi Ukrainky St"

    invoke-direct {v11, v13, v14}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x36

    const/4 v15, 0x0

    move-object v13, v9

    move-wide/from16 v52, v7

    move-object v7, v10

    move-wide/from16 v9, v52

    const-string v8, "B"

    move-object/from16 v31, v13

    move-object/from16 v13, v18

    invoke-static/range {v8 .. v15}, Lnd/h0;->d(Ljava/lang/String;JLcd/c;ZLr0/q;II)V

    if-eqz v12, :cond_10

    const v8, -0x49c2e4a3

    invoke-virtual {v13, v8}, Lr0/q;->b0(I)V

    invoke-static {v13, v5}, Lnd/h0;->c(Lr0/q;I)V

    :goto_12
    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    const/4 v8, 0x1

    goto :goto_13

    :cond_10
    const v8, 0x11668894

    invoke-virtual {v13, v8}, Lr0/q;->b0(I)V

    goto :goto_12

    :goto_13
    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    const/4 v8, 0x6

    int-to-float v8, v8

    invoke-static {v1, v8}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v8

    invoke-static {v8, v13}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const-string v8, "favs"

    const/16 v9, 0x36

    invoke-static {v1, v8, v13, v9}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v8

    invoke-static {v4}, Lu/h;->g(F)Lu/f;

    move-result-object v4

    sget-object v10, Lf1/c;->v:Lf1/i;

    invoke-static {v4, v10, v13, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v9, v13, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v8, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v11, v13, Lr0/q;->S:Z

    if-eqz v11, :cond_11

    invoke-virtual {v13, v0}, Lr0/q;->l(Li9/a;)V

    goto :goto_14

    :cond_11
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_14
    invoke-static {v6, v4, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v10, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v0, v31

    invoke-static {v9, v13, v3, v13, v0}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v2, v8, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v0, 0x6d66cde1

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    const-string v0, "\ud83d\uddfa"

    const-string v2, "\ud83d\udccd"

    const-string v3, "\ud83c\udfe0"

    const-string v4, "\ud83d\udcbc"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v5

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_13

    check-cast v3, Ljava/lang/String;

    const/4 v8, 0x1

    if-ne v2, v8, :cond_12

    const-wide v6, 0xff6750a4L

    :goto_16
    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v6

    move-wide v15, v6

    goto :goto_17

    :cond_12
    const-wide v6, 0xffe8def8L

    goto :goto_16

    :goto_17
    sget-object v14, La0/e;->a:La0/d;

    const/16 v2, 0x24

    int-to-float v2, v2

    invoke-static {v1, v2}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v2

    new-instance v6, Lnd/e;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v7}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v3, -0x79a58361    # -4.10928E-35f

    invoke-static {v3, v6, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v22

    const v24, 0xc00006

    const/16 v25, 0x78

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v13

    move-object v13, v2

    invoke-static/range {v13 .. v25}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move v2, v4

    move-object/from16 v13, v23

    goto :goto_15

    :cond_13
    invoke-static {}, Lg5/f;->P()V

    const/4 v0, 0x0

    throw v0

    :cond_14
    invoke-virtual {v13, v5}, Lr0/q;->q(Z)V

    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    goto :goto_18

    :cond_15
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_18
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    move v8, v7

    iget-boolean v0, v0, Lnd/o;->m:Z

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lnd/h0;->j(ZLr0/q;I)V

    goto/16 :goto_0

    :pswitch_c
    iget-boolean v8, v0, Lnd/o;->m:Z

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_16

    const/4 v1, 0x1

    :goto_19
    const/16 v27, 0x1

    goto :goto_1a

    :cond_16
    move v1, v5

    goto :goto_19

    :goto_1a
    and-int/lit8 v0, v0, 0x1

    invoke-virtual {v13, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lf1/o;->a:Lf1/o;

    sget-object v1, Lu/b1;->c:Lu/v;

    const/16 v2, 0xc

    int-to-float v2, v2

    invoke-static {v1, v2}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    int-to-float v2, v4

    invoke-static {v2}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    sget-object v3, Lf1/c;->x:Lf1/h;

    const/4 v4, 0x6

    invoke-static {v2, v3, v13, v4}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v6, v13, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v9, v13, Lr0/q;->S:Z

    if-eqz v9, :cond_17

    invoke-virtual {v13, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_1b

    :cond_17
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_1b
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v2, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v6, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v13, v4, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v13, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v10, Le2/g;->d:Le2/e;

    invoke-static {v10, v1, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "Settings"

    goto :goto_1c

    :cond_18
    const-string v1, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f"

    :goto_1c
    const-string v11, "\u2190 "

    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v13, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->g:Lp2/m0;

    sget-object v34, Lt2/k;->q:Lt2/k;

    const/16 v49, 0x0

    const v50, 0x1ffbe

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/high16 v48, 0x180000

    move-object/from16 v46, v1

    move-object/from16 v47, v13

    invoke-static/range {v28 .. v50}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "App tour"

    goto :goto_1d

    :cond_19
    const-string v1, "\u0422\u0443\u0440 \u043f\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443"

    :goto_1d
    invoke-static {}, Lcd/a;->b()Z

    move-result v11

    if-eqz v11, :cond_1a

    const-string v11, "A demo of the buttons and a drive"

    goto :goto_1e

    :cond_1a
    const-string v11, "\u0414\u0435\u043c\u043e\u043d\u0441\u0442\u0440\u0430\u0446\u0456\u044f \u043a\u043d\u043e\u043f\u043e\u043a \u0456 \u00ab\u043f\u043e\u0457\u0437\u0434\u043a\u0438\u00bb"

    :goto_1e
    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v12, v10

    move-object v10, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v51, v9

    move-object v9, v1

    move-object/from16 v1, v51

    move-object/from16 v51, v16

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "Help: icons and features"

    goto :goto_1f

    :cond_1b
    const-string v9, "\u0414\u043e\u0432\u0456\u0434\u043a\u0430: \u0437\u043d\u0430\u0447\u043a\u0438 \u0439 \u0444\u0443\u043d\u043a\u0446\u0456\u0457"

    :goto_1f
    invoke-static {}, Lcd/a;->b()Z

    move-result v10

    if-eqz v10, :cond_1c

    const-string v10, "What every icon means"

    goto :goto_20

    :cond_1c
    const-string v10, "\u0429\u043e \u043e\u0437\u043d\u0430\u0447\u0430\u0454 \u043a\u043e\u0436\u0435\u043d \u0437\u043d\u0430\u0447\u043e\u043a"

    :goto_20
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "Send a log to the developer"

    goto :goto_21

    :cond_1d
    const-string v9, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443"

    :goto_21
    invoke-static {}, Lcd/a;->b()Z

    move-result v10

    if-eqz v10, :cond_1e

    const-string v10, "Last one, selected or by day"

    goto :goto_22

    :cond_1e
    const-string v10, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439, \u043e\u0431\u0440\u0430\u043d\u0456 \u0430\u0431\u043e \u0437\u0430 \u0434\u0435\u043d\u044c"

    :goto_22
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v9, "Plan and updates"

    goto :goto_23

    :cond_1f
    const-string v9, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0439 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    :goto_23
    invoke-static {}, Lcd/a;->b()Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v10, "Plan, new versions"

    goto :goto_24

    :cond_20
    const-string v10, "\u0422\u0430\u0440\u0438\u0444, \u043d\u043e\u0432\u0456 \u0432\u0435\u0440\u0441\u0456\u0457"

    :goto_24
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v9

    if-eqz v9, :cond_21

    const-string v9, "Guidance and voice"

    goto :goto_25

    :cond_21
    const-string v9, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u0433\u043e\u043b\u043e\u0441"

    :goto_25
    invoke-static {}, Lcd/a;->b()Z

    move-result v10

    if-eqz v10, :cond_22

    const-string v10, "Rerouting, prompt volume, cameras"

    goto :goto_26

    :cond_22
    const-string v10, "\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430, \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043e\u043a, \u043a\u0430\u043c\u0435\u0440\u0438"

    :goto_26
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    const-string v9, "set_map_group"

    const/16 v10, 0x36

    invoke-static {v0, v9, v13, v10}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v9

    sget-object v14, Lf1/c;->l:Lf1/j;

    invoke-static {v14, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v10

    iget-wide v11, v13, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v9, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v15, v13, Lr0/q;->S:Z

    if-eqz v15, :cond_23

    invoke-virtual {v13, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_27

    :cond_23
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_27
    invoke-static {v1, v10, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v12, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v13, v6, v13, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v15, v51

    invoke-static {v15, v9, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v9

    if-eqz v9, :cond_24

    const-string v9, "Map & offline"

    goto :goto_28

    :cond_24
    const-string v9, "\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d"

    :goto_28
    invoke-static {}, Lcd/a;->b()Z

    move-result v10

    if-eqz v10, :cond_25

    const-string v10, "Downloading map, addresses and road graph"

    goto :goto_29

    :cond_25
    const-string v10, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043a\u0430\u0440\u0442\u0438, \u0430\u0434\u0440\u0435\u0441 \u0456 \u0433\u0440\u0430\u0444\u0430 \u0434\u043e\u0440\u0456\u0433"

    :goto_29
    const/4 v11, 0x0

    const/16 v12, 0x8

    move-object/from16 v16, v6

    move-object v6, v9

    const/4 v9, 0x0

    move-object v5, v13

    move-object v13, v7

    move-object v7, v10

    move-object v10, v5

    move-object/from16 v5, v16

    invoke-static/range {v6 .. v12}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lr0/q;->q(Z)V

    if-eqz v8, :cond_2c

    const v6, -0x1065498c

    invoke-virtual {v10, v6}, Lr0/q;->b0(I)V

    const/16 v6, 0x10

    int-to-float v6, v6

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v52, v14

    move-object v14, v0

    move-object v0, v15

    move v15, v6

    move-object/from16 v6, v52

    invoke-static/range {v14 .. v19}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v7

    move-object v8, v14

    const/4 v9, 0x6

    int-to-float v11, v9

    invoke-static {v11}, Lu/h;->g(F)Lu/f;

    move-result-object v11

    invoke-static {v11, v3, v10, v9}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v11, v10, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v7, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v12, v10, Lr0/q;->S:Z

    if-eqz v12, :cond_26

    invoke-virtual {v10, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_2a

    :cond_26
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_2a
    invoke-static {v1, v3, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v11, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9, v10, v5, v10, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v0, v7, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "Offline map"

    :goto_2b
    move-object v9, v3

    goto :goto_2c

    :cond_27
    const-string v3, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430"

    goto :goto_2b

    :goto_2c
    const/16 v14, 0xc30

    const/4 v15, 0x4

    move-object/from16 v47, v10

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, v13

    move-object/from16 v13, v47

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v7

    if-eqz v7, :cond_28

    const-string v7, "Offline address search"

    :goto_2d
    move-object v9, v7

    goto :goto_2e

    :cond_28
    const-string v7, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441"

    goto :goto_2d

    :goto_2e
    const/16 v14, 0xc30

    const/4 v15, 0x4

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    const-string v7, "set_graph"

    const/16 v9, 0x36

    invoke-static {v8, v7, v13, v9}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v6

    iget-wide v8, v13, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v7, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v10, v13, Lr0/q;->S:Z

    if-eqz v10, :cond_29

    invoke-virtual {v13, v3}, Lr0/q;->l(Li9/a;)V

    goto :goto_2f

    :cond_29
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_2f
    invoke-static {v1, v6, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v9, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8, v13, v5, v13, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v0, v7, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Offline routes"

    :goto_30
    move-object v9, v0

    goto :goto_31

    :cond_2a
    const-string v0, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438"

    goto :goto_30

    :goto_31
    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "Road graph of Ukraine \u00b7 download over Wi-Fi"

    :goto_32
    move-object v10, v0

    goto :goto_33

    :cond_2b
    const-string v0, "\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438 \u00b7 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u043f\u043e Wi-Fi"

    goto :goto_32

    :goto_33
    const/16 v14, 0xc00

    const/4 v15, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    const/4 v8, 0x0

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    goto :goto_34

    :cond_2c
    move-object v13, v10

    const/4 v8, 0x0

    const v0, -0x105c3d63

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    :goto_34
    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Sensors and logs"

    :goto_35
    move-object v9, v0

    goto :goto_36

    :cond_2d
    const-string v0, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438 \u0439 \u043b\u043e\u0433\u0438"

    goto :goto_35

    :goto_36
    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "For advanced users"

    :goto_37
    move-object v10, v0

    goto :goto_38

    :cond_2e
    const-string v0, "\u0414\u043b\u044f \u0434\u043e\u0441\u0432\u0456\u0434\u0447\u0435\u043d\u0438\u0445"

    goto :goto_37

    :goto_38
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Lr0/q;->q(Z)V

    goto :goto_39

    :cond_2f
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_39
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
