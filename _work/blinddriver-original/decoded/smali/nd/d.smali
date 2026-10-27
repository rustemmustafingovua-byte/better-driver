.class public final synthetic Lnd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lcd/c;

.field public final synthetic o:Lcd/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcd/c;Lcd/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lnd/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/d;->m:Ljava/lang/String;

    iput-object p2, p0, Lnd/d;->n:Lcd/c;

    iput-object p3, p0, Lnd/d;->o:Lcd/c;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcd/c;Lcd/c;I)V
    .locals 0

    .line 2
    const/4 p4, 0x1

    iput p4, p0, Lnd/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/d;->m:Ljava/lang/String;

    iput-object p2, p0, Lnd/d;->n:Lcd/c;

    iput-object p3, p0, Lnd/d;->o:Lcd/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lnd/d;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    iget-object v3, v0, Lnd/d;->m:Ljava/lang/String;

    iget-object v4, v0, Lnd/d;->n:Lcd/c;

    iget-object v0, v0, Lnd/d;->o:Lcd/c;

    invoke-static {v3, v4, v0, v1, v2}, Lnd/a;->b(Ljava/lang/String;Lcd/c;Lcd/c;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v11, p1

    check-cast v11, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v15, 0x1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v15

    invoke-virtual {v11, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xe

    int-to-float v1, v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v4, Lf1/c;->u:Lf1/i;

    sget-object v5, Lu/h;->a:Lu/n;

    const/16 v6, 0x30

    invoke-static {v5, v4, v11, v6}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v4

    iget-wide v5, v11, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v8, v11, Lr0/q;->S:Z

    if-eqz v8, :cond_1

    invoke-virtual {v11, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_1
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v4, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v11, v5, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v11, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v1, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v11, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v12, v1, Lo0/u0;->c:J

    sget-object v1, La0/e;->a:La0/d;

    const/16 v10, 0x28

    int-to-float v10, v10

    invoke-static {v2, v10}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v10

    new-instance v3, Lnd/e;

    const/4 v15, 0x0

    iget-object v14, v0, Lnd/d;->m:Ljava/lang/String;

    invoke-direct {v3, v14, v15}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v14, -0x7e0d3ac1

    invoke-static {v14, v3, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    move-object v14, v2

    move-object v2, v1

    move-object v1, v10

    move-object v10, v3

    move-wide/from16 v28, v12

    move-object v13, v4

    move-wide/from16 v3, v28

    const v12, 0xc00006

    move-object v15, v13

    const/16 v13, 0x78

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    const-wide/16 v5, 0x0

    move-object/from16 v19, v7

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v21, v9

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    move-object/from16 v14, v19

    move-object/from16 v26, v21

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    invoke-static/range {v1 .. v13}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    const/16 v1, 0xc

    int-to-float v1, v1

    invoke-static {v0, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v11}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v1, Lu/h;->c:Lu/c;

    sget-object v2, Lf1/c;->x:Lf1/h;

    const/4 v3, 0x0

    invoke-static {v1, v2, v11, v3}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    iget-wide v2, v11, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v0, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v5, v11, Lr0/q;->S:Z

    if-eqz v5, :cond_2

    invoke-virtual {v11, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v15, v1, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v13, v17

    invoke-static {v13, v3, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    invoke-static {v2, v11, v1, v11, v3}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v1, v26

    invoke-static {v1, v4, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    move-object/from16 v2, p0

    iget-object v4, v2, Lnd/d;->n:Lcd/c;

    invoke-virtual {v4, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->h:Lp2/m0;

    sget-object v7, Lt2/k;->p:Lt2/k;

    const/16 v22, 0x0

    const v23, 0x1ffbe

    const/4 v2, 0x0

    move/from16 v16, v3

    move-object v6, v4

    const-wide/16 v3, 0x0

    move-object/from16 v19, v5

    move-object v8, v6

    const-wide/16 v5, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v12, v9

    const-wide/16 v9, 0x0

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move/from16 v24, v18

    const/16 v18, 0x0

    move-object/from16 v25, v21

    const/high16 v21, 0x180000

    move-object/from16 v27, v25

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v20

    const/4 v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v11}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v2, p0

    iget-object v1, v2, Lnd/d;->o:Lcd/c;

    invoke-virtual {v1, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v27

    invoke-virtual {v11, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const v23, 0x1fffe

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v20

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v11, v0}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
