.class public final synthetic Lod/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lr0/r2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lod/o1;->l:I

    iput-object p1, p0, Lod/o1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/o1;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/o1;->o:Lr0/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;Li9/c;Lr0/r2;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lod/o1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/o1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/o1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/o1;->o:Lr0/r2;

    return-void
.end method

.method public synthetic constructor <init>(Lvc/f;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lod/o1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/o1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/o1;->o:Lr0/r2;

    iput-object p3, p0, Lod/o1;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lod/o1;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/o1;->m:Ljava/lang/Object;

    check-cast v1, Lod/k7;

    iget-object v2, v0, Lod/o1;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Lod/o1;->o:Lr0/r2;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lu/s;

    move-object/from16 v11, p2

    check-cast v11, Lr0/q;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "$this$Section"

    invoke-static {v3, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v4, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    and-int/2addr v4, v6

    invoke-virtual {v11, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v4, v1, Lod/k7;->b:Ljava/lang/String;

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffe

    const/4 v5, 0x0

    move v8, v6

    move v9, v7

    const-wide/16 v6, 0x0

    move v10, v8

    move v12, v9

    const-wide/16 v8, 0x0

    move v13, v10

    const/4 v10, 0x0

    move-object/from16 v23, v11

    const/4 v11, 0x0

    move v15, v12

    move v14, v13

    const-wide/16 v12, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v18, v15

    move/from16 v17, v16

    const-wide/16 v15, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v22, v20

    const/16 v20, 0x0

    move/from16 v24, v21

    const/16 v21, 0x0

    move/from16 v27, v24

    const/16 v24, 0x0

    move/from16 v29, v22

    move-object/from16 v22, v3

    move/from16 v3, v29

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v23

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lod/k7;

    if-eq v5, v1, :cond_1

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const v1, -0x4020494

    invoke-virtual {v11, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_3

    new-instance v1, Lod/a7;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lod/a7;-><init>(Lr0/u0;I)V

    invoke-virtual {v11, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v4, v1

    check-cast v4, Li9/a;

    new-instance v1, Lod/i;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lod/i;-><init>(Lr0/u0;I)V

    const v2, 0x3d112ef7

    invoke-static {v2, v1, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v10

    const v12, 0x30000006

    const/16 v13, 0x1fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v13}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, -0x7bfffd16

    invoke-virtual {v11, v0}, Lr0/q;->b0(I)V

    const/16 v0, 0x8

    int-to-float v0, v0

    invoke-static {v0}, Lu/h;->g(F)Lu/f;

    move-result-object v0

    sget-object v1, Lf1/c;->x:Lf1/h;

    const/4 v2, 0x6

    invoke-static {v0, v1, v11, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v1, v11, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v6, v11, Lr0/q;->S:Z

    if-eqz v6, :cond_4

    invoke-virtual {v11, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_2
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v2, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {v11, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v11, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v4, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v0, -0x308f10c9

    invoke-virtual {v11, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v3

    :goto_3
    if-ge v7, v0, :cond_5

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v7, 0x1

    check-cast v1, Lod/k7;

    iget-object v4, v1, Lod/k7;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u0412\u0435\u0440\u0441\u0456\u044f "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->i:Lp2/m0;

    sget-object v10, Lt2/k;->q:Lt2/k;

    const/16 v25, 0x0

    const v26, 0xffde

    move-object v7, v5

    const/4 v5, 0x0

    move-object/from16 v22, v6

    move-object v8, v7

    const-wide/16 v6, 0x0

    move-object v12, v8

    const-wide/16 v8, 0x0

    move-object/from16 v23, v11

    const/4 v11, 0x0

    move-object v15, v12

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    move-object/from16 v17, v16

    const-wide/16 v15, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v24, v20

    const/16 v20, 0x0

    move-object/from16 v27, v21

    const/16 v21, 0x0

    move-object/from16 v28, v24

    const/high16 v24, 0x30000

    move-object/from16 v3, v28

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v23

    iget-object v4, v1, Lod/k7;->b:Ljava/lang/String;

    invoke-virtual {v11, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const v26, 0xfffe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move v7, v2

    move-object/from16 v11, v23

    move-object/from16 v14, v27

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_5
    move v12, v3

    invoke-virtual {v11, v12}, Lr0/q;->q(Z)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v11, v12}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_6
    move v12, v3

    const v0, -0x3facb1d

    invoke-virtual {v11, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v11, v12}, Lr0/q;->q(Z)V

    :goto_4
    invoke-virtual {v11, v12}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_7
    move v12, v3

    const v0, -0x3faa45d

    invoke-virtual {v11, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v11, v12}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/o1;->m:Ljava/lang/Object;

    check-cast v1, Lvc/f;

    iget-object v2, v0, Lod/o1;->o:Lr0/r2;

    check-cast v2, Lr0/u0;

    iget-object v0, v0, Lod/o1;->n:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    move-object/from16 v3, p1

    check-cast v3, Lu/s;

    move-object/from16 v8, p2

    check-cast v8, Lr0/q;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "$this$Section"

    invoke-static {v3, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v4, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v7

    :goto_6
    and-int/2addr v4, v6

    invoke-virtual {v8, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "\u0426\u0435 \u0433\u043e\u043b\u043e\u0432\u043d\u0438\u0439 \u043f\u0440\u0438\u0441\u0442\u0440\u0456\u0439 BYD DiLink. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u043c\u043e\u0436\u0435 \u0431\u0440\u0430\u0442\u0438 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u043c\u0430\u0448\u0438\u043d\u0438 \u043f\u0440\u044f\u043c\u043e \u0437 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438: \u0442\u043e\u0447\u043d\u0456\u0448\u0435 \u0437\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u0431\u0435\u0437 GPS, \u043a\u043e\u043b\u0438 GPS \u0433\u043b\u0443\u0448\u0430\u0442\u044c. \u0414\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0432\u0456\u043d \u0437\u0430\u043f\u0443\u0441\u043a\u0430\u0454 \u043d\u0430 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0456 \u043c\u0430\u043b\u0435\u043d\u044c\u043a\u0443 \u0441\u043b\u0443\u0436\u0431\u0443 \u0447\u0435\u0440\u0435\u0437 \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f ADB \u043f\u043e \u043c\u0435\u0440\u0435\u0436\u0456 (\u043f\u043e\u0440\u0442 5555): \u0457\u0457 \u043c\u0430\u0454 \u0431\u0443\u0442\u0438 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e, \u0430 \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u0435\u0440\u0448\u043e\u0433\u043e \u043f\u0456\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043d\u044f \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u0442\u0440\u0435\u0431\u0430 \u043d\u0430\u0442\u0438\u0441\u043d\u0443\u0442\u0438 \u00ab\u0414\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438\u00bb (\u00ab\u0417\u0430\u0432\u0436\u0434\u0438 \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0442\u0438\u00bb). \u0427\u0438\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c, \u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u0439 \u043f\u0435\u0434\u0430\u043b\u044c \u0433\u0430\u043b\u044c\u043c\u0430, \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f \u0439 \u043d\u0435 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u044c\u0441\u044f \u043d\u0456\u043a\u0443\u0434\u0438. \u041f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438 \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f ADB \u043c\u043e\u0436\u0435 \u0432\u0438\u043c\u043a\u043d\u0443\u0442\u0438\u0441\u044f: \u0442\u043e\u0434\u0456 \u0443\u0432\u0456\u043c\u043a\u043d\u0456\u0442\u044c \u0439\u043e\u0433\u043e \u0437\u043d\u043e\u0432\u0443."

    invoke-static {v3}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->l:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffe

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move v9, v7

    const-wide/16 v6, 0x0

    move-object/from16 v23, v8

    move v10, v9

    const-wide/16 v8, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const-wide/16 v15, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v24, v21

    const/16 v21, 0x0

    move/from16 v27, v24

    const/16 v24, 0x0

    move-object/from16 p0, v0

    move/from16 v0, v27

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v23

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_a

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v5, v4, :cond_b

    :cond_a
    new-instance v5, Lb0/r0;

    const/16 v4, 0x19

    invoke-direct {v5, v4, v1, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    move-object v7, v5

    check-cast v7, Li9/c;

    const/16 v9, 0x36

    const-string v4, "\u0411\u0440\u0430\u0442\u0438 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438"

    const-string v5, ""

    invoke-static/range {v4 .. v9}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    const v1, -0xbbde8a4

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvc/b;

    iget-object v1, v1, Lvc/b;->a:Lvc/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_11

    const/4 v4, 0x3

    if-eq v2, v4, :cond_10

    const/4 v4, 0x4

    if-eq v2, v4, :cond_f

    const/4 v4, 0x6

    if-eq v2, v4, :cond_d

    const/4 v4, 0x7

    if-eq v2, v4, :cond_c

    const-string v2, "\u041f\u0456\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043d\u044f\u2026"

    :goto_7
    move-object v4, v2

    goto :goto_9

    :cond_c
    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvc/b;

    iget-object v2, v2, Lvc/b;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvc/b;

    iget-object v2, v2, Lvc/b;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_8

    :cond_e
    move v7, v0

    :goto_8
    const-string v2, "\u2713 \u0428\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437 \u043c\u0430\u0448\u0438\u043d\u0438: "

    const-string v4, " \u043a\u043c/\u0433\u043e\u0434"

    invoke-static {v7, v2, v4}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    const-string v2, "\u0417\u0430\u043f\u0443\u0441\u043a \u0441\u043b\u0443\u0436\u0431\u0438 \u043d\u0430 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0456\u2026"

    goto :goto_7

    :cond_10
    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvc/b;

    iget-object v2, v2, Lvc/b;->c:Ljava/lang/String;

    goto :goto_7

    :cond_11
    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvc/b;

    iget-object v2, v2, Lvc/b;->c:Ljava/lang/String;

    goto :goto_7

    :goto_9
    invoke-virtual {v8, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->j:Lp2/m0;

    sget-object v3, Lvc/a;->r:Lvc/a;

    if-ne v1, v3, :cond_12

    const v1, -0x3a2f1330

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    const-wide v5, 0xff2e7d32L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    :goto_a
    move-wide v6, v5

    goto :goto_b

    :cond_12
    const v1, -0x3a2f0d18

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v5, v1, Lo0/u0;->q:J

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    goto :goto_a

    :goto_b
    const/16 v25, 0x0

    const v26, 0xfffa

    const/4 v5, 0x0

    move-object/from16 v23, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v2

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v23

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_13
    const v1, -0xbb2133d

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_14
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lod/o1;->n:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lua/nav/a;

    iget-object v1, v0, Lod/o1;->m:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/c;

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v8, p2

    check-cast v8, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v5, "$this$item"

    invoke-static {v1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-eq v1, v5, :cond_15

    move v1, v6

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    and-int/2addr v2, v6

    invoke-virtual {v8, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v3, Lua/nav/a;->m:Lx9/l0;

    invoke-static {v1, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v5

    new-instance v2, Lb0/e2;

    const/4 v7, 0x1

    iget-object v6, v0, Lod/o1;->o:Lr0/r2;

    invoke-direct/range {v2 .. v7}, Lb0/e2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0xe895a6

    invoke-static {v0, v2, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u041b\u043e\u0433\u0438"

    const/16 v2, 0x36

    invoke-static {v1, v0, v8, v2}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_e

    :cond_16
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lod/o1;->m:Ljava/lang/Object;

    check-cast v1, Li9/c;

    iget-object v2, v0, Lod/o1;->n:Ljava/lang/Object;

    check-cast v2, Li9/a;

    iget-object v0, v0, Lod/o1;->o:Lr0/r2;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lu/s;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "$this$DropdownMenu"

    invoke-static {v3, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v4, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-eq v3, v5, :cond_17

    move v3, v6

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    and-int/2addr v4, v6

    invoke-virtual {v10, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v4, Lod/m;->y:Lz0/d;

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-nez v3, :cond_18

    if-ne v5, v12, :cond_19

    :cond_18
    new-instance v5, Lod/w0;

    const/4 v3, 0x2

    invoke-direct {v5, v1, v0, v3}, Lod/w0;-><init>(Li9/c;Lr0/u0;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    check-cast v5, Li9/a;

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lo0/o;->b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V

    sget-object v4, Lod/m;->z:Lz0/d;

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_1a

    if-ne v5, v12, :cond_1b

    :cond_1a
    new-instance v5, Lod/w0;

    const/4 v3, 0x3

    invoke-direct {v5, v1, v0, v3}, Lod/w0;-><init>(Li9/c;Lr0/u0;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    check-cast v5, Li9/a;

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lo0/o;->b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V

    sget-object v4, Lod/m;->A:Lz0/d;

    invoke-virtual {v10, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1c

    if-ne v3, v12, :cond_1d

    :cond_1c
    new-instance v3, Lod/q1;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v0, v1}, Lod/q1;-><init>(Li9/a;Lr0/u0;I)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1d
    move-object v5, v3

    check-cast v5, Li9/a;

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lo0/o;->b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V

    goto :goto_10

    :cond_1e
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_10
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
