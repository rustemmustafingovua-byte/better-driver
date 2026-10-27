.class public final synthetic Lnd/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnd/h;ZZLf1/r;I)V
    .locals 0

    .line 1
    const/4 p5, 0x0

    iput p5, p0, Lnd/j;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/j;->o:Ljava/lang/Object;

    iput-boolean p2, p0, Lnd/j;->m:Z

    iput-boolean p3, p0, Lnd/j;->n:Z

    iput-object p4, p0, Lnd/j;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lnd/j;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnd/j;->m:Z

    iput-boolean p2, p0, Lnd/j;->n:Z

    iput-object p3, p0, Lnd/j;->o:Ljava/lang/Object;

    iput-object p4, p0, Lnd/j;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lnd/j;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lnd/j;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lnd/j;->p:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    and-int/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xe

    int-to-float v4, v4

    iget-boolean v5, v0, Lnd/j;->m:Z

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    :goto_1
    int-to-float v6, v6

    goto :goto_2

    :cond_1
    const/16 v6, 0xc

    goto :goto_1

    :goto_2
    sget-object v9, Lf1/o;->a:Lf1/o;

    invoke-static {v9, v4, v6}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v4

    sget-object v6, Lf1/c;->v:Lf1/i;

    sget-object v9, Lu/h;->a:Lu/n;

    const/16 v10, 0x30

    invoke-static {v9, v6, v3, v10}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    iget-wide v9, v3, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v4, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v12, v3, Lr0/q;->S:Z

    if-eqz v12, :cond_2

    invoke-virtual {v3, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_3
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v6, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v6, Le2/g;->e:Le2/e;

    invoke-static {v6, v10, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v3, v9, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v3, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v4, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v14, v4

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    goto :goto_4

    :cond_3
    const-string v14, "invalid weight; must be greater than zero"

    invoke-static {v14}, Lv/a;->a(Ljava/lang/String;)V

    :goto_4
    new-instance v14, Lu/j0;

    invoke-direct {v14, v4, v7}, Lu/j0;-><init>(FZ)V

    sget-object v4, Lu/h;->c:Lu/c;

    sget-object v15, Lf1/c;->x:Lf1/h;

    invoke-static {v4, v15, v3, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    iget-wide v7, v3, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v14, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v14

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v15, v3, Lr0/q;->S:Z

    if-eqz v15, :cond_4

    invoke-virtual {v3, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v12, v4, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v8, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v3, v10, v3, v9}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v14, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v5, :cond_5

    const v4, -0x116fc188

    invoke-virtual {v3, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v3, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->k:Lp2/m0;

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v3, v5}, Lr0/q;->q(Z)V

    move-object/from16 v20, v4

    goto :goto_7

    :cond_5
    const/4 v5, 0x0

    const v4, -0x116fbc68

    invoke-virtual {v3, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v3, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->i:Lp2/m0;

    goto :goto_6

    :goto_7
    sget-object v8, Lt2/k;->p:Lt2/k;

    const/16 v23, 0x0

    const v24, 0x1ffbe

    move-object/from16 v22, v3

    const/4 v3, 0x0

    move v6, v5

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

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v25, v21

    move-object/from16 v21, v22

    const/high16 v22, 0x180000

    move-object/from16 v26, v1

    move/from16 v1, v25

    invoke-static/range {v2 .. v24}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v21

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const v3, -0x1c866b9a

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v2, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v5, v4, Lo0/u0;->s:J

    const/16 v24, 0x0

    const v25, 0x1fffa

    const/4 v4, 0x0

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

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v3, v26

    invoke-static/range {v3 .. v25}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    :goto_8
    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    goto :goto_9

    :cond_6
    const v3, -0x1c84ceac

    invoke-virtual {v2, v3}, Lr0/q;->b0(I)V

    goto :goto_8

    :goto_9
    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    iget-boolean v0, v0, Lnd/j;->n:Z

    if-eqz v0, :cond_7

    const-string v0, "\u2304"

    :goto_a
    move-object v3, v0

    goto :goto_b

    :cond_7
    const-string v0, "\u203a"

    goto :goto_a

    :goto_b
    const/16 v0, 0x14

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v7

    const/16 v24, 0x0

    const v25, 0x3ffee

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

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

    const/16 v21, 0x0

    const/16 v23, 0x6000

    move-object/from16 v22, v2

    invoke-static/range {v3 .. v25}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_8
    move-object v2, v3

    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lnd/j;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lnd/h;

    iget-object v1, v0, Lnd/j;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lf1/r;

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v7

    iget-boolean v3, v0, Lnd/j;->m:Z

    iget-boolean v4, v0, Lnd/j;->n:Z

    invoke-static/range {v2 .. v7}, Lnd/k;->a(Lnd/h;ZZLf1/r;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
