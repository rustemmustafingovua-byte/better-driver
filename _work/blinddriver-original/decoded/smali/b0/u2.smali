.class public final synthetic Lb0/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/u2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lb0/u2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v0, v0, Lb0/u2;->l:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcd/d;->y0:Lcd/c;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v30, 0x0

    const v31, 0x1fffe

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v28, v0

    invoke-static/range {v9 .. v31}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1

    :cond_1
    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lr0/q;->W()V

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

    if-eq v2, v6, :cond_2

    move v2, v8

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcd/d;->x0:Lcd/c;

    new-array v2, v7, [Ljava/lang/Object;

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

    if-eq v2, v6, :cond_4

    move v7, v8

    :cond_4
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_4
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

    if-eq v2, v6, :cond_6

    move v2, v8

    goto :goto_5

    :cond_6
    move v2, v7

    :goto_5
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcd/d;->T0:Lcd/c;

    new-array v2, v7, [Ljava/lang/Object;

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

    goto :goto_6

    :cond_7
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_6
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

    if-eq v2, v6, :cond_8

    move v7, v8

    :cond_8
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "B"

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

    goto :goto_7

    :cond_9
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_7
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

    if-eq v2, v6, :cond_a

    move v7, v8

    :cond_a
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "A"

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

    goto :goto_8

    :cond_b
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_8
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

    if-eq v2, v6, :cond_c

    move v2, v8

    goto :goto_9

    :cond_c
    move v2, v7

    :goto_9
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/16 v2, 0xc

    int-to-float v2, v2

    int-to-float v3, v5

    invoke-static {v1, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v1

    sget-object v2, Lu/h;->c:Lu/c;

    sget-object v3, Lf1/c;->x:Lf1/h;

    invoke-static {v2, v3, v0, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v3, v0, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v6, v0, Lr0/q;->S:Z

    if-eqz v6, :cond_d

    invoke-virtual {v0, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_a
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v2, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v0, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v0, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-wide v11, Lm1/p;->c:J

    sget-object v15, Lt2/k;->q:Lt2/k;

    const/16 v30, 0x0

    const v31, 0x1ffda

    const-string v9, "\u0413\u0435\u043e\u043b\u043e\u043a\u0430\u0446\u0456\u044e \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e"

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v29, 0x30186

    move-object/from16 v28, v0

    invoke-static/range {v9 .. v31}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const v31, 0xfffa

    const-string v9, "\u0411\u0435\u0437 \u043d\u0435\u0457 \u043d\u0435\u043c\u0430\u0454 \u043d\u0456 GPS, \u043d\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0437\u0430 \u043c\u0435\u0440\u0435\u0436\u0435\u044e. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0443\u0432\u0456\u043c\u043a\u043d\u0443\u0442\u0438."

    const/4 v15, 0x0

    const/16 v29, 0x186

    move-object/from16 v27, v1

    invoke-static/range {v9 .. v31}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_e
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_b
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

    if-eq v2, v6, :cond_f

    move v7, v8

    :cond_f
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430"

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

    goto :goto_c

    :cond_10
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_c
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

    if-eq v2, v6, :cond_11

    move v7, v8

    :cond_11
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041d\u0430\u043f\u0438\u0441\u0430\u0442\u0438 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443"

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

    :cond_12
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_d
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

    if-eq v2, v6, :cond_13

    move v7, v8

    :cond_13
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0417\u0430\u0432\u0442\u0440\u0430 \u0437\u0430\u043a\u0456\u043d\u0447\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434"

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

    goto :goto_e

    :cond_14
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_15

    move v7, v8

    :cond_15
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u0438 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c \u043c\u043e\u0436\u043d\u0430 \u0432 Telegram-\u0431\u043e\u0442\u0456: \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043d\u0430 1, 3, 6 \u0430\u0431\u043e 12 \u043c\u0456\u0441\u044f\u0446\u0456\u0432 (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438\u00bb)."

    const-string v2, "\u041f\u0456\u0441\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u043b\u0438\u0448\u0438\u0442\u044c\u0441\u044f \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439 \u0442\u0430\u0440\u0438\u0444: \u0434\u043e 5 \u043f\u043e\u0431\u0443\u0434\u043e\u0432 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043d\u0430 \u0434\u043e\u0431\u0443, 1 \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u0430 \u0442\u043e\u0447\u043a\u0430, \u0434\u043e 5 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u0456 \u0430\u0434\u0440\u0435\u0441. \u0412\u0438\u043c\u043a\u043d\u0443\u0442\u044c\u0441\u044f: \u043a\u0430\u043c\u0435\u0440\u0438 \u0439 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438 \u043d\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456, \u0430\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a, \u043e\u0444\u043b\u0430\u0439\u043d-\u0440\u0435\u0436\u0438\u043c \u0456 \u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0434\u043b\u044f Waze/\u043a\u0430\u0440\u0442. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    goto :goto_f

    :cond_16
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->k(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/f;->g(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lc2/q0;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lc2/q0;->u(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lc2/q0;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lc2/q0;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lc2/q0;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lc2/q0;->z(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lc2/q0;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lc2/q0;->b0(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lnd/h0;->c(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lnd/h0;->g(Lr0/q;I)V

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

    if-eq v2, v6, :cond_17

    move v2, v8

    goto :goto_10

    :cond_17
    move v2, v7

    :goto_10
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lnd/a;->K:Lcd/c;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-wide v7, Lm1/p;->c:J

    invoke-static {v4}, La/a;->k(I)J

    move-result-wide v4

    move-wide v8, v7

    sget-object v7, Lt2/k;->q:Lt2/k;

    sget-object v2, Lf1/o;->a:Lf1/o;

    int-to-float v3, v3

    int-to-float v6, v6

    invoke-static {v2, v3, v6}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    const/16 v22, 0x0

    const v23, 0x3ffa8

    move-wide v5, v4

    move-wide v3, v8

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

    const v21, 0x1861b0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_11

    :cond_18
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_11
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_13
    sget-object v0, Lf1/o;->a:Lf1/o;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v9, v4, 0x3

    if-eq v9, v6, :cond_19

    move v6, v8

    goto :goto_12

    :cond_19
    move v6, v7

    :goto_12
    and-int/2addr v4, v8

    invoke-virtual {v3, v4, v6}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x4

    int-to-float v4, v4

    invoke-static {v0, v2, v4, v8}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    sget-object v4, Lu/h;->c:Lu/c;

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v4, v6, v3, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    iget-wide v9, v3, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v2, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v11, v3, Lr0/q;->S:Z

    if-eqz v11, :cond_1a

    invoke-virtual {v3, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_13

    :cond_1a
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_13
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v4, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v9, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v3, v4, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v3, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v2, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v2, -0x20ca3526

    invoke-virtual {v3, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lcd/d;->x0:Lcd/c;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcd/d;->y0:Lcd/c;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcd/d;->z0:Lcd/c;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v4, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v3, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->k:Lp2/m0;

    int-to-float v6, v1

    int-to-float v10, v5

    invoke-static {v0, v6, v10}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v10

    const/16 v30, 0x0

    const v31, 0x1fffc

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x30

    move-object/from16 v28, v3

    move-object/from16 v27, v4

    invoke-static/range {v9 .. v31}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_14

    :cond_1b
    invoke-virtual {v3, v7}, Lr0/q;->q(Z)V

    invoke-virtual {v3, v8}, Lr0/q;->q(Z)V

    goto :goto_15

    :cond_1c
    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    if-eq v4, v6, :cond_1d

    move v7, v8

    :cond_1d
    and-int/2addr v3, v8

    invoke-virtual {v0, v3, v7}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lf1/o;->a:Lf1/o;

    int-to-float v1, v1

    invoke-static {v3, v1, v2, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    sget-object v4, Lf1/c;->v:Lf1/i;

    sget-object v5, Lu/h;->a:Lu/n;

    const/16 v6, 0x30

    invoke-static {v5, v4, v0, v6}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v5, v0, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v2, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v9, v0, Lr0/q;->S:Z

    if-eqz v9, :cond_1e

    invoke-virtual {v0, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_16

    :cond_1e
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_16
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v4, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v0, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v0, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v2, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "Where to (address)"

    :goto_17
    move-object v9, v2

    goto :goto_18

    :cond_1f
    const-string v2, "\u041a\u0443\u0434\u0438 (\u0430\u0434\u0440\u0435\u0441\u0430)"

    goto :goto_17

    :goto_18
    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->h:Lp2/m0;

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v5, v4

    const-wide/16 v10, 0x0

    cmpl-double v5, v5, v10

    if-lez v5, :cond_20

    goto :goto_19

    :cond_20
    const-string v5, "invalid weight; must be greater than zero"

    invoke-static {v5}, Lv/a;->a(Ljava/lang/String;)V

    :goto_19
    new-instance v10, Lu/j0;

    invoke-direct {v10, v4, v8}, Lu/j0;-><init>(FZ)V

    const/16 v30, 0x0

    const v31, 0x1fffc

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v28, v0

    move-object/from16 v27, v2

    invoke-static/range {v9 .. v31}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/16 v0, 0x12

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v13

    const v31, 0x3ffee

    const-string v9, "\u25be"

    const/4 v10, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x6006

    invoke-static/range {v9 .. v31}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v28

    invoke-static {v3, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/16 v1, 0x14

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v13

    const-string v9, "\ud83d\udccb"

    invoke-static/range {v9 .. v31}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    goto :goto_1a

    :cond_21
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_1a
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

    if-eq v2, v6, :cond_22

    move v2, v8

    goto :goto_1b

    :cond_22
    move v2, v7

    :goto_1b
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lnd/a;->K:Lcd/c;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-wide v7, Lm1/p;->c:J

    invoke-static {v4}, La/a;->k(I)J

    move-result-wide v4

    move-wide v8, v7

    sget-object v7, Lt2/k;->q:Lt2/k;

    sget-object v2, Lf1/o;->a:Lf1/o;

    int-to-float v3, v3

    int-to-float v6, v6

    invoke-static {v2, v3, v6}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    const/16 v22, 0x0

    const v23, 0x3ffa8

    move-wide v5, v4

    move-wide v3, v8

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

    const v21, 0x1861b0

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1c

    :cond_23
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_1c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lm0/i1;

    iget-object v0, v0, Lm0/i1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Double;

    const-string v2, "a"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Li9/a;

    invoke-static {v0, v1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->b(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Li9/a;

    invoke-static {v0, v1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->c(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    return-object p2

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lc1/d;

    iget-object v1, v0, Lc1/d;->l:Ljava/util/Map;

    iget-object v0, v0, Lc1/d;->m:Lk/m0;

    iget-object v2, v0, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v3, v0, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v0, v0, Lk/m0;->a:[J

    array-length v4, v0

    sub-int/2addr v4, v6

    if-ltz v4, :cond_28

    move v6, v7

    :goto_1d
    aget-wide v8, v0, v6

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_27

    sub-int v10, v6, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    move v11, v7

    :goto_1e
    if-ge v11, v10, :cond_26

    const-wide/16 v12, 0xff

    and-long/2addr v12, v8

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_25

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget-object v13, v2, v12

    aget-object v12, v3, v12

    check-cast v12, Lc1/f;

    invoke-interface {v12}, Lc1/f;->c()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_24
    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_1f
    shr-long/2addr v8, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_26
    if-ne v10, v5, :cond_28

    :cond_27
    if-eq v6, v4, :cond_28

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_28
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    :cond_29
    return-object v1

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lb0/v2;

    iget-object v1, v0, Lb0/v2;->a:Lr0/a1;

    invoke-virtual {v1}, Lr0/a1;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v0, v0, Lb0/v2;->f:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/m1;

    sget-object v2, Lr/m1;->l:Lr/m1;

    if-ne v0, v2, :cond_2a

    move v7, v8

    :cond_2a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

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
