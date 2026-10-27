.class public final synthetic Lod/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lod/t5;->l:I

    iput-object p1, p0, Lod/t5;->m:Ljava/lang/String;

    iput-object p2, p0, Lod/t5;->n:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lod/t5;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v2, p2

    check-cast v2, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "$this$Card"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v3, 0x11

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-eq v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v3, v5

    invoke-virtual {v2, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    int-to-float v1, v1

    const/16 v3, 0xe

    int-to-float v3, v3

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v1, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v1

    const/4 v3, 0x6

    int-to-float v4, v3

    invoke-static {v4}, Lu/h;->g(F)Lu/f;

    move-result-object v4

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v4, v6, v2, v3}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v6, v2, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v8, v2, Lr0/q;->S:Z

    if-eqz v8, :cond_1

    invoke-virtual {v2, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_1
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v6, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v2, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v2, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v2, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->s:J

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v21, v2

    iget-object v2, v0, Lod/t5;->m:Ljava/lang/String;

    move v6, v5

    move-wide v4, v3

    const/4 v3, 0x0

    move v8, v6

    const-wide/16 v6, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v12, v10

    const-wide/16 v10, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v15, v13

    const-wide/16 v13, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    const/16 v22, 0x0

    move/from16 v26, v20

    move-object/from16 v20, v1

    move/from16 v1, v26

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/16 v2, 0x12

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v6

    sget-object v8, Lt2/k;->q:Lt2/k;

    const/16 v23, 0xc00

    const v24, 0x1dfd6

    iget-object v2, v0, Lod/t5;->n:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/16 v17, 0x2

    const/16 v20, 0x0

    const v22, 0x30c00

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v2, p2

    check-cast v2, Lr0/q;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "$this$Card"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v3, 0x11

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_3

    move v1, v6

    goto :goto_3

    :cond_3
    move v1, v5

    :goto_3
    and-int/2addr v3, v6

    invoke-virtual {v2, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v4, 0xe

    int-to-float v4, v4

    invoke-static {v1, v4}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v4, Lf1/c;->v:Lf1/i;

    sget-object v7, Lu/h;->a:Lu/n;

    const/16 v8, 0x30

    invoke-static {v7, v4, v2, v8}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v7, v2, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v10, v2, Lr0/q;->S:Z

    if-eqz v10, :cond_4

    invoke-virtual {v2, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_4
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v4, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v8, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v2, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v2, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    float-to-double v12, v3

    const-wide/16 v14, 0x0

    cmpl-double v1, v12, v14

    if-lez v1, :cond_5

    goto :goto_5

    :cond_5
    const-string v1, "invalid weight; must be greater than zero"

    invoke-static {v1}, Lv/a;->a(Ljava/lang/String;)V

    :goto_5
    new-instance v1, Lu/j0;

    invoke-direct {v1, v3, v6}, Lu/j0;-><init>(FZ)V

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v12, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v12, v2, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v12, v2, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v1, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v13, v2, Lr0/q;->S:Z

    if-eqz v13, :cond_6

    invoke-virtual {v2, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v10, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v12, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5, v2, v8, v2, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v11, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->h:Lp2/m0;

    sget-object v8, Lt2/k;->q:Lt2/k;

    const/16 v23, 0x0

    const v24, 0xffde

    move-object/from16 v21, v2

    iget-object v2, v0, Lod/t5;->m:Ljava/lang/String;

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v9, v6

    const-wide/16 v6, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v12, v10

    const-wide/16 v10, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v15, v13

    const-wide/16 v13, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move/from16 v25, v22

    const/high16 v22, 0x30000

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const v24, 0xfffe

    iget-object v0, v0, Lod/t5;->n:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v1

    move-object v2, v0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lr0/q;->q(Z)V

    const/16 v1, 0x1c

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v6

    const v24, 0x1fff6

    const-string v2, "\u203a"

    const/16 v20, 0x0

    const/16 v22, 0xc06

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v0}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
