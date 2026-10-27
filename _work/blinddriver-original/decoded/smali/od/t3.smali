.class public final synthetic Lod/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lod/t3;->l:I

    iput-wide p2, p0, Lod/t3;->m:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lf1/c;->p:Lf1/j;

    sget-object v3, Lu/b1;->c:Lu/v;

    invoke-static {v2, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v7, v1, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v3, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v10, v1, Lr0/q;->S:Z

    if-eqz v10, :cond_1

    invoke-virtual {v1, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_1
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v8, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v1, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v1, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Lf1/c;->v:Lf1/i;

    sget-object v12, Lu/h;->a:Lu/n;

    const/16 v13, 0x30

    invoke-static {v12, v3, v1, v13}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v12, v1, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    sget-object v14, Lf1/o;->a:Lf1/o;

    invoke-static {v14, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v15

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v5, v1, Lr0/q;->S:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v10, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v13, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12, v1, v8, v1, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v11, v15, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget v2, v0, Lod/t3;->l:I

    const/16 v23, 0xf

    if-eq v2, v4, :cond_4

    if-eq v2, v6, :cond_3

    const v2, 0x25d46499

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    const/16 v2, 0x11

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v2

    const/16 v21, 0x180

    const v22, 0x1eff2

    const-string v5, "\u25c9"

    move-object/from16 v19, v1

    const/4 v1, 0x0

    iget-wide v6, v0, Lod/t3;->m:J

    move v0, v4

    move-wide/from16 v28, v6

    move-object v7, v5

    move-wide v4, v2

    move-wide/from16 v2, v28

    const/4 v6, 0x0

    move v8, v0

    move-object v0, v7

    const/4 v7, 0x0

    move v10, v8

    const-wide/16 v8, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v24, v18

    const/16 v18, 0x0

    move/from16 v25, v20

    const/16 v20, 0xc06

    move-object/from16 v27, v24

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v1, 0x4

    int-to-float v1, v1

    move-object/from16 v2, v27

    invoke-static {v2, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v0}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v1, Lcd/d;->X:Lcd/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v26, v2

    sget-wide v2, Lm1/p;->c:J

    sget-object v6, Lt2/k;->q:Lt2/k;

    invoke-static/range {v23 .. v23}, La/a;->k(I)J

    move-result-wide v4

    const/16 v21, 0xd80

    const v22, 0x1cfd2

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v15, 0x1

    const v20, 0x30d80

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    :goto_3
    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_3
    move-object v0, v1

    const/4 v1, 0x0

    const v2, 0x25d20151

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lcd/d;->W:Lcd/c;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v0

    move-object v0, v2

    sget-wide v2, Lm1/p;->c:J

    sget-object v6, Lt2/k;->q:Lt2/k;

    invoke-static/range {v23 .. v23}, La/a;->k(I)J

    move-result-wide v4

    const/16 v21, 0xd80

    const v22, 0x1cfd2

    move/from16 v26, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v20, 0x30d80

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    const/4 v1, 0x0

    const v2, 0x25cfc3b2

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lcd/d;->V:Lcd/c;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v0

    move-object v0, v2

    sget-wide v2, Lm1/p;->c:J

    sget-object v6, Lt2/k;->q:Lt2/k;

    invoke-static/range {v23 .. v23}, La/a;->k(I)J

    move-result-wide v4

    const/16 v21, 0xd80

    const v22, 0x1cfd2

    move/from16 v26, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v20, 0x30d80

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/q;->q(Z)V

    goto/16 :goto_3

    :goto_4
    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_5
    move-object v0, v1

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
