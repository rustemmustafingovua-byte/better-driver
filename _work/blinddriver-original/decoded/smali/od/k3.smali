.class public final synthetic Lod/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lt8/e;


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lw/p;Lu/s0;Lu/e;Lf1/i;Lr/k;ZLp/j;Li9/c;I)V
    .locals 0

    .line 1
    const/4 p10, 0x1

    iput p10, p0, Lod/k3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/k3;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/k3;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/k3;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/k3;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/k3;->r:Ljava/lang/Object;

    iput-object p6, p0, Lod/k3;->s:Ljava/lang/Object;

    iput-boolean p7, p0, Lod/k3;->m:Z

    iput-object p8, p0, Lod/k3;->t:Ljava/lang/Object;

    iput-object p9, p0, Lod/k3;->u:Lt8/e;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Li9/a;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lod/k3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/k3;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/k3;->p:Ljava/lang/Object;

    iput-object p3, p0, Lod/k3;->q:Ljava/lang/Object;

    iput-object p4, p0, Lod/k3;->r:Ljava/lang/Object;

    iput-object p5, p0, Lod/k3;->s:Ljava/lang/Object;

    iput-object p6, p0, Lod/k3;->t:Ljava/lang/Object;

    iput-object p7, p0, Lod/k3;->u:Lt8/e;

    iput-object p8, p0, Lod/k3;->o:Ljava/lang/Object;

    iput-boolean p9, p0, Lod/k3;->m:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 64

    move-object/from16 v0, p0

    iget v1, v0, Lod/k3;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/k3;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lf1/r;

    iget-object v1, v0, Lod/k3;->o:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lw/p;

    iget-object v1, v0, Lod/k3;->p:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lu/s0;

    iget-object v1, v0, Lod/k3;->q:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lu/e;

    iget-object v1, v0, Lod/k3;->r:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lf1/i;

    iget-object v1, v0, Lod/k3;->s:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lr/k;

    iget-object v1, v0, Lod/k3;->t:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lp/j;

    iget-object v1, v0, Lod/k3;->u:Lt8/e;

    move-object v10, v1

    check-cast v10, Li9/c;

    move-object/from16 v11, p1

    check-cast v11, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v12

    iget-boolean v8, v0, Lod/k3;->m:Z

    invoke-static/range {v2 .. v12}, Lb6/g;->c(Lf1/r;Lw/p;Lu/s0;Lu/e;Lf1/i;Lr/k;ZLp/j;Li9/c;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/k3;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lod/k3;->p:Ljava/lang/Object;

    check-cast v1, Li9/a;

    iget-object v3, v0, Lod/k3;->q:Ljava/lang/Object;

    move-object/from16 v25, v3

    check-cast v25, Li9/a;

    iget-object v3, v0, Lod/k3;->r:Ljava/lang/Object;

    move-object/from16 v26, v3

    check-cast v26, Li9/a;

    iget-object v3, v0, Lod/k3;->s:Ljava/lang/Object;

    move-object/from16 v27, v3

    check-cast v27, Li9/a;

    iget-object v3, v0, Lod/k3;->t:Ljava/lang/Object;

    check-cast v3, Li9/a;

    iget-object v4, v0, Lod/k3;->u:Lt8/e;

    move-object/from16 v28, v4

    check-cast v28, Li9/a;

    iget-object v4, v0, Lod/k3;->o:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v12, p1

    check-cast v12, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    and-int/2addr v5, v9

    invoke-virtual {v12, v5, v6}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0xc

    int-to-float v5, v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v5}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v7, Lu/h;->c:Lu/c;

    sget-object v10, Lf1/c;->x:Lf1/h;

    invoke-static {v7, v10, v12, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v11

    iget-wide v13, v12, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v14

    invoke-static {v5, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v15, Le2/h;->b:Le2/g;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v9, v12, Lr0/q;->S:Z

    if-eqz v9, :cond_1

    invoke-virtual {v12, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_1
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v11, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v11, Le2/g;->e:Le2/e;

    invoke-static {v11, v14, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Le2/g;->g:Le2/e;

    invoke-static {v12, v13, v14}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v13, Le2/g;->h:Le2/d;

    invoke-static {v12, v13}, Lr0/r;->A(Lr0/q;Li9/c;)V

    move-object/from16 v16, v3

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v5, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Lcd/d;->Y:Lcd/c;

    move-object/from16 v52, v1

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v12, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->h:Lp2/m0;

    const/16 v50, 0x0

    const v51, 0xfffe

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x0

    move-object/from16 v47, v5

    move-object/from16 v48, v12

    invoke-static/range {v29 .. v51}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    if-eqz v2, :cond_2

    const v5, 0x4e35892e    # 7.614166E8f

    invoke-virtual {v12, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->l:Lp2/m0;

    const-wide v17, 0xffef6c00L

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v17

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    const-wide/16 v6, 0x0

    move/from16 v22, v8

    const/4 v8, 0x0

    move-object/from16 v29, v9

    const/4 v9, 0x0

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    const-wide/16 v10, 0x0

    move-object/from16 v48, v12

    const/4 v12, 0x0

    move-object/from16 v33, v13

    move-object/from16 v32, v14

    const-wide/16 v13, 0x0

    move-object/from16 v34, v15

    const/4 v15, 0x0

    move-object/from16 v35, v16

    const/16 v16, 0x0

    move-object/from16 v36, v20

    move-object/from16 v20, v5

    move-wide/from16 v62, v17

    move-object/from16 v18, v4

    move-wide/from16 v4, v62

    const/16 v17, 0x0

    move-object/from16 v37, v18

    const/16 v18, 0x0

    move-object/from16 v38, v19

    const/16 v19, 0x0

    move/from16 v39, v22

    const/16 v22, 0x180

    move-object/from16 p1, v1

    move-object/from16 v1, v21

    move-object/from16 v56, v29

    move-object/from16 v54, v30

    move-object/from16 v57, v31

    move-object/from16 v58, v32

    move-object/from16 v59, v33

    move-object/from16 v55, v34

    move-object/from16 p2, v35

    move-object/from16 v53, v36

    move-object/from16 v60, v38

    move/from16 v0, v39

    move-object/from16 v21, v48

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v21

    :goto_2
    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_2
    move-object/from16 p1, v1

    move-object/from16 v60, v3

    move-object/from16 v37, v4

    move-object v1, v6

    move-object/from16 v53, v7

    move v0, v8

    move-object/from16 v56, v9

    move-object/from16 v54, v10

    move-object/from16 v57, v11

    move-object/from16 v59, v13

    move-object/from16 v58, v14

    move-object/from16 v55, v15

    move-object/from16 p2, v16

    const v2, 0x4e36b93f    # 7.663984E8f

    invoke-virtual {v12, v2}, Lr0/q;->b0(I)V

    goto :goto_2

    :goto_3
    const/16 v2, 0x8

    int-to-float v2, v2

    invoke-static {v1, v2}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v15, 0x6

    if-eqz v52, :cond_3

    const v3, 0x4e37fb7a    # 7.716778E8f

    invoke-virtual {v12, v3}, Lr0/q;->b0(I)V

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v11, Lod/m;->J:Lz0/d;

    const v13, 0x30000030

    const/16 v14, 0x1fc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, v52

    invoke-static/range {v3 .. v14}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    int-to-float v3, v15

    invoke-static {v1, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_3
    const v3, 0x4e3a66df    # 7.81826E8f

    invoke-virtual {v12, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    :goto_4
    if-eqz v25, :cond_4

    const v3, 0x4e3cdcae    # 7.921448E8f

    invoke-virtual {v12, v3}, Lr0/q;->b0(I)V

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    new-instance v3, Lb0/x2;

    const/16 v4, 0x9

    move-object/from16 v6, v37

    invoke-direct {v3, v4, v6}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    const v4, -0x62f4de20

    invoke-static {v4, v3, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const v14, 0x30000030

    move v4, v15

    const/16 v15, 0x1fc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v13, v12

    move-object v12, v3

    move v3, v4

    move-object/from16 v4, v25

    invoke-static/range {v4 .. v15}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v12, v13

    int-to-float v4, v3

    invoke-static {v1, v4}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-static {v4, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_4
    move v3, v15

    const v4, 0x4e3f751f    # 8.03031E8f

    invoke-virtual {v12, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    :goto_5
    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v11, Lod/m;->K:Lz0/d;

    const v13, 0x30000030

    const/16 v14, 0x1fc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, v26

    invoke-static/range {v4 .. v14}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    int-to-float v3, v3

    invoke-static {v1, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-static {v4, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v11, Lod/m;->L:Lz0/d;

    move-object/from16 v4, v27

    invoke-static/range {v4 .. v14}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-static {v1, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-static {v4, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v12, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-nez v6, :cond_5

    if-ne v7, v8, :cond_6

    :cond_5
    new-instance v7, Lkd/p;

    const/4 v6, 0x7

    invoke-direct {v7, v5, v6}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Li9/a;

    const/16 v6, 0xf

    const/4 v9, 0x0

    invoke-static {v4, v0, v9, v7, v6}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v4

    sget-object v6, Lf1/c;->v:Lf1/i;

    sget-object v7, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v7, v6, v12, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    iget-wide v9, v12, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v4, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v10, v12, Lr0/q;->S:Z

    if-eqz v10, :cond_7

    move-object/from16 v10, v55

    invoke-virtual {v12, v10}, Lr0/q;->l(Li9/a;)V

    :goto_6
    move-object/from16 v11, v56

    goto :goto_7

    :cond_7
    move-object/from16 v10, v55

    invoke-virtual {v12}, Lr0/q;->o0()V

    goto :goto_6

    :goto_7
    invoke-static {v11, v6, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v6, v57

    invoke-static {v6, v9, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v9, v58

    move-object/from16 v13, v59

    invoke-static {v7, v12, v9, v12, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v7, v60

    invoke-static {v7, v4, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    float-to-double v14, v2

    const-wide/16 v16, 0x0

    cmpl-double v4, v14, v16

    if-lez v4, :cond_8

    goto :goto_8

    :cond_8
    const-string v4, "invalid weight; must be greater than zero"

    invoke-static {v4}, Lv/a;->a(Ljava/lang/String;)V

    :goto_8
    new-instance v4, Lu/j0;

    const/4 v14, 0x1

    invoke-direct {v4, v2, v14}, Lu/j0;-><init>(FZ)V

    move-object/from16 v15, v53

    move-object/from16 v2, v54

    invoke-static {v15, v2, v12, v0}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v14, v12, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v15

    invoke-static {v4, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v0, v12, Lr0/q;->S:Z

    if-eqz v0, :cond_9

    invoke-virtual {v12, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_9
    invoke-static {v11, v2, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v15, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v12, v9, v12, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v7, v4, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lcd/d;->d0:Lcd/c;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->k:Lp2/m0;

    const/16 v50, 0x0

    const v51, 0xfffe

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x0

    move-object/from16 v47, v2

    move-object/from16 v48, v12

    invoke-static/range {v29 .. v51}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v2, Lcd/d;->e0:Lcd/c;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v12, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    move-object/from16 v47, v0

    invoke-static/range {v29 .. v51}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lr0/q;->q(Z)V

    invoke-virtual {v12, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_a

    if-ne v2, v8, :cond_b

    :cond_a
    new-instance v2, Lm0/f1;

    const/4 v0, 0x4

    invoke-direct {v2, v5, v0}, Lm0/f1;-><init>(Li9/a;I)V

    invoke-virtual {v12, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    move-object v6, v2

    check-cast v6, Li9/c;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lod/k3;->m:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v12

    invoke-static/range {v5 .. v11}, Lo0/w4;->a(ZLi9/c;Lf1/r;ZLo0/u4;Lr0/q;I)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lr0/q;->q(Z)V

    invoke-static {v1, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    move-object/from16 v48, v12

    sget-object v12, Lod/m;->M:Lz0/d;

    move/from16 v61, v14

    const v14, 0x30000030

    const/16 v15, 0x1fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, v28

    move-object/from16 v13, v48

    move/from16 v0, v61

    invoke-static/range {v5 .. v15}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v12, v13

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_c
    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_a
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
