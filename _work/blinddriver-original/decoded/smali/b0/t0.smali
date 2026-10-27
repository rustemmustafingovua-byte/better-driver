.class public final Lb0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# instance fields
.field public final synthetic a:Lb0/r1;

.field public final synthetic b:Li9/c;

.field public final synthetic c:Lu2/x;

.field public final synthetic d:Lu2/q;

.field public final synthetic e:Lb3/c;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lb0/r1;Li9/c;Lu2/x;Lu2/q;Lb3/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/t0;->a:Lb0/r1;

    iput-object p2, p0, Lb0/t0;->b:Li9/c;

    iput-object p3, p0, Lb0/t0;->c:Lu2/x;

    iput-object p4, p0, Lb0/t0;->d:Lu2/q;

    iput-object p5, p0, Lb0/t0;->e:Lb3/c;

    iput p6, p0, Lb0/t0;->f:I

    return-void
.end method


# virtual methods
.method public final f(Lc2/p;Ljava/util/List;I)I
    .locals 0

    iget-object p0, p0, Lb0/t0;->a:Lb0/r1;

    iget-object p2, p0, Lb0/r1;->a:Lb0/b2;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb0/b2;->a(Lb3/m;)V

    iget-object p0, p0, Lb0/r1;->a:Lb0/b2;

    iget-object p0, p0, Lb0/b2;->j:Landroidx/lifecycle/a1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/a1;->d()F

    move-result p0

    invoke-static {p0}, Lb0/n1;->o(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "layoutIntrinsics must be called first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 32

    move-object/from16 v0, p0

    iget-object v13, v0, Lb0/t0;->a:Lb0/r1;

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ld1/g;->e()Li9/c;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v3

    :try_start_0
    invoke-virtual {v13}, Lb0/r1;->d()Lb0/z2;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    if-eqz v15, :cond_1

    iget-object v1, v15, Lb0/z2;->a:Lp2/j0;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v13, Lb0/r1;->a:Lb0/b2;

    invoke-interface/range {p1 .. p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v9

    iget v3, v2, Lb0/b2;->f:I

    iget-boolean v4, v2, Lb0/b2;->e:Z

    iget v5, v2, Lb0/b2;->c:I

    const-wide v16, 0xffffffffL

    const/16 v18, 0x20

    if-eqz v1, :cond_9

    iget-object v10, v1, Lp2/j0;->b:Lp2/n;

    iget-object v11, v1, Lp2/j0;->a:Lp2/i0;

    iget-object v12, v2, Lb0/b2;->a:Lp2/g;

    iget-object v6, v2, Lb0/b2;->b:Lp2/m0;

    iget-object v7, v2, Lb0/b2;->i:Ljava/util/List;

    iget-object v14, v2, Lb0/b2;->g:Lb3/c;

    iget-object v8, v2, Lb0/b2;->h:Lt2/d;

    move-object/from16 v20, v1

    iget-object v1, v10, Lp2/n;->a:Landroidx/lifecycle/a1;

    invoke-virtual {v1}, Landroidx/lifecycle/a1;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide/from16 v11, p3

    move-object v6, v9

    goto/16 :goto_3

    :cond_2
    iget-object v1, v11, Lp2/i0;->a:Lp2/g;

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    iget-wide v8, v11, Lp2/i0;->j:J

    invoke-static {v1, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v11, Lp2/i0;->b:Lp2/m0;

    invoke-virtual {v1, v6}, Lp2/m0;->c(Lp2/m0;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v11, Lp2/i0;->c:Ljava/util/List;

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v11, Lp2/i0;->d:I

    if-ne v1, v5, :cond_8

    iget-boolean v1, v11, Lp2/i0;->e:Z

    if-ne v1, v4, :cond_8

    iget v1, v11, Lp2/i0;->f:I

    if-ne v1, v3, :cond_8

    iget-object v1, v11, Lp2/i0;->g:Lb3/c;

    invoke-static {v1, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v11, Lp2/i0;->h:Lb3/m;

    move-object/from16 v6, v21

    if-ne v1, v6, :cond_7

    iget-object v1, v11, Lp2/i0;->i:Lt2/d;

    move-object/from16 v7, v22

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static/range {p3 .. p4}, Lb3/a;->j(J)I

    move-result v1

    invoke-static {v8, v9}, Lb3/a;->j(J)I

    move-result v7

    if-eq v1, v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    :cond_5
    invoke-static/range {p3 .. p4}, Lb3/a;->h(J)I

    move-result v1

    invoke-static {v8, v9}, Lb3/a;->h(J)I

    move-result v7

    if-ne v1, v7, :cond_7

    invoke-static/range {p3 .. p4}, Lb3/a;->g(J)I

    move-result v1

    invoke-static {v8, v9}, Lb3/a;->g(J)I

    move-result v7

    if-ne v1, v7, :cond_7

    :cond_6
    new-instance v1, Lp2/i0;

    iget-object v3, v11, Lp2/i0;->a:Lp2/g;

    move-object v4, v3

    iget-object v3, v2, Lb0/b2;->b:Lp2/m0;

    move-object v2, v4

    iget-object v4, v11, Lp2/i0;->c:Ljava/util/List;

    iget v5, v11, Lp2/i0;->d:I

    iget-boolean v6, v11, Lp2/i0;->e:Z

    iget v7, v11, Lp2/i0;->f:I

    iget-object v8, v11, Lp2/i0;->g:Lb3/c;

    iget-object v9, v11, Lp2/i0;->h:Lb3/m;

    iget-object v11, v11, Lp2/i0;->i:Lt2/d;

    move-object v14, v10

    move-object v10, v11

    move-object/from16 v23, v20

    move-wide/from16 v11, p3

    invoke-direct/range {v1 .. v12}, Lp2/i0;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;IZILb3/c;Lb3/m;Lt2/d;J)V

    iget v2, v14, Lp2/n;->d:F

    invoke-static {v2}, Lb0/n1;->o(F)I

    move-result v2

    iget v3, v14, Lp2/n;->e:F

    invoke-static {v3}, Lb0/n1;->o(F)I

    move-result v3

    int-to-long v4, v2

    shl-long v4, v4, v18

    int-to-long v2, v3

    and-long v2, v2, v16

    or-long/2addr v2, v4

    invoke-static {v11, v12, v2, v3}, Lb3/b;->d(JJ)J

    move-result-wide v2

    new-instance v4, Lp2/j0;

    invoke-direct {v4, v1, v14, v2, v3}, Lp2/j0;-><init>(Lp2/i0;Lp2/n;J)V

    goto/16 :goto_8

    :cond_7
    :goto_2
    move-wide/from16 v11, p3

    :goto_3
    move-object/from16 v23, v20

    goto :goto_4

    :cond_8
    move-wide/from16 v11, p3

    move-object/from16 v23, v20

    move-object/from16 v6, v21

    goto :goto_4

    :cond_9
    move-wide/from16 v11, p3

    move-object/from16 v23, v1

    move-object v6, v9

    :goto_4
    invoke-virtual {v2, v6}, Lb0/b2;->a(Lb3/m;)V

    invoke-static {v11, v12}, Lb3/a;->j(J)I

    move-result v1

    if-nez v4, :cond_a

    const/4 v7, 0x2

    if-ne v3, v7, :cond_b

    :cond_a
    invoke-static {v11, v12}, Lb3/a;->d(J)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v11, v12}, Lb3/a;->h(J)I

    move-result v7

    goto :goto_5

    :cond_b
    const v7, 0x7fffffff

    :goto_5
    if-nez v4, :cond_c

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    const/16 v28, 0x1

    goto :goto_6

    :cond_c
    move/from16 v28, v5

    :goto_6
    const-string v3, "layoutIntrinsics must be called first"

    if-ne v1, v7, :cond_d

    goto :goto_7

    :cond_d
    iget-object v4, v2, Lb0/b2;->j:Landroidx/lifecycle/a1;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroidx/lifecycle/a1;->d()F

    move-result v4

    invoke-static {v4}, Lb0/n1;->o(F)I

    move-result v4

    invoke-static {v4, v1, v7}, Lg6/c1;->f(III)I

    move-result v7

    :goto_7
    new-instance v24, Lp2/n;

    iget-object v1, v2, Lb0/b2;->j:Landroidx/lifecycle/a1;

    if-eqz v1, :cond_11

    invoke-static {v11, v12}, Lb3/a;->g(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v7, v4, v3}, Ll9/a;->m(IIII)J

    move-result-wide v26

    iget v3, v2, Lb0/b2;->f:I

    move-object/from16 v25, v1

    move/from16 v29, v3

    invoke-direct/range {v24 .. v29}, Lp2/n;-><init>(Landroidx/lifecycle/a1;JII)V

    move-object/from16 v14, v24

    iget v1, v14, Lp2/n;->d:F

    invoke-static {v1}, Lb0/n1;->o(F)I

    move-result v1

    iget v3, v14, Lp2/n;->e:F

    invoke-static {v3}, Lb0/n1;->o(F)I

    move-result v3

    int-to-long v4, v1

    shl-long v4, v4, v18

    int-to-long v7, v3

    and-long v7, v7, v16

    or-long v3, v4, v7

    invoke-static {v11, v12, v3, v4}, Lb3/b;->d(JJ)J

    move-result-wide v3

    new-instance v1, Lp2/j0;

    move-object v5, v1

    new-instance v1, Lp2/i0;

    iget-object v7, v2, Lb0/b2;->a:Lp2/g;

    move-wide v8, v3

    iget-object v3, v2, Lb0/b2;->b:Lp2/m0;

    iget-object v4, v2, Lb0/b2;->i:Ljava/util/List;

    move-object v10, v5

    iget v5, v2, Lb0/b2;->c:I

    move-object/from16 v21, v6

    iget-boolean v6, v2, Lb0/b2;->e:Z

    move-object/from16 v19, v7

    iget v7, v2, Lb0/b2;->f:I

    move-wide/from16 v24, v8

    iget-object v8, v2, Lb0/b2;->g:Lb3/c;

    iget-object v2, v2, Lb0/b2;->h:Lt2/d;

    move-object v0, v10

    move-object/from16 v9, v21

    move-wide/from16 v30, v24

    move-object v10, v2

    move-object/from16 v2, v19

    invoke-direct/range {v1 .. v12}, Lp2/i0;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;IZILb3/c;Lb3/m;Lt2/d;J)V

    move-wide/from16 v8, v30

    invoke-direct {v0, v1, v14, v8, v9}, Lp2/j0;-><init>(Lp2/i0;Lp2/n;J)V

    move-object v4, v0

    :goto_8
    iget-wide v0, v4, Lp2/j0;->c:J

    shr-long v2, v0, v18

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    and-long v0, v0, v16

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object/from16 v14, v23

    invoke-static {v14, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Lb0/z2;

    if-eqz v15, :cond_e

    iget-object v14, v15, Lb0/z2;->c:Lc2/u;

    goto :goto_9

    :cond_e
    const/4 v14, 0x0

    :goto_9
    invoke-direct {v2, v14, v4}, Lb0/z2;-><init>(Lc2/u;Lp2/j0;)V

    iget-object v3, v13, Lb0/r1;->i:Lr0/e1;

    invoke-virtual {v3, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, v13, Lb0/r1;->p:Z

    move-object/from16 v3, p0

    iget-object v5, v3, Lb0/t0;->b:Li9/c;

    invoke-interface {v5, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lb0/t0;->c:Lu2/x;

    iget-object v6, v3, Lb0/t0;->d:Lu2/q;

    invoke-static {v13, v5, v6}, Lb0/n1;->x(Lb0/r1;Lu2/x;Lu2/q;)V

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v3, p0

    :goto_a
    iget v5, v3, Lb0/t0;->f:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    iget-object v5, v4, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v5, v2}, Lp2/n;->b(I)F

    move-result v2

    invoke-static {v2}, Lb0/n1;->o(F)I

    move-result v7

    goto :goto_b

    :cond_10
    move v7, v2

    :goto_b
    iget-object v2, v3, Lb0/t0;->e:Lb3/c;

    invoke-interface {v2, v7}, Lb3/c;->M(I)F

    move-result v2

    iget-object v3, v13, Lb0/r1;->g:Lr0/e1;

    new-instance v5, Lb3/f;

    invoke-direct {v5, v2}, Lb3/f;-><init>(F)V

    invoke-virtual {v3, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lc2/d;->a:Lc2/k;

    iget v3, v4, Lp2/j0;->d:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lt8/j;

    invoke-direct {v5, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lc2/d;->b:Lc2/k;

    iget v3, v4, Lp2/j0;->e:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lt8/j;

    invoke-direct {v4, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v4}, [Lt8/j;

    move-result-object v2

    invoke-static {v2}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ln/p1;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ln/p1;-><init>(I)V

    move-object/from16 v4, p1

    invoke-interface {v4, v1, v0, v2, v3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw v0
.end method
