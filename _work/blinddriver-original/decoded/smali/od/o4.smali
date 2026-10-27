.class public final synthetic Lod/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lu9/t;

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:J

.field public final synthetic o:Ljava/io/File;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lu9/t;Ljava/io/File;JLjava/io/File;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/o4;->l:Lu9/t;

    iput-object p2, p0, Lod/o4;->m:Ljava/io/File;

    iput-wide p3, p0, Lod/o4;->n:J

    iput-object p5, p0, Lod/o4;->o:Ljava/io/File;

    iput-object p6, p0, Lod/o4;->p:Lr0/u0;

    iput-object p7, p0, Lod/o4;->q:Lr0/u0;

    iput-object p8, p0, Lod/o4;->r:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-virtual {v9, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    int-to-float v2, v1

    invoke-static {v2}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    sget-object v3, Lf1/c;->x:Lf1/h;

    invoke-static {v2, v3, v9, v1}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    iget-wide v2, v9, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v10, v9, Lr0/q;->S:Z

    if-eqz v10, :cond_1

    invoke-virtual {v9, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_1
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v9, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v9, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v7, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffe

    move-object/from16 v19, v1

    const-string v1, "\u0412\u0438\u0434\u0430\u043b\u044f\u044e\u0442\u044c\u0441\u044f \u0444\u0430\u0439\u043b\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456. \u041f\u043e\u0442\u043e\u0447\u043d\u0438\u0439 \u0437\u0430\u043f\u0438\u0441 \u043d\u0435 \u0447\u0456\u043f\u0430\u0454\u0442\u044c\u0441\u044f. \u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443 \u043b\u043e\u0433\u0438 \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f."

    const/4 v2, 0x0

    move v7, v4

    const-wide/16 v3, 0x0

    move v10, v5

    move-object v8, v6

    const-wide/16 v5, 0x0

    move v11, v7

    const/4 v7, 0x0

    move-object v12, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    move v13, v10

    const-wide/16 v9, 0x0

    move v14, v11

    const/4 v11, 0x0

    move-object v15, v12

    move/from16 v16, v13

    const-wide/16 v12, 0x0

    move/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v24, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move/from16 v26, v21

    const/16 v21, 0x6

    move/from16 p1, v24

    move-object/from16 v27, v25

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    const v1, 0x3aa06c40

    invoke-virtual {v9, v1}, Lr0/q;->b0(I)V

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lt8/j;

    const-string v3, "\u0421\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 30 \u0434\u043d\u0456\u0432"

    invoke-direct {v2, v1, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lt8/j;

    const-string v4, "\u0421\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 7 \u0434\u043d\u0456\u0432"

    invoke-direct {v3, v1, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lt8/j;

    const-string v5, "\u0423\u0441\u0456, \u043a\u0440\u0456\u043c \u043f\u043e\u0442\u043e\u0447\u043d\u043e\u0433\u043e"

    invoke-direct {v4, v1, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4}, [Lt8/j;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lod/o4;->p:Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-wide v7, v0, Lod/o4;->n:J

    iget-object v10, v0, Lod/o4;->o:Ljava/io/File;

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Led/g;

    iget-object v13, v11, Led/g;->a:Ljava/io/File;

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-wide v10, v11, Led/g;->b:J

    int-to-long v13, v2

    const-wide/32 v15, 0x5265c00

    mul-long/2addr v13, v15

    sub-long/2addr v7, v13

    cmp-long v7, v10, v7

    if-gez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v13, 0x0

    move/from16 v11, p1

    :goto_4
    if-ge v11, v6, :cond_4

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v11, v11, 0x1

    check-cast v15, Led/g;

    move-object/from16 p2, v5

    move/from16 v16, v6

    iget-wide v5, v15, Led/g;->c:J

    add-long/2addr v13, v5

    move-object/from16 v5, p2

    move/from16 v6, v16

    goto :goto_4

    :cond_4
    move-object/from16 v21, v3

    if-lez v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move/from16 v3, p1

    :goto_5
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v6, v27

    invoke-static {v6, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    move-wide v15, v13

    iget-object v14, v0, Lod/o4;->l:Lu9/t;

    invoke-virtual {v9, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    iget-object v13, v0, Lod/o4;->m:Ljava/io/File;

    invoke-virtual {v9, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v11, v11, v17

    invoke-virtual {v9, v7, v8}, Lr0/q;->f(J)Z

    move-result v17

    or-int v11, v11, v17

    invoke-virtual {v9, v2}, Lr0/q;->e(I)Z

    move-result v17

    or-int v11, v11, v17

    invoke-virtual {v9, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v11, v11, v17

    move/from16 v19, v2

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v11, :cond_6

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-ne v2, v11, :cond_7

    :cond_6
    move-wide/from16 v17, v15

    move-object/from16 v16, v13

    goto :goto_6

    :cond_7
    move-wide v7, v15

    goto :goto_7

    :goto_6
    new-instance v13, Lod/v4;

    iget-object v15, v0, Lod/o4;->q:Lr0/u0;

    iget-object v2, v0, Lod/o4;->r:Lr0/u0;

    move-wide/from16 v28, v17

    move-wide/from16 v17, v7

    move-wide/from16 v7, v28

    move-object/from16 v22, v2

    move-object/from16 v20, v10

    invoke-direct/range {v13 .. v22}, Lod/v4;-><init>(Lu9/t;Lr0/u0;Ljava/io/File;JILjava/io/File;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v9, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v2, v13

    :goto_7
    check-cast v2, Li9/a;

    new-instance v10, Lod/w4;

    invoke-direct {v10, v4, v7, v8, v1}, Lod/w4;-><init>(IJLjava/lang/String;)V

    const v1, -0x2279f10c

    invoke-static {v1, v10, v9}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v8

    const v10, 0x30000030

    const/16 v11, 0x1f8

    const/4 v4, 0x0

    move-object v1, v2

    move-object v2, v5

    const/4 v5, 0x0

    move-object v15, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object/from16 v27, v15

    goto/16 :goto_2

    :cond_8
    move/from16 v14, p1

    invoke-virtual {v9, v14}, Lr0/q;->q(Z)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_9
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
