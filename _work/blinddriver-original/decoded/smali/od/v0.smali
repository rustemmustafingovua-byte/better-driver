.class public final synthetic Lod/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Li9/c;

.field public final synthetic o:Li9/c;

.field public final synthetic p:Li9/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Li9/c;Li9/c;Li9/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lod/v0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v0;->m:Ljava/util/List;

    iput-object p2, p0, Lod/v0;->n:Li9/c;

    iput-object p3, p0, Lod/v0;->o:Li9/c;

    iput-object p4, p0, Lod/v0;->p:Li9/a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Li9/c;Li9/c;Li9/a;I)V
    .locals 0

    .line 2
    const/4 p5, 0x1

    iput p5, p0, Lod/v0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v0;->m:Ljava/util/List;

    iput-object p2, p0, Lod/v0;->n:Li9/c;

    iput-object p3, p0, Lod/v0;->o:Li9/c;

    iput-object p4, p0, Lod/v0;->p:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lod/v0;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xc01

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v2, v0, Lod/v0;->m:Ljava/util/List;

    iget-object v3, v0, Lod/v0;->n:Li9/c;

    iget-object v4, v0, Lod/v0;->o:Li9/c;

    iget-object v5, v0, Lod/v0;->p:Li9/a;

    invoke-static/range {v2 .. v7}, Lod/g3;->T(Ljava/util/List;Li9/c;Li9/c;Li9/a;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v9, p1

    check-cast v9, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    and-int/2addr v1, v4

    invoke-virtual {v9, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    int-to-float v1, v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v6, v9, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v6, v9, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v1, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v10, v9, Lr0/q;->S:Z

    if-eqz v10, :cond_1

    invoke-virtual {v9, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_1
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v3, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v9, v3, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v9, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lcd/d;->n0:Lcd/c;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->h:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffe

    move-object v7, v2

    const/4 v2, 0x0

    move-object v8, v3

    move v10, v4

    const-wide/16 v3, 0x0

    move v11, v5

    move-object/from16 v19, v6

    const-wide/16 v5, 0x0

    move-object v12, v7

    const/4 v7, 0x0

    move-object v13, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    move v14, v10

    const-wide/16 v9, 0x0

    move v15, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    move-object/from16 v16, v13

    const-wide/16 v12, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move/from16 v21, v15

    const/4 v15, 0x0

    move-object/from16 v24, v16

    const/16 v16, 0x0

    move-object/from16 v25, v17

    const/16 v17, 0x0

    move/from16 v26, v18

    const/16 v18, 0x0

    move/from16 v27, v21

    const/16 v21, 0x0

    move-object/from16 v28, v24

    move-object/from16 v30, v25

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    iget-object v1, v0, Lod/v0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7a675082

    invoke-virtual {v9, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lcd/d;->p0:Lcd/c;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, v28

    invoke-virtual {v9, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->l:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffe

    move-object v5, v1

    move-object v1, v2

    const/4 v2, 0x0

    move/from16 v29, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    move-object v7, v5

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

    move/from16 v0, v29

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v9, v20

    :goto_2
    invoke-virtual {v9, v0}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_2
    move-object/from16 v24, v1

    const/4 v0, 0x0

    const v1, -0x2d7c44bd

    invoke-virtual {v9, v1}, Lr0/q;->b0(I)V

    goto :goto_2

    :goto_3
    const/16 v0, 0x12c

    int-to-float v0, v0

    const/4 v1, 0x0

    move-object/from16 v13, v30

    const/4 v14, 0x1

    invoke-static {v13, v1, v0, v14}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    move-object/from16 v5, v24

    invoke-virtual {v9, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v15, p0

    iget-object v2, v15, Lod/v0;->n:Li9/c;

    invoke-virtual {v9, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, v15, Lod/v0;->o:Li9/c;

    invoke-virtual {v9, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_3

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v4, v0, :cond_4

    :cond_3
    new-instance v4, Lb0/o;

    const/16 v0, 0xc

    invoke-direct {v4, v5, v2, v3, v0}, Lb0/o;-><init>(Ljava/lang/Object;Li9/c;Ljava/lang/Object;I)V

    invoke-virtual {v9, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Li9/c;

    const/4 v11, 0x6

    const/16 v12, 0x1fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v20, v9

    move-object v9, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, v20

    invoke-static/range {v1 .. v12}, Lb6/g;->b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V

    move-object v9, v10

    const/4 v0, 0x6

    int-to-float v0, v0

    invoke-static {v13, v0}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v9}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v13, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v8, Lod/m;->q:Lz0/d;

    const v10, 0x30000030

    const/16 v11, 0x1fc

    iget-object v1, v15, Lod/v0;->p:Li9/a;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v9, v14}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
