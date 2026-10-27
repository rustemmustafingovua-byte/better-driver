.class public final synthetic Lod/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lod/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lod/o;->l:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041e\u043f\u043b\u0430\u0442\u0430 \u0437 \u0456\u043d\u0448\u043e\u0433\u043e \u043f\u0440\u0438\u0441\u0442\u0440\u043e\u044e"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1

    :cond_1
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041f\u043e\u0442\u043e\u0447\u043d\u0430 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0434\u0456\u044f\u0442\u0438\u043c\u0435 \u0434\u043e \u043a\u0456\u043d\u0446\u044f \u043e\u043f\u043b\u0430\u0447\u0435\u043d\u043e\u0433\u043e \u0442\u0435\u0440\u043c\u0456\u043d\u0443, \u043d\u043e\u0432\u0438\u0445 \u0441\u043f\u0438\u0441\u0430\u043d\u044c \u043d\u0435 \u0431\u0443\u0434\u0435. \u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f, \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0435 \u0447\u0435\u0440\u0435\u0437 Telegram-\u0431\u043e\u0442\u0430, \u0441\u043a\u0430\u0441\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0442\u0430\u043c (/cancel)."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_3

    :cond_3
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f?"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_5

    :cond_5
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    move v2, v4

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u0432\u0456\u0434 0.5 \u0434\u043e 5.0"

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_7

    :cond_7
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_8

    move v2, v4

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442, \u00d7"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_9

    :cond_9
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_a

    move v2, v4

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v3, v1, Lo0/u0;->b:J

    const/16 v1, 0xb

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v5

    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v1, 0x9

    int-to-float v1, v1

    const/4 v2, 0x3

    int-to-float v2, v2

    sget-object v8, Lf1/o;->a:Lf1/o;

    invoke-static {v8, v1, v2}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    const/16 v22, 0x0

    const v23, 0x1ffd0

    const-string v1, "PRO"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v21, 0x30c36

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_b

    :cond_b
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_b
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_c

    move v2, v4

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043c\u043e\u0457 \u0434\u0430\u043d\u0456?"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_d

    :cond_d
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_e

    move v2, v4

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    const-wide v1, 0xff8e8e93L

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v3}, Lod/v6;->q(JLr0/q;I)V

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_10

    move v2, v4

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide v1, 0xff1e63d6L

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v3}, Lod/v6;->q(JLr0/q;I)V

    goto :goto_11

    :cond_11
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_11
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_12

    move v2, v4

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x10

    int-to-float v1, v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v1

    const-wide v2, 0xffc62828L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    sget-object v4, Lm1/v;->b:Lm1/e0;

    invoke-static {v1, v2, v3, v4}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    goto :goto_13

    :cond_13
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_13
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_14

    move v1, v3

    goto :goto_14

    :cond_14
    const/4 v1, 0x0

    :goto_14
    and-int/2addr v0, v3

    invoke-virtual {v6, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-wide v3, Lm1/p;->c:J

    const/16 v0, 0x1c

    int-to-float v1, v0

    const/16 v2, 0x1b0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lod/e4;->n(FIJLf1/r;Lr0/q;)V

    goto :goto_15

    :cond_15
    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_a
    move-object/from16 v5, p1

    check-cast v5, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_16

    move v1, v3

    goto :goto_16

    :cond_16
    const/4 v1, 0x0

    :goto_16
    and-int/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x1c

    int-to-float v4, v0

    const/16 v6, 0x180

    const/4 v7, 0x3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v7}, Lod/e4;->c(Lf1/r;JFLr0/q;II)V

    goto :goto_17

    :cond_17
    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_17
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_18

    move v2, v5

    goto :goto_18

    :cond_18
    move v2, v4

    :goto_18
    and-int/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcd/d;->H:Lcd/c;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_19

    :cond_19
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_19
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1a

    move v2, v4

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 pk.\u2026"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1b

    :cond_1b
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_1b
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1c

    move v2, v5

    goto :goto_1c

    :cond_1c
    move v2, v4

    :goto_1c
    and-int/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcd/d;->s:Lcd/c;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1d

    :cond_1d
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_1d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1e

    move v2, v5

    goto :goto_1e

    :cond_1e
    move v2, v4

    :goto_1e
    and-int/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcd/d;->G:Lcd/c;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1f

    :cond_1f
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_1f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_20

    move v2, v4

    goto :goto_20

    :cond_20
    const/4 v2, 0x0

    :goto_20
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0421\u043a\u0430\u0447\u0430\u043d\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456 \u0439 \u043f\u0435\u0440\u0435\u0433\u043b\u044f\u043d\u0443\u0442\u0456 \u0434\u0456\u043b\u044f\u043d\u043a\u0438 \u043a\u0430\u0440\u0442\u0438 \u0431\u0443\u0434\u0435 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e. \u0411\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043a\u0430\u0440\u0442\u0430 \u0442\u0430\u043c \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043d\u0435 \u043c\u0430\u043b\u044e\u0432\u0430\u0442\u0438\u0441\u044f, \u043f\u043e\u043a\u0438 \u0457\u0457 \u0437\u043d\u043e\u0432\u0443 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0430\u0442\u044c."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_21

    :cond_21
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_21
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_22

    move v2, v4

    goto :goto_22

    :cond_22
    const/4 v2, 0x0

    :goto_22
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u0438 \u043a\u0435\u0448 \u043a\u0430\u0440\u0442\u0438?"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_23

    :cond_23
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_23
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_24

    move v2, v4

    goto :goto_24

    :cond_24
    const/4 v2, 0x0

    :goto_24
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0xf

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v5

    const/16 v22, 0xc00

    const v23, 0x1dff6

    const-string v1, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0xc06

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_25

    :cond_25
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_25
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_26

    move v2, v4

    goto :goto_26

    :cond_26
    const/4 v2, 0x0

    :goto_26
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0xf

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v5

    const/16 v22, 0xc00

    const v23, 0x1dff6

    const-string v1, "\u041b\u0435\u0433\u043a\u043e\u0432\u0438\u0439"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0xc06

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_27

    :cond_27
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_27
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_28

    move v2, v4

    goto :goto_28

    :cond_28
    const/4 v2, 0x0

    :goto_28
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0423\u0441\u0456 \u043f\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447\u0456 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u044c\u0441\u044f \u0434\u043e \u0442\u0438\u043f\u043e\u0432\u0438\u0445 \u0437\u043d\u0430\u0447\u0435\u043d\u044c. \u041a\u043b\u044e\u0447 Mapbox \u043d\u0435 \u0432\u0438\u0434\u0430\u043b\u044f\u0454\u0442\u044c\u0441\u044f."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_29

    :cond_29
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_29
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2a

    move v2, v4

    goto :goto_2a

    :cond_2a
    const/4 v2, 0x0

    :goto_2a
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f?"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_2b

    :cond_2b
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_2b
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2c

    move v2, v4

    goto :goto_2c

    :cond_2c
    const/4 v2, 0x0

    :goto_2c
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0429\u043e \u0432\u0456\u0434\u0431\u0443\u0432\u0430\u043b\u043e\u0441\u044f (\u0434\u0435, \u0449\u043e \u043d\u0435 \u0442\u0430\u043a)"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_2d

    :cond_2d
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_2d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_16
    move-object/from16 v10, p1

    check-cast v10, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2e

    move v1, v3

    goto :goto_2e

    :cond_2e
    const/4 v1, 0x0

    :goto_2e
    and-int/2addr v0, v3

    invoke-virtual {v10, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_2f

    new-instance v0, Ln/p1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ln/p1;-><init>(I)V

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2f
    move-object v9, v0

    check-cast v9, Li9/c;

    const/high16 v11, 0x30000000

    const/16 v12, 0x1ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v12}, Lb6/g;->b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V

    goto :goto_2f

    :cond_30
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_2f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_31

    move v2, v4

    goto :goto_30

    :cond_31
    const/4 v2, 0x0

    :goto_30
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0429\u043e \u0431\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_31

    :cond_32
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_31
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_33

    move v2, v4

    goto :goto_32

    :cond_33
    const/4 v2, 0x0

    :goto_32
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "\u041b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u043c\u0456\u0441\u0442\u044f\u0442\u044c \u0432\u0430\u0448 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0456 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438, \u0442\u043e\u0431\u0442\u043e \u0446\u0435 \u043f\u0435\u0440\u0441\u043e\u043d\u0430\u043b\u044c\u043d\u0456 \u0434\u0430\u043d\u0456. \u0412\u0438 \u0431\u0430\u0447\u0438\u0442\u0435, \u0449\u043e \u0441\u0430\u043c\u0435 \u043f\u0456\u0434\u0435 (\u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u0429\u043e \u0431\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e\u00bb).\n\n\u0414\u0430\u043d\u0456 \u043e\u0442\u0440\u0438\u043c\u0443\u0454 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a BlindDriver \u043b\u0438\u0448\u0435 \u0449\u043e\u0431 \u043f\u043e\u043a\u0440\u0430\u0449\u0438\u0442\u0438 \u043d\u0430\u0432\u0456\u0433\u0430\u0446\u0456\u044e. \u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0444\u0430\u0439\u043b\u0438 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f 90 \u0434\u043d\u0456\u0432, \u043f\u043e\u0442\u0456\u043c \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0456\u043b\u044c\u043a\u0438 \u0437\u0432\u0435\u0434\u0435\u043d\u0430 \u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u044f \u0431\u0435\u0437 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442 \u0456 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u044f. \u041e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0439 \u043a\u0456\u043d\u0446\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0438 (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c 300 \u043c) \u043f\u0440\u0438\u0431\u0438\u0440\u0430\u0454 \u0437 \u043b\u043e\u0433\u0443 \u0434\u0456\u043c \u0456 \u0440\u043e\u0431\u043e\u0442\u0443; \u0447\u0430\u0441 \u0437\u0430\u043f\u0438\u0441\u0443 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f.\n\n\u0429\u043e\u0431 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0435, \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u0442\u0435 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 (Telegram @Blind_Driver_bot) \u0456 \u043d\u0430\u0437\u0432\u0456\u0442\u044c \u043d\u043e\u043c\u0435\u0440 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_33

    :cond_34
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_33
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_35

    move v2, v4

    goto :goto_34

    :cond_35
    const/4 v2, 0x0

    :goto_34
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u043b\u043e\u0433\u0456\u0432"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_35

    :cond_36
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_35
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_37

    move v2, v4

    goto :goto_36

    :cond_37
    const/4 v2, 0x0

    :goto_36
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0456 \u043b\u043e\u0433\u0438"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_37

    :cond_38
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_37
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_39

    move v2, v4

    goto :goto_38

    :cond_39
    const/4 v2, 0x0

    :goto_38
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0422\u043e\u0447\u043d\u0456\u0448\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_39

    :cond_3a
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_39
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3b

    move v2, v5

    goto :goto_3a

    :cond_3b
    move v2, v4

    :goto_3a
    and-int/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Lcd/d;->z0:Lcd/c;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_3b

    :cond_3c
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_3b
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
