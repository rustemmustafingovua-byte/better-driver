.class public final synthetic Lod/h6;
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

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lod/h6;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/h6;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/h6;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/h6;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/h6;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/h6;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/h6;->r:Ljava/lang/Object;

    iput-object p7, p0, Lod/h6;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;I)V
    .locals 0

    .line 2
    const/4 p8, 0x0

    iput p8, p0, Lod/h6;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/h6;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/h6;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/h6;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/h6;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/h6;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/h6;->r:Ljava/lang/Object;

    iput-object p7, p0, Lod/h6;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lod/h6;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/h6;->n:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, v0, Lod/h6;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v3, v0, Lod/h6;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v4, v0, Lod/h6;->q:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v5, v0, Lod/h6;->r:Ljava/lang/Object;

    check-cast v5, Lr0/u0;

    iget-object v6, v0, Lod/h6;->s:Ljava/lang/Object;

    check-cast v6, Lr0/u0;

    move-object/from16 v15, p1

    check-cast v15, Lr0/q;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v14, Lf1/c;->v:Lf1/i;

    and-int/lit8 v8, v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v8, v9, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/2addr v7, v10

    invoke-virtual {v15, v7, v8}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x6

    int-to-float v8, v7

    invoke-static {v8}, Lu/h;->g(F)Lu/f;

    move-result-object v8

    sget-object v9, Lf1/c;->x:Lf1/h;

    invoke-static {v8, v9, v15, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v8, v15, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    sget-object v12, Lf1/o;->a:Lf1/o;

    invoke-static {v12, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v13

    sget-object v16, Le2/h;->b:Le2/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v11, v15, Lr0/q;->S:Z

    if-eqz v11, :cond_1

    invoke-virtual {v15, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_1
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v7, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v9, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v15, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v15, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v7, Le2/g;->d:Le2/e;

    invoke-static {v7, v13, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x129004b9

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    const/16 v16, 0x0

    const/16 v17, 0x3f

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static/range {v7 .. v17}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    invoke-virtual {v15, v0}, Lr0/q;->q(Z)V

    move-object/from16 v30, v5

    move v5, v0

    goto/16 :goto_6

    :cond_2
    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/net/PricesDto;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lua/nav/net/PricesDto;->b:Z

    if-ne v2, v1, :cond_3

    iget-object v0, v0, Lod/h6;->m:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object/from16 v30, v5

    move v5, v7

    goto/16 :goto_5

    :cond_4
    const v2, 0x3f756a0c

    invoke-virtual {v15, v2}, Lr0/q;->b0(I)V

    const v2, 0x12902d4d

    invoke-virtual {v15, v2}, Lr0/q;->b0(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v13, Lr0/m;->a:Lr0/e;

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt8/p;

    iget-object v1, v2, Lt8/p;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v11, v2, Lt8/p;->m:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v2, v2, Lt8/p;->n:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v12, v10}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v10

    invoke-virtual {v15, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v16, :cond_5

    if-ne v7, v13, :cond_6

    :cond_5
    new-instance v7, Lod/i7;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v3, v8}, Lod/i7;-><init>(Ljava/lang/String;Lr0/u0;I)V

    invoke-virtual {v15, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Li9/a;

    move-object/from16 p2, v0

    const/4 v0, 0x0

    const/16 v8, 0xf

    invoke-static {v10, v0, v9, v7, v8}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v7

    sget-object v8, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v8, v14, v15, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v8

    iget-wide v9, v15, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v7, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    sget-object v16, Le2/h;->b:Le2/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Le2/g;->b:Le2/f;

    invoke-virtual {v15}, Lr0/q;->e0()V

    move-object/from16 v30, v5

    iget-boolean v5, v15, Lr0/q;->S:Z

    if-eqz v5, :cond_7

    invoke-virtual {v15, v0}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_3
    sget-object v0, Le2/g;->f:Le2/e;

    invoke-static {v0, v8, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v10, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v15, v0, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v15, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v7, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v15, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_8

    if-ne v5, v13, :cond_9

    :cond_8
    new-instance v5, Lod/i7;

    const/4 v0, 0x1

    invoke-direct {v5, v1, v3, v0}, Lod/i7;-><init>(Ljava/lang/String;Lr0/u0;I)V

    invoke-virtual {v15, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v8, v5

    check-cast v8, Li9/a;

    move-object v0, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v12

    move-object v12, v15

    const/4 v5, 0x0

    invoke-static/range {v7 .. v13}, Lo0/x2;->a(ZLi9/a;Lf1/r;ZLo0/v2;Lr0/q;I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u0433\u0440\u043d"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->j:Lp2/m0;

    const/16 v28, 0x0

    const v29, 0xfffe

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    const/4 v14, 0x0

    move-object/from16 v26, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v26

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lr0/q;->q(Z)V

    move-object v12, v1

    move-object v14, v2

    move v7, v5

    move-object/from16 v5, v30

    move v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_2

    :cond_a
    move-object/from16 v30, v5

    move v5, v7

    move-object v1, v12

    move-object v2, v14

    invoke-virtual {v15, v5}, Lr0/q;->q(Z)V

    invoke-static {v1, v10}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_b

    new-instance v1, Lod/a7;

    const/4 v3, 0x5

    invoke-direct {v1, v4, v3}, Lod/a7;-><init>(Lr0/u0;I)V

    invoke-virtual {v15, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Li9/a;

    const/16 v8, 0xf

    invoke-static {v0, v5, v9, v1, v8}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    sget-object v1, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v1, v2, v15, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v2, v15, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v0, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v8, v15, Lr0/q;->S:Z

    if-eqz v8, :cond_c

    invoke-virtual {v15, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_4
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v1, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v15, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v15, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v0, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_d

    new-instance v0, Lod/t6;

    const/4 v1, 0x2

    invoke-direct {v0, v4, v1}, Lod/t6;-><init>(Lr0/u0;I)V

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    move-object v8, v0

    check-cast v8, Li9/c;

    const/4 v11, 0x0

    const/16 v13, 0x30

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v12, v15

    invoke-static/range {v7 .. v13}, Lo0/l0;->a(ZLi9/c;Lf1/r;ZLo0/f0;Lr0/q;I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->k:Lp2/m0;

    const/16 v28, 0x0

    const v29, 0xfffe

    const-string v7, "\u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f (\u0441\u043f\u0438\u0441\u0430\u043d\u043d\u044f \u0447\u0435\u0440\u0435\u0437 \u043a\u043e\u0436\u0435\u043d \u043f\u0435\u0440\u0456\u043e\u0434)"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v26, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x6

    move-object/from16 v25, v1

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v26

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lr0/q;->q(Z)V

    const-string v1, "\u0412\u0456\u0434\u043a\u0440\u0438\u0454\u0442\u044c\u0441\u044f \u0441\u0442\u043e\u0440\u0456\u043d\u043a\u0430 \u043e\u043f\u043b\u0430\u0442\u0438 WayForPay (\u043a\u0430\u0440\u0442\u043a\u0443 \u043c\u0438 \u043d\u0435 \u0431\u0430\u0447\u0438\u043c\u043e). \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043f\u0440\u0438\u0432\'\u044f\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0434\u043e \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443; \u043d\u0430 \u0456\u043d\u0448\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0457\u0457 \u043c\u043e\u0436\u043d\u0430 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043a\u043e\u0434\u043e\u043c (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430). \u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0441\u043a\u0430\u0441\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0442\u0430\u043c \u0441\u0430\u043c\u043e."

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v9, v1, Lo0/u0;->s:J

    const v29, 0xfffa

    const-wide/16 v15, 0x0

    const/16 v27, 0x0

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v26

    invoke-virtual {v15, v5}, Lr0/q;->q(Z)V

    goto :goto_6

    :goto_5
    const v0, 0x1290141f

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const/16 v28, 0x0

    const v29, 0xfffe

    const-string v7, "\u041e\u043f\u043b\u0430\u0442\u0430 \u0437\u0430\u0440\u0430\u0437 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 \u0430\u0431\u043e \u0441\u043a\u043e\u0440\u0438\u0441\u0442\u0430\u0439\u0442\u0435\u0441\u044f Telegram-\u0431\u043e\u0442\u043e\u043c."

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v26, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x6

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v26

    invoke-virtual {v15, v5}, Lr0/q;->q(Z)V

    :goto_6
    invoke-interface/range {v30 .. v30}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_e

    const v0, 0x3f8a285e

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    :goto_7
    invoke-virtual {v15, v5}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_e
    const v0, 0x3f8a285f

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v9, v1, Lo0/u0;->w:J

    const/16 v28, 0x0

    const v29, 0xfffa

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v26, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v26

    goto :goto_7

    :goto_8
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x1290e7b9

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    const/16 v16, 0x0

    const/16 v17, 0x3f

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v17}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    :goto_9
    invoke-virtual {v15, v5}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    const v0, 0x3f8c74c4

    invoke-virtual {v15, v0}, Lr0/q;->b0(I)V

    goto :goto_9

    :goto_a
    invoke-virtual {v15, v1}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_10
    invoke-virtual {v15}, Lr0/q;->W()V

    :goto_b
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/h6;->m:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lua/nav/a;

    iget-object v1, v0, Lod/h6;->n:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljd/b;

    iget-object v1, v0, Lod/h6;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/a;

    iget-object v1, v0, Lod/h6;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/a;

    iget-object v1, v0, Lod/h6;->q:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Li9/a;

    iget-object v1, v0, Lod/h6;->r:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Li9/a;

    iget-object v0, v0, Lod/h6;->s:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Li9/a;

    move-object/from16 v9, p1

    check-cast v9, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x36dc9

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v10

    invoke-static/range {v2 .. v10}, Lod/v6;->o(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
