.class public final synthetic Lb0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lb0/n0;->l:I

    iput-object p1, p0, Lb0/n0;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lb0/n0;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm0/v1;ZI)V
    .locals 0

    .line 2
    const/4 p3, 0x0

    iput p3, p0, Lb0/n0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/n0;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lb0/n0;->m:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lb0/n0;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    sget-object v4, Lt8/z;->a:Lt8/z;

    const/4 v5, 0x1

    iget-boolean v6, v0, Lb0/n0;->m:Z

    iget-object v0, v0, Lb0/n0;->n:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lsc/q0;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit8 v8, v7, 0x3

    if-eq v8, v2, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    and-int/2addr v7, v5

    invoke-virtual {v1, v7, v8}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v0, v0, Lsc/q0;->f:Lsc/d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcd/d;->S0:Lcd/c;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_1
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v0, Lcd/d;->R0:Lcd/c;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcd/d;->Q0:Lcd/c;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    if-eqz v6, :cond_4

    const/16 v0, 0xe

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v2

    :goto_3
    move-wide v11, v2

    goto :goto_4

    :cond_4
    sget-wide v2, Lb3/o;->c:J

    goto :goto_3

    :goto_4
    const/16 v28, 0x0

    const v29, 0x1fff6

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, v1

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_5

    :cond_5
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Lr0/q;->W()V

    :goto_5
    return-object v4

    :pswitch_0
    check-cast v0, Ltc/a;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit8 v8, v7, 0x3

    if-eq v8, v2, :cond_6

    move v3, v5

    :cond_6
    and-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Ltc/a;->g:Z

    const-string v3, ""

    const-string v7, ": "

    if-eqz v2, :cond_9

    iget-object v2, v0, Ltc/a;->d:Ljava/util/List;

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, "\u041f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0430 \u0442\u0440\u0438\u0432\u043e\u0433\u0430"

    :cond_7
    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcd/h;->a:Ljava/lang/Object;

    iget-object v8, v0, Ltc/a;->b:Ltc/i;

    iget-object v8, v8, Ltc/i;->a:Ljava/lang/String;

    invoke-static {v8}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_8
    :goto_6
    invoke-static {v2, v7, v8}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_9
    const-string v2, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u043f\u043e\u0440\u0443\u0447"

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v0, Ltc/a;->e:Ljava/util/List;

    invoke-static {v8}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_a

    invoke-static {v8}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    :cond_a
    move-object v8, v3

    goto :goto_6

    :goto_7
    iget-object v7, v0, Ltc/a;->c:Ljava/lang/Long;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-string v9, " \u00b7 \u0437 "

    invoke-static {v9}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8}, Lod/b7;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    goto :goto_8

    :cond_b
    move-object v3, v7

    :cond_c
    :goto_8
    invoke-static {v2, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Ltc/a;->a:Ltc/f;

    sget-object v2, Ltc/f;->n:Ltc/f;

    if-ne v0, v2, :cond_d

    sget-wide v2, Lm1/p;->c:J

    :goto_9
    move-wide v9, v2

    goto :goto_a

    :cond_d
    sget-wide v2, Lm1/p;->b:J

    goto :goto_9

    :goto_a
    sget-object v13, Lt2/k;->q:Lt2/k;

    const/16 v0, 0x10

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v11

    const/16 v0, 0x16

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v18

    const/16 v0, 0xc

    int-to-float v0, v0

    const/16 v2, 0x8

    int-to-float v2, v2

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, v0, v2}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v8

    if-eqz v6, :cond_e

    :goto_b
    move/from16 v22, v5

    goto :goto_c

    :cond_e
    const v5, 0x7fffffff

    goto :goto_b

    :goto_c
    const/16 v28, 0x36

    const v29, 0x1d3d0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v27, 0x30c30

    move-object/from16 v26, v1

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_d

    :cond_f
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Lr0/q;->W()V

    :goto_d
    return-object v4

    :pswitch_1
    check-cast v0, Lo0/t3;

    move-object/from16 v7, p1

    check-cast v7, Lo1/d;

    move-object/from16 v1, p2

    check-cast v1, Ll1/b;

    sget-object v2, Lo0/a4;->a:Lo0/a4;

    invoke-virtual {v0, v6, v5}, Lo0/t3;->a(ZZ)J

    move-result-wide v8

    sget v0, Lo0/a4;->b:F

    iget-wide v11, v1, Ll1/b;->a:J

    invoke-interface {v7, v0}, Lb3/c;->V(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v0, v1

    const/4 v13, 0x0

    const/16 v14, 0x78

    invoke-static/range {v7 .. v14}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    return-object v4

    :pswitch_2
    check-cast v0, Lm0/v1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lb0/n1;->j(Lm0/v1;ZLr0/q;I)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
