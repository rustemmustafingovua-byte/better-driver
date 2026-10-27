.class public final synthetic Lod/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:F


# direct methods
.method public synthetic constructor <init>(FZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lod/b1;->l:Z

    iput-boolean p3, p0, Lod/b1;->m:Z

    iput p1, p0, Lod/b1;->n:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lf1/c;->v:Lf1/i;

    iget-boolean v3, v0, Lod/b1;->l:Z

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    :goto_1
    int-to-float v4, v4

    goto :goto_2

    :cond_1
    const/16 v4, 0xc

    goto :goto_1

    :goto_2
    const/4 v7, 0x5

    int-to-float v7, v7

    sget-object v8, Lf1/o;->a:Lf1/o;

    invoke-static {v8, v4, v7}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v4

    sget-object v7, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v7, v2, v1, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v9, v1, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v4, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v11, v1, Lr0/q;->S:Z

    if-eqz v11, :cond_2

    invoke-virtual {v1, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_3
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v9, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v1, v2, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v1, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v2, 0xa

    int-to-float v2, v2

    invoke-static {v8, v2}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v4, La0/e;->a:La0/d;

    invoke-static {v2, v4}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v2

    iget-boolean v4, v0, Lod/b1;->m:Z

    if-eqz v4, :cond_3

    sget-wide v9, Lm1/p;->c:J

    iget v0, v0, Lod/b1;->n:F

    invoke-static {v0, v9, v10}, Lm1/p;->b(FJ)J

    move-result-wide v9

    goto :goto_4

    :cond_3
    const-wide v9, 0xffef5350L

    invoke-static {v9, v10}, Lm1/v;->d(J)J

    move-result-wide v9

    :goto_4
    sget-object v0, Lm1/v;->b:Lm1/e0;

    invoke-static {v2, v9, v10, v0}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v0

    invoke-static {v0, v1, v6}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    if-eqz v3, :cond_4

    const/4 v0, 0x4

    :goto_5
    int-to-float v0, v0

    goto :goto_6

    :cond_4
    const/4 v0, 0x7

    goto :goto_5

    :goto_6
    invoke-static {v8, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v1}, Lu/b;->e(Lf1/r;Lr0/q;)V

    move v0, v3

    sget-wide v2, Lm1/p;->c:J

    if-eqz v0, :cond_5

    const v0, 0x6979d7e3

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    :goto_7
    invoke-virtual {v1, v6}, Lr0/q;->q(Z)V

    move-object/from16 v18, v0

    goto :goto_8

    :cond_5
    const v0, 0x6979dce4

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->i:Lp2/m0;

    goto :goto_7

    :goto_8
    sget-object v6, Lt2/k;->q:Lt2/k;

    const/16 v21, 0xd80

    const v22, 0xcfda

    const-string v0, "REC"

    move-object/from16 v19, v1

    const/4 v1, 0x0

    move v7, v5

    const-wide/16 v4, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v10, v8

    const-wide/16 v8, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move v14, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x1

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move/from16 v23, v20

    const v20, 0x30186

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_6
    move-object v0, v1

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
