.class public final synthetic Lod/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILi9/e;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput p1, p0, Lod/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lod/d;->n:Ljava/lang/Object;

    iput p2, p0, Lod/d;->m:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lod/d;->l:I

    iput-object p3, p0, Lod/d;->n:Ljava/lang/Object;

    iput p1, p0, Lod/d;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lod/d;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/d;->n:Ljava/lang/Object;

    check-cast v1, Lw/g;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    and-int/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lw/g;->b:Lw/e;

    iget-object v3, v3, Lw/e;->a:Ld1/c0;

    iget v0, v0, Lod/d;->m:I

    invoke-virtual {v3, v0}, Ld1/c0;->d(I)Lx/i;

    move-result-object v3

    iget v4, v3, Lx/i;->a:I

    sub-int/2addr v0, v4

    iget-object v3, v3, Lx/i;->c:Lg5/m;

    iget-object v3, v3, Lg5/m;->o:Ljava/lang/Object;

    check-cast v3, Lz0/d;

    iget-object v1, v1, Lw/g;->c:Lw/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lz0/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/d;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Li9/a;

    move-object/from16 v11, p1

    check-cast v11, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    and-int/2addr v1, v6

    invoke-virtual {v11, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    int-to-float v1, v1

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v4, Lu/h;->c:Lu/c;

    sget-object v7, Lf1/c;->x:Lf1/h;

    invoke-static {v4, v7, v11, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    iget-wide v7, v11, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v10, v11, Lr0/q;->S:Z

    if-eqz v10, :cond_3

    invoke-virtual {v11, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_3
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v4, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v8, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v11, v4, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v11, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v1, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lcd/d;->o1:Lcd/c;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/h5;

    iget-object v7, v7, Lo0/h5;->h:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xfffe

    move-object v8, v4

    const/4 v4, 0x0

    move v9, v5

    move v10, v6

    const-wide/16 v5, 0x0

    move-object/from16 v21, v7

    move-object v12, v8

    const-wide/16 v7, 0x0

    move v13, v9

    const/4 v9, 0x0

    move v14, v10

    const/4 v10, 0x0

    move-object/from16 v22, v11

    move-object v15, v12

    const-wide/16 v11, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v18, v14

    move-object/from16 v17, v15

    const-wide/16 v14, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const/16 v17, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move/from16 v26, v19

    const/16 v19, 0x0

    move-object/from16 v27, v20

    const/16 v20, 0x0

    move/from16 v28, v23

    const/16 v23, 0x0

    move/from16 v29, v26

    move-object/from16 v26, v2

    move/from16 v2, v29

    move-object/from16 v29, v3

    move-object v3, v1

    move-object/from16 v1, v27

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v22

    sget-object v3, Lcd/d;->p1:Lcd/c;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->k:Lp2/m0;

    const-wide/16 v11, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v22

    const/4 v1, 0x6

    int-to-float v1, v1

    move-object/from16 v2, v29

    invoke-static {v2, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v11}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    new-instance v1, Lod/p3;

    const/4 v2, 0x0

    iget v0, v0, Lod/d;->m:I

    invoke-direct {v1, v0, v2}, Lod/p3;-><init>(II)V

    const v0, -0x52cbfe6b

    invoke-static {v0, v1, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v10

    const v12, 0x30000030

    const/16 v13, 0x1fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, v26

    invoke-static/range {v2 .. v13}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lod/d;->n:Ljava/lang/Object;

    check-cast v1, Li9/e;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v3}, Lr0/r;->H(I)I

    move-result v3

    iget v0, v0, Lod/d;->m:I

    invoke-static {v1, v2, v3, v0}, Lod/f;->e(Li9/e;Lr0/q;II)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
