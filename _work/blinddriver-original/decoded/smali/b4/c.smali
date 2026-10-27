.class public final synthetic Lb4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lm0/a0;Li9/c;Lz0/d;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lb4/c;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/c;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb4/c;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb4/c;->m:Ljava/lang/Object;

    iput-object p4, p0, Lb4/c;->q:Ljava/lang/Object;

    iput p5, p0, Lb4/c;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p6, p0, Lb4/c;->l:I

    iput-object p1, p0, Lb4/c;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb4/c;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb4/c;->q:Ljava/lang/Object;

    iput-object p4, p0, Lb4/c;->m:Ljava/lang/Object;

    iput p5, p0, Lb4/c;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILi9/c;Li9/a;Li9/a;)V
    .locals 1

    .line 3
    const/4 v0, 0x4

    iput v0, p0, Lb4/c;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/c;->o:Ljava/lang/Object;

    iput p2, p0, Lb4/c;->n:I

    iput-object p3, p0, Lb4/c;->m:Ljava/lang/Object;

    iput-object p4, p0, Lb4/c;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb4/c;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v0, p0

    iget v1, v0, Lb4/c;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lb4/c;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lz0/d;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget v1, v0, Lb4/c;->n:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    or-int/lit8 v7, v1, 0x1

    iget-object v3, v0, Lb4/c;->p:Ljava/lang/Object;

    iget-object v4, v0, Lb4/c;->q:Ljava/lang/Object;

    iget-object v5, v0, Lb4/c;->m:Ljava/lang/Object;

    invoke-virtual/range {v2 .. v7}, Lz0/d;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lb4/c;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lb4/c;->m:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v3, v0, Lb4/c;->p:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Li9/a;

    iget-object v3, v0, Lb4/c;->q:Ljava/lang/Object;

    check-cast v3, Li9/a;

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lf1/c;->u:Lf1/i;

    and-int/lit8 v7, v5, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_0

    move v7, v10

    goto :goto_1

    :cond_0
    move v7, v9

    :goto_1
    and-int/2addr v5, v10

    invoke-virtual {v13, v5, v7}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v5, 0xa

    int-to-float v5, v5

    sget-object v7, Lf1/o;->a:Lf1/o;

    invoke-static {v7, v5}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v8, Lu/h;->c:Lu/c;

    sget-object v11, Lf1/c;->x:Lf1/h;

    invoke-static {v8, v11, v13, v9}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v8

    iget-wide v11, v13, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v5, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v15, v13, Lr0/q;->S:Z

    if-eqz v15, :cond_1

    invoke-virtual {v13, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_2
    sget-object v15, Le2/g;->f:Le2/e;

    invoke-static {v15, v8, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v8, Le2/g;->e:Le2/e;

    invoke-static {v8, v12, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Le2/g;->g:Le2/e;

    invoke-static {v13, v11, v12}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v11, Le2/g;->h:Le2/d;

    invoke-static {v13, v11}, Lr0/r;->A(Lr0/q;Li9/c;)V

    move-object/from16 p1, v6

    sget-object v6, Le2/g;->d:Le2/e;

    invoke-static {v6, v5, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Lcd/d;->L:Lcd/c;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v10}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v13, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo0/h5;

    iget-object v10, v10, Lo0/h5;->h:Lp2/m0;

    const/16 v26, 0x0

    const v27, 0xfffe

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    const-wide/16 v7, 0x0

    move/from16 v19, v9

    move-object/from16 v23, v10

    const-wide/16 v9, 0x0

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v21, v12

    const/4 v12, 0x0

    move-object/from16 v24, v13

    move-object/from16 v22, v14

    const-wide/16 v13, 0x0

    move-object/from16 v25, v15

    const/4 v15, 0x0

    move-object/from16 v29, v16

    move-object/from16 v28, v17

    const-wide/16 v16, 0x0

    move-object/from16 v30, v18

    const/16 v18, 0x0

    move/from16 v31, v19

    const/16 v19, 0x0

    move-object/from16 v32, v20

    const/16 v20, 0x0

    move-object/from16 v33, v21

    const/16 v21, 0x0

    move-object/from16 v34, v22

    const/16 v22, 0x0

    move-object/from16 v35, v25

    const/16 v25, 0x0

    move-object/from16 v36, v1

    move-object/from16 v39, v28

    move-object/from16 v42, v29

    move-object/from16 v1, v30

    move-object/from16 v41, v32

    move-object/from16 v40, v33

    move-object/from16 v37, v34

    move-object/from16 v38, v35

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x1

    move-object/from16 v3, p1

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v24

    const/4 v5, 0x6

    int-to-float v5, v5

    invoke-static {v1, v5}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v6

    invoke-static {v6, v13}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v7

    sget-object v8, Lu/h;->a:Lu/n;

    const/4 v9, 0x0

    invoke-static {v8, v3, v13, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v8

    iget-wide v9, v13, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v7, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v11, v13, Lr0/q;->S:Z

    if-eqz v11, :cond_2

    move-object/from16 v11, v37

    invoke-virtual {v13, v11}, Lr0/q;->l(Li9/a;)V

    :goto_3
    move-object/from16 v11, v38

    goto :goto_4

    :cond_2
    invoke-virtual {v13}, Lr0/q;->o0()V

    goto :goto_3

    :goto_4
    invoke-static {v11, v8, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v8, v39

    invoke-static {v8, v10, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v8, v40

    move-object/from16 v10, v41

    invoke-static {v9, v13, v8, v13, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v8, v42

    invoke-static {v8, v7, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v7, -0x1a8130ec

    invoke-virtual {v13, v7}, Lr0/q;->b0(I)V

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v9, 0x0

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v16, "invalid weight; must be greater than zero"

    const-wide/16 v19, 0x0

    if-eqz v7, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v21, v9, 0x1

    const/4 v8, 0x0

    if-ltz v9, :cond_8

    check-cast v7, Lua/nav/routing/Route;

    iget v10, v0, Lb4/c;->n:I

    if-ne v9, v10, :cond_3

    const v10, 0x3839776e

    invoke-virtual {v13, v10}, Lr0/q;->b0(I)V

    sget-object v10, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo0/u0;

    iget-wide v10, v10, Lo0/u0;->c:J

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_3
    const/4 v12, 0x0

    const v10, 0x38397d6c

    invoke-virtual {v13, v10}, Lr0/q;->b0(I)V

    sget-object v10, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo0/u0;

    iget-wide v10, v10, Lo0/u0;->r:J

    goto :goto_6

    :goto_7
    sget-object v12, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v13, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo0/q3;

    iget-object v12, v12, Lo0/q3;->c:La0/d;

    float-to-double v14, v6

    cmpl-double v14, v14, v19

    if-lez v14, :cond_4

    goto :goto_8

    :cond_4
    invoke-static/range {v16 .. v16}, Lv/a;->a(Ljava/lang/String;)V

    :goto_8
    new-instance v14, Lu/j0;

    invoke-direct {v14, v6, v4}, Lu/j0;-><init>(FZ)V

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v4

    if-ge v9, v15, :cond_5

    move/from16 v25, v5

    goto :goto_9

    :cond_5
    const/4 v15, 0x0

    int-to-float v6, v15

    move/from16 v25, v6

    :goto_9
    const/16 v26, 0x0

    const/16 v27, 0xb

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v14

    invoke-static/range {v22 .. v27}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v6

    invoke-virtual {v13, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v13, v9}, Lr0/q;->e(I)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_6

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-ne v15, v14, :cond_7

    :cond_6
    new-instance v15, Lm0/d0;

    const/4 v14, 0x2

    invoke-direct {v15, v9, v14, v2}, Lm0/d0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v13, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v15, Li9/a;

    const/16 v9, 0xf

    const/4 v14, 0x0

    invoke-static {v6, v14, v8, v15, v9}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v6

    new-instance v8, Lb0/x;

    const/16 v9, 0x15

    invoke-direct {v8, v9, v7}, Lb0/x;-><init>(ILjava/lang/Object;)V

    const v7, 0x42ae2c63

    invoke-static {v7, v8, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const/high16 v16, 0xc00000

    const/16 v17, 0x78

    move-wide v7, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move v15, v5

    move-object v5, v6

    move-object v6, v12

    const/4 v12, 0x0

    move-object/from16 v24, v13

    const/4 v13, 0x0

    move/from16 v43, v15

    move-object/from16 v15, v24

    invoke-static/range {v5 .. v17}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v13, v15

    move/from16 v9, v21

    move/from16 v5, v43

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_8
    invoke-static {}, Lg5/f;->P()V

    throw v8

    :cond_9
    move/from16 v43, v5

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lr0/q;->q(Z)V

    invoke-virtual {v13, v4}, Lr0/q;->q(Z)V

    move/from16 v0, v43

    invoke-static {v1, v0}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v13}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v5, Lu/h;->a:Lu/n;

    invoke-static {v5, v3, v13, v14}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v5, v13, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v2, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v8, v13, Lr0/q;->S:Z

    if-eqz v8, :cond_a

    invoke-virtual {v13, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_a

    :cond_a
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_a
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v3, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v6, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v13, v3, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v13, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v2, 0x40000000    # 2.0f

    float-to-double v5, v2

    cmpl-double v3, v5, v19

    if-lez v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-static/range {v16 .. v16}, Lv/a;->a(Ljava/lang/String;)V

    :goto_b
    new-instance v5, Lu/j0;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v2, v3

    if-lez v6, :cond_c

    move v2, v3

    :cond_c
    invoke-direct {v5, v2, v4}, Lu/j0;-><init>(FZ)V

    sget-object v12, Lod/m;->B:Lz0/d;

    const/high16 v14, 0x30000000

    const/16 v15, 0x1fc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, v4

    move-object/from16 v4, v29

    invoke-static/range {v4 .. v15}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-static {v1, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v13}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const v0, 0x3f99999a    # 1.2f

    float-to-double v4, v0

    cmpl-double v1, v4, v19

    if-lez v1, :cond_d

    goto :goto_c

    :cond_d
    invoke-static/range {v16 .. v16}, Lv/a;->a(Ljava/lang/String;)V

    :goto_c
    new-instance v6, Lu/j0;

    cmpl-float v1, v0, v3

    if-lez v1, :cond_e

    goto :goto_d

    :cond_e
    move v3, v0

    :goto_d
    invoke-direct {v6, v3, v2}, Lu/j0;-><init>(FZ)V

    sget-object v12, Lod/m;->C:Lz0/d;

    const/high16 v14, 0x30000000

    const/16 v15, 0x1fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, v28

    invoke-static/range {v5 .. v15}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    invoke-virtual {v13, v2}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_f
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lb4/c;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lo0/u0;

    iget-object v1, v0, Lb4/c;->p:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lo0/z1;

    iget-object v1, v0, Lb4/c;->q:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lo0/q3;

    iget-object v1, v0, Lb4/c;->m:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lo0/h5;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lb4/c;->n:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lo0/o1;->a(Lo0/u0;Lo0/z1;Lo0/q3;Lo0/h5;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, v0, Lb4/c;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Li9/a;

    iget-object v1, v0, Lb4/c;->p:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lf1/r;

    iget-object v1, v0, Lb4/c;->q:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lf3/u;

    iget-object v1, v0, Lb4/c;->m:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lz0/d;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lb4/c;->n:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lo0/j;->d(Li9/a;Lf1/r;Lf3/u;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Lb4/c;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lf1/r;

    iget-object v1, v0, Lb4/c;->p:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lm0/a0;

    iget-object v1, v0, Lb4/c;->m:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/c;

    iget-object v1, v0, Lb4/c;->q:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lz0/d;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lb4/c;->n:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lm0/d1;->b(Lf1/r;Lm0/a0;Li9/c;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, v0, Lb4/c;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    iget-object v1, v0, Lb4/c;->q:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroidx/lifecycle/v;

    iget-object v1, v0, Lb4/c;->m:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/c;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lb4/c;->n:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v3, v0, Lb4/c;->p:Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lg5/f;->b(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/v;Li9/c;Lr0/q;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
