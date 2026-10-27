.class public final Lod/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lod/c3;->l:I

    iput-object p1, p0, Lod/c3;->m:Ljava/util/List;

    iput-object p2, p0, Lod/c3;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/c3;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 67

    move-object/from16 v0, p0

    iget v1, v0, Lod/c3;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const-string v3, ""

    iget-object v4, v0, Lod/c3;->o:Ljava/lang/Object;

    const-string v5, "invalid weight; must be greater than zero"

    sget-object v10, Lf1/o;->a:Lf1/o;

    iget-object v11, v0, Lod/c3;->m:Ljava/util/List;

    const/16 v12, 0x92

    iget-object v0, v0, Lod/c3;->n:Ljava/lang/Object;

    const-wide/16 v16, 0x0

    sget-object v6, Lr0/m;->a:Lr0/e;

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 p0, 0x1

    const/4 v14, 0x2

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v19, p2

    check-cast v19, Ljava/lang/Number;

    const/16 v20, 0x30

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v15

    move-object/from16 v8, p3

    check-cast v8, Lr0/q;

    move-object/from16 v21, p4

    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move-result v21

    check-cast v0, Lr0/u0;

    and-int/lit8 v22, v21, 0x6

    if-nez v22, :cond_1

    invoke-virtual {v8, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    or-int v1, v21, v1

    goto :goto_1

    :cond_1
    move/from16 v1, v21

    :goto_1
    and-int/lit8 v21, v21, 0x30

    if-nez v21, :cond_3

    invoke-virtual {v8, v15}, Lr0/q;->e(I)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v18, 0x20

    goto :goto_2

    :cond_2
    const/16 v18, 0x10

    :goto_2
    or-int v1, v1, v18

    :cond_3
    and-int/lit16 v9, v1, 0x93

    if-eq v9, v12, :cond_4

    move/from16 v9, p0

    goto :goto_3

    :cond_4
    move v9, v13

    :goto_3
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1, v9}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Led/g;

    const v9, 0x170190f5

    invoke-virtual {v8, v9}, Lr0/q;->b0(I)V

    sget-object v9, Lf1/c;->v:Lf1/i;

    invoke-static {v10, v7}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v10

    invoke-virtual {v8, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_5

    if-ne v12, v6, :cond_6

    :cond_5
    new-instance v12, Lod/x2;

    invoke-direct {v12, v14, v1, v0, v13}, Lod/x2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v8, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v12, Li9/a;

    const/16 v11, 0xf

    const/4 v14, 0x0

    invoke-static {v10, v13, v14, v12, v11}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v10

    sget-object v11, Lu/h;->a:Lu/n;

    move/from16 v12, v20

    invoke-static {v11, v9, v8, v12}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v9

    iget-wide v11, v8, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v10, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v10

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v15, v8, Lr0/q;->S:Z

    if-eqz v15, :cond_7

    invoke-virtual {v8, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_4
    sget-object v15, Le2/g;->f:Le2/e;

    invoke-static {v15, v9, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v9, Le2/g;->e:Le2/e;

    invoke-static {v9, v12, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Le2/g;->g:Le2/e;

    invoke-static {v8, v11, v12}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v11, Le2/g;->h:Le2/d;

    invoke-static {v8, v11}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v10, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-virtual {v1}, Led/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual {v8, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_8

    if-ne v10, v6, :cond_9

    :cond_8
    new-instance v10, Lb0/b1;

    const/4 v7, 0x4

    invoke-direct {v10, v7, v1, v0}, Lb0/b1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v22, v10

    check-cast v22, Li9/c;

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v26, v8

    invoke-static/range {v21 .. v27}, Lo0/l0;->a(ZLi9/c;Lf1/r;ZLo0/f0;Lr0/q;I)V

    move-object/from16 v0, v26

    const/high16 v6, 0x3f800000    # 1.0f

    float-to-double v7, v6

    cmpl-double v7, v7, v16

    if-lez v7, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v5}, Lv/a;->a(Ljava/lang/String;)V

    :goto_5
    new-instance v5, Lu/j0;

    move/from16 v7, p0

    invoke-direct {v5, v6, v7}, Lu/j0;-><init>(FZ)V

    sget-object v6, Lu/h;->c:Lu/c;

    sget-object v7, Lf1/c;->x:Lf1/h;

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v6

    iget-wide v7, v0, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v5, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_b

    invoke-virtual {v0, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v15, v6, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v0, v12, v0, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v5, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Lod/b7;->a:Ljava/util/Locale;

    iget-wide v5, v1, Led/g;->b:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    const-string v8, "getDefault(...)"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v8, v7}, Lod/b7;->b(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(...)"

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v0, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/h5;

    iget-object v7, v7, Lo0/h5;->k:Lp2/m0;

    const/16 v42, 0x0

    const v43, 0xfffe

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    move-object/from16 v40, v0

    move-object/from16 v21, v5

    move-object/from16 v39, v7

    invoke-static/range {v21 .. v43}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    iget-wide v7, v1, Led/g;->c:J

    invoke-static {v7, v8}, Lod/m;->K(J)Ljava/lang/String;

    move-result-object v5

    check-cast v4, Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v1}, Led/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v3, "  \u00b7  \u2713 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e"

    :cond_c
    invoke-static {v5, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v0, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->s:J

    const/16 v42, 0x0

    const v43, 0xfffa

    const/16 v22, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    move-object/from16 v40, v0

    move-object/from16 v39, v1

    move-wide/from16 v23, v3

    invoke-static/range {v21 .. v43}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_d
    move-object v0, v8

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_7
    return-object v2

    :pswitch_0
    const/4 v7, 0x4

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    move-object/from16 v9, p3

    check-cast v9, Lr0/q;

    move-object/from16 v13, p4

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    check-cast v4, Li9/c;

    check-cast v0, Li9/c;

    and-int/lit8 v15, v13, 0x6

    if-nez v15, :cond_f

    invoke-virtual {v9, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    move v7, v14

    :goto_8
    or-int v1, v13, v7

    :goto_9
    const/16 v20, 0x30

    goto :goto_a

    :cond_f
    move v1, v13

    goto :goto_9

    :goto_a
    and-int/lit8 v7, v13, 0x30

    if-nez v7, :cond_11

    invoke-virtual {v9, v8}, Lr0/q;->e(I)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v13, 0x20

    goto :goto_b

    :cond_10
    const/16 v13, 0x10

    :goto_b
    or-int/2addr v1, v13

    :cond_11
    and-int/lit16 v7, v1, 0x93

    if-eq v7, v12, :cond_12

    const/4 v7, 0x1

    :goto_c
    const/4 v12, 0x1

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    goto :goto_c

    :goto_d
    and-int/2addr v1, v12

    invoke-virtual {v9, v1, v7}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/SavedRoute;

    const v7, -0xe8f6ddb

    invoke-virtual {v9, v7}, Lr0/q;->b0(I)V

    sget-object v7, Lf1/c;->v:Lf1/i;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v10, v8}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v11

    invoke-virtual {v9, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v9, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_14

    if-ne v12, v6, :cond_13

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    new-instance v12, Lod/b3;

    const/4 v8, 0x0

    invoke-direct {v12, v0, v1, v8}, Lod/b3;-><init>(Li9/c;Lua/nav/routing/SavedRoute;I)V

    invoke-virtual {v9, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_f
    check-cast v12, Li9/a;

    const/16 v0, 0xf

    const/4 v13, 0x0

    invoke-static {v11, v8, v13, v12, v0}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v11

    const/4 v0, 0x6

    int-to-float v0, v0

    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-static {v11, v8, v0, v12}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    sget-object v11, Lu/h;->a:Lu/n;

    const/16 v12, 0x30

    invoke-static {v11, v7, v9, v12}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v7

    iget-wide v11, v9, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v0, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v13, Le2/h;->b:Le2/g;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v15, v9, Lr0/q;->S:Z

    if-eqz v15, :cond_15

    invoke-virtual {v9, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_10

    :cond_15
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_10
    sget-object v15, Le2/g;->f:Le2/e;

    invoke-static {v15, v7, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v12, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Le2/g;->g:Le2/e;

    invoke-static {v9, v11, v12}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v11, Le2/g;->h:Le2/d;

    invoke-static {v9, v11}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v8, Le2/g;->d:Le2/e;

    invoke-static {v8, v0, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 p2, v15

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v14, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_16

    goto :goto_11

    :cond_16
    invoke-static {v5}, Lv/a;->a(Ljava/lang/String;)V

    :goto_11
    new-instance v5, Lu/j0;

    const/4 v14, 0x1

    invoke-direct {v5, v0, v14}, Lu/j0;-><init>(FZ)V

    sget-object v0, Lu/h;->c:Lu/c;

    sget-object v14, Lf1/c;->x:Lf1/h;

    const/4 v15, 0x0

    invoke-static {v0, v14, v9, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v14, v9, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v15

    invoke-static {v5, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v9}, Lr0/q;->e0()V

    move-object/from16 v16, v2

    iget-boolean v2, v9, Lr0/q;->S:Z

    if-eqz v2, :cond_17

    invoke-virtual {v9, v13}, Lr0/q;->l(Li9/a;)V

    :goto_12
    move-object/from16 v2, p2

    goto :goto_13

    :cond_17
    invoke-virtual {v9}, Lr0/q;->o0()V

    goto :goto_12

    :goto_13
    invoke-static {v2, v0, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v15, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v9, v12, v9, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v8, v5, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v0, v1, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    iget-object v2, v1, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    iget-object v5, v1, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    sget-object v7, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo0/h5;

    iget-object v8, v8, Lo0/h5;->j:Lp2/m0;

    const/16 v65, 0xc00

    const v66, 0xdffe

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x1

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    move-object/from16 v44, v0

    move-object/from16 v62, v8

    move-object/from16 v63, v9

    invoke-static/range {v44 .. v66}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v63

    iget-wide v8, v5, Lua/nav/routing/Route;->b:D

    sget-object v11, Lcd/j;->a:Lcd/j;

    invoke-virtual {v11, v8, v9}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lod/m;->J(Lua/nav/routing/Route;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    const-string v11, "trip"

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    sget-object v9, Lcd/d;->q0:Lcd/c;

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    invoke-virtual {v9, v11}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_14

    :cond_18
    const/4 v15, 0x0

    sget-object v9, Lcd/d;->r0:Lcd/c;

    new-array v11, v15, [Ljava/lang/Object;

    invoke-virtual {v9, v11}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_14
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcd/d;->s0:Lcd/c;

    invoke-virtual {v3, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u00b7 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual {v0, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->l:Lp2/m0;

    const/16 v65, 0x0

    const v66, 0xfffe

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    move-object/from16 v63, v0

    move-object/from16 v62, v2

    invoke-static/range {v44 .. v66}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lr0/q;->q(Z)V

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1a

    if-ne v3, v6, :cond_1b

    :cond_1a
    new-instance v3, Lod/b3;

    invoke-direct {v3, v4, v1, v12}, Lod/b3;-><init>(Li9/c;Lua/nav/routing/SavedRoute;I)V

    invoke-virtual {v0, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    check-cast v3, Li9/a;

    const/4 v8, 0x0

    const/16 v11, 0xf

    const/4 v13, 0x0

    invoke-static {v10, v8, v13, v3, v11}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    const/16 v2, 0xa

    int-to-float v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v45

    invoke-virtual {v0, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->h:Lp2/m0;

    const/16 v65, 0x0

    const v66, 0xfffc

    const-string v44, "\u2715"

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x6

    move-object/from16 v63, v0

    move-object/from16 v62, v1

    invoke-static/range {v44 .. v66}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lr0/q;->q(Z)V

    const-wide/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v0

    invoke-static/range {v22 .. v27}, Lo0/z2;->e(FIJLf1/r;Lr0/q;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    goto :goto_15

    :cond_1c
    move-object/from16 v16, v2

    move-object v0, v9

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_15
    return-object v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
