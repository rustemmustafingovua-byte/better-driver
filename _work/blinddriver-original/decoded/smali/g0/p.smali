.class public final synthetic Lg0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Li9/a;Li9/a;Li9/a;Lr0/u0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lg0/p;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p;->o:Ljava/lang/Object;

    iput-object p2, p0, Lg0/p;->m:Li9/a;

    iput-object p3, p0, Lg0/p;->p:Ljava/lang/Object;

    iput-object p4, p0, Lg0/p;->q:Ljava/lang/Object;

    iput-object p5, p0, Lg0/p;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lf1/r;Lr0/u0;Lz0/d;Li0/c;Li9/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lg0/p;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p;->o:Ljava/lang/Object;

    iput-object p2, p0, Lg0/p;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg0/p;->p:Ljava/lang/Object;

    iput-object p4, p0, Lg0/p;->q:Ljava/lang/Object;

    iput-object p5, p0, Lg0/p;->m:Li9/a;

    return-void
.end method

.method public synthetic constructor <init>(Li9/a;Lad/a0;Li9/a;Li9/a;Li9/c;)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Lg0/p;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p;->m:Li9/a;

    iput-object p2, p0, Lg0/p;->o:Ljava/lang/Object;

    iput-object p3, p0, Lg0/p;->n:Ljava/lang/Object;

    iput-object p4, p0, Lg0/p;->p:Ljava/lang/Object;

    iput-object p5, p0, Lg0/p;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lsc/d;Ljava/lang/String;Li9/c;Li9/a;Li9/a;I)V
    .locals 0

    .line 4
    const/4 p6, 0x2

    iput p6, p0, Lg0/p;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p;->o:Ljava/lang/Object;

    iput-object p2, p0, Lg0/p;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg0/p;->p:Ljava/lang/Object;

    iput-object p4, p0, Lg0/p;->m:Li9/a;

    iput-object p5, p0, Lg0/p;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Lr0/u0;)V
    .locals 1

    .line 5
    const/4 v0, 0x4

    iput v0, p0, Lg0/p;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p;->o:Ljava/lang/Object;

    iput-object p2, p0, Lg0/p;->p:Ljava/lang/Object;

    iput-object p3, p0, Lg0/p;->m:Li9/a;

    iput-object p4, p0, Lg0/p;->q:Ljava/lang/Object;

    iput-object p5, p0, Lg0/p;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 65

    move-object/from16 v0, p0

    iget v1, v0, Lg0/p;->l:I

    iget-object v2, v0, Lg0/p;->m:Li9/a;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v6, Lf1/o;->a:Lf1/o;

    sget-object v7, Lr0/m;->a:Lr0/e;

    const/4 v8, 0x2

    sget-object v10, Lt8/z;->a:Lt8/z;

    const/4 v11, 0x0

    iget-object v12, v0, Lg0/p;->n:Ljava/lang/Object;

    iget-object v13, v0, Lg0/p;->q:Ljava/lang/Object;

    iget-object v14, v0, Lg0/p;->p:Ljava/lang/Object;

    iget-object v15, v0, Lg0/p;->o:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v15, Lua/nav/a;

    check-cast v14, Ljd/b;

    check-cast v13, Li9/a;

    check-cast v12, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v39, 0x1

    and-int/lit8 v4, v2, 0x3

    if-eq v4, v8, :cond_0

    move/from16 v4, v39

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v4}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lu/b1;->c:Lu/v;

    invoke-static {v2}, Lu/b;->u(Lf1/r;)Lf1/r;

    move-result-object v2

    invoke-static {v2}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v2

    sget-object v4, Lu/h;->c:Lu/c;

    sget-object v8, Lf1/c;->x:Lf1/h;

    invoke-static {v4, v8, v1, v11}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    move-object/from16 v40, v12

    iget-wide v11, v1, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v16, Le2/h;->b:Le2/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v5, v1, Lr0/q;->S:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_1
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v12, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Le2/g;->g:Le2/e;

    invoke-static {v1, v11, v12}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v11, Le2/g;->h:Le2/d;

    invoke-static {v1, v11}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lf1/c;->v:Lf1/i;

    invoke-static {v6, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    move-object/from16 v41, v10

    const/4 v3, 0x4

    int-to-float v10, v3

    invoke-static {v6, v10, v10}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v3

    sget-object v6, Lu/h;->a:Lu/n;

    const/16 v10, 0x30

    invoke-static {v6, v2, v1, v10}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    move-object/from16 v42, v14

    move-object v10, v15

    iget-wide v14, v1, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v14

    invoke-static {v3, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v15, v1, Lr0/q;->S:Z

    if-eqz v15, :cond_2

    invoke-virtual {v1, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v5, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v14, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v1, v12, v1, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v9, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v1, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    if-nez v2, :cond_3

    if-ne v3, v7, :cond_4

    :cond_3
    new-instance v3, Lkd/p;

    invoke-direct {v3, v13, v4}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v1, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v16, v3

    check-cast v16, Li9/a;

    sget-object v22, Lod/m;->i0:Lz0/d;

    const/high16 v24, 0x30000000

    const/16 v25, 0x1fe

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v1

    invoke-static/range {v16 .. v25}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v5, v2

    const-wide/16 v11, 0x0

    cmpl-double v3, v5, v11

    const-string v5, "invalid weight; must be greater than zero"

    if-lez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v5}, Lv/a;->a(Ljava/lang/String;)V

    :goto_3
    new-instance v3, Lu/j0;

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v8, v2, v6

    if-lez v8, :cond_6

    move v2, v6

    :goto_4
    move/from16 v8, v39

    goto :goto_5

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :goto_5
    invoke-direct {v3, v2, v8}, Lu/j0;-><init>(FZ)V

    invoke-static {v3, v1}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-interface/range {v40 .. v40}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lod/f4;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_b

    if-eq v2, v8, :cond_a

    const/4 v8, 0x2

    if-eq v2, v8, :cond_9

    if-eq v2, v3, :cond_8

    const/4 v8, 0x4

    if-ne v2, v8, :cond_7

    sget-object v2, Lcd/d;->i:Lcd/c;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object/from16 v16, v2

    goto :goto_7

    :cond_7
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    const/4 v8, 0x0

    sget-object v2, Lcd/d;->h:Lcd/c;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    sget-object v2, Lcd/d;->g:Lcd/c;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    sget-object v2, Lcd/d;->f:Lcd/c;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    sget-object v2, Lcd/d;->e:Lcd/c;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :goto_7
    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->g:Lp2/m0;

    sget-object v22, Lt2/k;->q:Lt2/k;

    const/16 v37, 0x0

    const v38, 0xffde

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/high16 v36, 0x30000

    move-object/from16 v35, v1

    move-object/from16 v34, v2

    invoke-static/range {v16 .. v38}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v13, v2

    cmpl-double v9, v13, v11

    if-lez v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v5}, Lv/a;->a(Ljava/lang/String;)V

    :goto_8
    new-instance v5, Lu/j0;

    cmpl-float v9, v2, v6

    if-lez v9, :cond_d

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_d
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_9

    :goto_a
    invoke-direct {v5, v6, v2}, Lu/j0;-><init>(FZ)V

    invoke-static {v5, v1}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lod/v6;->m(Lr0/q;I)V

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    invoke-interface/range {v40 .. v40}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lod/f4;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object v0, v0, Lg0/p;->m:Li9/a;

    if-eqz v5, :cond_12

    if-eq v5, v2, :cond_11

    const/4 v2, 0x2

    if-eq v5, v2, :cond_10

    if-eq v5, v3, :cond_f

    const/4 v3, 0x4

    if-ne v5, v3, :cond_e

    const v0, -0x59f8a706

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lod/m;->z(Lr0/q;I)V

    invoke-virtual {v1, v8}, Lr0/q;->q(Z)V

    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_e
    const/4 v8, 0x0

    const v0, -0x59f8daeb

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v1, v8}, Lr0/q;->q(Z)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    const/4 v8, 0x0

    const v0, -0x59f8aefc

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    const/16 v0, 0x48

    move-object/from16 v14, v42

    invoke-static {v10, v14, v1, v0}, Lod/m;->p(Lua/nav/a;Ljd/b;Lr0/q;I)V

    invoke-virtual {v1, v8}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    const v0, -0x59f8b526

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    invoke-static {v10, v1, v4}, Lod/v6;->a(Lua/nav/a;Lr0/q;I)V

    invoke-virtual {v1, v8}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    const v2, -0x59f8bb85

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-static {v0, v1, v8}, Lod/v6;->i(Li9/a;Lr0/q;I)V

    invoke-virtual {v1, v8}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_12
    move-object/from16 v14, v42

    const v2, -0x59f8d699

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_13

    new-instance v2, Lod/p4;

    const/16 v3, 0xa

    move-object/from16 v12, v40

    invoke-direct {v2, v12, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    move-object/from16 v12, v40

    :goto_c
    move-object/from16 v19, v2

    check-cast v19, Li9/a;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_14

    new-instance v2, Lod/p4;

    const/16 v3, 0xc

    invoke-direct {v2, v12, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v20, v2

    check-cast v20, Li9/a;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_15

    new-instance v2, Lod/p4;

    const/16 v3, 0x10

    invoke-direct {v2, v12, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v21, v2

    check-cast v21, Li9/a;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_16

    new-instance v2, Lod/p4;

    const/16 v3, 0x12

    invoke-direct {v2, v12, v3}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v22, v2

    check-cast v22, Li9/a;

    const v25, 0x36dc8

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v17, v10

    move-object/from16 v18, v14

    invoke-static/range {v17 .. v25}, Lod/v6;->o(Lua/nav/a;Ljd/b;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Lr0/q;I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lr0/q;->q(Z)V

    goto/16 :goto_b

    :goto_d
    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_17
    move-object/from16 v41, v10

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_e
    return-object v41

    :pswitch_0
    move-object/from16 v41, v10

    check-cast v15, Lad/a0;

    move-object/from16 v18, v12

    check-cast v18, Li9/a;

    check-cast v14, Li9/a;

    move-object v1, v13

    check-cast v1, Li9/c;

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_18

    const/4 v3, 0x1

    :goto_f
    const/16 v39, 0x1

    goto :goto_10

    :cond_18
    const/4 v3, 0x0

    goto :goto_f

    :goto_10
    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x6

    int-to-float v3, v2

    invoke-static {v6, v3}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v5, Lf1/c;->v:Lf1/i;

    invoke-static {v3}, Lu/h;->g(F)Lu/f;

    move-result-object v3

    const/16 v7, 0x36

    invoke-static {v3, v5, v4, v7}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v9, v4, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v2, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v10, v4, Lr0/q;->S:Z

    if-eqz v10, :cond_19

    invoke-virtual {v4, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_11

    :cond_19
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_11
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v4, v5, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v4, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v2, 0x38

    int-to-float v12, v2

    invoke-static {v6, v12}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/16 v13, 0x30

    int-to-float v13, v13

    invoke-static {v2, v13}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v20

    const/4 v8, 0x0

    int-to-float v2, v8

    new-instance v8, Lu/s0;

    invoke-direct {v8, v2, v2, v2, v2}, Lu/s0;-><init>(FFFF)V

    sget-object v17, Lo0/q;->a:Lu/s0;

    move-object/from16 v26, v8

    sget-object v8, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v4, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v31, v1

    move-object/from16 v1, v17

    check-cast v1, Lo0/u0;

    move/from16 v17, v2

    iget-wide v1, v1, Lo0/u0;->a:J

    invoke-static {v1, v2, v4}, Lo0/q;->a(JLr0/q;)Lo0/p;

    move-result-object v23

    sget-object v27, Lod/m;->G:Lz0/d;

    const v29, 0x30c00030

    const/16 v30, 0x16c

    iget-object v0, v0, Lg0/p;->m:Li9/a;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-object/from16 v28, v4

    invoke-static/range {v19 .. v30}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Lu/h;->g(F)Lu/f;

    move-result-object v0

    sget-object v1, Lf1/c;->x:Lf1/h;

    const/4 v2, 0x6

    invoke-static {v0, v1, v4, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v1, v4, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    move-object/from16 v16, v14

    invoke-static {v6, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v14

    invoke-virtual {v4}, Lr0/q;->e0()V

    move-object/from16 p2, v8

    iget-boolean v8, v4, Lr0/q;->S:Z

    if-eqz v8, :cond_1a

    invoke-virtual {v4, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_12

    :cond_1a
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_12
    invoke-static {v10, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v4, v7, v4, v5}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v11, v14, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v0, 0x4e

    int-to-float v7, v0

    invoke-static {v6, v7}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/16 v0, 0x26

    int-to-float v3, v0

    const/16 v5, 0x6c36

    const/4 v0, 0x1

    move/from16 v8, v17

    move-object/from16 v1, v31

    invoke-static/range {v0 .. v5}, Lod/e4;->m(ILi9/c;Lf1/r;FLr0/q;I)V

    invoke-static {v6, v7}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/4 v0, -0x1

    invoke-static/range {v0 .. v5}, Lod/e4;->m(ILi9/c;Lf1/r;FLr0/q;I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lr0/q;->q(Z)V

    invoke-static {v6, v12}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v13}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v19

    new-instance v0, Lu/s0;

    invoke-direct {v0, v8, v8, v8, v8}, Lu/s0;-><init>(FFFF)V

    iget-boolean v1, v15, Lad/a0;->n:Z

    const-wide v2, 0xffc62828L

    if-eqz v1, :cond_1b

    const v1, 0x73edec8f

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v9

    goto :goto_13

    :cond_1b
    const/4 v1, 0x0

    const v5, 0x73edf2a5

    invoke-virtual {v4, v5}, Lr0/q;->b0(I)V

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v9, v5, Lo0/u0;->a:J

    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    :goto_13
    invoke-static {v9, v10, v4}, Lo0/q;->a(JLr0/q;)Lo0/p;

    move-result-object v22

    sget-object v26, Lod/m;->H:Lz0/d;

    const v28, 0x30c00030

    const/16 v29, 0x16c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    move-object/from16 v27, v4

    invoke-static/range {v18 .. v29}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-static {v6, v12}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v13}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v20

    new-instance v0, Lu/s0;

    invoke-direct {v0, v8, v8, v8, v8}, Lu/s0;-><init>(FFFF)V

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v1

    invoke-static {v1, v2, v4}, Lo0/q;->a(JLr0/q;)Lo0/p;

    move-result-object v23

    sget-object v27, Lod/m;->I:Lz0/d;

    const v29, 0x30c00030

    const/16 v30, 0x16c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v0

    move-object/from16 v28, v4

    move-object/from16 v19, v16

    invoke-static/range {v19 .. v30}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lr0/q;->q(Z)V

    goto :goto_14

    :cond_1c
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_14
    return-object v41

    :pswitch_1
    move-object/from16 v41, v10

    move-object v5, v15

    check-cast v5, Lsc/d;

    move-object v6, v12

    check-cast v6, Ljava/lang/String;

    move-object v7, v14

    check-cast v7, Li9/c;

    move-object v9, v13

    check-cast v9, Li9/a;

    move-object/from16 v10, p1

    check-cast v10, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x6001

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v8, v0, Lg0/p;->m:Li9/a;

    invoke-static/range {v5 .. v11}, Lod/g3;->R(Lsc/d;Ljava/lang/String;Li9/c;Li9/a;Li9/a;Lr0/q;I)V

    return-object v41

    :pswitch_2
    move-object/from16 v41, v10

    check-cast v15, Landroid/content/Context;

    check-cast v14, Li9/a;

    check-cast v13, Li9/a;

    check-cast v12, Lr0/u0;

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    const/4 v3, 0x1

    :goto_15
    const/16 v39, 0x1

    goto :goto_16

    :cond_1d
    const/4 v3, 0x0

    goto :goto_15

    :goto_16
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Lu/b1;->c:Lu/v;

    invoke-static {v1}, Lu/b;->u(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-static {v1}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v1

    sget-object v3, Lf1/c;->p:Lf1/j;

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v4, v0, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v1, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_1e

    invoke-virtual {v0, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_17

    :cond_1e
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_17
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v3, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v0, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v0, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v1, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v1, 0x208

    int-to-float v1, v1

    const/4 v8, 0x0

    move-object/from16 p0, v12

    const/4 v12, 0x1

    invoke-static {v6, v8, v1, v12}, Lu/b1;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v8}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v0}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v8

    invoke-static {v1, v8}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v1

    const/16 v8, 0x16

    int-to-float v8, v8

    const/16 v12, 0x1c

    int-to-float v12, v12

    invoke-static {v1, v8, v12}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v1

    const/16 v8, 0xe

    int-to-float v8, v8

    invoke-static {v8}, Lu/h;->g(F)Lu/f;

    move-result-object v8

    sget-object v12, Lf1/c;->x:Lf1/h;

    move-object/from16 v18, v2

    const/4 v2, 0x6

    invoke-static {v8, v12, v0, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v8

    move-object v2, v13

    iget-wide v12, v0, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    invoke-static {v1, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v0}, Lr0/q;->e0()V

    move-object/from16 p2, v2

    iget-boolean v2, v0, Lr0/q;->S:Z

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_18

    :cond_1f
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_18
    invoke-static {v10, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v13, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12, v0, v5, v0, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v11, v1, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface/range {p0 .. p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnd/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    if-eqz v1, :cond_25

    const/4 v8, 0x1

    if-ne v1, v8, :cond_24

    const v1, 0x7e48732c

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lnd/a;->B:Lcd/c;

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->f:Lp2/m0;

    sget-object v48, Lt2/k;->q:Lt2/k;

    const/16 v63, 0x0

    const v64, 0x1ffbe

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/high16 v62, 0x180000

    move-object/from16 v61, v0

    move-object/from16 v60, v3

    invoke-static/range {v42 .. v64}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v3, Lnd/a;->C:Lcd/c;

    const/4 v8, 0x0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->j:Lp2/m0;

    const v64, 0x1fffe

    const/16 v48, 0x0

    const/16 v62, 0x0

    move-object/from16 v60, v1

    invoke-static/range {v42 .. v64}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v3, 0x4

    int-to-float v1, v3

    invoke-static {v6, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v0, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_20

    if-ne v3, v7, :cond_21

    :cond_20
    new-instance v3, Lnd/c;

    const/4 v8, 0x0

    invoke-direct {v3, v15, v14, v8}, Lnd/c;-><init>(Landroid/content/Context;Li9/a;I)V

    invoke-virtual {v0, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v18, v3

    check-cast v18, Li9/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    int-to-float v1, v2

    invoke-static {v3, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v19

    sget-object v26, Lnd/a;->b:Lz0/d;

    const v28, 0x30000030

    const/16 v29, 0x1fc

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v0

    invoke-static/range {v18 .. v29}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v0, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_22

    if-ne v3, v7, :cond_23

    :cond_22
    new-instance v3, Lnd/c;

    const/4 v12, 0x1

    invoke-direct {v3, v15, v2, v12}, Lnd/c;-><init>(Landroid/content/Context;Li9/a;I)V

    invoke-virtual {v0, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v18, v3

    check-cast v18, Li9/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v13, 0x30

    int-to-float v2, v13

    invoke-static {v1, v2}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v19

    sget-object v25, Lnd/a;->c:Lz0/d;

    const v27, 0x30000030

    const/16 v28, 0x1fc

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v26, v0

    invoke-static/range {v18 .. v28}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    :goto_19
    const/4 v2, 0x1

    goto/16 :goto_1a

    :cond_24
    const/4 v8, 0x0

    const v1, 0x56a6f4e2

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_25
    const/4 v8, 0x0

    const v1, 0x7e3806eb

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lnd/a;->r:Lcd/c;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->f:Lp2/m0;

    sget-object v48, Lt2/k;->q:Lt2/k;

    const/16 v63, 0x0

    const v64, 0x1ffbe

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/high16 v62, 0x180000

    move-object/from16 v61, v0

    move-object/from16 v60, v3

    invoke-static/range {v42 .. v64}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v3, Lnd/a;->s:Lcd/c;

    const/4 v8, 0x0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->j:Lp2/m0;

    const v64, 0x1fffe

    const/16 v48, 0x0

    const/16 v62, 0x0

    move-object/from16 v60, v3

    invoke-static/range {v42 .. v64}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v3, Lnd/a;->t:Lcd/c;

    sget-object v4, Lnd/a;->u:Lcd/c;

    const-string v5, "\ud83d\udccd"

    const/4 v9, 0x6

    invoke-static {v5, v3, v4, v0, v9}, Lnd/a;->b(Ljava/lang/String;Lcd/c;Lcd/c;Lr0/q;I)V

    sget-object v3, Lnd/a;->v:Lcd/c;

    sget-object v4, Lnd/a;->w:Lcd/c;

    const-string v5, "\ud83d\udd14"

    invoke-static {v5, v3, v4, v0, v9}, Lnd/a;->b(Ljava/lang/String;Lcd/c;Lcd/c;Lr0/q;I)V

    sget-object v3, Lnd/a;->x:Lcd/c;

    sget-object v4, Lnd/a;->y:Lcd/c;

    const-string v5, "\ud83d\udd0b"

    invoke-static {v5, v3, v4, v0, v9}, Lnd/a;->b(Ljava/lang/String;Lcd/c;Lcd/c;Lr0/q;I)V

    sget-object v3, Lnd/a;->z:Lcd/c;

    const/4 v8, 0x0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v0, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->s:J

    const v64, 0x1fffa

    move-object/from16 v60, v1

    move-wide/from16 v44, v3

    invoke-static/range {v42 .. v64}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v3, 0x4

    int-to-float v1, v3

    invoke-static {v6, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v0, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_26

    if-ne v4, v7, :cond_27

    :cond_26
    new-instance v4, Lb0/c3;

    move-object/from16 v12, p0

    const/4 v1, 0x1

    invoke-direct {v4, v15, v3, v12, v1}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v18, v4

    check-cast v18, Li9/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    int-to-float v2, v2

    invoke-static {v1, v2}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v19

    sget-object v26, Lnd/a;->a:Lz0/d;

    const v28, 0x30000030

    const/16 v29, 0x1fc

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v0

    invoke-static/range {v18 .. v29}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lr0/q;->q(Z)V

    goto/16 :goto_19

    :goto_1a
    invoke-virtual {v0, v2}, Lr0/q;->q(Z)V

    invoke-virtual {v0, v2}, Lr0/q;->q(Z)V

    goto :goto_1b

    :cond_28
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_1b
    return-object v41

    :pswitch_3
    move-object v3, v2

    move-object/from16 v41, v10

    check-cast v15, Lf1/r;

    check-cast v12, Lr0/u0;

    check-cast v14, Lz0/d;

    check-cast v13, Li0/c;

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_29

    const/4 v2, 0x1

    :goto_1c
    const/16 v39, 0x1

    goto :goto_1d

    :cond_29
    const/4 v2, 0x0

    goto :goto_1c

    :goto_1d
    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_2a

    new-instance v1, Lb0/y;

    const/4 v2, 0x4

    invoke-direct {v1, v12, v2}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2a
    check-cast v1, Li9/c;

    invoke-static {v15, v1}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    sget-object v2, Lf1/c;->l:Lf1/j;

    const/4 v12, 0x1

    invoke-static {v2, v12}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v4, v0, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v1, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v7, v0, Lr0/q;->S:Z

    if-eqz v7, :cond_2b

    invoke-virtual {v0, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_1e

    :cond_2b
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_1e
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v2, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v5, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v0, v2, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v0, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-virtual {v13, v3, v0, v2}, Li0/c;->b(Li9/a;Lr0/q;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lr0/q;->q(Z)V

    goto :goto_1f

    :cond_2c
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_1f
    return-object v41

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
