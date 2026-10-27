.class public final synthetic Lnd/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lnd/x;->l:I

    iput-object p4, p0, Lnd/x;->m:Ljava/lang/String;

    iput-wide p2, p0, Lnd/x;->n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lnd/x;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v6

    const/16 v2, 0xf

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v13

    sget-object v8, Lt2/k;->o:Lt2/k;

    const/4 v2, 0x7

    int-to-float v2, v2

    const/4 v3, 0x6

    int-to-float v3, v3

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v3

    new-instance v12, La3/k;

    const/4 v2, 0x3

    invoke-direct {v12, v2}, La3/k;-><init>(I)V

    const/16 v23, 0x6

    const v24, 0x1f9d0

    iget-object v2, v0, Lnd/x;->m:Ljava/lang/String;

    iget-wide v4, v0, Lnd/x;->n:J

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v22, 0x30c30

    move-object/from16 v21, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_1

    :cond_1
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xc

    int-to-float v2, v2

    const/4 v3, 0x6

    int-to-float v3, v3

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->p:Lf1/j;

    invoke-static {v3, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v4, v1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v8, v1, Lr0/q;->S:Z

    if-eqz v8, :cond_3

    invoke-virtual {v1, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_3
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v1, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v1, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->i:Lp2/m0;

    const/16 v22, 0x6c00

    const v23, 0x19ffa

    move-object/from16 v20, v1

    iget-object v1, v0, Lnd/x;->m:Ljava/lang/String;

    move-object/from16 v19, v2

    const/4 v2, 0x0

    iget-wide v3, v0, Lnd/x;->n:J

    move v0, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
