.class public final synthetic Lod/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lr0/r2;

.field public final synthetic o:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Li9/c;Lr0/r2;Lr0/u0;I)V
    .locals 0

    iput p4, p0, Lod/s5;->l:I

    iput-object p1, p0, Lod/s5;->m:Li9/c;

    iput-object p2, p0, Lod/s5;->n:Lr0/r2;

    iput-object p3, p0, Lod/s5;->o:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lod/s5;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/16 v3, 0x10

    iget-object v5, v0, Lod/s5;->o:Lr0/u0;

    iget-object v6, v0, Lod/s5;->n:Lr0/r2;

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v12, p2

    check-cast v12, Lr0/q;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "$this$Section"

    invoke-static {v1, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v8, 0x11

    if-eq v1, v3, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, v8, 0x1

    invoke-virtual {v12, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v12, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffe

    const-string v8, "\u041d\u0430\u0431\u0456\u0440 \u043f\u043e\u0440\u043e\u0433\u0456\u0432, \u0437\u0430 \u044f\u043a\u0438\u043c\u0438 \u0430\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440 \u0456 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u0432\u0438\u0437\u043d\u0430\u0447\u0430\u044e\u0442\u044c, \u0449\u043e \u043c\u0430\u0448\u0438\u043d\u0430 \u0441\u0442\u043e\u0457\u0442\u044c. \u0422\u0438\u043f\u043e\u0432\u0438\u0439 \u043d\u0430\u0431\u0456\u0440 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u043e \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0430\u0445."

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v27, v12

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

    const/16 v28, 0x6

    move-object/from16 v26, v1

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v27

    const/4 v1, 0x6

    int-to-float v3, v1

    invoke-static {v3}, Lu/h;->g(F)Lu/f;

    move-result-object v3

    sget-object v8, Lf1/o;->a:Lf1/o;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v10

    sget-object v11, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v11, v12, v1}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    iget-wide v13, v12, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v10, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v10

    sget-object v13, Le2/h;->b:Le2/g;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v14, v12, Lr0/q;->S:Z

    if-eqz v14, :cond_1

    invoke-virtual {v12, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_1
    sget-object v13, Le2/g;->f:Le2/e;

    invoke-static {v13, v1, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v11, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v12, v1, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v12, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v10, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v1, -0x30f5dc26

    invoke-virtual {v12, v1}, Lr0/q;->b0(I)V

    new-instance v1, Lt8/j;

    const-string v3, "default"

    const-string v10, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439"

    invoke-direct {v1, v3, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    const-string v10, "careful"

    const-string v11, "\u041e\u0431\u0435\u0440\u0435\u0436\u043d\u0438\u0439"

    invoke-direct {v3, v10, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lt8/j;

    const-string v13, "sensitive"

    const-string v14, "\u0427\u0443\u0442\u043b\u0438\u0432\u0438\u0439"

    invoke-direct {v11, v13, v14}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v3, v11}, [Lt8/j;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v11, v0, Lod/s5;->m:Li9/c;

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt8/j;

    iget-object v15, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v3, v3, Lt8/j;->m:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lua/nav/Tuning;

    iget-object v7, v7, Lua/nav/Tuning;->a:Ljava/lang/String;

    invoke-static {v7, v15}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v12, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-virtual {v12, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v16, :cond_2

    if-ne v4, v14, :cond_3

    :cond_2
    new-instance v4, Lb0/c3;

    const/16 v14, 0x9

    invoke-direct {v4, v11, v15, v6, v14}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Li9/a;

    new-instance v11, Lnd/e;

    const/16 v14, 0xa

    invoke-direct {v11, v3, v14}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v3, 0x25943b6d

    invoke-static {v3, v11, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    invoke-static {v8, v9}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v11

    const/16 v18, 0xd80

    const/16 v19, 0xff0

    move-object/from16 v27, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object v9, v10

    move-object v10, v3

    move-object v3, v9

    move-object v9, v4

    move-object v4, v8

    move v8, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v27

    invoke-static/range {v8 .. v19}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object v10, v3

    move-object v8, v4

    move-object v13, v7

    move-object/from16 v12, v17

    const/4 v7, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_4
    move-object v3, v10

    move-object v7, v13

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Lr0/q;->q(Z)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/Tuning;

    iget-object v0, v0, Lua/nav/Tuning;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x5069748f

    if-eq v1, v4, :cond_9

    const v4, 0x1bbd4e96

    if-eq v1, v4, :cond_7

    const v4, 0x2104eccc

    if-eq v1, v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "\u041e\u0431\u0435\u0440\u0435\u0436\u043d\u0438\u0439 (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u0438\u0439): \u0437\u0443\u043f\u0438\u043d\u043a\u0443 \u043e\u0433\u043e\u043b\u043e\u0448\u0443\u0454 \u0440\u0456\u0434\u0448\u0435 \u0439 \u043f\u0456\u0437\u043d\u0456\u0448\u0435, \u043c\u0435\u043d\u0448\u0435 \u0445\u0438\u0431\u043d\u0438\u0445 \u0437\u0443\u043f\u0438\u043d\u043e\u043a. \u041d\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u0438\u0439 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0430\u0445."

    :goto_3
    move-object v8, v0

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "\u0427\u0443\u0442\u043b\u0438\u0432\u0438\u0439 (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u0438\u0439): \u0437\u0443\u043f\u0438\u043d\u043a\u0443 \u043e\u0433\u043e\u043b\u043e\u0448\u0443\u0454 \u0448\u0432\u0438\u0434\u0448\u0435, \u043b\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0456 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0432 \u0437\u0430\u0442\u043e\u0440\u0456, \u0430\u043b\u0435 \u0447\u0430\u0441\u0442\u0456\u0448\u0435 \u043f\u043e\u043c\u0438\u043b\u044f\u0454\u0442\u044c\u0441\u044f. \u041d\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u0438\u0439 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0430\u0445."

    goto :goto_3

    :cond_9
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_4
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->t()Lad/f2;

    move-result-object v0

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/Tuning;

    invoke-virtual {v0, v1}, Lad/f2;->c(Lua/nav/Tuning;)Lad/d2;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439: \u043f\u043e\u043a\u0438 \u0442\u0438\u043f\u043e\u0432\u0456 \u043f\u043e\u0440\u043e\u0433\u0438, \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u0456 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043f\u043e\u0457\u0437\u0434\u043a\u0430\u0445. \u0412\u0447\u0438\u0442\u044c\u0441\u044f \u043f\u0456\u0434 \u0432\u0430\u0448\u0443 \u043c\u0430\u0448\u0438\u043d\u0443 \u0439 \u0442\u0440\u0438\u043c\u0430\u0447, "

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lad/f2;->b:Lu8/k;

    iget v3, v3, Lu8/k;->n:I

    div-int/lit8 v3, v3, 0x78

    const-string v4, "\u043f\u043e\u043a\u0438 GPS \u0434\u043e\u0431\u0440\u0438\u0439: \u0437\u0456\u0431\u0440\u0430\u043d\u043e "

    const-string v7, " \u0437 2 \u0445\u0432 \u0441\u0442\u043e\u044f\u043d\u043e\u043a \u0456 "

    invoke-static {v3, v4, v7}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lad/f2;->c:Lu8/k;

    iget v0, v0, Lu8/k;->n:I

    div-int/lit8 v0, v0, 0x78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u0437 5 \u0445\u0432 \u0440\u0443\u0445\u0443."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    iget-wide v3, v1, Lad/d2;->d:D

    const/16 v0, 0x64

    int-to-double v7, v0

    mul-double/2addr v3, v7

    double-to-int v0, v3

    const-string v3, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439: \u043f\u043e\u0440\u043e\u0433\u0438 \u043f\u0456\u0434\u0456\u0431\u0440\u0430\u043d\u043e \u043f\u0456\u0434 \u0432\u0430\u0448\u0443 \u043c\u0430\u0448\u0438\u043d\u0443 \u0439 \u0442\u0440\u0438\u043c\u0430\u0447. \u0421\u0442\u043e\u044f\u043d\u043e\u043a \u0440\u043e\u0437\u043f\u0456\u0437\u043d\u0430\u0454 "

    const-string v4, " % "

    invoke-static {v0, v3, v4}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v1, Lad/d2;->f:D

    mul-double/2addr v9, v7

    double-to-int v3, v9

    const-string v9, " %), \u0445\u0438\u0431\u043d\u0438\u0445 \u0437\u0443\u043f\u0438\u043d\u043e\u043a \u0443 \u0440\u0443\u0441\u0456 "

    const-string v10, "(\u0442\u0438\u043f\u043e\u0432\u0456 \u2014 "

    invoke-static {v3, v10, v9}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v15, v7

    iget-wide v7, v1, Lad/d2;->e:D

    mul-double/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v9, "%.1f"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 p0, v9

    iget-wide v8, v1, Lad/d2;->g:D

    mul-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x1

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v8, p0

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " %)."

    invoke-static {v8, v1, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    const-string v0, "\u0412\u043b\u0430\u0441\u043d\u0456 \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f: \u0432\u0438 \u0437\u043c\u0456\u043d\u0438\u043b\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0432\u0440\u0443\u0447\u043d\u0443."

    goto/16 :goto_3

    :goto_5
    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v12, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v3, v1, Lo0/u0;->s:J

    const/16 v29, 0x0

    const v30, 0xfffa

    const/4 v9, 0x0

    move-object/from16 v27, v12

    const-wide/16 v12, 0x0

    move-object v1, v14

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

    const/16 v28, 0x0

    move-object/from16 v26, v0

    move-object v0, v11

    move-wide v10, v3

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v27

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    new-instance v3, Lb0/y;

    const/16 v1, 0x1d

    invoke-direct {v3, v5, v1}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    move-object v11, v3

    check-cast v11, Li9/c;

    const/16 v13, 0xc36

    const-string v8, "\u0420\u043e\u0437\u0448\u0438\u0440\u0435\u043d\u0456 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    const-string v9, "\u0423\u0441\u0456 \u043f\u043e\u0440\u043e\u0433\u0438 \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0442\u0430 \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u0434\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0456\u0432. \u0417\u043c\u0456\u043d\u044e\u0439\u0442\u0435, \u043b\u0438\u0448\u0435 \u044f\u043a\u0449\u043e \u0440\u043e\u0437\u0443\u043c\u0456\u0454\u0442\u0435 \u043d\u0430\u0441\u043b\u0456\u0434\u043a\u0438."

    invoke-static/range {v8 .. v13}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    sget-object v1, Lsc/w0;->l:Lsc/w0;

    sget-object v3, Lsc/w0;->m:Lsc/w0;

    filled-new-array {v1, v3}, [Lsc/w0;

    move-result-object v1

    invoke-static {v1}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lua/nav/Tuning;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v13, 0x6

    move-object v11, v0

    invoke-static/range {v8 .. v13}, Lod/v6;->f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V

    goto :goto_6

    :cond_d
    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_6
    return-object v2

    :pswitch_0
    const/4 v8, 0x0

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v4, p2

    check-cast v4, Lr0/q;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "$this$item"

    invoke-static {v1, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v7, 0x11

    if-eq v1, v3, :cond_e

    const/4 v8, 0x1

    :cond_e
    const/4 v1, 0x1

    and-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v3, v8}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Lod/s5;

    iget-object v0, v0, Lod/s5;->m:Li9/c;

    invoke-direct {v3, v0, v6, v5, v1}, Lod/s5;-><init>(Li9/c;Lr0/r2;Lr0/u0;I)V

    const v0, 0x7cd68031

    invoke-static {v0, v3, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438 \u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    const/16 v3, 0x36

    invoke-static {v1, v0, v4, v3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_7

    :cond_f
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_7
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
