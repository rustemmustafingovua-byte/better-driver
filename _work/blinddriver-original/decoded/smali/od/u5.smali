.class public final synthetic Lod/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLr0/u0;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lod/u5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u5;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/u5;->o:Ljava/lang/Object;

    iput-boolean p3, p0, Lod/u5;->m:Z

    iput-object p4, p0, Lod/u5;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/u5;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lqd/q;Lqd/n;Lqd/e;ZLi9/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lod/u5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u5;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/u5;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/u5;->p:Ljava/lang/Object;

    iput-boolean p4, p0, Lod/u5;->m:Z

    iput-object p5, p0, Lod/u5;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLua/nav/a;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lod/u5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/u5;->m:Z

    iput-object p2, p0, Lod/u5;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/u5;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/u5;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/u5;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lod/u5;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/u5;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lqd/q;

    iget-object v1, v0, Lod/u5;->o:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lqd/n;

    iget-object v1, v0, Lod/u5;->p:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lqd/e;

    iget-object v1, v0, Lod/u5;->q:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Li9/a;

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v8, p2

    check-cast v8, Lr0/q;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "$this$Card"

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v5, 0x11

    const/16 v7, 0x10

    const/4 v9, 0x1

    if-eq v1, v7, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v5, v9

    invoke-virtual {v8, v5, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xe

    int-to-float v1, v1

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v7, 0xa

    int-to-float v7, v7

    invoke-static {v7}, Lu/h;->g(F)Lu/f;

    move-result-object v7

    sget-object v10, Lf1/c;->x:Lf1/h;

    const/4 v11, 0x6

    invoke-static {v7, v10, v8, v11}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v10, v8, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v1, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v13, v8, Lr0/q;->S:Z

    if-eqz v13, :cond_1

    invoke-virtual {v8, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_1
    sget-object v13, Le2/g;->f:Le2/e;

    invoke-static {v13, v7, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v11, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v8, v10, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v10, Le2/g;->h:Le2/d;

    invoke-static {v8, v10}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v14, Le2/g;->d:Le2/e;

    invoke-static {v14, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lf1/c;->v:Lf1/i;

    sget-object v15, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v15, v1, v8, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    iget-wide v3, v8, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v5, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v9, v8, Lr0/q;->S:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v13, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v4, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v8, v11, v8, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v14, v5, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->g:Lp2/m0;

    sget-object v13, Lt2/k;->q:Lt2/k;

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v9, v4

    const-wide/16 v11, 0x0

    cmpl-double v5, v9, v11

    if-lez v5, :cond_3

    :goto_3
    move-object/from16 v26, v8

    goto :goto_4

    :cond_3
    const-string v5, "invalid weight; must be greater than zero"

    invoke-static {v5}, Lv/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    new-instance v8, Lu/j0;

    const/4 v5, 0x1

    invoke-direct {v8, v4, v5}, Lu/j0;-><init>(FZ)V

    const/16 v28, 0x0

    const v29, 0xffdc

    const-string v7, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v27, 0x30006

    move-object/from16 v25, v3

    move v3, v5

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    iget-boolean v5, v0, Lod/u5;->m:Z

    const/4 v7, 0x0

    move-object/from16 v8, v26

    invoke-static/range {v5 .. v10}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    move-object v6, v8

    invoke-virtual {v6, v3}, Lr0/q;->q(Z)V

    const-string v0, "s"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, Lqd/q;->b:Lqd/p;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne v0, v3, :cond_4

    const-string v0, "\u0426\u044f \u0432\u0435\u0440\u0441\u0456\u044f \u0431\u0456\u043b\u044c\u0448\u0435 \u043d\u0435 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f. \u041e\u043d\u043e\u0432\u0456\u0442\u044c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a."

    :goto_5
    move-object v7, v0

    goto :goto_6

    :cond_4
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    const-string v0, ""

    goto :goto_5

    :goto_6
    invoke-virtual {v6, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const/16 v28, 0x0

    const v29, 0xfffe

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

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

    move-object/from16 v26, v6

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v6, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    const-string v7, "\u041a\u0430\u0440\u0442\u0430 \u0439 \u0432\u0430\u0448\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c. \u0423\u0436\u0435 \u0440\u043e\u0437\u043f\u043e\u0447\u0430\u0442\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0443\u0434\u0435 \u0434\u043e\u0432\u0435\u0434\u0435\u043d\u043e \u0434\u043e \u043a\u0456\u043d\u0446\u044f. \u0411\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043d\u043e\u0432\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u043f\u0456\u0441\u043b\u044f \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f."

    const/16 v27, 0x6

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v5, 0x1

    const/16 v7, 0xc00

    move v0, v3

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-static/range {v2 .. v7}, Lod/m;->A(Lqd/q;Lqd/n;Lqd/e;ZLr0/q;I)V

    invoke-virtual {v6, v0}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_6
    move-object v6, v8

    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/u5;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/a;

    iget-object v2, v0, Lod/u5;->o:Ljava/lang/Object;

    check-cast v2, Lr0/r2;

    iget-object v3, v0, Lod/u5;->p:Ljava/lang/Object;

    check-cast v3, Lr0/r2;

    iget-object v4, v0, Lod/u5;->q:Ljava/lang/Object;

    check-cast v4, Lr0/r2;

    move-object/from16 v5, p1

    check-cast v5, Lu/s;

    move-object/from16 v14, p2

    check-cast v14, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "$this$Section"

    invoke-static {v5, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v5, v6, 0x11

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v5, v7, :cond_7

    move v5, v8

    goto :goto_8

    :cond_7
    move v5, v9

    :goto_8
    and-int/2addr v6, v8

    invoke-virtual {v14, v6, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v5, 0x8

    int-to-float v5, v5

    invoke-static {v5}, Lu/h;->g(F)Lu/f;

    move-result-object v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    sget-object v10, Lf1/c;->u:Lf1/i;

    const/4 v11, 0x6

    invoke-static {v5, v10, v14, v11}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v5

    iget-wide v10, v14, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v14}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v6, v14}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v14}, Lr0/q;->e0()V

    iget-boolean v13, v14, Lr0/q;->S:Z

    if-eqz v13, :cond_8

    invoke-virtual {v14, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v14}, Lr0/q;->o0()V

    :goto_9
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v5, v14}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v11, v14}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v14, v5, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v14, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v6, v14}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {v14, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-nez v5, :cond_9

    if-ne v10, v11, :cond_a

    :cond_9
    new-instance v10, Lod/a5;

    const/4 v5, 0x2

    invoke-direct {v10, v1, v5}, Lod/a5;-><init>(Lua/nav/a;I)V

    invoke-virtual {v14, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Li9/a;

    sget-object v5, Lod/m;->E0:Lz0/d;

    float-to-double v12, v7

    const-wide/16 v18, 0x0

    cmpl-double v12, v12, v18

    const-string v20, "invalid weight; must be greater than zero"

    if-lez v12, :cond_b

    :goto_a
    move v12, v9

    goto :goto_b

    :cond_b
    invoke-static/range {v20 .. v20}, Lv/a;->a(Ljava/lang/String;)V

    goto :goto_a

    :goto_b
    new-instance v9, Lu/j0;

    const v21, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v13, v7, v21

    if-lez v13, :cond_c

    move/from16 v13, v21

    goto :goto_c

    :cond_c
    move v13, v7

    :goto_c
    invoke-direct {v9, v13, v8}, Lu/j0;-><init>(FZ)V

    const/16 v16, 0x180

    const/16 v17, 0xff0

    move v13, v7

    move-object v7, v10

    const/4 v10, 0x0

    move-object v15, v11

    const/4 v11, 0x0

    move/from16 v22, v12

    const/4 v12, 0x0

    move/from16 v23, v13

    const/4 v13, 0x0

    move-object/from16 v25, v14

    const/4 v14, 0x0

    move-object/from16 v22, v3

    move v3, v8

    move-object v8, v5

    move-object v5, v15

    move-object/from16 v15, v25

    invoke-static/range {v6 .. v17}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object v14, v15

    invoke-interface/range {v22 .. v22}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v14, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_d

    if-ne v8, v5, :cond_e

    :cond_d
    new-instance v8, Lod/a5;

    const/4 v7, 0x3

    invoke-direct {v8, v1, v7}, Lod/a5;-><init>(Lua/nav/a;I)V

    invoke-virtual {v14, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    move-object v7, v8

    check-cast v7, Li9/a;

    sget-object v8, Lod/m;->F0:Lz0/d;

    const/high16 v13, 0x3f800000    # 1.0f

    float-to-double v9, v13

    cmpl-double v9, v9, v18

    if-lez v9, :cond_f

    goto :goto_d

    :cond_f
    invoke-static/range {v20 .. v20}, Lv/a;->a(Ljava/lang/String;)V

    :goto_d
    new-instance v9, Lu/j0;

    cmpl-float v10, v13, v21

    if-lez v10, :cond_10

    move/from16 v13, v21

    :cond_10
    invoke-direct {v9, v13, v3}, Lu/j0;-><init>(FZ)V

    const/16 v16, 0x180

    const/16 v17, 0xff0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v25, v14

    const/4 v14, 0x0

    move-object/from16 v15, v25

    invoke-static/range {v6 .. v17}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object v14, v15

    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    invoke-interface/range {v22 .. v22}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    const v0, 0x3af27886

    invoke-virtual {v14, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    const/16 v27, 0x0

    const v28, 0xfffe

    const-string v6, "\u0417\u0432\u0438\u0447\u0430\u0439\u043d\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438. \u0414\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u043e\u0431\u0435\u0440\u0456\u0442\u044c \u00ab\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439\u00bb: \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u0431\u0445\u043e\u0434\u0438\u0442\u0438\u043c\u0435 \u043c\u043e\u0441\u0442\u0438, \u0434\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u0440\u043e\u0457\u0437\u0434\u0438, \u0434\u0435 \u0437\u043d\u0430\u043a\u0438 \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u044f\u044e\u0442\u044c \u0432\u0430\u0448\u0443 \u043c\u0430\u0441\u0443, \u0432\u0438\u0441\u043e\u0442\u0443, \u0448\u0438\u0440\u0438\u043d\u0443 \u0430\u0431\u043e \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0443\u0445."

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v25, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x6

    move-object/from16 v24, v0

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v14, v25

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    goto/16 :goto_10

    :cond_11
    const/4 v3, 0x0

    const v6, 0x3af71340

    invoke-virtual {v14, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    iget-boolean v0, v0, Lod/u5;->m:Z

    if-nez v0, :cond_12

    const v0, 0x3af7789b

    invoke-virtual {v14, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const-wide v6, 0xffef6c00L

    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v8

    const/16 v27, 0x0

    const v28, 0xfffa

    const-string v6, "\u041f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f: \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456 \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0431\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438."

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v25, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x186

    move-object/from16 v24, v0

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v14, v25

    :goto_e
    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    goto :goto_f

    :cond_12
    const v0, 0x3afa5c20

    invoke-virtual {v14, v0}, Lr0/q;->b0(I)V

    goto :goto_e

    :goto_f
    const-string v0, "\u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0434\u0430\u043d\u0456 \u0432\u0430\u0448\u043e\u0457 \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u0437 \u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043c. \u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u043c\u0438\u043d\u0430\u0442\u0438\u043c\u0435 \u0434\u0456\u043b\u044f\u043d\u043a\u0438, \u0434\u0435 \u0437\u043d\u0430\u043a \u043e\u0431\u043c\u0435\u0436\u0443\u0454 \u043c\u0430\u0441\u0443 \u043d\u0438\u0436\u0447\u0435 \u0432\u043a\u0430\u0437\u0430\u043d\u043e\u0457, \u0432\u0438\u0441\u043e\u0442\u0443 \u0447\u0438 \u0448\u0438\u0440\u0438\u043d\u0443 \u043d\u0438\u0436\u0447\u0435 \u0432\u0430\u0448\u0438\u0445, \u0430 \u0442\u0430\u043a\u043e\u0436 \u0434\u0456\u043b\u044f\u043d\u043a\u0438 \u0456\u0437 \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u043e\u044e \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a. \u0414\u0430\u043d\u0456 \u0431\u0435\u0440\u0443\u0442\u044c\u0441\u044f \u0437 OpenStreetMap \u0456 \u043f\u043e\u0432\u043d\u0456 \u043d\u0435 \u0441\u043a\u0440\u0456\u0437\u044c: \u0437\u043d\u0430\u043a\u0438 \u043d\u0430 \u0434\u043e\u0440\u043e\u0437\u0456 \u0437\u0430\u0432\u0436\u0434\u0438 \u0433\u043e\u043b\u043e\u0432\u043d\u0456\u0448\u0456 \u0437\u0430 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/h5;

    iget-object v7, v7, Lo0/h5;->l:Lp2/m0;

    const/16 v27, 0x0

    const v28, 0xfffe

    move-object/from16 v24, v7

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v25, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v14, v25

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lid/l1;

    iget-wide v7, v6, Lid/l1;->a:D

    invoke-virtual {v14, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v14, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_13

    if-ne v9, v5, :cond_14

    :cond_13
    new-instance v9, Lod/a6;

    const/4 v6, 0x0

    invoke-direct {v9, v1, v2, v6}, Lod/a6;-><init>(Lua/nav/a;Lr0/r2;I)V

    invoke-virtual {v14, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    move-object v13, v9

    check-cast v13, Li9/c;

    const/16 v15, 0xd86

    const-string v6, "\u041f\u043e\u0432\u043d\u0430 \u043c\u0430\u0441\u0430, \u0442"

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    invoke-static/range {v6 .. v15}, Lod/v6;->d(Ljava/lang/String;DDDLi9/c;Lr0/q;I)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lid/l1;

    iget-wide v7, v6, Lid/l1;->b:D

    invoke-virtual {v14, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v14, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_15

    if-ne v9, v5, :cond_16

    :cond_15
    new-instance v9, Lod/a6;

    const/4 v6, 0x1

    invoke-direct {v9, v1, v2, v6}, Lod/a6;-><init>(Lua/nav/a;Lr0/r2;I)V

    invoke-virtual {v14, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object v13, v9

    check-cast v13, Li9/c;

    const/16 v15, 0xd86

    const-string v6, "\u0412\u0438\u0441\u043e\u0442\u0430, \u043c"

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    invoke-static/range {v6 .. v15}, Lod/v6;->d(Ljava/lang/String;DDDLi9/c;Lr0/q;I)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lid/l1;

    iget-wide v7, v6, Lid/l1;->c:D

    invoke-virtual {v14, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v14, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_17

    if-ne v9, v5, :cond_18

    :cond_17
    new-instance v9, Lod/a6;

    const/4 v5, 0x2

    invoke-direct {v9, v1, v2, v5}, Lod/a6;-><init>(Lua/nav/a;Lr0/r2;I)V

    invoke-virtual {v14, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v13, v9

    check-cast v13, Li9/c;

    const/16 v15, 0xd86

    const-string v6, "\u0428\u0438\u0440\u0438\u043d\u0430, \u043c"

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    invoke-static/range {v6 .. v15}, Lod/v6;->d(Ljava/lang/String;DDDLi9/c;Lr0/q;I)V

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lid/e1;

    iget-object v1, v1, Lid/e1;->a:Lua/nav/routing/RoutingPackInfo;

    if-nez v1, :cond_19

    const v1, 0x3b092ddf

    invoke-virtual {v14, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v8, v1, Lo0/u0;->w:J

    const/16 v27, 0x0

    const v28, 0xfffa

    const-string v6, "\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e: \u0431\u0435\u0437 \u043d\u044c\u043e\u0433\u043e \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0431\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0439\u043e\u0433\u043e \u043d\u0438\u0436\u0447\u0435, \u0432 \u0440\u043e\u0437\u0434\u0456\u043b\u0456 \u00ab\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a\u00bb."

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v25, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x6

    move-object/from16 v24, v0

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v14, v25

    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    goto :goto_10

    :cond_19
    const v0, 0x3b0d9180

    invoke-virtual {v14, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    goto :goto_10

    :cond_1a
    invoke-virtual {v14}, Lr0/q;->W()V

    :goto_10
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lod/u5;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lod/u5;->o:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v0, Lod/u5;->q:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v4, v0, Lod/u5;->p:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, p1

    check-cast v5, Lw/b;

    move-object/from16 v6, p2

    check-cast v6, Lr0/q;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "$this$item"

    invoke-static {v5, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v5, v7, 0x11

    const/16 v8, 0x10

    const/4 v9, 0x1

    if-eq v5, v8, :cond_1b

    move v5, v9

    goto :goto_11

    :cond_1b
    const/4 v5, 0x0

    :goto_11
    and-int/2addr v7, v9

    invoke-virtual {v6, v7, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    iget-boolean v0, v0, Lod/u5;->m:Z

    invoke-virtual {v6, v0}, Lr0/q;->h(Z)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v6, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_1c

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-ne v7, v5, :cond_1d

    :cond_1c
    new-instance v7, Lod/z5;

    const/4 v5, 0x0

    invoke-direct {v7, v0, v4, v1, v5}, Lod/z5;-><init>(ZLjava/lang/Object;Lr0/u0;I)V

    invoke-virtual {v6, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1d
    move-object v5, v7

    check-cast v5, Li9/a;

    const/4 v7, 0x0

    move v4, v0

    invoke-static/range {v2 .. v7}, Lod/v6;->g(Ljava/lang/String;Ljava/lang/String;ZLi9/a;Lr0/q;I)V

    goto :goto_12

    :cond_1e
    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_12
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
