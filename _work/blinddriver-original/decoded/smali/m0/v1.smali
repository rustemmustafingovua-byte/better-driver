.class public final Lm0/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lad/a2;

.field public B:Z

.field public final a:Lb0/h3;

.field public b:Lu2/q;

.field public c:Li9/c;

.field public d:Lb0/r1;

.field public final e:Lr0/e1;

.field public f:Lu2/d0;

.field public g:Li9/a;

.field public h:Lf2/g1;

.field public i:Lu9/t;

.field public j:Lm0/u;

.field public k:Lt1/a;

.field public l:Lk1/u;

.field public final m:Lr0/e1;

.field public final n:Lr0/e1;

.field public o:J

.field public p:Lp2/l0;

.field public q:J

.field public final r:Lr0/e1;

.field public final s:Lr0/e1;

.field public t:I

.field public u:Lu2/x;

.field public v:Lm0/l1;

.field public w:Lp2/l0;

.field public final x:Lr0/e1;

.field public final y:Lg5/s;

.field public final z:Lm0/t1;


# direct methods
.method public constructor <init>(Lb0/h3;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/v1;->a:Lb0/h3;

    sget-object p1, Lb0/i3;->a:Lad/s2;

    iput-object p1, p0, Lm0/v1;->b:Lu2/q;

    new-instance p1, Lad/b2;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lad/b2;-><init>(I)V

    iput-object p1, p0, Lm0/v1;->c:Li9/c;

    new-instance p1, Lu2/x;

    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lu2/x;-><init>(IJLjava/lang/String;)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/v1;->e:Lr0/e1;

    sget-object p1, Lu2/c0;->l:Lc2/c0;

    iput-object p1, p0, Lm0/v1;->f:Lu2/d0;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v4

    iput-object v4, p0, Lm0/v1;->m:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/v1;->n:Lr0/e1;

    iput-wide v1, p0, Lm0/v1;->o:J

    iput-wide v1, p0, Lm0/v1;->q:J

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/v1;->r:Lr0/e1;

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/v1;->s:Lr0/e1;

    const/4 p1, -0x1

    iput p1, p0, Lm0/v1;->t:I

    new-instance p1, Lu2/x;

    invoke-direct {p1, v0, v1, v2, v3}, Lu2/x;-><init>(IJLjava/lang/String;)V

    iput-object p1, p0, Lm0/v1;->u:Lu2/x;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/v1;->x:Lr0/e1;

    new-instance p1, Lg5/s;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lg5/s;-><init>(I)V

    iput-object p1, p0, Lm0/v1;->y:Lg5/s;

    new-instance p1, Lm0/t1;

    invoke-direct {p1, p0}, Lm0/t1;-><init>(Lm0/v1;)V

    iput-object p1, p0, Lm0/v1;->z:Lm0/t1;

    new-instance p1, Lad/a2;

    invoke-direct {p1, p0}, Lad/a2;-><init>(Lm0/v1;)V

    iput-object p1, p0, Lm0/v1;->A:Lad/a2;

    return-void
.end method

.method public static final a(Lm0/v1;)Lt8/j;
    .locals 6

    invoke-virtual {p0}, Lm0/v1;->m()Lp2/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm0/v1;->w:Lp2/l0;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lp2/l0;->a:J

    iget-object v3, p0, Lm0/v1;->b:Lu2/q;

    const/16 v4, 0x20

    shr-long v4, v1, v4

    long-to-int v4, v4

    invoke-interface {v3, v4}, Lu2/q;->s(I)I

    move-result v3

    iget-object p0, p0, Lm0/v1;->b:Lu2/q;

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-interface {p0, v1}, Lu2/q;->s(I)I

    move-result p0

    invoke-static {v3, p0}, Lp2/d0;->b(II)J

    move-result-wide v1

    new-instance p0, Lt8/j;

    new-instance v3, Lp2/l0;

    invoke-direct {v3, v1, v2}, Lp2/l0;-><init>(J)V

    invoke-direct {p0, v0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lm0/v1;Lp2/l0;)V
    .locals 11

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lp2/l0;->a:J

    iget-object v3, p0, Lm0/v1;->j:Lm0/u;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm0/v1;->m()Lp2/g;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, v2, Lp2/g;->m:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lm0/v1;->b:Lu2/q;

    const/16 v2, 0x20

    shr-long v5, v0, v2

    long-to-int v2, v5

    invoke-interface {v9, v2}, Lu2/q;->s(I)I

    move-result v2

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-interface {v9, v0}, Lu2/q;->s(I)I

    move-result v0

    invoke-static {v2, v0}, Lp2/d0;->b(II)J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v5, v6}, Lp2/l0;->c(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lm0/v1;->i:Lu9/t;

    if-eqz v0, :cond_3

    new-instance v2, Lm0/s1;

    const/4 v10, 0x0

    move-object v8, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v10}, Lm0/s1;-><init>(Lm0/u;Ljava/lang/String;JLp2/l0;Lm0/v1;Lu2/q;Ly8/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_3
    :goto_0
    return-void
.end method

.method public static final c(Lm0/v1;Lu2/x;JZZLm0/b0;Z)J
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lb0/r1;->d()Lb0/z2;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v3, v0, Lm0/v1;->b:Lu2/q;

    iget-wide v4, v1, Lu2/x;->b:J

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    sget v6, Lp2/l0;->c:I

    const/16 v6, 0x20

    shr-long v7, v4, v6

    long-to-int v7, v7

    invoke-interface {v3, v7}, Lu2/q;->s(I)I

    move-result v3

    iget-object v7, v0, Lm0/v1;->b:Lu2/q;

    const-wide v8, 0xffffffffL

    and-long v10, v4, v8

    long-to-int v10, v10

    invoke-interface {v7, v10}, Lu2/q;->s(I)I

    move-result v7

    invoke-static {v3, v7}, Lp2/d0;->b(II)J

    move-result-wide v10

    const/4 v3, 0x0

    move-wide/from16 v12, p2

    invoke-virtual {v2, v3, v12, v13}, Lb0/z2;->b(ZJ)I

    move-result v7

    if-nez p5, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    shr-long v12, v10, v6

    long-to-int v12, v12

    move/from16 v17, v12

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v17, v7

    :goto_1
    if-eqz p5, :cond_4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    and-long v12, v10, v8

    long-to-int v12, v12

    move/from16 v18, v12

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v18, v7

    :goto_3
    iget-object v12, v0, Lm0/v1;->v:Lm0/l1;

    const/4 v13, -0x1

    if-nez p4, :cond_6

    if-eqz v12, :cond_6

    iget v14, v0, Lm0/v1;->t:I

    if-ne v14, v13, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v19, v14

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v19, v13

    :goto_5
    iget-object v2, v2, Lb0/z2;->a:Lp2/j0;

    new-instance v21, Lm0/l1;

    if-eqz p4, :cond_7

    const/4 v10, 0x0

    move-wide/from16 v28, v4

    move-wide/from16 v26, v8

    move-object/from16 v24, v10

    goto :goto_6

    :cond_7
    new-instance v13, Lm0/a0;

    new-instance v14, Lm0/z;

    move-wide/from16 v26, v8

    shr-long v8, v10, v6

    long-to-int v8, v8

    invoke-static {v2, v8}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v9

    move-wide/from16 v28, v4

    const-wide/16 v3, 0x1

    invoke-direct {v14, v9, v8, v3, v4}, Lm0/z;-><init>(La3/j;IJ)V

    new-instance v5, Lm0/z;

    and-long v8, v10, v26

    long-to-int v8, v8

    invoke-static {v2, v8}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v9

    invoke-direct {v5, v9, v8, v3, v4}, Lm0/z;-><init>(La3/j;IJ)V

    invoke-static {v10, v11}, Lp2/l0;->g(J)Z

    move-result v3

    invoke-direct {v13, v14, v5, v3}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    move-object/from16 v24, v13

    :goto_6
    new-instance v25, Lm0/x;

    const-wide/16 v14, 0x1

    const/16 v16, 0x1

    move-object/from16 v20, v2

    move-object/from16 v13, v25

    invoke-direct/range {v13 .. v20}, Lm0/x;-><init>(JIIIILp2/j0;)V

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v20, v21

    move/from16 v21, p5

    invoke-direct/range {v20 .. v25}, Lm0/l1;-><init>(ZIILm0/a0;Lm0/x;)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v12}, Lm0/l1;->e(Lm0/t0;)Z

    move-result v3

    if-nez v3, :cond_8

    move-wide/from16 v4, v28

    goto :goto_7

    :cond_8
    iput-object v2, v0, Lm0/v1;->v:Lm0/l1;

    iput v7, v0, Lm0/v1;->t:I

    move-object/from16 v3, p6

    invoke-virtual {v3, v2}, Lm0/b0;->a(Lm0/t0;)Lm0/a0;

    move-result-object v2

    iget-object v3, v0, Lm0/v1;->b:Lu2/q;

    iget-object v4, v2, Lm0/a0;->a:Lm0/z;

    iget v4, v4, Lm0/z;->b:I

    invoke-interface {v3, v4}, Lu2/q;->j(I)I

    move-result v3

    iget-object v4, v0, Lm0/v1;->b:Lu2/q;

    iget-object v2, v2, Lm0/a0;->b:Lm0/z;

    iget v2, v2, Lm0/z;->b:I

    invoke-interface {v4, v2}, Lu2/q;->j(I)I

    move-result v2

    invoke-static {v3, v2}, Lp2/d0;->b(II)J

    move-result-wide v2

    move-wide/from16 v4, v28

    invoke-static {v2, v3, v4, v5}, Lp2/l0;->b(JJ)Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_7
    return-wide v4

    :cond_9
    invoke-static {v2, v3}, Lp2/l0;->g(J)Z

    move-result v7

    invoke-static {v4, v5}, Lp2/l0;->g(J)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v7, v8, :cond_a

    and-long v7, v2, v26

    long-to-int v7, v7

    shr-long v10, v2, v6

    long-to-int v6, v10

    invoke-static {v7, v6}, Lp2/d0;->b(II)J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lp2/l0;->b(JJ)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v9

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v4, v5}, Lp2/l0;->c(J)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v9

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    if-eqz p7, :cond_c

    iget-object v5, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    if-nez v6, :cond_c

    if-nez v4, :cond_c

    iget-object v4, v0, Lm0/v1;->k:Lt1/a;

    if-eqz v4, :cond_c

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lt1/a;->a(I)V

    :cond_c
    invoke-static {v1, v2, v3}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object v1

    iget-object v4, v0, Lm0/v1;->c:Li9/c;

    invoke-interface {v4, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lp2/l0;

    invoke-direct {v1, v2, v3}, Lp2/l0;-><init>(J)V

    iput-object v1, v0, Lm0/v1;->w:Lp2/l0;

    if-nez p7, :cond_d

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v1

    xor-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lm0/v1;->t(Z)V

    :cond_d
    iget-object v1, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lb0/r1;->q:Lr0/e1;

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_e
    iget-object v1, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v1, :cond_10

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v0, v9}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v9

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    iget-object v1, v1, Lb0/r1;->m:Lr0/e1;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_10
    iget-object v1, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v1, :cond_13

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v9

    goto :goto_b

    :cond_11
    const/4 v4, 0x0

    :cond_12
    move v5, v4

    :goto_b
    iget-object v1, v1, Lb0/r1;->n:Lr0/e1;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    :goto_c
    iget-object v1, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v1, :cond_15

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {v0, v9}, Lm0/d1;->w(Lm0/v1;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    move v9, v4

    :goto_d
    iget-object v0, v1, Lb0/r1;->o:Lr0/e1;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_15
    return-wide v2

    :cond_16
    :goto_e
    sget-wide v0, Lp2/l0;->b:J

    return-wide v0
.end method

.method public static e(Lp2/g;J)Lu2/x;
    .locals 2

    new-instance v0, Lu2/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lu2/x;-><init>(Lp2/g;JLp2/l0;)V

    return-object v0
.end method


# virtual methods
.method public final d(Z)Lu9/j1;
    .locals 4

    iget-object v0, p0, Lm0/v1;->i:Lu9/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lu9/u;->o:Lu9/u;

    new-instance v3, Lm0/q1;

    invoke-direct {v3, p0, p1, v1}, Lm0/q1;-><init>(Lm0/v1;ZLy8/c;)V

    const/4 p0, 0x1

    invoke-static {v0, v1, v2, v3, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lm0/v1;->i:Lu9/t;

    if-eqz v0, :cond_0

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Lm0/o1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    const/4 p0, 0x1

    invoke-static {v0, v4, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_0
    return-void
.end method

.method public final g(Ll1/b;)V
    .locals 6

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v0

    iget-wide v0, v0, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lm0/v1;->b:Lu2/q;

    iget-wide v3, p1, Ll1/b;->a:J

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Lb0/z2;->b(ZJ)I

    move-result v0

    invoke-interface {v2, v0}, Lu2/q;->j(I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v0

    iget-wide v2, v0, Lu2/x;->b:J

    invoke-static {v2, v3}, Lp2/l0;->e(J)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    invoke-static {v0, v0}, Lp2/d0;->b(II)J

    move-result-wide v3

    const/4 v0, 0x5

    invoke-static {v2, v1, v3, v4, v0}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object v0

    iget-object v1, p0, Lm0/v1;->c:Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v0, Lu2/x;->b:J

    new-instance v2, Lp2/l0;

    invoke-direct {v2, v0, v1}, Lp2/l0;-><init>(J)V

    iput-object v2, p0, Lm0/v1;->w:Lp2/l0;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object p1

    iget-object p1, p1, Lu2/x;->a:Lp2/g;

    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Lb0/e1;->n:Lb0/e1;

    goto :goto_2

    :cond_3
    sget-object p1, Lb0/e1;->l:Lb0/e1;

    :goto_2
    invoke-virtual {p0, p1}, Lm0/v1;->q(Lb0/e1;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm0/v1;->t(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lm0/v1;->l:Lk1/u;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lk1/u;->a(Lk1/u;)V

    :cond_0
    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v0

    iput-object v0, p0, Lm0/v1;->u:Lu2/x;

    invoke-virtual {p0, p1}, Lm0/v1;->t(Z)V

    sget-object p1, Lb0/e1;->m:Lb0/e1;

    invoke-virtual {p0, p1}, Lm0/v1;->q(Lb0/e1;)V

    return-void
.end method

.method public final i()Ll1/b;
    .locals 0

    iget-object p0, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    return-object p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lm0/v1;->m:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lm0/v1;->n:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final l(Z)J
    .locals 5

    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lb0/z2;->a:Lp2/j0;

    invoke-virtual {p0}, Lm0/v1;->m()Lp2/g;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lp2/j0;->a:Lp2/i0;

    iget-object v2, v2, Lp2/i0;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-wide v1, v1, Lu2/x;->b:J

    sget v3, Lp2/l0;->c:I

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    :goto_0
    long-to-int v1, v1

    goto :goto_1

    :cond_2
    iget-wide v1, v1, Lu2/x;->b:J

    sget v3, Lp2/l0;->c:I

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lm0/v1;->b:Lu2/q;

    invoke-interface {v2, v1}, Lu2/q;->s(I)I

    move-result v1

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object p0

    iget-wide v2, p0, Lu2/x;->b:J

    invoke-static {v2, v3}, Lp2/l0;->g(J)Z

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lm0/d1;->t(Lp2/j0;IZZ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_2
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide p0
.end method

.method public final m()Lp2/g;
    .locals 0

    iget-object p0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb0/r1;->a:Lb0/b2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb0/b2;->a:Lp2/g;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()Lu2/x;
    .locals 0

    iget-object p0, p0, Lm0/v1;->e:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/x;

    return-object p0
.end method

.method public final o()V
    .locals 2

    iget-object p0, p0, Lm0/v1;->y:Lg5/s;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lh0/j;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lh0/j;->F:Lu9/j1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    iput-object v1, p0, Lh0/j;->F:Lu9/j1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lm0/v1;->i:Lu9/t;

    if-eqz v0, :cond_0

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Lm0/o1;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    const/4 p0, 0x1

    invoke-static {v0, v4, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_0
    return-void
.end method

.method public final q(Lb0/e1;)V
    .locals 1

    iget-object p0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb0/r1;->a()Lb0/e1;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lb0/r1;->k:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld1/g;->e()Li9/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lm0/v1;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lb0/r1;->q:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v2, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iget-object p0, p0, Lm0/v1;->y:Lg5/s;

    invoke-virtual {p0}, Lg5/s;->N()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v0, v2, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :goto_2
    invoke-static {v0, v2, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0
.end method

.method public final s(La9/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lm0/u1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm0/u1;

    iget v1, v0, Lm0/u1;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm0/u1;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm0/u1;

    invoke-direct {v0, p0, p1}, Lm0/u1;-><init>(Lm0/v1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lm0/u1;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lm0/u1;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm0/u1;->l:Lm0/v1;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lm0/v1;->h:Lf2/g1;

    if-eqz p1, :cond_5

    iput-object p0, v0, Lm0/u1;->l:Lm0/v1;

    iput v3, v0, Lm0/u1;->o:I

    check-cast p1, Lf2/i;

    iget-object p1, p1, Lf2/i;->a:Lf2/j;

    iget-object p1, p1, Lf2/j;->a:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v2, "text/*"

    invoke-virtual {p1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lm0/v1;->x:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final t(Z)V
    .locals 2

    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb0/r1;->l:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lm0/v1;->r()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lm0/v1;->o()V

    return-void
.end method
