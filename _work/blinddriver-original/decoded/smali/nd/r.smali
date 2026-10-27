.class public final synthetic Lnd/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lnd/i0;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Z

.field public final synthetic q:Li9/a;

.field public final synthetic r:Li9/a;

.field public final synthetic s:Li9/a;

.field public final synthetic t:Li9/a;


# direct methods
.method public synthetic constructor <init>(Lnd/i0;IILi9/a;ZLi9/a;Li9/a;Li9/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lnd/r;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/r;->m:Lnd/i0;

    iput p2, p0, Lnd/r;->n:I

    iput p3, p0, Lnd/r;->o:I

    iput-object p4, p0, Lnd/r;->q:Li9/a;

    iput-boolean p5, p0, Lnd/r;->p:Z

    iput-object p6, p0, Lnd/r;->r:Li9/a;

    iput-object p7, p0, Lnd/r;->s:Li9/a;

    iput-object p8, p0, Lnd/r;->t:Li9/a;

    return-void
.end method

.method public synthetic constructor <init>(Lnd/i0;IIZLi9/a;Li9/a;Li9/a;Li9/a;I)V
    .locals 0

    .line 2
    const/4 p9, 0x1

    iput p9, p0, Lnd/r;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/r;->m:Lnd/i0;

    iput p2, p0, Lnd/r;->n:I

    iput p3, p0, Lnd/r;->o:I

    iput-boolean p4, p0, Lnd/r;->p:Z

    iput-object p5, p0, Lnd/r;->q:Li9/a;

    iput-object p6, p0, Lnd/r;->r:Li9/a;

    iput-object p7, p0, Lnd/r;->s:Li9/a;

    iput-object p8, p0, Lnd/r;->t:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 60

    move-object/from16 v0, p0

    iget v1, v0, Lnd/r;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v10, p1

    check-cast v10, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x6009

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v2, v0, Lnd/r;->m:Lnd/i0;

    iget v3, v0, Lnd/r;->n:I

    iget v4, v0, Lnd/r;->o:I

    iget-boolean v5, v0, Lnd/r;->p:Z

    iget-object v6, v0, Lnd/r;->q:Li9/a;

    iget-object v7, v0, Lnd/r;->r:Li9/a;

    iget-object v8, v0, Lnd/r;->s:Li9/a;

    iget-object v9, v0, Lnd/r;->t:Li9/a;

    invoke-static/range {v2 .. v11}, Lnd/h0;->m(Lnd/i0;IIZLi9/a;Li9/a;Li9/a;Li9/a;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v14

    goto :goto_0

    :cond_0
    move v2, v15

    :goto_0
    and-int/2addr v1, v14

    invoke-virtual {v8, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    int-to-float v1, v1

    const/16 v2, 0xa

    int-to-float v2, v2

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v1, v2}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    sget-object v5, Lu/h;->c:Lu/c;

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v5, v6, v8, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v9, v8, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v2, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v12, v8, Lr0/q;->S:Z

    if-eqz v12, :cond_1

    invoke-virtual {v8, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_1
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v7, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v10, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v8, v9, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v8, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lf1/c;->v:Lf1/i;

    sget-object v14, Lu/h;->a:Lu/n;

    const/16 v15, 0x30

    invoke-static {v14, v2, v8, v15}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    move/from16 v17, v1

    move-object/from16 v18, v2

    iget-wide v1, v8, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v4, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v15

    invoke-virtual {v8}, Lr0/q;->e0()V

    move-object/from16 v20, v4

    iget-boolean v4, v8, Lr0/q;->S:Z

    if-eqz v4, :cond_2

    invoke-virtual {v8, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v12, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v8, v10, v8, v9}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v15, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v1, 0xff6750a4L

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v3

    const/4 v1, 0x6

    int-to-float v15, v1

    invoke-static {v15}, La0/e;->a(F)La0/d;

    move-result-object v2

    move-object v1, v10

    sget-object v10, Lnd/a;->d:Lz0/d;

    move-object/from16 v21, v12

    const v12, 0xc00180

    move-object/from16 v22, v13

    const/16 v13, 0x79

    move-object/from16 v23, v1

    const/4 v1, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    const-wide/16 v5, 0x0

    move-object/from16 v26, v7

    const/4 v7, 0x0

    move-object/from16 v27, v11

    move-object v11, v8

    const/4 v8, 0x0

    move-object/from16 v28, v9

    const/4 v9, 0x0

    move-object/from16 v16, v14

    move/from16 v29, v17

    move-object/from16 v38, v18

    move-object/from16 v14, v20

    move-object/from16 v33, v21

    move-object/from16 v37, v22

    move-object/from16 v35, v23

    move-object/from16 v30, v24

    move-object/from16 v31, v25

    move-object/from16 v34, v26

    move-object/from16 v32, v27

    move-object/from16 v36, v28

    invoke-static/range {v1 .. v13}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v8, v11

    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-static {v14, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v2, Lnd/a;->J:Lcd/c;

    iget v3, v0, Lnd/r;->n:I

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lnd/r;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->n:Lp2/m0;

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v8, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v6, v6, Lo0/u0;->s:J

    const/16 v22, 0x0

    const v23, 0x1fffa

    move v9, v1

    move-object v1, v2

    const/4 v2, 0x0

    move v10, v3

    move-object/from16 v19, v5

    const/16 v11, 0x30

    move-wide/from16 v58, v6

    move-object v7, v4

    move-wide/from16 v3, v58

    const-wide/16 v5, 0x0

    move-object v12, v7

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move v13, v9

    move/from16 v17, v10

    const-wide/16 v9, 0x0

    move/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v24, v12

    move/from16 v21, v13

    const-wide/16 v12, 0x0

    move-object/from16 v25, v14

    const/4 v14, 0x0

    move/from16 v26, v15

    const/4 v15, 0x0

    move-object/from16 v27, v16

    const/16 v16, 0x0

    move/from16 v28, v17

    const/16 v17, 0x0

    move/from16 v39, v18

    const/16 v18, 0x0

    move/from16 v40, v21

    const/16 v21, 0x0

    move-object/from16 v44, v24

    move-object/from16 v46, v25

    move/from16 v42, v26

    move-object/from16 v41, v27

    move/from16 v43, v40

    const/4 v0, 0x1

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v20

    const/high16 v11, 0x3f800000    # 1.0f

    float-to-double v1, v11

    const-wide/16 v24, 0x0

    cmpl-double v1, v1, v24

    const-string v26, "invalid weight; must be greater than zero"

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static/range {v26 .. v26}, Lv/a;->a(Ljava/lang/String;)V

    :goto_3
    new-instance v1, Lu/j0;

    const v27, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v11, v27

    if-lez v2, :cond_4

    move/from16 v2, v27

    goto :goto_4

    :cond_4
    move v2, v11

    :goto_4
    invoke-direct {v1, v2, v0}, Lu/j0;-><init>(FZ)V

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    move-object/from16 v12, p0

    iget-object v13, v12, Lnd/r;->m:Lnd/i0;

    iget-object v1, v13, Lnd/i0;->a:Lnd/m;

    sget-object v2, Lnd/m;->m:Lnd/m;

    const/16 v14, 0x1c

    if-ne v1, v2, :cond_5

    const v1, 0x4b4714c4    # 1.304698E7f

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    const/4 v15, 0x0

    int-to-float v1, v15

    new-instance v6, Lu/s0;

    move/from16 v2, v43

    invoke-direct {v6, v2, v1, v2, v1}, Lu/s0;-><init>(FFFF)V

    int-to-float v1, v14

    move-object/from16 v3, v46

    invoke-static {v3, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    new-instance v4, Lnd/s;

    const/4 v5, 0x0

    iget-boolean v7, v12, Lnd/r;->p:Z

    invoke-direct {v4, v5, v7}, Lnd/s;-><init>(IZ)V

    const v5, 0x75092320

    invoke-static {v5, v4, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    const v9, 0x30c00030

    const/16 v10, 0x17c

    move/from16 v21, v2

    move-object v2, v1

    iget-object v1, v12, Lnd/r;->q:Li9/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v11, v21

    move-object/from16 v12, v46

    invoke-static/range {v1 .. v10}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_5
    move/from16 v11, v43

    move-object/from16 v12, v46

    const/4 v15, 0x0

    const v1, 0x4b4baa2a    # 1.334737E7f

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    :goto_5
    iget-object v1, v13, Lnd/i0;->j:Ljava/lang/String;

    if-nez v1, :cond_6

    const v1, 0x4b4c78de    # 1.3400286E7f

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_6
    const v2, 0x4b4c78df    # 1.3400287E7f

    invoke-virtual {v8, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v8, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    int-to-float v3, v15

    new-instance v6, Lu/s0;

    invoke-direct {v6, v11, v3, v11, v3}, Lu/s0;-><init>(FFFF)V

    int-to-float v3, v14

    invoke-static {v12, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_7

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v5, v4, :cond_8

    :cond_7
    new-instance v5, Lnd/t;

    const/4 v4, 0x0

    invoke-direct {v5, v4, v2, v1}, Lnd/t;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v1, v5

    check-cast v1, Li9/a;

    sget-object v7, Lnd/a;->e:Lz0/d;

    const v9, 0x30c00030

    const/16 v10, 0x17c

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v10}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    :goto_6
    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    iget-object v1, v13, Lnd/i0;->c:Lcd/c;

    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v44

    invoke-virtual {v8, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->h:Lp2/m0;

    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v22, 0x0

    const v23, 0x1ffbe

    const/4 v2, 0x0

    move-object/from16 v19, v3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v46, v12

    move-object v14, v13

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v45, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v39, v18

    const/16 v18, 0x0

    move/from16 v40, v21

    const/high16 v21, 0x180000

    move-object/from16 v49, v39

    move/from16 v47, v40

    move-object/from16 v48, v44

    move-object/from16 v50, v46

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v20

    const/16 v1, 0xbe

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v3, v50

    invoke-static {v3, v2, v1, v0}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    invoke-static {v8}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v2

    invoke-static {v1, v2}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v1

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    const/4 v5, 0x0

    invoke-static {v2, v4, v8, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v6, v8, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v7, v8, Lr0/q;->S:Z

    if-eqz v7, :cond_9

    move-object/from16 v7, v32

    invoke-virtual {v8, v7}, Lr0/q;->l(Li9/a;)V

    :goto_7
    move-object/from16 v9, v33

    goto :goto_8

    :cond_9
    move-object/from16 v7, v32

    invoke-virtual {v8}, Lr0/q;->o0()V

    goto :goto_7

    :goto_8
    invoke-static {v9, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v34

    invoke-static {v2, v6, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v6, v35

    move-object/from16 v10, v36

    invoke-static {v4, v8, v6, v8, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v4, v37

    invoke-static {v4, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v1, 0x4

    int-to-float v1, v1

    invoke-static {v3, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    move-object/from16 v14, v49

    iget-object v1, v14, Lnd/i0;->d:Lcd/c;

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, v48

    invoke-virtual {v8, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo0/h5;

    iget-object v11, v11, Lo0/h5;->k:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/4 v2, 0x0

    move-object/from16 v46, v3

    const-wide/16 v3, 0x0

    move/from16 v45, v5

    const-wide/16 v5, 0x0

    move-object/from16 v32, v7

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v33, v9

    const-wide/16 v9, 0x0

    move-object/from16 v19, v11

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v51, v32

    move-object/from16 v52, v33

    move-object/from16 v53, v34

    move-object/from16 v54, v35

    move-object/from16 v55, v36

    move-object/from16 v56, v37

    move-object/from16 v57, v46

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v20

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    move/from16 v1, v42

    move-object/from16 v14, v57

    invoke-static {v14, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v14, v11}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    move-object/from16 v2, v38

    move-object/from16 v3, v41

    const/16 v4, 0x30

    invoke-static {v3, v2, v8, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v3, v8, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v5, v8, Lr0/q;->S:Z

    if-eqz v5, :cond_a

    move-object/from16 v7, v51

    invoke-virtual {v8, v7}, Lr0/q;->l(Li9/a;)V

    :goto_9
    move-object/from16 v9, v52

    goto :goto_a

    :cond_a
    invoke-virtual {v8}, Lr0/q;->o0()V

    goto :goto_9

    :goto_a
    invoke-static {v9, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v53

    invoke-static {v2, v4, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v6, v54

    move-object/from16 v10, v55

    invoke-static {v3, v8, v6, v8, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v4, v56

    invoke-static {v4, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move/from16 v13, v47

    const/4 v12, 0x2

    invoke-static {v13, v12}, Lu/b;->b(FI)Lu/s0;

    move-result-object v6

    sget-object v7, Lnd/a;->f:Lz0/d;

    const/high16 v9, 0x30c00000

    const/16 v10, 0x17e

    move-object/from16 v15, p0

    iget-object v1, v15, Lnd/r;->r:Li9/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v10}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    float-to-double v1, v11

    cmpl-double v1, v1, v24

    if-lez v1, :cond_b

    goto :goto_b

    :cond_b
    invoke-static/range {v26 .. v26}, Lv/a;->a(Ljava/lang/String;)V

    :goto_b
    new-instance v1, Lu/j0;

    cmpl-float v2, v11, v27

    if-lez v2, :cond_c

    move/from16 v11, v27

    :cond_c
    invoke-direct {v1, v11, v0}, Lu/j0;-><init>(FZ)V

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    if-lez v28, :cond_d

    const v1, 0x42e96415

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    move/from16 v1, v29

    invoke-static {v1, v12}, Lu/b;->b(FI)Lu/s0;

    move-result-object v7

    move-object/from16 v20, v8

    sget-object v8, Lnd/a;->g:Lz0/d;

    const/high16 v10, 0x30c00000

    const/16 v11, 0x17e

    iget-object v1, v15, Lnd/r;->s:Li9/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v9, v20

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v8, v9

    invoke-static {v14, v13}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_d
    const/4 v5, 0x0

    const v1, 0x42ecda01

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    :goto_c
    const/16 v1, 0x12

    int-to-float v1, v1

    invoke-static {v1, v12}, Lu/b;->b(FI)Lu/s0;

    move-result-object v1

    sget-object v9, Lnd/a;->h:Lz0/d;

    const/high16 v11, 0x30c00000

    const/16 v12, 0x17e

    iget-object v2, v15, Lnd/r;->t:Li9/a;

    move-object/from16 v20, v8

    move-object v8, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v10, v20

    invoke-static/range {v1 .. v12}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v8, v10

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_e
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
