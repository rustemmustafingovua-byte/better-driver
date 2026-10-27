.class public final synthetic Lnd/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iput p2, p0, Lnd/v;->l:I

    iput-boolean p3, p0, Lnd/v;->m:Z

    iput-object p1, p0, Lnd/v;->n:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lnd/v;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/v;->n:Ljava/lang/String;

    iput-boolean p2, p0, Lnd/v;->m:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lnd/v;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\u041d\u043e\u0432\u0430 \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u0440\u0430\u0445\u0443\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u044e \u043c\u0430\u0448\u0438\u043d\u0438 \u0437\u0430 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438: \u043f\u043e\u0445\u0438\u0431\u043a\u0430 \u043f\u0456\u0434 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f\u043c \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0432\u0434\u0432\u0456\u0447\u0456 \u043c\u0435\u043d\u0448\u0430, "

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0445\u0438\u0431\u043d\u0438\u0445 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043c\u0435\u043d\u0448\u0435. \u0414\u043b\u044f \u043d\u0435\u0457 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 (\u0442\u043e\u0439 \u0441\u0430\u043c\u0438\u0439, \u0449\u043e \u0434\u043b\u044f \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432), \u0440\u043e\u0437\u043c\u0456\u0440 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lnd/v;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0432\u0430\u0442\u0438 \u043a\u0440\u0430\u0449\u0435 \u0447\u0435\u0440\u0435\u0437 Wi-Fi.\n\n\u041f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e, \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u0434\u044c-\u043a\u043e\u043b\u0438: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438."

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, v0, Lnd/v;->m:Z

    if-nez v0, :cond_1

    const-string v0, "\n\n\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439 \u0443 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e."

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v23, 0x0

    const v24, 0x1fffe

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_2

    :cond_2
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lnd/v;->m:Z

    if-eqz v2, :cond_4

    const/16 v3, 0xc

    int-to-float v3, v3

    goto :goto_4

    :cond_4
    int-to-float v3, v4

    :goto_4
    const/4 v7, 0x0

    sget-object v8, Lf1/o;->a:Lf1/o;

    invoke-static {v8, v3, v7, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    sget-object v6, Lf1/c;->p:Lf1/j;

    invoke-static {v6, v4}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v4

    iget-wide v6, v1, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v3, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v9, v1, Lr0/q;->S:Z

    if-eqz v9, :cond_5

    invoke-virtual {v1, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_5
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v7, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v1, v4, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v1, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v2, :cond_6

    const/16 v2, 0xe

    :goto_6
    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v2

    goto :goto_7

    :cond_6
    const/16 v2, 0x18

    goto :goto_6

    :goto_7
    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v22, 0x0

    const v23, 0x1ffd6

    move-object/from16 v20, v1

    iget-object v1, v0, Lnd/v;->n:Ljava/lang/String;

    move v0, v5

    move-wide v5, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

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

    const/high16 v21, 0x30000

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_7
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    move v3, v5

    goto :goto_9

    :cond_8
    move v3, v4

    :goto_9
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lnd/v;->m:Z

    if-eqz v2, :cond_9

    const/16 v3, 0xc

    int-to-float v3, v3

    goto :goto_a

    :cond_9
    int-to-float v3, v4

    :goto_a
    const/4 v7, 0x0

    sget-object v8, Lf1/o;->a:Lf1/o;

    invoke-static {v8, v3, v7, v6}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    sget-object v6, Lf1/c;->p:Lf1/j;

    invoke-static {v6, v4}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v4

    iget-wide v6, v1, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v3, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v9, v1, Lr0/q;->S:Z

    if-eqz v9, :cond_a

    invoke-virtual {v1, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_b

    :cond_a
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_b
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v7, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v1, v4, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v1, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v2, :cond_b

    const/16 v2, 0xe

    :goto_c
    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v2

    goto :goto_d

    :cond_b
    const/16 v2, 0x18

    goto :goto_c

    :goto_d
    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v22, 0x0

    const v23, 0x3ffae

    iget-object v0, v0, Lnd/v;->n:Ljava/lang/String;

    move-wide/from16 v25, v2

    move v3, v5

    move-wide/from16 v5, v25

    const/4 v2, 0x0

    move v8, v3

    const-wide/16 v3, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v11, v9

    const-wide/16 v9, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    const/high16 v21, 0x180000

    move-object/from16 v25, v1

    move-object v1, v0

    move/from16 v0, v20

    move-object/from16 v20, v25

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_c
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
