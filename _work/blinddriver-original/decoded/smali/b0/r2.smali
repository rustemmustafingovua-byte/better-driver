.class public final synthetic Lb0/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb0/v2;ZLs/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb0/r2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/r2;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lb0/r2;->m:Z

    iput-object p3, p0, Lb0/r2;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lb0/r2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lb0/r2;->m:Z

    iput-object p1, p0, Lb0/r2;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/r2;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lb0/r2;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lb0/r2;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lb0/r2;->o:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Lu/s;

    move-object/from16 v4, p2

    check-cast v4, Lr0/q;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "$this$Card"

    invoke-static {v3, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v5, 0x11

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v6, 0xe

    int-to-float v6, v6

    invoke-static {v3, v6}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    sget-object v6, Lf1/c;->v:Lf1/i;

    sget-object v9, Lu/h;->a:Lu/n;

    const/16 v10, 0x30

    invoke-static {v9, v6, v4, v10}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    iget-wide v9, v4, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v3, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

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
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v6, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v6, Le2/g;->e:Le2/e;

    invoke-static {v6, v10, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v4, v9, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v4, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    float-to-double v14, v5

    const-wide/16 v16, 0x0

    cmpl-double v3, v14, v16

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "invalid weight; must be greater than zero"

    invoke-static {v3}, Lv/a;->a(Ljava/lang/String;)V

    :goto_2
    new-instance v3, Lu/j0;

    invoke-direct {v3, v5, v8}, Lu/j0;-><init>(FZ)V

    sget-object v5, Lu/h;->c:Lu/c;

    sget-object v14, Lf1/c;->x:Lf1/h;

    invoke-static {v5, v14, v4, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v5

    iget-wide v14, v4, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v15

    invoke-static {v3, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v7, v4, Lr0/q;->S:Z

    if-eqz v7, :cond_3

    invoke-virtual {v4, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_3
    invoke-static {v12, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v15, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v4, v10, v4, v9}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v4, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->h:Lp2/m0;

    move v6, v8

    sget-object v8, Lt2/k;->q:Lt2/k;

    const/16 v23, 0x0

    const v24, 0xffde

    move-object v7, v3

    const/4 v3, 0x0

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    const-wide/16 v4, 0x0

    move v10, v6

    move-object v9, v7

    const-wide/16 v6, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move v13, v10

    move-object v12, v11

    const-wide/16 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    move-object v15, v14

    const-wide/16 v13, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move-object/from16 v25, v19

    const/16 v19, 0x0

    move/from16 v26, v22

    const/high16 v22, 0x30000

    move-object/from16 v27, v1

    move-object/from16 v1, v25

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    iget-boolean v0, v0, Lb0/r2;->m:Z

    if-nez v0, :cond_4

    const v3, 0x3ccfc71a

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xfffe

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v3, v27

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    const v3, 0x5d29f221

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    goto :goto_4

    :goto_5
    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    if-eqz v0, :cond_5

    const-string v0, "\u25be"

    :goto_6
    move-object v4, v0

    goto :goto_7

    :cond_5
    const-string v0, "\u25b8"

    goto :goto_6

    :goto_7
    const/16 v0, 0x18

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v8

    const/16 v25, 0x0

    const v26, 0x1fff6

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

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

    const/16 v22, 0x0

    const/16 v24, 0xc00

    move-object/from16 v23, v2

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_6
    move-object v2, v4

    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lb0/r2;->n:Ljava/lang/Object;

    check-cast v1, Lb0/v2;

    iget-object v2, v1, Lb0/v2;->f:Lr0/e1;

    iget-object v3, v0, Lb0/r2;->o:Ljava/lang/Object;

    check-cast v3, Ls/i;

    move-object/from16 v4, p1

    check-cast v4, Lf1/r;

    move-object/from16 v4, p2

    check-cast v4, Lr0/q;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x7f685f60

    invoke-virtual {v4, v5}, Lr0/q;->b0(I)V

    sget-object v5, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v4, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lb3/m;->m:Lb3/m;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_7

    move v5, v7

    goto :goto_9

    :cond_7
    move v5, v8

    :goto_9
    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/m1;

    sget-object v9, Lr/m1;->l:Lr/m1;

    if-eq v6, v9, :cond_9

    if-nez v5, :cond_8

    goto :goto_a

    :cond_8
    move v5, v8

    goto :goto_b

    :cond_9
    :goto_a
    move v5, v7

    :goto_b
    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lr0/m;->a:Lr0/e;

    if-nez v6, :cond_a

    if-ne v9, v10, :cond_b

    :cond_a
    new-instance v9, Lb0/a;

    const/4 v6, 0x1

    invoke-direct {v9, v6, v1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v9, Li9/c;

    invoke-static {v9, v4}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v10, :cond_c

    new-instance v9, Lod/t6;

    const/4 v11, 0x3

    invoke-direct {v9, v6, v11}, Lod/t6;-><init>(Lr0/u0;I)V

    new-instance v6, Lr/m;

    invoke-direct {v6, v9}, Lr/m;-><init>(Li9/c;)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v9, v6

    :cond_c
    check-cast v9, Lr/h2;

    invoke-virtual {v4, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_d

    if-ne v11, v10, :cond_e

    :cond_d
    new-instance v11, Lb0/t2;

    invoke-direct {v11, v9, v1}, Lb0/t2;-><init>(Lr/h2;Lb0/v2;)V

    invoke-virtual {v4, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v11, Lb0/t2;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/m1;

    iget-boolean v0, v0, Lb0/r2;->m:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lb0/v2;->b:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_10

    :cond_f
    move v7, v8

    :cond_10
    invoke-static {v11, v2, v7, v5, v3}, Lr/z1;->b(Lb0/t2;Lr/m1;ZZLs/i;)Lf1/r;

    move-result-object v0

    invoke-virtual {v4, v8}, Lr0/q;->q(Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
