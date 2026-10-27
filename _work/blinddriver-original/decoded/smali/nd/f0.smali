.class public final synthetic Lnd/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Li9/a;

.field public final synthetic p:Li9/a;


# direct methods
.method public synthetic constructor <init>(IILi9/a;Li9/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lnd/f0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnd/f0;->m:I

    iput p2, p0, Lnd/f0;->n:I

    iput-object p3, p0, Lnd/f0;->o:Li9/a;

    iput-object p4, p0, Lnd/f0;->p:Li9/a;

    return-void
.end method

.method public synthetic constructor <init>(IILi9/a;Li9/a;I)V
    .locals 0

    .line 2
    const/4 p5, 0x1

    iput p5, p0, Lnd/f0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnd/f0;->m:I

    iput p2, p0, Lnd/f0;->n:I

    iput-object p3, p0, Lnd/f0;->o:Li9/a;

    iput-object p4, p0, Lnd/f0;->p:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 49

    move-object/from16 v0, p0

    iget v1, v0, Lnd/f0;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v7

    iget v2, v0, Lnd/f0;->m:I

    iget v3, v0, Lnd/f0;->n:I

    iget-object v4, v0, Lnd/f0;->o:Li9/a;

    iget-object v5, v0, Lnd/f0;->p:Li9/a;

    invoke-static/range {v2 .. v7}, Lnd/h0;->l(IILi9/a;Li9/a;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v9, p1

    check-cast v9, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v14, Lf1/c;->v:Lf1/i;

    and-int/lit8 v2, v1, 0x3

    const/4 v15, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v15

    :goto_0
    and-int/2addr v1, v3

    invoke-virtual {v9, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x10

    int-to-float v1, v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v5, Lu/h;->c:Lu/c;

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v5, v6, v9, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v10, v9, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v1, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v12, v9, Lr0/q;->S:Z

    if-eqz v12, :cond_1

    invoke-virtual {v9, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_1
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v7, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v10, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v9, v8, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v8, Le2/g;->h:Le2/d;

    invoke-static {v9, v8}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lu/h;->a:Lu/n;

    const/16 v15, 0x30

    invoke-static {v1, v14, v9, v15}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v3, v9, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v2, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v15

    invoke-virtual {v9}, Lr0/q;->e0()V

    move-object/from16 v18, v2

    iget-boolean v2, v9, Lr0/q;->S:Z

    if-eqz v2, :cond_2

    invoke-virtual {v9, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v12, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v4, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v9, v10, v9, v8}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v15, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v1, 0xff6750a4L

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v3

    const/4 v1, 0x6

    int-to-float v1, v1

    invoke-static {v1}, La0/e;->a(F)La0/d;

    move-result-object v2

    move-object v1, v10

    sget-object v10, Lnd/a;->i:Lz0/d;

    move-object v15, v12

    const v12, 0xc00180

    move-object/from16 v19, v13

    const/16 v13, 0x79

    move-object/from16 v20, v1

    const/4 v1, 0x0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const-wide/16 v5, 0x0

    move-object/from16 v23, v7

    const/4 v7, 0x0

    move-object/from16 v24, v8

    const/4 v8, 0x0

    move-object/from16 v25, v11

    move-object v11, v9

    const/4 v9, 0x0

    move-object/from16 p2, v14

    move-object/from16 v14, v18

    move-object/from16 v29, v19

    move-object/from16 v27, v20

    move-object/from16 v26, v23

    move-object/from16 v28, v24

    invoke-static/range {v1 .. v13}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v9, v11

    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-static {v14, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v2, Lnd/a;->J:Lcd/c;

    iget v3, v0, Lnd/f0;->m:I

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lnd/f0;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->n:Lp2/m0;

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v9, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v6, v6, Lo0/u0;->s:J

    move-object/from16 v8, v22

    const/16 v22, 0x0

    const v23, 0x1fffa

    move v10, v1

    move-object v1, v2

    const/4 v2, 0x0

    move v11, v3

    move-object/from16 v19, v5

    move-wide/from16 v47, v6

    move-object v7, v4

    move-wide/from16 v3, v47

    const-wide/16 v5, 0x0

    move-object v12, v7

    const/4 v7, 0x0

    move-object v13, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    move/from16 v16, v10

    const-wide/16 v9, 0x0

    move/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v31, v12

    move-object/from16 v24, v13

    const-wide/16 v12, 0x0

    move-object/from16 v32, v14

    const/4 v14, 0x0

    move-object/from16 v33, v15

    const/4 v15, 0x0

    move/from16 v34, v16

    const/16 v16, 0x0

    const/16 v35, 0x30

    const/16 v17, 0x0

    move/from16 v36, v18

    const/16 v18, 0x0

    move-object/from16 v37, v21

    const/16 v21, 0x0

    move-object/from16 v38, v24

    move-object/from16 v39, v25

    move-object/from16 v41, v31

    move-object/from16 v42, v32

    move-object/from16 v40, v33

    move/from16 v0, v34

    move/from16 v43, v36

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lr0/q;->q(Z)V

    move-object/from16 v2, v42

    invoke-static {v2, v0}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v0, Lnd/l;->a:Ljava/util/ArrayList;

    move/from16 v11, v43

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd/i0;

    iget-object v0, v0, Lnd/i0;->c:Lcd/c;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v41

    invoke-virtual {v9, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->h:Lp2/m0;

    sget-object v7, Lt2/k;->q:Lt2/k;

    const v23, 0x1ffbe

    move-object v14, v2

    const/4 v2, 0x0

    move/from16 v44, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v32, v14

    const/4 v14, 0x0

    const/high16 v21, 0x180000

    move-object v1, v0

    move-object/from16 v0, v32

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    const/16 v1, 0x17c

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    invoke-static {v9}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v2

    invoke-static {v1, v2}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v1

    move-object/from16 v2, v37

    move-object/from16 v13, v38

    const/4 v4, 0x0

    invoke-static {v2, v13, v9, v4}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v5, v9, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v7, v9, Lr0/q;->S:Z

    if-eqz v7, :cond_3

    move-object/from16 v7, v39

    invoke-virtual {v9, v7}, Lr0/q;->l(Li9/a;)V

    :goto_3
    move-object/from16 v15, v40

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Lr0/q;->o0()V

    goto :goto_3

    :goto_4
    invoke-static {v15, v2, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v26

    invoke-static {v2, v6, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v27

    move-object/from16 v6, v28

    invoke-static {v5, v9, v2, v9, v6}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v29

    invoke-static {v2, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v1, -0x450c4c86

    invoke-virtual {v9, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lnd/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Lcd/c;

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Lcd/c;

    const/16 v5, 0xa

    int-to-float v5, v5

    invoke-static {v0, v5}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v5

    invoke-static {v5, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->i:Lp2/m0;

    sget-object v7, Lt2/k;->p:Lt2/k;

    const/16 v22, 0x0

    const v23, 0x1ffbe

    move-object v8, v1

    move-object v1, v2

    const/4 v2, 0x0

    move/from16 v30, v3

    move/from16 v44, v4

    const-wide/16 v3, 0x0

    move-object v10, v5

    move-object/from16 v19, v6

    const-wide/16 v5, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    move-object v12, v10

    const-wide/16 v9, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v15, v12

    move-object v14, v13

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move-object/from16 v26, v21

    const/high16 v21, 0x180000

    move-object/from16 v32, v0

    move-object/from16 v45, v26

    move/from16 v0, v44

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    new-array v1, v0, [Ljava/lang/Object;

    move-object/from16 v13, v25

    invoke-virtual {v13, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v45

    invoke-virtual {v9, v15}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->k:Lp2/m0;

    const v23, 0x1fffe

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move v4, v0

    move-object/from16 v9, v20

    move-object/from16 v0, v32

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_4
    move-object/from16 v32, v0

    move v0, v4

    invoke-virtual {v9, v0}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lr0/q;->q(Z)V

    const/16 v2, 0xc

    int-to-float v2, v2

    move-object/from16 v3, v32

    invoke-static {v3, v2}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v2, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v9, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-static {v4, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v4, Lnd/a;->M:Lcd/c;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->l:Lp2/m0;

    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v9, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->s:J

    const/16 v22, 0x0

    const v23, 0x1fffa

    move-object v7, v2

    const/4 v2, 0x0

    move-object/from16 v19, v4

    move-wide v3, v5

    const-wide/16 v5, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    move-object v11, v10

    const-wide/16 v9, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v24, v21

    const/16 v21, 0x0

    move-object v1, v0

    move-object/from16 v0, v24

    move-object/from16 v46, v32

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    invoke-virtual {v9, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_6

    :cond_5
    new-instance v2, Lnd/p;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lnd/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object v1, v2

    check-cast v1, Li9/a;

    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v14, v46

    invoke-static {v14, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v8, Lnd/a;->j:Lz0/d;

    const v10, 0x30000030

    const/16 v11, 0x1fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-static {v14, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v2, Lu/h;->a:Lu/n;

    move-object/from16 v3, p2

    const/16 v4, 0x30

    invoke-static {v2, v3, v9, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v3, v9, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v6, v9, Lr0/q;->S:Z

    if-eqz v6, :cond_7

    invoke-virtual {v9, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_6
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v2, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v9, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v9, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v1, 0xe

    int-to-float v1, v1

    const/4 v12, 0x2

    invoke-static {v1, v12}, Lu/b;->b(FI)Lu/s0;

    move-result-object v7

    sget-object v8, Lnd/a;->k:Lz0/d;

    const/high16 v10, 0x30c00000

    const/16 v11, 0x17e

    move-object/from16 v13, p0

    iget-object v1, v13, Lnd/f0;->o:Li9/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_8

    goto :goto_7

    :cond_8
    const-string v1, "invalid weight; must be greater than zero"

    invoke-static {v1}, Lv/a;->a(Ljava/lang/String;)V

    :goto_7
    new-instance v1, Lu/j0;

    const/4 v14, 0x1

    invoke-direct {v1, v0, v14}, Lu/j0;-><init>(FZ)V

    invoke-static {v1, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/16 v0, 0x12

    int-to-float v0, v0

    invoke-static {v0, v12}, Lu/b;->b(FI)Lu/s0;

    move-result-object v8

    move-object/from16 v20, v9

    sget-object v9, Lnd/a;->l:Lz0/d;

    const/high16 v11, 0x30c00000

    const/16 v12, 0x17e

    iget-object v1, v13, Lnd/f0;->p:Li9/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v10, v20

    invoke-static/range {v1 .. v12}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v9, v10

    invoke-virtual {v9, v14}, Lr0/q;->q(Z)V

    invoke-virtual {v9, v14}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_9
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
