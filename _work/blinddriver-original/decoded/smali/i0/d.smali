.class public final synthetic Li0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Li9/a;Lr0/u0;Lu9/t;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Li0/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li0/d;->n:Ljava/lang/Object;

    iput-object p4, p0, Li0/d;->o:Ljava/lang/Object;

    iput-object p1, p0, Li0/d;->p:Ljava/lang/Object;

    iput-object p3, p0, Li0/d;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Li0/d;->l:I

    iput-object p1, p0, Li0/d;->n:Ljava/lang/Object;

    iput-object p2, p0, Li0/d;->m:Ljava/lang/Object;

    iput-object p3, p0, Li0/d;->o:Ljava/lang/Object;

    iput-object p4, p0, Li0/d;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Li9/c;Li9/a;I)V
    .locals 0

    .line 3
    const/4 p5, 0x3

    iput p5, p0, Li0/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/d;->n:Ljava/lang/Object;

    iput-object p2, p0, Li0/d;->m:Ljava/lang/Object;

    iput-object p3, p0, Li0/d;->o:Ljava/lang/Object;

    iput-object p4, p0, Li0/d;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lq1/b;Lf1/r;Lf1/e;Lc2/x0;I)V
    .locals 0

    .line 4
    const/4 p5, 0x6

    iput p5, p0, Li0/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/d;->m:Ljava/lang/Object;

    iput-object p2, p0, Li0/d;->n:Ljava/lang/Object;

    iput-object p3, p0, Li0/d;->o:Ljava/lang/Object;

    iput-object p4, p0, Li0/d;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/u0;Ljava/lang/Object;Lr0/u0;Lr0/u0;I)V
    .locals 0

    .line 5
    iput p5, p0, Li0/d;->l:I

    iput-object p1, p0, Li0/d;->m:Ljava/lang/Object;

    iput-object p2, p0, Li0/d;->n:Ljava/lang/Object;

    iput-object p3, p0, Li0/d;->o:Ljava/lang/Object;

    iput-object p4, p0, Li0/d;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    iget v1, v0, Li0/d;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Li0/d;->m:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lq1/b;

    iget-object v1, v0, Li0/d;->n:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lf1/r;

    iget-object v1, v0, Li0/d;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lf1/e;

    iget-object v0, v0, Li0/d;->p:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lc2/x0;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1b9

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lp/o;->c(Lq1/b;Lf1/r;Lf1/e;Lc2/x0;Lr0/q;I)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Li0/d;->m:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, v0, Li0/d;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v3, v0, Li0/d;->o:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v0, v0, Li0/d;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v12, p1

    check-cast v12, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v8

    :goto_1
    and-int/2addr v4, v7

    invoke-virtual {v12, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    int-to-float v4, v4

    invoke-static {v4}, Lu/h;->g(F)Lu/f;

    move-result-object v4

    sget-object v5, Lf1/c;->x:Lf1/h;

    const/4 v6, 0x6

    invoke-static {v4, v5, v12, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    iget-wide v5, v12, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    sget-object v9, Lf1/o;->a:Lf1/o;

    invoke-static {v9, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v11, v12, Lr0/q;->S:Z

    if-eqz v11, :cond_1

    invoke-virtual {v12, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_2
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v4, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v12, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v12, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v9, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v12, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->l:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffe

    move-object v6, v4

    const-string v4, "\u041d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb."

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move-object v9, v6

    move v10, v7

    const-wide/16 v6, 0x0

    move v13, v8

    move-object v11, v9

    const-wide/16 v8, 0x0

    move v14, v10

    const/4 v10, 0x0

    move-object v15, v11

    const/4 v11, 0x0

    move-object/from16 v23, v12

    move/from16 v16, v13

    const-wide/16 v12, 0x0

    move/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    move/from16 v19, v16

    const-wide/16 v15, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move/from16 v24, v19

    const/16 v19, 0x0

    move/from16 v27, v20

    const/16 v20, 0x0

    move-object/from16 v28, v21

    const/16 v21, 0x0

    move/from16 v29, v24

    const/16 v24, 0x6

    move-object/from16 p0, v0

    move/from16 p1, v27

    move-object/from16 v0, v28

    move-object/from16 v27, v2

    move/from16 v2, v29

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v23

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v7, v5, 0x1

    new-instance v15, Lb0/q1;

    const/16 v5, 0x7e

    invoke-direct {v15, v2, v5}, Lb0/q1;-><init>(II)V

    const/16 v5, 0x16

    invoke-static {v5}, La/a;->k(I)J

    move-result-wide v31

    new-instance v8, Lp2/m0;

    const-wide/16 v37, 0x0

    const v39, 0xffffdd

    const-wide/16 v29, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v39}, Lp2/m0;-><init>(JJLt2/k;JIJI)V

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v5, v6, :cond_2

    new-instance v5, Lnd/d0;

    const/4 v6, 0x3

    invoke-direct {v5, v1, v3, v6}, Lnd/d0;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v12, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Li9/c;

    sget-object v9, Lod/m;->U1:Lz0/d;

    const/high16 v24, 0xc30000

    const v25, 0x7d7f94

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v23, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v23

    const v23, 0x180030

    invoke-static/range {v4 .. v25}, Lo0/j2;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V

    move-object/from16 v12, v22

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    const v0, -0x417741e8

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    :goto_3
    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_3
    const v1, -0x417741e7

    invoke-virtual {v12, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x69dca812

    invoke-virtual {v12, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    const-wide v5, 0xff2e7d32L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    :goto_4
    move-wide v6, v5

    goto :goto_5

    :cond_4
    const v1, 0x69dcae26

    invoke-virtual {v12, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v5, v1, Lo0/u0;->w:J

    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    goto :goto_4

    :goto_5
    const/16 v25, 0x0

    const v26, 0xfffa

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v23, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v0

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v23

    goto :goto_3

    :goto_6
    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x1eebb6be

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    const/4 v13, 0x0

    const/16 v14, 0x3f

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v14}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    :goto_7
    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    move/from16 v14, p1

    goto :goto_8

    :cond_5
    const v0, -0x417479a1

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {v12, v14}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_6
    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Li0/d;->m:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, v0, Li0/d;->n:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lhd/e;

    iget-object v2, v0, Li0/d;->o:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lr0/u0;

    iget-object v0, v0, Li0/d;->p:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lr0/u0;

    move-object/from16 v15, p1

    check-cast v15, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_7

    move v2, v9

    goto :goto_a

    :cond_7
    move v2, v5

    :goto_a
    and-int/2addr v0, v9

    invoke-virtual {v15, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0xa3a05ef

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lcd/d;->u:Lcd/c;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v29, 0x0

    const v30, 0x1fffe

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v27, v15

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

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v27

    invoke-virtual {v15, v5}, Lr0/q;->q(Z)V

    goto/16 :goto_f

    :cond_8
    const v0, 0xa3a0cd8

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lu/h;->c:Lu/c;

    sget-object v2, Lf1/c;->x:Lf1/h;

    invoke-static {v0, v2, v15, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v2, v15, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v10, Lf1/o;->a:Lf1/o;

    invoke-static {v10, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v12, v15, Lr0/q;->S:Z

    if-eqz v12, :cond_9

    invoke-virtual {v15, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_b

    :cond_9
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_b
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v0, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v3, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v15, v0, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v15, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v8, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v0, 0x63d3b947

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhd/a;

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_b

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v3, v2, :cond_a

    goto :goto_d

    :cond_a
    move/from16 v40, v5

    move-object v5, v1

    move/from16 v1, v40

    goto :goto_e

    :cond_b
    :goto_d
    new-instance v3, Lh5/m;

    const/4 v8, 0x6

    move/from16 v40, v5

    move-object v5, v1

    move/from16 v1, v40

    invoke-direct/range {v3 .. v8}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_e
    move-object v8, v3

    check-cast v8, Li9/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    new-instance v3, Lb0/x2;

    const/16 v11, 0xb

    invoke-direct {v3, v11, v5}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    const v5, -0x5c6efa8f

    invoke-static {v5, v3, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const v16, 0x30000030

    const/16 v17, 0x1fc

    move-object v3, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v40, v9

    move-object v9, v2

    move/from16 v2, v40

    invoke-static/range {v8 .. v17}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    move v5, v1

    move v9, v2

    move-object v10, v3

    goto :goto_c

    :cond_c
    move v1, v5

    move v2, v9

    invoke-virtual {v15, v1}, Lr0/q;->q(Z)V

    invoke-virtual {v15, v2}, Lr0/q;->q(Z)V

    invoke-virtual {v15, v1}, Lr0/q;->q(Z)V

    goto :goto_f

    :cond_d
    invoke-virtual {v15}, Lr0/q;->W()V

    :goto_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Li0/d;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Li0/d;->m:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v0, Li0/d;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/c;

    iget-object v0, v0, Li0/d;->p:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Li9/a;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xc01

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lod/g3;->O(Ljava/lang/String;Ljava/lang/String;Li9/c;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Li0/d;->n:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lsc/q0;

    iget-object v1, v0, Li0/d;->m:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lua/nav/c;

    iget-object v1, v0, Li0/d;->o:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lf2/k2;

    iget-object v0, v0, Li0/d;->p:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Li9/f;

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v7, :cond_e

    move v2, v8

    goto :goto_10

    :cond_e
    const/4 v2, 0x0

    :goto_10
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x104

    int-to-float v1, v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    const/4 v7, 0x0

    invoke-static {v2, v7, v1, v8}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_f

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v7, v2, :cond_10

    :cond_f
    new-instance v2, Lb0/p0;

    const/4 v7, 0x5

    invoke-direct/range {v2 .. v7}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v7, v2

    :cond_10
    move-object v15, v7

    check-cast v15, Li9/c;

    const/16 v17, 0x6

    const/16 v18, 0x1fe

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v0

    move-object v7, v1

    invoke-static/range {v7 .. v18}, Lb6/g;->b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V

    goto :goto_11

    :cond_11
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lr0/q;->W()V

    :goto_11
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    iget-object v1, v0, Li0/d;->n:Ljava/lang/Object;

    check-cast v1, Li9/a;

    iget-object v2, v0, Li0/d;->o:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    iget-object v3, v0, Li0/d;->p:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    iget-object v0, v0, Li0/d;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v11, p1

    check-cast v11, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_12

    move v5, v7

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    :goto_12
    and-int/2addr v4, v7

    invoke-virtual {v11, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v11, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v11, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v11, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_13

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v5, v4, :cond_14

    :cond_13
    new-instance v5, Lb0/c3;

    invoke-direct {v5, v3, v1, v0, v2}, Lb0/c3;-><init>(Landroid/content/Context;Li9/a;Lr0/u0;Lu9/t;)V

    invoke-virtual {v11, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    move-object v4, v5

    check-cast v4, Li9/a;

    new-instance v0, Lb0/e;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lb0/e;-><init>(I)V

    const v1, 0x3c1a031f

    invoke-static {v1, v0, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v10

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v13}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_13

    :cond_15
    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_13
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    iget-object v1, v0, Li0/d;->n:Ljava/lang/Object;

    check-cast v1, Lf1/r;

    iget-object v2, v0, Li0/d;->m:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v3, v0, Li0/d;->o:Ljava/lang/Object;

    check-cast v3, Lz0/d;

    iget-object v0, v0, Li0/d;->p:Ljava/lang/Object;

    check-cast v0, Li0/c;

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_16

    move v6, v9

    goto :goto_14

    :cond_16
    move v6, v8

    :goto_14
    and-int/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v5, v6, :cond_17

    new-instance v5, Lb0/y;

    const/4 v7, 0x5

    invoke-direct {v5, v2, v7}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    check-cast v5, Li9/c;

    invoke-static {v1, v5}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    sget-object v5, Lf1/c;->l:Lf1/j;

    invoke-static {v5, v9}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v5

    iget-wide v10, v4, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v1, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v12, v4, Lr0/q;->S:Z

    if-eqz v12, :cond_18

    invoke-virtual {v4, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_15

    :cond_18
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_15
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v10, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v4, v5, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v4, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_19

    new-instance v1, Lb0/u;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    check-cast v1, Li9/a;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v4, v2}, Li0/c;->b(Li9/a;Lr0/q;I)V

    invoke-virtual {v4, v9}, Lr0/q;->q(Z)V

    goto :goto_16

    :cond_1a
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_16
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
