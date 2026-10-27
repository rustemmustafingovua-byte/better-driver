.class public final synthetic Lnd/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lnd/i0;

.field public final synthetic m:Lr0/a1;

.field public final synthetic n:Lnd/j0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Ljava/util/List;

.field public final synthetic r:Li9/c;

.field public final synthetic s:Li9/a;

.field public final synthetic t:Li9/a;

.field public final synthetic u:Lr0/b1;

.field public final synthetic v:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lnd/i0;Lr0/a1;Lnd/j0;Lr0/u0;Lr0/u0;Ljava/util/List;Li9/c;Li9/a;Li9/a;Lr0/b1;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/e0;->l:Lnd/i0;

    iput-object p2, p0, Lnd/e0;->m:Lr0/a1;

    iput-object p3, p0, Lnd/e0;->n:Lnd/j0;

    iput-object p4, p0, Lnd/e0;->o:Lr0/u0;

    iput-object p5, p0, Lnd/e0;->p:Lr0/u0;

    iput-object p6, p0, Lnd/e0;->q:Ljava/util/List;

    iput-object p7, p0, Lnd/e0;->r:Li9/c;

    iput-object p8, p0, Lnd/e0;->s:Li9/a;

    iput-object p9, p0, Lnd/e0;->t:Li9/a;

    iput-object p10, p0, Lnd/e0;->u:Lr0/b1;

    iput-object p11, p0, Lnd/e0;->v:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    iget-object v1, v0, Lnd/e0;->l:Lnd/i0;

    iget-object v2, v0, Lnd/e0;->m:Lr0/a1;

    iget-object v3, v0, Lnd/e0;->n:Lnd/j0;

    iget-object v4, v0, Lnd/e0;->o:Lr0/u0;

    iget-object v5, v0, Lnd/e0;->p:Lr0/u0;

    iget-object v7, v0, Lnd/e0;->q:Ljava/util/List;

    iget-object v8, v0, Lnd/e0;->r:Li9/c;

    iget-object v9, v0, Lnd/e0;->s:Li9/a;

    iget-object v12, v0, Lnd/e0;->t:Li9/a;

    iget-object v10, v0, Lnd/e0;->u:Lr0/b1;

    iget-object v0, v0, Lnd/e0;->v:Lr0/u0;

    move-object/from16 v6, p1

    check-cast v6, Lu/o;

    move-object/from16 v11, p2

    check-cast v11, Lr0/q;

    move-object/from16 v13, p3

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, Lf1/c;->l:Lf1/j;

    sget-object v15, Lr0/m;->a:Lr0/e;

    move-object/from16 v16, v2

    const-string v2, "$this$BoxWithConstraints"

    invoke-static {v6, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    move-object/from16 v19, v5

    iget-wide v4, v6, Lu/o;->b:J

    move-object/from16 p0, v2

    iget-object v2, v6, Lu/o;->a:Lb3/c;

    and-int/lit8 v17, v13, 0x6

    if-nez v17, :cond_1

    invoke-virtual {v11, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v13, v6

    :cond_1
    and-int/lit8 v6, v13, 0x13

    move-wide/from16 v17, v4

    const/16 v4, 0x12

    const/16 p1, 0x1

    const/4 v5, 0x0

    if-eq v6, v4, :cond_2

    move/from16 v4, p1

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    and-int/lit8 v6, v13, 0x1

    invoke-virtual {v11, v6, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-static/range {v17 .. v18}, Lb3/a;->d(J)Z

    move-result v4

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz v4, :cond_3

    invoke-static/range {v17 .. v18}, Lb3/a;->h(J)I

    move-result v4

    invoke-interface {v2, v4}, Lb3/c;->M(I)F

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    sget v13, Lnd/h0;->a:F

    div-float/2addr v4, v13

    invoke-static/range {v17 .. v18}, Lb3/a;->c(J)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static/range {v17 .. v18}, Lb3/a;->g(J)I

    move-result v6

    invoke-interface {v2, v6}, Lb3/c;->M(I)F

    move-result v6

    :cond_4
    sget v2, Lnd/h0;->b:F

    div-float/2addr v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v13, v2}, Lu/b1;->j(Lf1/r;FF)Lf1/r;

    move-result-object v2

    invoke-virtual {v11, v4}, Lr0/q;->d(F)Z

    move-result v6

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v6, :cond_5

    if-ne v13, v15, :cond_6

    :cond_5
    new-instance v13, Lnd/g0;

    invoke-direct {v13, v4}, Lnd/g0;-><init>(F)V

    invoke-virtual {v11, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Li9/c;

    invoke-static {v2, v13}, Lm1/v;->o(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v2

    invoke-static {v14, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v4

    iget-wide v5, v11, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v2, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v13, Le2/h;->b:Le2/g;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Le2/g;->b:Le2/f;

    invoke-virtual {v11}, Lr0/q;->e0()V

    move/from16 p3, v5

    iget-boolean v5, v11, Lr0/q;->S:Z

    if-eqz v5, :cond_7

    invoke-virtual {v11, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_3
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v4, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v11, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v11, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v2, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lnd/i;->a:Ljava/util/List;

    invoke-virtual/range {v16 .. v16}, Lr0/a1;->g()F

    move-result v2

    const v4, 0x44f9e000    # 1999.0f

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lg6/c1;->e(FFF)F

    move-result v2

    sget-object v4, Lnd/i;->a:Ljava/util/List;

    invoke-static {v4, v2}, Lnd/i;->c(Ljava/util/List;F)J

    move-result-wide v21

    invoke-static {v4}, Lnd/i;->b(Ljava/util/List;)[F

    move-result-object v6

    const/4 v13, 0x0

    invoke-static {v13, v4}, Lnd/i;->a(ILjava/util/List;)F

    move-result v16

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v5, p1

    move/from16 v23, v16

    :goto_4
    const/high16 v16, 0x40400000    # 3.0f

    if-ge v5, v13, :cond_a

    invoke-static {v5, v4}, Lnd/i;->a(ILjava/util/List;)F

    move-result v17

    move/from16 v18, v2

    add-int/lit8 v2, v5, -0x1

    invoke-static {v2, v4}, Lnd/i;->a(ILjava/util/List;)F

    move-result v2

    sub-float v17, v17, v2

    :goto_5
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v17, v2

    const/high16 v20, 0x43b40000    # 360.0f

    if-lez v2, :cond_8

    sub-float v17, v17, v20

    goto :goto_5

    :cond_8
    :goto_6
    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v2, v17, v2

    if-gez v2, :cond_9

    add-float v17, v17, v20

    goto :goto_6

    :cond_9
    aget v2, v6, v5

    const/high16 v20, 0x42200000    # 40.0f

    sub-float v2, v2, v20

    sub-float v2, v18, v2

    const/high16 v20, 0x42a00000    # 80.0f

    div-float v2, v2, v20

    move-object/from16 v20, v4

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v24, v5

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lg6/c1;->e(FFF)F

    move-result v2

    mul-float v4, v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    sub-float v16, v16, v2

    mul-float v16, v16, v4

    mul-float v16, v16, v17

    add-float v23, v16, v23

    add-int/lit8 v5, v24, 0x1

    move/from16 v2, v18

    move-object/from16 v4, v20

    goto :goto_4

    :cond_a
    move/from16 v18, v2

    const/high16 v2, 0x43c80000    # 400.0f

    cmpg-float v4, v2, v18

    if-gtz v4, :cond_b

    const v4, 0x44b54000    # 1450.0f

    cmpg-float v4, v18, v4

    if-gtz v4, :cond_b

    move/from16 v46, p1

    goto :goto_7

    :cond_b
    const/16 v46, 0x0

    :goto_7
    const v4, 0x44a28000    # 1300.0f

    cmpg-float v4, v4, v18

    const/high16 v5, 0x44af0000    # 1400.0f

    if-gtz v4, :cond_c

    cmpg-float v4, v18, v5

    if-gtz v4, :cond_c

    move/from16 v36, p1

    goto :goto_8

    :cond_c
    const/16 v36, 0x0

    :goto_8
    const v4, 0x44ab4000    # 1370.0f

    cmpg-float v6, v4, v18

    if-gtz v6, :cond_d

    cmpg-float v6, v18, v5

    if-gtz v6, :cond_d

    move/from16 v41, p1

    goto :goto_9

    :cond_d
    const/16 v41, 0x0

    :goto_9
    cmpl-float v6, v18, v5

    if-ltz v6, :cond_e

    move/from16 v6, p1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    const/high16 v13, 0x435c0000    # 220.0f

    cmpg-float v13, v13, v18

    if-gtz v13, :cond_f

    const/high16 v13, 0x43be0000    # 380.0f

    cmpg-float v13, v18, v13

    if-gtz v13, :cond_f

    const/high16 v13, 0x42800000    # 64.0f

    :goto_b
    move/from16 v34, v13

    goto :goto_c

    :cond_f
    const v13, 0x44dac000    # 1750.0f

    cmpl-float v13, v18, v13

    if-lez v13, :cond_10

    const/high16 v13, 0x42180000    # 38.0f

    goto :goto_b

    :cond_10
    const/high16 v13, 0x42500000    # 52.0f

    goto :goto_b

    :goto_c
    const/high16 v13, 0x442f0000    # 700.0f

    cmpg-float v17, v18, v13

    move/from16 v20, v2

    const-string v2, "\u041f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c \u043b\u0456\u0432\u043e\u0440\u0443\u0447 \u043d\u0430 \u0432\u0443\u043b\u0438\u0446\u044f \u041b\u0435\u0441\u0456 \u0423\u043a\u0440\u0430\u0457\u043d\u043a\u0438."

    move/from16 v24, v4

    const-string v4, "left"

    move/from16 v25, v5

    const-string v5, "turn"

    move/from16 v49, v6

    const/high16 v26, 0x44fa0000    # 2000.0f

    const v27, 0x44988000    # 1220.0f

    const v28, 0x44bb8000    # 1500.0f

    const/high16 v29, 0x3fc00000    # 1.5f

    if-gez v17, :cond_11

    move/from16 v30, v13

    new-instance v13, Lt8/p;

    sget-object v6, Lnd/i;->c:Lcd/c;

    move-object/from16 v51, v12

    const-string v12, "\u041f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447 \u043d\u0430 \u0432\u0443\u043b\u0438\u0446\u044f \u0421\u043e\u0431\u043e\u0440\u043d\u0430."

    move-object/from16 v52, v14

    const-string v14, "right"

    invoke-static {v5, v14, v6, v12}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v6

    sget-object v12, Lnd/i;->d:Lcd/c;

    invoke-static {v5, v4, v12, v2}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v2

    sub-float v4, v30, v18

    mul-float v4, v4, v29

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v13, v6, v2, v4}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v50, v15

    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_11
    move-object/from16 v51, v12

    move-object/from16 v52, v14

    cmpg-float v6, v18, v27

    const-string v12, "\u0412\u0430\u0448\u0435 \u043c\u0456\u0441\u0446\u0435 \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447."

    const-string v13, "arrive"

    if-gez v6, :cond_12

    new-instance v6, Lt8/p;

    sget-object v14, Lnd/i;->d:Lcd/c;

    invoke-static {v5, v4, v14, v2}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v13, v4, v14, v12}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v5

    sub-float v12, v27, v18

    mul-float v12, v12, v29

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v6, v2, v5, v12}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v13, v6

    move-object/from16 v50, v15

    move-object v6, v4

    goto :goto_e

    :cond_12
    const/4 v6, 0x0

    cmpg-float v14, v18, v25

    if-gez v14, :cond_13

    new-instance v14, Lt8/p;

    move-object/from16 v50, v15

    sget-object v15, Lnd/i;->d:Lcd/c;

    invoke-static {v5, v4, v15, v2}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v2

    invoke-static {v13, v6, v15, v12}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v14, v2, v4, v12}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    move-object v13, v14

    goto :goto_e

    :cond_13
    move-object/from16 v50, v15

    cmpg-float v14, v18, v28

    if-gez v14, :cond_14

    new-instance v14, Lt8/p;

    sget-object v15, Lnd/i;->d:Lcd/c;

    invoke-static {v5, v4, v15, v2}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v2

    invoke-static {v13, v6, v15, v12}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v4

    sub-float v5, v28, v18

    mul-float v5, v5, v29

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v14, v2, v4, v5}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    new-instance v2, Lt8/p;

    sget-object v4, Lnd/i;->d:Lcd/c;

    invoke-static {v13, v6, v4, v12}, Lnd/i;->d(Ljava/lang/String;Ljava/lang/String;Lcd/c;Ljava/lang/String;)Lua/nav/routing/Step;

    move-result-object v4

    sub-float v5, v26, v18

    mul-float v5, v5, v29

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v6, v5}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v13, v2

    :goto_e
    iget-object v2, v13, Lt8/p;->l:Ljava/lang/Object;

    check-cast v2, Lua/nav/routing/Step;

    iget-object v4, v13, Lt8/p;->m:Ljava/lang/Object;

    check-cast v4, Lua/nav/routing/Step;

    iget-object v5, v13, Lt8/p;->n:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    if-gez v17, :cond_15

    sget-object v12, Lnd/i;->e:Lcd/c;

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v14}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_f
    move-object/from16 v47, v12

    goto :goto_10

    :cond_15
    const/4 v13, 0x0

    cmpg-float v12, v18, v28

    if-gez v12, :cond_16

    sget-object v12, Lnd/i;->c:Lcd/c;

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v14}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    :cond_16
    sget-object v12, Lnd/i;->d:Lcd/c;

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v14}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    :goto_10
    if-eqz v46, :cond_17

    sub-float v12, v18, v20

    const/high16 v13, 0x41000000    # 8.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    goto :goto_11

    :cond_17
    const/4 v12, 0x0

    :goto_11
    const/high16 v13, 0x43e10000    # 450.0f

    cmpg-float v13, v13, v18

    if-gtz v13, :cond_19

    const v13, 0x44048000    # 530.0f

    cmpg-float v13, v18, v13

    if-gtz v13, :cond_19

    sget-object v13, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v13

    if-eqz v13, :cond_18

    const-string v13, "In 300 meters turn right onto Soborna Street."

    goto/16 :goto_12

    :cond_18
    const-string v13, "\u0427\u0435\u0440\u0435\u0437 300 \u043c\u0435\u0442\u0440\u0456\u0432 \u043f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447 \u043d\u0430 \u0432\u0443\u043b\u0438\u0446\u044e \u0421\u043e\u0431\u043e\u0440\u043d\u0443."

    goto/16 :goto_12

    :cond_19
    const/high16 v13, 0x44200000    # 640.0f

    cmpg-float v13, v13, v18

    if-gtz v13, :cond_1b

    if-gtz v17, :cond_1b

    sget-object v13, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v13

    if-eqz v13, :cond_1a

    const-string v13, "Turn right."

    goto :goto_12

    :cond_1a
    const-string v13, "\u041f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447."

    goto :goto_12

    :cond_1b
    const v13, 0x44a14000    # 1290.0f

    cmpg-float v13, v13, v18

    if-gtz v13, :cond_1d

    cmpg-float v13, v18, v24

    if-gtz v13, :cond_1d

    sget-object v13, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v13

    if-eqz v13, :cond_1c

    const-string v13, "You have left the route."

    goto :goto_12

    :cond_1c
    const-string v13, "\u0412\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443."

    goto :goto_12

    :cond_1d
    cmpg-float v13, v25, v18

    const v14, 0x44b7c000    # 1470.0f

    if-gtz v13, :cond_1f

    cmpg-float v13, v18, v14

    if-gtz v13, :cond_1f

    sget-object v13, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v13

    if-eqz v13, :cond_1e

    const-string v13, "The route has been rebuilt."

    goto :goto_12

    :cond_1e
    const-string v13, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u043e."

    goto :goto_12

    :cond_1f
    cmpg-float v13, v14, v18

    if-gtz v13, :cond_21

    cmpg-float v13, v18, v28

    if-gtz v13, :cond_21

    sget-object v13, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v13

    if-eqz v13, :cond_20

    const-string v13, "In 50 meters turn left."

    goto :goto_12

    :cond_20
    const-string v13, "\u0427\u0435\u0440\u0435\u0437 50 \u043c\u0435\u0442\u0440\u0456\u0432 \u043f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c \u043b\u0456\u0432\u043e\u0440\u0443\u0447."

    goto :goto_12

    :cond_21
    move-object v13, v6

    :goto_12
    float-to-double v14, v5

    sub-float v26, v26, v18

    mul-float v5, v26, v16

    move-object/from16 v53, v7

    float-to-double v6, v5

    const/high16 v16, 0x41300000    # 11.0f

    div-float v5, v5, v16

    move-object/from16 v16, v4

    float-to-double v4, v5

    xor-int/lit8 v35, v46, 0x1

    const-wide/16 v24, 0x0

    if-eqz v36, :cond_22

    sub-float v17, v18, v27

    move-object/from16 v26, v2

    mul-float v2, v17, v29

    move-wide/from16 v32, v4

    float-to-double v4, v2

    move-wide/from16 v37, v4

    goto :goto_13

    :cond_22
    move-object/from16 v26, v2

    move-wide/from16 v32, v4

    move-wide/from16 v37, v24

    :goto_13
    if-eqz v46, :cond_23

    const-string v2, "DR+NET"

    :goto_14
    move-object/from16 v40, v2

    goto :goto_15

    :cond_23
    const-string v2, "GPS"

    goto :goto_14

    :goto_15
    if-eqz v46, :cond_24

    int-to-double v4, v12

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v24

    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    add-double v24, v4, v24

    :cond_24
    move-wide/from16 v44, v24

    const v2, 0x44f64000    # 1970.0f

    cmpl-float v2, v18, v2

    if-ltz v2, :cond_25

    move/from16 v39, p1

    goto :goto_16

    :cond_25
    const/16 v39, 0x0

    :goto_16
    new-instance v24, Lad/a0;

    const/16 v42, 0x0

    const v48, -0x2f3ffa2

    const/16 v25, 0x0

    move-wide/from16 v30, v6

    move/from16 v43, v12

    move-wide/from16 v27, v14

    move-object/from16 v29, v16

    invoke-direct/range {v24 .. v48}, Lad/a0;-><init>(Lua/nav/routing/Route;Lua/nav/routing/Step;DLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLua/nav/routing/GeoPoint;IDZLjava/lang/String;I)V

    new-instance v20, Lnd/h;

    move-object/from16 v26, v13

    move-object/from16 v27, v24

    move/from16 v24, v46

    move/from16 v25, v49

    invoke-direct/range {v20 .. v27}, Lnd/h;-><init>(JFZZLjava/lang/String;Lad/a0;)V

    move-object/from16 v13, v20

    iget-object v2, v1, Lnd/i0;->a:Lnd/m;

    sget-object v4, Lnd/m;->n:Lnd/m;

    if-ne v2, v4, :cond_26

    const v2, -0x65724e63

    invoke-virtual {v11, v2}, Lr0/q;->b0(I)V

    iget-boolean v2, v1, Lnd/i0;->i:Z

    const/4 v13, 0x0

    invoke-static {v2, v11, v13}, Lnd/h0;->j(ZLr0/q;I)V

    invoke-virtual {v11, v13}, Lr0/q;->q(Z)V

    move-object v12, v11

    move-object/from16 v5, v50

    move-object/from16 v4, v52

    :goto_17
    move/from16 v2, p1

    goto :goto_1c

    :cond_26
    const v4, -0x6570c2a7

    invoke-virtual {v11, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lnd/m;->m:Lnd/m;

    if-ne v2, v4, :cond_27

    move/from16 v14, p1

    goto :goto_18

    :cond_27
    const/4 v14, 0x0

    :goto_18
    if-eq v2, v4, :cond_28

    move/from16 v15, p1

    goto :goto_19

    :cond_28
    const/4 v15, 0x0

    :goto_19
    const/16 v16, 0x0

    const/16 v18, 0x8

    move-object/from16 v17, v11

    move-object/from16 v5, v50

    move-object/from16 v4, v52

    invoke-static/range {v13 .. v18}, Lnd/k;->a(Lnd/h;ZZLf1/r;Lr0/q;I)V

    move-object/from16 v12, v17

    sget-object v6, Lnd/m;->l:Lnd/m;

    if-ne v2, v6, :cond_29

    const v2, -0xb87adc1

    invoke-virtual {v12, v2}, Lr0/q;->b0(I)V

    iget-boolean v2, v1, Lnd/i0;->h:Z

    const/4 v6, 0x6

    invoke-static {v2, v12, v6}, Lnd/h0;->a(ZLr0/q;I)V

    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    goto :goto_1b

    :cond_29
    const/4 v2, 0x0

    const v6, -0xb87aa67

    invoke-virtual {v12, v6}, Lr0/q;->b0(I)V

    const/16 v6, 0x46

    invoke-static {v13, v12, v6}, Lnd/h0;->i(Lnd/h;Lr0/q;I)V

    goto :goto_1a

    :goto_1b
    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    goto :goto_17

    :goto_1c
    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    iget-object v2, v1, Lnd/i0;->b:Ljava/util/List;

    if-eqz v2, :cond_2f

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v3, Lnd/j0;->a:Ld1/y;

    invoke-virtual {v14, v13}, Ld1/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ll1/c;

    if-eqz v13, :cond_2a

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_1e

    :cond_2c
    const/4 v11, 0x0

    :goto_1e
    if-eqz v11, :cond_2f

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll1/c;

    check-cast v3, Ll1/c;

    new-instance v13, Ll1/c;

    iget v14, v3, Ll1/c;->a:F

    iget v15, v11, Ll1/c;->a:F

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v15, v3, Ll1/c;->b:F

    const-wide v16, 0xffffffffL

    iget v6, v11, Ll1/c;->b:F

    invoke-static {v15, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, v3, Ll1/c;->c:F

    iget v15, v11, Ll1/c;->c:F

    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v3, v3, Ll1/c;->d:F

    iget v11, v11, Ll1/c;->d:F

    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v13, v14, v6, v7, v3}, Ll1/c;-><init>(FFFF)V

    move-object v3, v13

    goto :goto_1f

    :cond_2d
    const-wide v16, 0xffffffffL

    check-cast v3, Ll1/c;

    if-eqz v3, :cond_30

    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/b;

    iget-wide v6, v2, Ll1/b;->a:J

    const/16 v2, 0x20

    shr-long/2addr v6, v2

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    neg-float v2, v2

    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll1/b;

    iget-wide v6, v6, Ll1/b;->a:J

    and-long v6, v6, v16

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v3, v2, v6}, Ll1/c;->i(FF)Ll1/c;

    move-result-object v6

    :goto_20
    const/4 v13, 0x0

    goto :goto_21

    :cond_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const-wide v16, 0xffffffffL

    :cond_30
    const/4 v6, 0x0

    goto :goto_20

    :goto_21
    invoke-static {v6, v12, v13}, Lnd/h0;->k(Ll1/c;Lr0/q;I)V

    if-eqz v6, :cond_31

    invoke-virtual {v6}, Ll1/c;->c()J

    move-result-wide v2

    and-long v2, v2, v16

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface/range {v19 .. v19}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_31

    const/4 v2, 0x1

    goto :goto_22

    :cond_31
    const/4 v2, 0x0

    :goto_22
    if-nez v6, :cond_32

    sget-object v2, Lf1/c;->p:Lf1/j;

    goto :goto_23

    :cond_32
    if-eqz v2, :cond_33

    sget-object v2, Lf1/c;->m:Lf1/j;

    goto :goto_23

    :cond_33
    sget-object v2, Lf1/c;->s:Lf1/j;

    :goto_23
    sget-object v3, Lu/n;->b:Lu/n;

    invoke-virtual {v3, v2}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v2

    const/16 v3, 0xc

    int-to-float v3, v3

    const/16 v6, 0xa

    int-to-float v6, v6

    invoke-static {v2, v3, v6}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    const/16 v3, 0x1cc

    int-to-float v3, v3

    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-static {v2, v6, v3, v13}, Lu/b1;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v4

    iget-wide v6, v12, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v2, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v11, v12, Lr0/q;->S:Z

    if-eqz v11, :cond_34

    invoke-virtual {v12, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_24

    :cond_34
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_24
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v4, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v12, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v12, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object v2, v1

    invoke-virtual {v10}, Lr0/b1;->g()I

    move-result v1

    move-object v3, v2

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_35

    new-instance v6, Lb0/u;

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v12, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_35
    move-object v0, v6

    check-cast v0, Li9/a;

    invoke-virtual {v12, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_36

    if-ne v7, v5, :cond_37

    :cond_36
    new-instance v7, Lnd/n;

    const/4 v6, 0x0

    invoke-direct {v7, v8, v10, v6}, Lnd/n;-><init>(Li9/c;Lr0/b1;I)V

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_37
    move-object v14, v7

    check-cast v14, Li9/a;

    move-object/from16 v7, v53

    invoke-virtual {v12, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v12, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v12, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_38

    if-ne v11, v5, :cond_39

    :cond_38
    new-instance v6, Lh5/m;

    const/4 v11, 0x2

    invoke-direct/range {v6 .. v11}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v11, v6

    :cond_39
    move-object v6, v11

    check-cast v6, Li9/a;

    const/16 v9, 0x6008

    move v5, v4

    move-object v4, v0

    move-object v0, v3

    move v3, v5

    move-object v8, v12

    move-object v5, v14

    move-object/from16 v7, v51

    invoke-static/range {v0 .. v9}, Lnd/h0;->m(Lnd/i0;IIZLi9/a;Li9/a;Li9/a;Li9/a;Lr0/q;I)V

    invoke-virtual {v12, v13}, Lr0/q;->q(Z)V

    goto :goto_25

    :cond_3a
    move-object v12, v11

    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_25
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
