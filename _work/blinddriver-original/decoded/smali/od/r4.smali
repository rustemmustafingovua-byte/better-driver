.class public final synthetic Lod/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/a1;

.field public final synthetic p:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;I)V
    .locals 0

    iput p5, p0, Lod/r4;->l:I

    iput-object p1, p0, Lod/r4;->m:Lr0/u0;

    iput-object p2, p0, Lod/r4;->n:Lr0/u0;

    iput-object p3, p0, Lod/r4;->o:Lr0/a1;

    iput-object p4, p0, Lod/r4;->p:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lod/r4;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v6, p2

    check-cast v6, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$Section"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    and-int/2addr v2, v4

    invoke-virtual {v6, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lod/r4;->m:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-ne v2, v9, :cond_1

    new-instance v2, Lb0/y;

    const/16 v3, 0x17

    invoke-direct {v2, v1, v3}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v6, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    move-object v5, v2

    check-cast v5, Li9/c;

    const/16 v7, 0xc36

    const-string v2, "\u0414\u043e\u0434\u0430\u0442\u0438 \u0434\u0430\u043d\u0456 \u043f\u0440\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v3, "\u041c\u043e\u0434\u0435\u043b\u044c, \u0432\u0435\u0440\u0441\u0456\u044f Android, \u0434\u0430\u0442\u0447\u0438\u043a\u0438, \u043c\u043e\u0436\u043b\u0438\u0432\u043e\u0441\u0442\u0456 GNSS: \u0434\u043e\u043f\u043e\u043c\u0430\u0433\u0430\u0454 \u043f\u0456\u0434\u0456\u0431\u0440\u0430\u0442\u0438 \u043f\u043e\u0440\u043e\u0433\u0438 \u043f\u0456\u0434 \u0432\u0430\u0448 \u0442\u0435\u043b\u0435\u0444\u043e\u043d."

    invoke-static/range {v2 .. v7}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    iget-object v1, v0, Lod/r4;->n:Lr0/u0;

    invoke-static {v1}, Lod/m;->q(Lr0/u0;)Z

    move-result v4

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_2

    new-instance v2, Lb0/y;

    const/16 v3, 0x18

    invoke-direct {v2, v1, v3}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v6, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v5, v2

    check-cast v5, Li9/c;

    const/16 v7, 0xc36

    const-string v2, "\u041e\u0431\u0440\u0456\u0437\u0430\u0442\u0438 \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0456 \u043a\u0456\u043d\u0435\u0446\u044c \u043f\u043e\u0457\u0437\u0434\u043a\u0438"

    const-string v3, "\u0412\u0438\u0434\u0430\u043b\u044f\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u043f\u043e\u0431\u043b\u0438\u0437\u0443 \u0441\u0442\u0430\u0440\u0442\u0443 \u0439 \u0444\u0456\u043d\u0456\u0448\u0443 (\u0434\u0456\u043c, \u0440\u043e\u0431\u043e\u0442\u0430) \u0442\u0430 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 \u0437 \u043d\u043e\u0442\u0430\u0442\u043e\u043a. \u0427\u0430\u0441 \u0437\u0430\u043f\u0438\u0441\u0443 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f."

    invoke-static/range {v2 .. v7}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, -0x4100e5c6

    invoke-virtual {v6, v1}, Lr0/q;->b0(I)V

    iget-object v1, v0, Lod/r4;->o:Lr0/a1;

    invoke-virtual {v1}, Lr0/a1;->g()F

    move-result v2

    float-to-int v2, v2

    const-string v3, "\u0420\u0430\u0434\u0456\u0443\u0441 \u043e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f: "

    const-string v4, " \u043c"

    invoke-static {v2, v3, v4}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v6, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v21, v6

    const-wide/16 v6, 0x0

    move v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move v12, v10

    move-object v13, v11

    const-wide/16 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    move v15, v14

    const-wide/16 v13, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v25, v19

    const/16 v19, 0x0

    move-object/from16 v26, v22

    const/16 v22, 0x0

    move-object/from16 v0, v26

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v6, v21

    invoke-virtual {v1}, Lr0/a1;->g()F

    move-result v2

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    new-instance v3, Lb0/a;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Li9/c;

    move-object/from16 v21, v6

    new-instance v6, Lo9/a;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v6, v1, v4}, Lo9/a;-><init>(FF)V

    const/16 v12, 0x30

    const/16 v13, 0x1ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, v21

    invoke-static/range {v2 .. v13}, Lo0/m4;->b(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;Lr0/q;II)V

    move-object v6, v11

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lr0/q;->q(Z)V

    goto :goto_1

    :cond_4
    move v12, v8

    move-object v0, v9

    const v1, -0x40fcec77

    invoke-virtual {v6, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v6, v12}, Lr0/q;->q(Z)V

    :goto_1
    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    new-instance v1, Lod/p4;

    const/4 v0, 0x5

    move-object/from16 v2, p0

    iget-object v2, v2, Lod/r4;->p:Lr0/u0;

    invoke-direct {v1, v2, v0}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v6, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v2, v1

    check-cast v2, Li9/a;

    sget-object v8, Lod/m;->U:Lz0/d;

    const v10, 0x30000006

    const/16 v11, 0x1fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v21, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, v21

    invoke-static/range {v2 .. v11}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object v2, v0

    move-object/from16 v0, p1

    check-cast v0, Lw/b;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "$this$item"

    invoke-static {v0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, v3, 0x11

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-eq v0, v4, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    and-int/2addr v3, v5

    invoke-virtual {v1, v3, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lod/r4;

    const/4 v7, 0x1

    iget-object v3, v2, Lod/r4;->m:Lr0/u0;

    iget-object v4, v2, Lod/r4;->n:Lr0/u0;

    iget-object v5, v2, Lod/r4;->o:Lr0/a1;

    iget-object v6, v2, Lod/r4;->p:Lr0/u0;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lod/r4;-><init>(Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;I)V

    const v0, 0x7f458d99

    invoke-static {v0, v2, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v2, "\u041f\u0440\u0438\u0432\u0430\u0442\u043d\u0456\u0441\u0442\u044c"

    const/16 v3, 0x36

    invoke-static {v2, v0, v1, v3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
