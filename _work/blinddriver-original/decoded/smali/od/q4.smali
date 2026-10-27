.class public final synthetic Lod/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Z

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Z

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Ljava/io/File;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZLjava/util/List;ZLr0/u0;Lr0/u0;Ljava/io/File;Lr0/u0;Lr0/u0;I)V
    .locals 0

    iput p10, p0, Lod/q4;->l:I

    iput-object p1, p0, Lod/q4;->m:Ljava/util/List;

    iput-boolean p2, p0, Lod/q4;->n:Z

    iput-object p3, p0, Lod/q4;->o:Ljava/util/List;

    iput-boolean p4, p0, Lod/q4;->p:Z

    iput-object p5, p0, Lod/q4;->q:Lr0/u0;

    iput-object p6, p0, Lod/q4;->r:Lr0/u0;

    iput-object p7, p0, Lod/q4;->s:Ljava/io/File;

    iput-object p8, p0, Lod/q4;->t:Lr0/u0;

    iput-object p9, p0, Lod/q4;->u:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lod/q4;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v13, p2

    check-cast v13, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "$this$Section"

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v6, 0x11

    if-eq v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/lit8 v3, v6, 0x1

    invoke-virtual {v13, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lod/q4;->q:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, -0x5e6a80b

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v13, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v27, 0x0

    const v28, 0xfffe

    const-string v6, "\u041d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u043d\u0435\u043c\u0430\u0454 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0456\u0432. \u0423\u0432\u0456\u043c\u043a\u043d\u0456\u0442\u044c \u0437\u0430\u043f\u0438\u0441 \u043a\u043d\u043e\u043f\u043a\u043e\u044e REC."

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v25, v13

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x6

    move-object/from16 v24, v3

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v25

    :goto_1
    invoke-virtual {v13, v4}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_1
    const v3, 0x49135a21

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    goto :goto_1

    :goto_2
    const/4 v3, 0x6

    int-to-float v6, v3

    invoke-static {v6}, Lu/h;->g(F)Lu/f;

    move-result-object v6

    sget-object v7, Lf1/c;->x:Lf1/h;

    invoke-static {v6, v7, v13, v3}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v6, v13, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    sget-object v8, Lf1/o;->a:Lf1/o;

    invoke-static {v8, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v11, v13, Lr0/q;->S:Z

    if-eqz v11, :cond_2

    invoke-virtual {v13, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_3
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v3, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v13, v3, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v13, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v9, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v3, 0x3941043f

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    sget-object v3, Led/p;->l:Led/p;

    new-instance v6, Lt8/j;

    const-string v7, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439 \u043b\u043e\u0433"

    invoke-direct {v6, v3, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Led/p;->m:Led/p;

    new-instance v7, Lt8/j;

    const-string v9, "\u041e\u0431\u0440\u0430\u043d\u0456"

    invoke-direct {v7, v3, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Led/p;->n:Led/p;

    new-instance v9, Lt8/j;

    const-string v10, "\u0417\u0430 \u0441\u044c\u043e\u0433\u043e\u0434\u043d\u0456"

    invoke-direct {v9, v3, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Led/p;->o:Led/p;

    new-instance v10, Lt8/j;

    const-string v11, "\u0417\u0430 \u0432\u0447\u043e\u0440\u0430"

    invoke-direct {v10, v3, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7, v9, v10}, [Lt8/j;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-boolean v7, v0, Lod/q4;->p:Z

    iget-object v9, v0, Lod/q4;->r:Lr0/u0;

    iget-object v10, v0, Lod/q4;->t:Lr0/u0;

    iget-object v11, v0, Lod/q4;->u:Lr0/u0;

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt8/j;

    iget-object v14, v6, Lt8/j;->l:Ljava/lang/Object;

    move-object v15, v14

    check-cast v15, Led/p;

    iget-object v6, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Led/p;

    if-ne v14, v15, :cond_3

    move/from16 v22, v5

    goto :goto_5

    :cond_3
    move/from16 v22, v4

    :goto_5
    invoke-virtual {v13, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v13, v5}, Lr0/q;->e(I)Z

    move-result v5

    or-int/2addr v5, v14

    iget-object v14, v0, Lod/q4;->s:Ljava/io/File;

    invoke-virtual {v13, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v13, v7}, Lr0/q;->h(Z)Z

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v5, :cond_4

    if-ne v4, v12, :cond_5

    :cond_4
    move-object/from16 v16, v14

    goto :goto_6

    :cond_5
    move-object/from16 v19, v1

    goto :goto_7

    :goto_6
    new-instance v14, Lod/z4;

    move-object/from16 v19, v1

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lod/z4;-><init>(Led/p;Ljava/io/File;ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v13, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v14

    :goto_7
    move-object v7, v4

    check-cast v7, Li9/a;

    new-instance v1, Lnd/e;

    const/16 v4, 0x9

    invoke-direct {v1, v6, v4}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v4, -0x5fe82a1b

    invoke-static {v4, v1, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v8, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v9

    const/16 v16, 0xd80

    const/16 v17, 0xff0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v25, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v8

    move-object v8, v1

    move-object v1, v6

    move/from16 v6, v22

    move-object/from16 v15, v25

    invoke-static/range {v6 .. v17}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object v8, v1

    move-object v13, v15

    move-object/from16 v1, v19

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_6
    move v5, v7

    move-object/from16 v29, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual {v13, v4}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lr0/q;->q(Z)V

    iget-object v1, v0, Lod/q4;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v30, 0x0

    iget-boolean v4, v0, Lod/q4;->n:Z

    if-eqz v3, :cond_7

    const-string v0, "\u0417\u0430 \u0446\u0438\u043c \u0432\u0438\u0431\u043e\u0440\u043e\u043c \u0444\u0430\u0439\u043b\u0456\u0432 \u043d\u0435\u043c\u0430\u0454."

    :goto_8
    move-object v6, v0

    goto/16 :goto_b

    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "\u0423\u0441\u0456 \u043e\u0431\u0440\u0430\u043d\u0456 \u0444\u0430\u0439\u043b\u0438 \u0432\u0436\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e ("

    const-string v6, ")."

    invoke-static {v0, v3, v6}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_8
    iget-object v0, v0, Lod/q4;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v7, v30

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Led/g;

    iget-wide v9, v9, Led/g;->c:J

    add-long/2addr v7, v9

    goto :goto_9

    :cond_9
    invoke-static {v7, v8}, Lod/m;->K(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u0411\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e \u0444\u0430\u0439\u043b\u0456\u0432: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (\u0441\u0442\u0438\u0441\u043d\u0443\u0442\u043e \u0431\u0443\u0434\u0435 \u043c\u0435\u043d\u0448\u0435)."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v6, v0

    const-string v0, " \u0423\u0436\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u0440\u0430\u043d\u0456\u0448\u0435 ("

    const-string v7, ") \u043f\u0440\u043e\u043f\u0443\u0449\u0435\u043d\u043e."

    invoke-static {v6, v0, v7}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_a
    const-string v0, ""

    :goto_a
    invoke-static {v3, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_b
    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v7, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo0/u0;

    iget-wide v8, v8, Lo0/u0;->s:J

    const/16 v27, 0x0

    const v28, 0xfffa

    move-object v10, v7

    const/4 v7, 0x0

    move-object v14, v10

    const-wide/16 v10, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object/from16 v25, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    const-wide/16 v14, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v22, v17

    move-object/from16 v19, v18

    const-wide/16 v17, 0x0

    move-object/from16 v23, v19

    const/16 v19, 0x0

    move-object/from16 v24, v20

    const/16 v20, 0x0

    move-object/from16 v26, v21

    const/16 v21, 0x0

    move-object/from16 v32, v22

    const/16 v22, 0x0

    move-object/from16 v33, v23

    const/16 v23, 0x0

    move-object/from16 v34, v26

    const/16 v26, 0x0

    move-object/from16 v35, v32

    move-object/from16 v32, v1

    move-object/from16 v1, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v33

    move-object/from16 v33, v2

    move-object/from16 v2, v34

    move/from16 v34, v4

    move-object/from16 v4, v35

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v25

    invoke-interface/range {v29 .. v29}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Led/p;

    sget-object v7, Led/p;->l:Led/p;

    if-ne v6, v7, :cond_f

    const v6, -0x5e5fb54    # -1.9992712E35f

    invoke-virtual {v13, v6}, Lr0/q;->b0(I)V

    invoke-static/range {v32 .. v32}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Led/g;

    if-nez v6, :cond_b

    const v0, 0x492690d5

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    goto/16 :goto_10

    :cond_b
    iget-wide v7, v6, Led/g;->b:J

    const v9, 0x492690d6    # 682253.4f

    invoke-virtual {v13, v9}, Lr0/q;->b0(I)V

    const-string v9, "\u0424\u0430\u0439\u043b: "

    invoke-static {v9}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lod/b7;->a:Ljava/util/Locale;

    invoke-static {v7, v8}, Lod/b7;->a(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v6, Led/g;->d:J

    sub-long/2addr v11, v7

    cmp-long v6, v11, v30

    if-gez v6, :cond_c

    goto :goto_c

    :cond_c
    move-wide/from16 v30, v11

    :goto_c
    const v6, 0xea60

    int-to-long v6, v6

    div-long v6, v30, v6

    const-wide/16 v11, 0x3c

    cmp-long v8, v6, v11

    const-string v11, " \u0445\u0432"

    if-ltz v8, :cond_d

    const/16 v8, 0x3c

    int-to-long v14, v8

    move-wide/from16 v16, v14

    div-long v14, v6, v16

    rem-long v6, v6, v16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " \u0433\u043e\u0434 "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_d
    const-wide/16 v14, 0x1

    cmp-long v8, v6, v14

    if-ltz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d

    :cond_e
    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long v6, v30, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " \u0441"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :goto_f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", \u0442\u0440\u0438\u0432\u0430\u043b\u0456\u0441\u0442\u044c "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". \u0406\u043d\u0448\u0430 \u043f\u043e\u0457\u0437\u0434\u043a\u0430 \u2014 \u00ab\u041e\u0431\u0440\u0430\u043d\u0456\u00bb."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v10, v6}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    invoke-virtual {v13, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v8, v3, Lo0/u0;->s:J

    const/16 v27, 0x0

    const v28, 0xfffa

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v25, v13

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v0

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v25

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    :goto_10
    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    const v3, 0x492be381

    invoke-virtual {v13, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    :goto_11
    if-eqz v34, :cond_11

    if-nez v5, :cond_11

    const v0, -0x5e5ca29

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_10

    new-instance v0, Lod/a1;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v13, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    move-object v6, v0

    check-cast v6, Li9/a;

    sget-object v12, Lod/m;->S:Lz0/d;

    const v14, 0x30000006

    const/16 v15, 0x1fe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v15}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v13, v4}, Lr0/q;->q(Z)V

    goto :goto_13

    :cond_11
    const/4 v4, 0x0

    const v0, 0x492dc7e1

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    goto :goto_12

    :cond_12
    move-object/from16 v33, v2

    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_13
    return-object v33

    :pswitch_0
    move-object/from16 v33, v2

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v2, p2

    check-cast v2, Lr0/q;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "$this$item"

    invoke-static {v1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v5, 0x11

    if-eq v1, v3, :cond_13

    const/4 v4, 0x1

    :cond_13
    const/16 v23, 0x1

    and-int/lit8 v1, v5, 0x1

    invoke-virtual {v2, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v3, Lod/q4;

    const/4 v13, 0x1

    iget-object v4, v0, Lod/q4;->m:Ljava/util/List;

    iget-boolean v5, v0, Lod/q4;->n:Z

    iget-object v6, v0, Lod/q4;->o:Ljava/util/List;

    iget-boolean v7, v0, Lod/q4;->p:Z

    iget-object v8, v0, Lod/q4;->q:Lr0/u0;

    iget-object v9, v0, Lod/q4;->r:Lr0/u0;

    iget-object v10, v0, Lod/q4;->s:Ljava/io/File;

    iget-object v11, v0, Lod/q4;->t:Lr0/u0;

    iget-object v12, v0, Lod/q4;->u:Lr0/u0;

    invoke-direct/range {v3 .. v13}, Lod/q4;-><init>(Ljava/util/List;ZLjava/util/List;ZLr0/u0;Lr0/u0;Ljava/io/File;Lr0/u0;Lr0/u0;I)V

    const v0, 0x5f5c76a1

    invoke-static {v0, v3, v2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u0429\u043e \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438"

    const/16 v3, 0x36

    invoke-static {v1, v0, v2, v3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_14
    return-object v33

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
