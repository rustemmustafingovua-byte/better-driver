.class public final synthetic Lod/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ltc/a;

.field public final synthetic m:Z

.field public final synthetic n:J

.field public final synthetic o:J


# direct methods
.method public synthetic constructor <init>(Ltc/a;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/b;->l:Ltc/a;

    iput-boolean p2, p0, Lod/b;->m:Z

    iput-wide p3, p0, Lod/b;->n:J

    iput-wide p5, p0, Lod/b;->o:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lod/b;->l:Ltc/a;

    iget-object v2, v1, Ltc/a;->e:Ljava/util/List;

    iget-object v3, v1, Ltc/a;->d:Ljava/util/List;

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0xc

    int-to-float v5, v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v5}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    const/4 v6, 0x4

    int-to-float v6, v6

    invoke-static {v6}, Lu/h;->g(F)Lu/f;

    move-result-object v6

    sget-object v7, Lf1/c;->x:Lf1/h;

    const/4 v10, 0x6

    invoke-static {v6, v7, v4, v10}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v6

    iget-wide v10, v4, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v5, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v12, v4, Lr0/q;->S:Z

    if-eqz v12, :cond_1

    invoke-virtual {v4, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_1
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v6, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v6, Le2/g;->e:Le2/e;

    invoke-static {v6, v10, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v4, v6, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v6, Le2/g;->h:Le2/d;

    invoke-static {v4, v6}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v6, Le2/g;->d:Le2/e;

    invoke-static {v6, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v5, v1, Ltc/a;->g:Z

    iget-object v6, v1, Ltc/a;->c:Ljava/lang/Long;

    iget-object v7, v1, Ltc/a;->b:Ltc/i;

    if-eqz v5, :cond_2

    const-string v5, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u0443 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456"

    goto :goto_2

    :cond_2
    const-string v5, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u043f\u043e\u0440\u0443\u0447"

    :goto_2
    invoke-static {v5}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lt2/k;->q:Lt2/k;

    iget-boolean v11, v0, Lod/b;->m:Z

    if-eqz v11, :cond_3

    const-wide v12, 0xffff6b6bL

    :goto_3
    invoke-static {v12, v13}, Lm1/v;->d(J)J

    move-result-wide v12

    goto :goto_4

    :cond_3
    const-wide v12, 0xffffd54fL

    goto :goto_3

    :goto_4
    const/16 v25, 0x0

    const v26, 0x1ffda

    move-object/from16 v23, v4

    move-object v4, v5

    const/4 v5, 0x0

    move v14, v8

    move v15, v9

    const-wide/16 v8, 0x0

    move/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-wide v6, v12

    const-wide/16 v12, 0x0

    move/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v21, v15

    move/from16 v20, v16

    const-wide/16 v15, 0x0

    move-object/from16 v22, v17

    const/16 v17, 0x0

    move-object/from16 v24, v18

    const/16 v18, 0x0

    move/from16 v27, v19

    const/16 v19, 0x0

    move/from16 v28, v20

    const/16 v20, 0x0

    move/from16 v29, v21

    const/16 v21, 0x0

    move-object/from16 v30, v22

    const/16 v22, 0x0

    move-object/from16 v31, v24

    const/high16 v24, 0x30000

    move/from16 v27, v29

    move-object/from16 v29, v1

    move/from16 v1, v27

    move-object/from16 v27, v2

    move-object/from16 v2, v31

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v4, v23

    const-string v5, "\u0420\u0456\u0432\u0435\u043d\u044c: "

    invoke-static {v5}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v28, :cond_4

    const-string v6, "\u0447\u0435\u0440\u0432\u043e\u043d\u0438\u0439"

    goto :goto_5

    :cond_4
    const-string v6, "\u0436\u043e\u0432\u0442\u0438\u0439"

    :goto_5
    invoke-static {v6}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v4, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/h5;

    iget-object v7, v7, Lo0/h5;->k:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffa

    move-object/from16 v23, v4

    move-object v4, v5

    const/4 v5, 0x0

    move-object v8, v6

    move-object/from16 v22, v7

    iget-wide v6, v0, Lod/b;->n:J

    move-object v10, v8

    const-wide/16 v8, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const-wide/16 v15, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    move-object/from16 v24, v21

    const/16 v21, 0x0

    move-object/from16 v28, v24

    const/16 v24, 0x180

    move-object/from16 v1, v28

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v4, v23

    const-string v5, "\u0412\u0438 \u0432 \u0440\u0430\u0439\u043e\u043d\u0456: "

    invoke-static {v5}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcd/h;->a:Ljava/lang/Object;

    iget-object v8, v2, Ltc/i;->a:Ljava/lang/String;

    invoke-static {v8}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v2, Ltc/i;->b:Ljava/lang/String;

    invoke-static {v2}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->k:Lp2/m0;

    move-object/from16 v22, v5

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v4, v23

    if-eqz v30, :cond_7

    const v2, -0x2811cd0f

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    const-string v2, "\u041f\u043e\u0447\u0430\u0442\u043e\u043a: "

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const v5, 0xea60

    int-to-long v10, v5

    div-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gez v5, :cond_5

    move-wide v8, v10

    :cond_5
    const-wide/16 v10, 0x3c

    cmp-long v5, v8, v10

    if-ltz v5, :cond_6

    const/16 v5, 0x3c

    int-to-long v10, v5

    div-long v12, v8, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lcd/d;->l:Lcd/c;

    invoke-virtual {v8, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lcd/d;->k:Lcd/c;

    invoke-virtual {v8, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    sget-object v8, Lod/b7;->a:Ljava/util/Locale;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lod/b7;->a(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->k:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffa

    move-object/from16 v22, v5

    const/4 v5, 0x0

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

    const/16 v24, 0x180

    move-object/from16 v23, v4

    move-object v4, v2

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-wide v9, v6

    move-object/from16 v2, v23

    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v2, v15}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_7
    move-object v2, v4

    move-wide v9, v6

    const/4 v15, 0x0

    const v4, -0x28104a68

    invoke-virtual {v2, v4}, Lr0/q;->b0(I)V

    goto :goto_7

    :goto_8
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-nez v4, :cond_9

    const v4, -0x280fa6ee

    invoke-virtual {v2, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_8

    new-instance v4, Ln/p1;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Ln/p1;-><init>(I)V

    invoke-virtual {v2, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v7, v4

    check-cast v7, Li9/c;

    const/16 v8, 0x1e

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffa

    move-wide v6, v9

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const-wide/16 v15, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    move-object/from16 v22, v21

    const/16 v21, 0x0

    const/16 v24, 0x180

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v3

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v23

    const/4 v15, 0x0

    :goto_9
    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_9
    move-object v8, v2

    move-object v2, v11

    const/4 v15, 0x0

    const v3, -0x280e2808

    invoke-virtual {v8, v3}, Lr0/q;->b0(I)V

    goto :goto_9

    :goto_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    iget-wide v9, v0, Lod/b;->o:J

    if-nez v3, :cond_b

    const v0, -0x280d8032

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    const-string v0, "\u0414\u0435: "

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    new-instance v3, Ln/p1;

    const/16 v2, 0xe

    invoke-direct {v3, v2}, Ln/p1;-><init>(I)V

    invoke-virtual {v8, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v3

    check-cast v6, Li9/c;

    const/16 v7, 0x1e

    const-string v3, ", "

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, v27

    invoke-static/range {v2 .. v7}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffa

    move-object/from16 v23, v8

    move-wide v6, v9

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

    const/16 v24, 0x180

    move-object/from16 v22, v0

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v4, v23

    const/4 v15, 0x0

    :goto_b
    invoke-virtual {v4, v15}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_b
    move-object v4, v8

    move-wide v6, v9

    const/4 v15, 0x0

    const v0, -0x280b7a28

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    goto :goto_b

    :goto_c
    const-string v0, "\u0414\u0430\u043d\u0456 ukrainealarm.com, \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e "

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lod/b7;->a:Ljava/util/Locale;

    move-object/from16 v2, v29

    iget-wide v2, v2, Ltc/a;->f:J

    invoke-static {v2, v3}, Lod/b7;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->o:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffa

    const/4 v5, 0x0

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

    const/16 v24, 0x180

    move-object/from16 v22, v1

    move-object/from16 v23, v4

    move-object v4, v0

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v4, v23

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_c
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
