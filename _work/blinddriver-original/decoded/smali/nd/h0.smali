.class public abstract Lnd/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x188

    int-to-float v0, v0

    sput v0, Lnd/h0;->a:F

    const/16 v0, 0x348

    int-to-float v0, v0

    sput v0, Lnd/h0;->b:F

    return-void
.end method

.method public static final a(ZLr0/q;I)V
    .locals 60

    move/from16 v0, p0

    move-object/from16 v7, p1

    const v1, -0x64afd4f7

    invoke-virtual {v7, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v7, v0}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int v1, p2, v1

    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v2, v3, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    and-int/2addr v1, v10

    invoke-virtual {v7, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v12, Lf1/c;->l:Lf1/j;

    sget-object v13, Lu/n;->b:Lu/n;

    invoke-virtual {v13, v12}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v16

    const/16 v1, 0x8

    int-to-float v6, v1

    const/4 v1, 0x4

    int-to-float v1, v1

    const/16 v20, 0x0

    const/16 v21, 0x8

    move/from16 v19, v6

    move/from16 v18, v1

    move/from16 v17, v6

    invoke-static/range {v16 .. v21}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v1

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v4, v7, v11}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v4, v7, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v8, v7, Lr0/q;->S:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_2
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v7, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v7, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v11}, Lnd/h0;->g(Lr0/q;I)V

    const/4 v1, 0x6

    const/16 v16, 0x10

    int-to-float v15, v1

    move-object/from16 v18, v13

    sget-object v13, Lf1/o;->a:Lf1/o;

    invoke-static {v13, v15}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v2, Lf1/c;->v:Lf1/i;

    sget-object v11, Lu/h;->a:Lu/n;

    const/16 v10, 0x30

    invoke-static {v11, v2, v7, v10}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v11

    move-object/from16 v23, v2

    iget-wide v1, v7, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v13, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v10

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v14, v7, Lr0/q;->S:Z

    if-eqz v14, :cond_3

    invoke-virtual {v7, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_3
    invoke-static {v8, v11, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v7, v5, v7, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v9, v10, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v1, "points"

    const/16 v14, 0x36

    invoke-static {v13, v1, v7, v14}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    invoke-static {v15}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    sget-object v10, Lf1/c;->u:Lf1/i;

    const/4 v11, 0x6

    invoke-static {v2, v10, v7, v11}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    move-object/from16 v22, v12

    iget-wide v11, v7, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v14, v7, Lr0/q;->S:Z

    if-eqz v14, :cond_4

    invoke-virtual {v7, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_4
    invoke-static {v8, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v12, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v7, v5, v7, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v9, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object v1, v8

    const/4 v8, 0x6

    move-object v2, v9

    const/16 v9, 0xe

    move-object v11, v1

    const-string v1, "A"

    move-object v14, v2

    move-object v12, v3

    const-wide/16 v2, 0x0

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    const-wide/16 v4, 0x0

    move-object/from16 v28, v6

    const/4 v6, 0x0

    move-object/from16 v19, v10

    move-object/from16 v29, v23

    move-object/from16 v10, v26

    move-object/from16 v0, v27

    move/from16 v23, v15

    move-object v15, v14

    move-object v14, v12

    move-object v12, v11

    move-object/from16 v11, v28

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const-wide v26, 0xffe7e0ecL

    invoke-static/range {v26 .. v27}, Lm1/v;->d(J)J

    move-result-wide v2

    const/16 v8, 0x36

    const/16 v9, 0xc

    const-string v1, "B"

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const/4 v8, 0x6

    const/16 v9, 0xe

    const-string v1, "\u0447\u0435\u0440\u0435\u0437"

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    const/16 v1, 0xa

    int-to-float v1, v1

    invoke-static {v13, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const-string v1, "rec"

    const/16 v2, 0x36

    invoke-static {v13, v1, v7, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    move-object/from16 v8, v22

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v4, v7, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v5, v7, Lr0/q;->S:Z

    if-eqz v5, :cond_5

    invoke-virtual {v7, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v12, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v4, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2, v7, v10, v7, v0}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v15, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-ne v1, v9, :cond_6

    new-instance v1, Ln/k1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ln/k1;-><init>(I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object v2, v1

    check-cast v2, Li9/a;

    const/16 v5, 0x36

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    move/from16 v1, v23

    invoke-static {v13, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const-string v2, "log"

    const/16 v3, 0x36

    invoke-static {v13, v2, v7, v3}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v8, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v4

    iget-wide v5, v7, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v3, v7, Lr0/q;->S:Z

    if-eqz v3, :cond_7

    invoke-virtual {v7, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v12, v4, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14, v6, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5, v7, v10, v7, v0}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v15, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v22, v8

    const/4 v8, 0x6

    move-object v2, v9

    const/16 v9, 0xe

    move/from16 v23, v1

    const-string v1, "\u041b\u043e\u0433 \u2197"

    move-object v4, v2

    const-wide/16 v2, 0x0

    move-object v6, v4

    const-wide/16 v4, 0x0

    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v20, v12

    move/from16 v12, v23

    move-object/from16 v31, v25

    const/16 v23, 0x0

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    invoke-static {v13, v12}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const-wide v2, 0xffede7f6L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    const v4, 0x3f70a3d7    # 0.94f

    invoke-static {v4, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v3

    const/16 v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, La0/e;->a(F)La0/d;

    move-result-object v2

    move/from16 v21, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v13, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    new-instance v6, Lnd/o;

    const/4 v8, 0x2

    move/from16 v9, p0

    invoke-direct {v6, v8, v9}, Lnd/o;-><init>(IZ)V

    const v8, -0x3aded766

    invoke-static {v8, v6, v7}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    move v8, v12

    const v12, 0xc00186

    move-object/from16 v25, v13

    const/16 v13, 0x78

    move/from16 v30, v5

    move-object/from16 v28, v10

    move-object v10, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move/from16 v32, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v36, v18

    move-object/from16 v35, v19

    move-object/from16 v33, v22

    move-object/from16 v34, v28

    move/from16 v23, v32

    move-object/from16 v19, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v20

    move-object v15, v11

    move-object/from16 v20, v14

    move-object/from16 v14, v25

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v7, v11

    move/from16 v12, v17

    invoke-static {v14, v12}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-static {v12}, Lu/h;->g(F)Lu/f;

    move-result-object v1

    move-object/from16 v10, v29

    const/16 v2, 0x36

    invoke-static {v1, v10, v7, v2}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v2, v7, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v14, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v5, v7, Lr0/q;->S:Z

    if-eqz v5, :cond_8

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_7
    invoke-static {v0, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v13, v20

    invoke-static {v13, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v1, v19

    move-object/from16 v11, v34

    invoke-static {v2, v7, v11, v7, v1}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v18

    invoke-static {v2, v4, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v3, "gps"

    const/16 v4, 0x36

    invoke-static {v14, v3, v7, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v3

    move-object/from16 v4, v33

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v6

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v3, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v5, v7, Lr0/q;->S:Z

    if-eqz v5, :cond_9

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_8
    invoke-static {v0, v6, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v9, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8, v7, v11, v7, v1}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v2, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v17, 0xff2e7d32L

    move-object v5, v2

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v2

    move-object/from16 v22, v4

    move-object v6, v5

    sget-wide v4, Lm1/p;->c:J

    const/16 v8, 0x4e

    int-to-float v8, v8

    move-object v9, v6

    new-instance v6, Lb3/f;

    invoke-direct {v6, v8}, Lb3/f;-><init>(F)V

    const/16 v8, 0xdb6

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v21, v1

    const-string v1, "GPS \u2713"

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v38, v19

    move-object/from16 v10, v22

    const/4 v11, 0x0

    move/from16 v19, v12

    move-object/from16 v12, v21

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    const-string v2, "voice"

    const/16 v3, 0x36

    invoke-static {v14, v2, v7, v3}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    invoke-static {v10, v11}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v9, v7, Lr0/q;->S:Z

    if-eqz v9, :cond_a

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_9
    invoke-static {v0, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v8, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v28

    invoke-static {v6, v7, v3, v7, v12}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v6, v38

    invoke-static {v6, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v8

    const/16 v2, 0x38

    int-to-float v2, v2

    move-object/from16 v18, v6

    new-instance v6, Lb3/f;

    invoke-direct {v6, v2}, Lb3/f;-><init>(F)V

    move-wide/from16 v58, v8

    move v9, v2

    move-wide/from16 v2, v58

    const/16 v8, 0xdb6

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v21, v1

    const-string v1, "\ud83d\udd0a"

    move/from16 v41, v17

    move-object/from16 v40, v18

    move/from16 v11, v21

    move-object/from16 v39, v28

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    invoke-virtual {v7, v11}, Lr0/q;->q(Z)V

    const-string v1, "orient"

    const/16 v2, 0x36

    invoke-static {v14, v1, v7, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v10, v2}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v8, v7, Lr0/q;->S:Z

    if-eqz v8, :cond_b

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_a

    :cond_b
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_a
    invoke-static {v0, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v6, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v39

    invoke-static {v2, v7, v3, v7, v12}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v40

    invoke-static {v2, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v17, 0xff455a64L

    move-object v6, v2

    move-object/from16 v28, v3

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v2

    move-object/from16 v40, v6

    new-instance v6, Lb3/f;

    move/from16 v9, v41

    invoke-direct {v6, v9}, Lb3/f;-><init>(F)V

    const/16 v8, 0xdb6

    const/4 v9, 0x0

    const-string v1, "\ud83e\udded"

    move-object/from16 v42, v28

    move-object/from16 v43, v40

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    invoke-virtual {v7, v11}, Lr0/q;->q(Z)V

    const-string v1, "theme"

    const/16 v2, 0x36

    invoke-static {v14, v1, v7, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v10, v2}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v8, v7, Lr0/q;->S:Z

    if-eqz v8, :cond_c

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_b

    :cond_c
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_b
    invoke-static {v0, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v6, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v42

    invoke-static {v2, v7, v3, v7, v12}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v43

    invoke-static {v2, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object v6, v2

    move-object/from16 v28, v3

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v2

    const/16 v1, 0x48

    int-to-float v1, v1

    move-object/from16 v40, v6

    new-instance v6, Lb3/f;

    invoke-direct {v6, v1}, Lb3/f;-><init>(F)V

    const/16 v8, 0xdb6

    const/4 v9, 0x0

    const-string v1, "\u263d\u2600A"

    move-object/from16 v44, v28

    move-object/from16 v45, v40

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    move-wide/from16 v21, v4

    invoke-virtual {v7, v11}, Lr0/q;->q(Z)V

    const-string v1, "d3"

    const/16 v2, 0x36

    invoke-static {v14, v1, v7, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v10, v2}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v4, v7, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v5, v7, Lr0/q;->S:Z

    if-eqz v5, :cond_d

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_c

    :cond_d
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_c
    invoke-static {v0, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v4, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v44

    invoke-static {v2, v7, v3, v7, v12}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v45

    invoke-static {v2, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v26 .. v27}, Lm1/v;->d(J)J

    move-result-wide v4

    const-wide v8, 0xff1c1b1fL

    invoke-static {v8, v9}, Lm1/v;->d(J)J

    move-result-wide v8

    const/16 v1, 0x30

    int-to-float v6, v1

    new-instance v1, Lb3/f;

    invoke-direct {v1, v6}, Lb3/f;-><init>(F)V

    move-object/from16 v40, v2

    move-object/from16 v28, v3

    move-wide v2, v4

    move-wide v4, v8

    const/16 v8, 0xdb6

    const/4 v9, 0x0

    move/from16 v25, v6

    move-object v6, v1

    const-string v1, "3D"

    move-object/from16 v33, v10

    move/from16 v47, v25

    move-object/from16 v10, v28

    move-object/from16 v46, v40

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    invoke-virtual {v7, v11}, Lr0/q;->q(Z)V

    invoke-virtual {v7, v11}, Lr0/q;->q(Z)V

    move/from16 v1, v19

    invoke-static {v14, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-static {v1}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    move-object/from16 v3, v29

    const/16 v4, 0x36

    invoke-static {v2, v3, v7, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v3, v7, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v14, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v6, v7, Lr0/q;->S:Z

    if-eqz v6, :cond_e

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_d

    :cond_e
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_d
    invoke-static {v0, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v4, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v7, v10, v7, v12}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v46

    invoke-static {v2, v5, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v3, "share"

    const/16 v4, 0x36

    invoke-static {v14, v3, v7, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v3

    move-object/from16 v4, v33

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v6

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v3, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v5, v7, Lr0/q;->S:Z

    if-eqz v5, :cond_f

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_e

    :cond_f
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_e
    invoke-static {v0, v6, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13, v9, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8, v7, v10, v7, v12}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v2, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v5, 0xff78909cL

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    const/16 v3, 0xf

    invoke-static {v3}, La/a;->k(I)J

    move-result-wide v8

    move-object/from16 v28, v10

    const/16 v10, 0xdb6

    move/from16 v37, v11

    const/16 v11, 0x10

    move/from16 v19, v1

    const-string v1, "((\u2022))"

    move-object/from16 v40, v2

    move-wide v2, v5

    move-wide v6, v8

    const/4 v8, 0x0

    move-object/from16 v9, p1

    move-object/from16 v27, v12

    move-object/from16 v20, v13

    move-object/from16 v48, v28

    move/from16 v13, v37

    move-object/from16 v49, v40

    move-object v12, v4

    move-wide/from16 v4, v21

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-static/range {v1 .. v11}, Lnd/h0;->e(Ljava/lang/String;JJJLt2/k;Lr0/q;II)V

    move-object v7, v9

    invoke-virtual {v7, v13}, Lr0/q;->q(Z)V

    const-string v1, "fold"

    const/16 v2, 0x36

    invoke-static {v14, v1, v7, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    invoke-static {v12, v0}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v8, v7, Lr0/q;->S:Z

    if-eqz v8, :cond_10

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    :goto_f
    move-object/from16 v8, v21

    goto :goto_10

    :cond_10
    invoke-virtual {v7}, Lr0/q;->o0()V

    goto :goto_f

    :goto_10
    invoke-static {v8, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v20

    invoke-static {v2, v6, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v9, v27

    move-object/from16 v6, v48

    invoke-static {v3, v7, v6, v7, v9}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v3, v49

    invoke-static {v3, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v10

    invoke-static/range {v16 .. v16}, La/a;->k(I)J

    move-result-wide v16

    move-object/from16 v40, v3

    move-wide v2, v10

    const/16 v10, 0xdb6

    const/16 v11, 0x10

    const-string v1, "\u25b2"

    move-object/from16 v21, v8

    const/4 v8, 0x0

    move-object/from16 v52, v6

    move-object/from16 v53, v9

    move-object/from16 v51, v20

    move-object/from16 v50, v21

    move-object/from16 v54, v40

    move-object v9, v7

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v11}, Lnd/h0;->e(Ljava/lang/String;JJJLt2/k;Lr0/q;II)V

    move-object v7, v9

    invoke-virtual {v7, v13}, Lr0/q;->q(Z)V

    const-string v1, "alert"

    const/16 v2, 0x36

    invoke-static {v14, v1, v7, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    invoke-static {v12, v0}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v3, v7, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v5, v7, Lr0/q;->S:Z

    if-eqz v5, :cond_11

    invoke-virtual {v7, v15}, Lr0/q;->l(Li9/a;)V

    :goto_11
    move-object/from16 v12, v50

    goto :goto_12

    :cond_11
    invoke-virtual {v7}, Lr0/q;->o0()V

    goto :goto_11

    :goto_12
    invoke-static {v12, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v51

    invoke-static {v2, v4, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v4, v52

    move-object/from16 v5, v53

    invoke-static {v3, v7, v4, v7, v5}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v3, v54

    invoke-static {v3, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v8, 0xfffbc02dL

    invoke-static {v8, v9}, Lm1/v;->d(J)J

    move-result-wide v8

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    sget-wide v4, Lm1/p;->b:J

    const/16 v1, 0x18

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v10

    move-object/from16 v20, v2

    move-object/from16 v40, v3

    move-wide v2, v8

    sget-object v8, Lt2/k;->r:Lt2/k;

    move-wide v6, v10

    const/16 v10, 0x6db6

    const/4 v11, 0x0

    const-string v1, "!"

    move-object/from16 v9, p1

    move-object/from16 v25, v14

    move-object/from16 v0, v20

    move-object/from16 v55, v27

    move-object/from16 v14, v28

    move-object/from16 v56, v40

    invoke-static/range {v1 .. v11}, Lnd/h0;->e(Ljava/lang/String;JJJLt2/k;Lr0/q;II)V

    invoke-virtual {v9, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v9, v13}, Lr0/q;->q(Z)V

    invoke-virtual {v9, v13}, Lr0/q;->q(Z)V

    sget-object v1, Lf1/c;->q:Lf1/j;

    move-object/from16 v2, v36

    invoke-virtual {v2, v1}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v3

    const/16 v1, 0x78

    int-to-float v5, v1

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v4, 0x0

    move/from16 v6, v19

    invoke-static/range {v3 .. v8}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v1

    const-string v3, "zoom"

    const/16 v4, 0x30

    invoke-static {v1, v3, v9, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    sget-object v3, Lf1/c;->z:Lf1/h;

    invoke-static/range {v23 .. v23}, Lu/h;->g(F)Lu/f;

    move-result-object v5

    const/16 v7, 0x36

    invoke-static {v5, v3, v9, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v7, v9, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v1, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v8, v9, Lr0/q;->S:Z

    if-eqz v8, :cond_12

    invoke-virtual {v9, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_13

    :cond_12
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_13
    invoke-static {v12, v3, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0, v7, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v55

    invoke-static {v5, v9, v14, v9, v3}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v5, v56

    invoke-static {v5, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v1, "+"

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/4 v11, 0x0

    invoke-static {v1, v11, v9, v8, v7}, Lnd/h0;->h(Ljava/lang/String;ZLr0/q;II)V

    const-string v1, "\u2212"

    invoke-static {v1, v11, v9, v8, v7}, Lnd/h0;->h(Ljava/lang/String;ZLr0/q;II)V

    const-string v1, "Auto"

    const/16 v7, 0x36

    invoke-static {v1, v13, v9, v7, v11}, Lnd/h0;->h(Ljava/lang/String;ZLr0/q;II)V

    invoke-virtual {v9, v13}, Lr0/q;->q(Z)V

    sget-object v1, Lf1/c;->s:Lf1/j;

    invoke-virtual {v2, v1}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v6}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v6}, Lu/h;->g(F)Lu/f;

    move-result-object v6

    move-object/from16 v7, v35

    invoke-static {v6, v7, v9, v8}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    iget-wide v7, v9, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v10, v9, Lr0/q;->S:Z

    if-eqz v10, :cond_13

    invoke-virtual {v9, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_14

    :cond_13
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_14
    invoke-static {v12, v6, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0, v8, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v9, v14, v9, v3}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v5, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v14, v31

    if-ne v0, v14, :cond_14

    new-instance v0, Ln/k1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    invoke-virtual {v9, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    move-object v1, v0

    check-cast v1, Li9/a;

    const v0, 0x3fb33333    # 1.4f

    sget-object v15, Lu/z0;->a:Lu/z0;

    move-object/from16 v3, v25

    invoke-virtual {v15, v3, v0}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v0

    move/from16 v5, v47

    invoke-static {v0, v5}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    const-string v6, "go"

    invoke-static {v0, v6, v9, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v0

    sget-object v9, Lnd/a;->m:Lz0/d;

    const v11, 0x30000186

    const/16 v12, 0x1f8

    const/4 v3, 0x1

    move/from16 v24, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    move v13, v2

    move-object v2, v0

    move-object/from16 v0, v25

    move/from16 v25, v47

    invoke-static/range {v1 .. v12}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v7, v10

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_15

    new-instance v1, Ln/k1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ln/k1;-><init>(I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    check-cast v1, Li9/a;

    invoke-virtual {v15, v0, v13}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v2

    move/from16 v12, v25

    invoke-static {v2, v12}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    const-string v3, "center_main"

    const/16 v4, 0x30

    invoke-static {v2, v3, v7, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    const/4 v5, 0x0

    int-to-float v3, v5

    new-instance v7, Lu/s0;

    invoke-direct {v7, v3, v3, v3, v3}, Lu/s0;-><init>(FFFF)V

    sget-object v8, Lnd/a;->n:Lz0/d;

    const v10, 0x30c00006

    const/16 v11, 0x17c

    move v5, v3

    const/4 v3, 0x0

    move/from16 v24, v4

    const/4 v4, 0x0

    move v6, v5

    const/4 v5, 0x0

    move v9, v6

    const/4 v6, 0x0

    move/from16 v57, v9

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v7, v9

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_16

    new-instance v1, Ln/k1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ln/k1;-><init>(I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    check-cast v1, Li9/a;

    invoke-virtual {v15, v0, v13}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v12}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    const-string v2, "settings"

    const/16 v4, 0x30

    invoke-static {v0, v2, v7, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    new-instance v7, Lu/s0;

    move/from16 v5, v57

    invoke-direct {v7, v5, v5, v5, v5}, Lu/s0;-><init>(FFFF)V

    sget-object v8, Lnd/a;->o:Lz0/d;

    const v10, 0x30c00006

    const/16 v11, 0x17c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v11}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v7, v9

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    goto :goto_15

    :cond_17
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_15
    invoke-virtual {v7}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Lnd/o;

    const/4 v2, 0x3

    move/from16 v9, p0

    move/from16 v14, p2

    invoke-direct {v1, v14, v2, v9}, Lnd/o;-><init>(IIZ)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_18
    return-void
.end method

.method public static final b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v12, p6

    move/from16 v0, p7

    const v2, -0x2544b59c

    invoke-virtual {v12, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v12, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v0

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    and-int/lit8 v3, v0, 0x30

    if-nez v3, :cond_4

    and-int/lit8 v3, p8, 0x2

    if-nez v3, :cond_2

    move-wide/from16 v3, p1

    invoke-virtual {v12, v3, v4}, Lr0/q;->f(J)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    move-wide/from16 v3, p1

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-wide/from16 v3, p1

    :goto_3
    and-int/lit16 v5, v0, 0x180

    if-nez v5, :cond_7

    and-int/lit8 v5, p8, 0x4

    if-nez v5, :cond_5

    move-wide/from16 v5, p3

    invoke-virtual {v12, v5, v6}, Lr0/q;->f(J)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_5
    move-wide/from16 v5, p3

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-wide/from16 v5, p3

    :goto_5
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v2, v2, 0xc00

    :cond_8
    move-object/from16 v8, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v0, 0xc00

    if-nez v8, :cond_8

    move-object/from16 v8, p5

    invoke-virtual {v12, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    :goto_7
    and-int/lit16 v9, v2, 0x493

    const/16 v10, 0x492

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-eq v9, v10, :cond_b

    move v9, v13

    goto :goto_8

    :cond_b
    move v9, v11

    :goto_8
    and-int/2addr v2, v13

    invoke-virtual {v12, v2, v9}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v12}, Lr0/q;->Y()V

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_e

    invoke-virtual {v12}, Lr0/q;->C()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v12}, Lr0/q;->W()V

    move-wide v2, v3

    move-wide v4, v5

    :cond_d
    move-object v15, v8

    goto :goto_c

    :cond_e
    :goto_9
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_f

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v2, v2, Lo0/u0;->p:J

    goto :goto_a

    :cond_f
    move-wide v2, v3

    :goto_a
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_10

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->q:J

    goto :goto_b

    :cond_10
    move-wide v4, v5

    :goto_b
    if-eqz v7, :cond_d

    const/4 v15, 0x0

    :goto_c
    invoke-virtual {v12}, Lr0/q;->r()V

    const v6, 0x3f75c28f    # 0.96f

    invoke-static {v6, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v6

    const/16 v8, 0xc

    int-to-float v8, v8

    invoke-static {v8}, La0/e;->a(F)La0/d;

    move-result-object v8

    sget-object v10, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v12, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo0/u0;

    move-object/from16 p1, v10

    iget-wide v9, v14, Lo0/u0;->p:J

    invoke-static {v2, v3, v9, v10}, Lm1/p;->c(JJ)Z

    move-result v9

    if-eqz v9, :cond_11

    const v9, 0x19126760

    invoke-virtual {v12, v9}, Lr0/q;->b0(I)V

    int-to-float v9, v13

    move-object/from16 v10, p1

    invoke-virtual {v12, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo0/u0;

    iget-wide v13, v10, Lo0/u0;->B:J

    invoke-static {v9, v13, v14}, Lp/o;->a(FJ)Lp/x;

    move-result-object v9

    invoke-virtual {v12, v11}, Lr0/q;->q(Z)V

    move-object v10, v9

    goto :goto_d

    :cond_11
    const v9, 0x93b7d99

    invoke-virtual {v12, v9}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v11}, Lr0/q;->q(Z)V

    const/4 v10, 0x0

    :goto_d
    sget-object v9, Lf1/o;->a:Lf1/o;

    if-eqz v15, :cond_12

    iget v11, v15, Lb3/f;->l:F

    invoke-static {v9, v11}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v9

    :cond_12
    new-instance v11, Lnd/x;

    const/4 v13, 0x0

    invoke-direct {v11, v13, v4, v5, v1}, Lnd/x;-><init>(IJLjava/lang/String;)V

    const v13, 0x6e5bcea9

    invoke-static {v13, v11, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const/high16 v13, 0xc00000

    const/16 v14, 0x38

    move-wide/from16 v16, v4

    move-wide v4, v6

    const-wide/16 v6, 0x0

    move-wide/from16 v18, v2

    move-object v3, v8

    const/4 v8, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v6, v15

    move-wide/from16 v4, v16

    move-wide/from16 v2, v18

    goto :goto_e

    :cond_13
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    :goto_e
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_14

    new-instance v0, Lnd/y;

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnd/y;-><init>(Ljava/lang/String;JJLb3/f;II)V

    iput-object v0, v9, Lr0/n1;->d:Li9/e;

    :cond_14
    return-void
.end method

.method public static final c(Lr0/q;I)V
    .locals 20

    move-object/from16 v10, p0

    move/from16 v13, p1

    const v0, -0xd1b65a0

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v13, 0x1

    invoke-virtual {v10, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v2, v0, Lo0/u0;->p:J

    const/16 v0, 0xa

    int-to-float v0, v0

    invoke-static {v0}, La0/e;->a(F)La0/d;

    move-result-object v1

    const/4 v0, 0x6

    int-to-float v7, v0

    const/16 v0, 0x20

    int-to-float v15, v0

    const/4 v0, 0x4

    int-to-float v0, v0

    const/4 v4, 0x2

    int-to-float v4, v4

    const/16 v19, 0x4

    sget-object v14, Lf1/o;->a:Lf1/o;

    const/16 v17, 0x0

    move/from16 v16, v0

    move/from16 v18, v4

    invoke-static/range {v14 .. v19}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v0

    sget-object v9, Lnd/a;->q:Lz0/d;

    const v11, 0xc30006

    const/16 v12, 0x58

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lr0/q;->W()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lb0/u2;

    const/16 v2, 0xc

    invoke-direct {v1, v13, v2}, Lb0/u2;-><init>(II)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_2
    return-void
.end method

.method public static final d(Ljava/lang/String;JLcd/c;ZLr0/q;II)V
    .locals 29

    move-object/from16 v4, p3

    move-object/from16 v15, p5

    const v0, 0x1595dc2

    invoke-virtual {v15, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    or-int v0, p6, v0

    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0xc00

    move/from16 v2, p4

    goto :goto_2

    :cond_1
    move/from16 v2, p4

    invoke-virtual {v15, v2}, Lr0/q;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x800

    goto :goto_1

    :cond_2
    const/16 v3, 0x400

    :goto_1
    or-int/2addr v0, v3

    :goto_2
    and-int/lit16 v3, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_3

    move v3, v7

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    and-int/2addr v0, v7

    invoke-virtual {v15, v0, v3}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_4

    move v2, v6

    :cond_4
    sget-object v0, Lf1/c;->v:Lf1/i;

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/16 v3, 0x1e

    int-to-float v3, v3

    const/4 v5, 0x0

    const/4 v8, 0x2

    invoke-static {v1, v3, v5, v8}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    if-eqz v2, :cond_5

    const v8, 0x336750a4

    invoke-static {v8}, Lm1/v;->c(I)J

    move-result-wide v8

    goto :goto_4

    :cond_5
    sget-wide v8, Lm1/p;->f:J

    :goto_4
    const/16 v10, 0x8

    int-to-float v10, v10

    invoke-static {v10}, La0/e;->a(F)La0/d;

    move-result-object v10

    invoke-static {v3, v8, v9, v10}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    sget-object v8, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v8, v0, v15, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v0

    iget-wide v8, v15, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v3, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v11, v15, Lr0/q;->S:Z

    if-eqz v11, :cond_6

    invoke-virtual {v15, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_5
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v0, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v9, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v15, v0, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v15, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v3, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move v0, v6

    sget-object v6, La0/e;->a:La0/d;

    const/16 v3, 0x16

    int-to-float v3, v3

    invoke-static {v1, v3}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v3

    new-instance v8, Lnd/e;

    const/4 v9, 0x3

    move-object/from16 v10, p0

    invoke-direct {v8, v10, v9}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v9, -0x3f6867dd

    invoke-static {v9, v8, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const v16, 0xc00186

    const/16 v17, 0x78

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v3

    move v3, v0

    move v0, v5

    move-object v5, v7

    move-wide/from16 v7, p1

    invoke-static/range {v5 .. v17}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    const/16 v5, 0xa

    int-to-float v5, v5

    invoke-static {v1, v5}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v15}, Lu/b;->e(Lf1/r;Lr0/q;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v15, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->i:Lp2/m0;

    float-to-double v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_7

    goto :goto_6

    :cond_7
    const-string v6, "invalid weight; must be greater than zero"

    invoke-static {v6}, Lv/a;->a(Ljava/lang/String;)V

    :goto_6
    new-instance v6, Lu/j0;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lu/j0;-><init>(FZ)V

    const/16 v26, 0x0

    const v27, 0x1fffc

    move/from16 v28, v7

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v24, p5

    move-object/from16 v23, v3

    move/from16 v0, v28

    invoke-static/range {v5 .. v27}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v24

    if-eqz v2, :cond_8

    const-string v3, "\ud83d\udc46"

    :goto_7
    move-object v5, v3

    goto :goto_8

    :cond_8
    sget-object v3, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "I\'m here"

    goto :goto_7

    :cond_9
    const-string v3, "\u042f \u0442\u0443\u0442"

    goto :goto_7

    :goto_8
    const-wide v6, 0xff6750a4L

    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v7

    invoke-virtual {v15, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->i:Lp2/m0;

    const/16 v26, 0x0

    const v27, 0x1fffa

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x180

    move-object/from16 v24, p5

    move-object/from16 v23, v1

    invoke-static/range {v5 .. v27}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v24

    invoke-virtual {v15, v0}, Lr0/q;->q(Z)V

    :goto_9
    move v5, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v15}, Lr0/q;->W()V

    goto :goto_9

    :goto_a
    invoke-virtual {v15}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v0, Lnd/c0;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lnd/c0;-><init>(Ljava/lang/String;JLcd/c;ZII)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final e(Ljava/lang/String;JJJLt2/k;Lr0/q;II)V
    .locals 15

    move-object/from16 v10, p8

    move/from16 v13, p9

    const v0, 0x3d0dbd96

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_0

    or-int/lit16 v1, v13, 0x6000

    move v2, v1

    move-object/from16 v1, p7

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v13, 0x6000

    if-nez v1, :cond_2

    move-object/from16 v1, p7

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4000

    goto :goto_0

    :cond_1
    const/16 v2, 0x2000

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move-object/from16 v1, p7

    move v2, v13

    :goto_1
    and-int/lit16 v3, v2, 0x2493

    const/16 v4, 0x2492

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v2, v5

    invoke-virtual {v10, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    sget-object v0, Lt2/k;->q:Lt2/k;

    move-object v7, v0

    goto :goto_3

    :cond_4
    move-object v7, v1

    :goto_3
    sget-object v0, La0/e;->a:La0/d;

    const/16 v1, 0x28

    int-to-float v1, v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v8

    new-instance v1, Lnd/z;

    move-object v2, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lnd/z;-><init>(Ljava/lang/String;JJLt2/k;)V

    move-object v14, v7

    const v2, 0x72019a9b

    invoke-static {v2, v1, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc00186

    const/16 v12, 0x78

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v0, v8

    const/4 v8, 0x0

    move-wide/from16 v2, p1

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v8, v14

    goto :goto_4

    :cond_5
    invoke-virtual/range {p8 .. p8}, Lr0/q;->W()V

    move-object v8, v1

    :goto_4
    invoke-virtual/range {p8 .. p8}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_6

    new-instance v0, Lnd/a0;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v10, p10

    move v9, v13

    invoke-direct/range {v0 .. v10}, Lnd/a0;-><init>(Ljava/lang/String;JJJLt2/k;II)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v0, p5

    const v3, -0x38f44b53

    invoke-virtual {v13, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v13, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v0

    and-int/lit8 v4, v0, 0x30

    if-nez v4, :cond_2

    invoke-virtual {v13, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    :cond_2
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_3

    or-int/lit16 v3, v3, 0x180

    move/from16 v5, p2

    goto :goto_3

    :cond_3
    move/from16 v5, p2

    invoke-virtual {v13, v5}, Lr0/q;->h(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, p6, 0x8

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0xc00

    :cond_5
    move/from16 v7, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v0, 0xc00

    if-nez v7, :cond_5

    move/from16 v7, p3

    invoke-virtual {v13, v7}, Lr0/q;->h(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x800

    goto :goto_4

    :cond_7
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v3, v8

    :goto_5
    and-int/lit16 v8, v3, 0x493

    const/16 v9, 0x492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v8, v9, :cond_8

    move v8, v11

    goto :goto_6

    :cond_8
    move v8, v10

    :goto_6
    and-int/2addr v3, v11

    invoke-virtual {v13, v3, v8}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v4, :cond_9

    move v3, v10

    goto :goto_7

    :cond_9
    move v3, v5

    :goto_7
    if-eqz v6, :cond_a

    move v4, v10

    goto :goto_8

    :cond_a
    move v4, v7

    :goto_8
    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v13, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->r:J

    const/16 v7, 0xe

    int-to-float v7, v7

    invoke-static {v7}, La0/e;->a(F)La0/d;

    move-result-object v7

    sget-object v8, Lf1/o;->a:Lf1/o;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v8

    new-instance v9, Lnd/j;

    invoke-direct {v9, v4, v3, v1, v2}, Lnd/j;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    const v10, -0x5c03738

    invoke-static {v10, v9, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v12

    const v14, 0xc00006

    const/16 v15, 0x78

    move v9, v3

    move v10, v4

    move-object v4, v7

    move-object v3, v8

    const-wide/16 v7, 0x0

    move v11, v9

    const/4 v9, 0x0

    move/from16 v16, v10

    const/4 v10, 0x0

    move/from16 v17, v11

    const/4 v11, 0x0

    invoke-static/range {v3 .. v15}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_9

    :cond_b
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    move v3, v5

    move v4, v7

    :goto_9
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v0, Lnd/b0;

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lnd/b0;-><init>(Ljava/lang/String;Ljava/lang/String;ZZII)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final g(Lr0/q;I)V
    .locals 13

    const v0, 0x7aae9c37

    invoke-virtual {p0, v0}, Lr0/q;->c0(I)Lr0/q;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v2, v2, Lo0/u0;->p:J

    const v4, 0x3f75c28f    # 0.96f

    invoke-static {v4, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v2

    const/16 v4, 0xc

    int-to-float v4, v4

    invoke-static {v4}, La0/e;->a(F)La0/d;

    move-result-object v4

    int-to-float v0, v0

    invoke-virtual {p0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v5, v1, Lo0/u0;->A:J

    invoke-static {v0, v5, v6}, Lp/o;->a(FJ)Lp/x;

    move-result-object v8

    sget-object v0, Lf1/o;->a:Lf1/o;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    const/16 v1, 0x34

    int-to-float v1, v1

    invoke-static {v0, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    const-string v1, "search"

    const/16 v5, 0x36

    invoke-static {v0, v1, p0, v5}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v0

    sget-object v9, Lnd/a;->p:Lz0/d;

    const/high16 v11, 0xc00000

    const/16 v12, 0x38

    move-object v1, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, p0

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {p0}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lb0/u2;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lb0/u2;-><init>(II)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_2
    return-void
.end method

.method public static final h(Ljava/lang/String;ZLr0/q;II)V
    .locals 22

    move-object/from16 v10, p2

    const v0, -0x4023dbf0

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 v1, p3, 0x30

    move v2, v1

    move/from16 v1, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_2

    move/from16 v1, p1

    invoke-virtual {v10, v1}, Lr0/q;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_2
    move/from16 v1, p1

    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    and-int/2addr v2, v5

    invoke-virtual {v10, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_4

    move v13, v6

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v13, :cond_5

    int-to-float v0, v4

    invoke-static {v0}, La0/e;->a(F)La0/d;

    move-result-object v0

    :goto_4
    move-object v1, v0

    goto :goto_5

    :cond_5
    sget-object v0, La0/e;->a:La0/d;

    goto :goto_4

    :goto_5
    if-eqz v13, :cond_6

    const v0, 0x39637897

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v2, v0, Lo0/u0;->a:J

    :goto_6
    invoke-virtual {v10, v6}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_6
    const v0, 0x39637d77

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v2, v0, Lo0/u0;->p:J

    goto :goto_6

    :goto_7
    if-eqz v13, :cond_7

    const v0, 0x396384f9

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v7, v0, Lo0/u0;->b:J

    :goto_8
    invoke-virtual {v10, v6}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_7
    const v0, 0x39638a19

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v7, v0, Lo0/u0;->q:J

    goto :goto_8

    :goto_9
    int-to-float v0, v5

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->A:J

    invoke-static {v0, v4, v5}, Lp/o;->a(FJ)Lp/x;

    move-result-object v0

    const/4 v4, 0x4

    int-to-float v4, v4

    const/16 v5, 0x2c

    int-to-float v5, v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v5}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x2

    invoke-static {v6, v5, v9, v11}, Lu/b1;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v5

    new-instance v6, Lnd/v;

    const/4 v9, 0x0

    move-object/from16 v15, p0

    invoke-direct {v6, v15, v9, v13}, Lnd/v;-><init>(Ljava/lang/String;IZ)V

    const v9, -0x15f46d2b

    invoke-static {v9, v6, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc30006

    const/16 v12, 0x10

    const/4 v6, 0x0

    move-wide/from16 v20, v7

    move-object v8, v0

    move v7, v4

    move-object v0, v5

    move-wide/from16 v4, v20

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move/from16 v16, v13

    goto :goto_a

    :cond_8
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Lr0/q;->W()V

    move/from16 v16, v1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v14, Lnd/w;

    const/16 v19, 0x0

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-direct/range {v14 .. v19}, Lnd/w;-><init>(Ljava/lang/Object;ZIII)V

    iput-object v14, v0, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final i(Lnd/h;Lr0/q;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v14, v0, Lnd/h;->f:Lad/a0;

    const v1, 0x5d04414d

    invoke-virtual {v7, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v7, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int v1, p2, v1

    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move v2, v15

    :goto_1
    and-int/2addr v1, v10

    invoke-virtual {v7, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lf1/c;->l:Lf1/j;

    sget-object v11, Lu/n;->b:Lu/n;

    invoke-virtual {v11, v1}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v2, v12}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v16

    const/16 v2, 0x8

    int-to-float v4, v2

    const/4 v2, 0x4

    int-to-float v2, v2

    const/16 v20, 0x0

    const/16 v21, 0x8

    move/from16 v19, v4

    move/from16 v18, v2

    move/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v2

    move/from16 v13, v17

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v4, v7, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v5

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v10, v7, Lr0/q;->S:Z

    if-eqz v10, :cond_2

    invoke-virtual {v7, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_2
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v5, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v8, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v7, v6, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v6, Le2/g;->h:Le2/d;

    invoke-static {v7, v6}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v15, Le2/g;->d:Le2/e;

    invoke-static {v15, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lf1/o;->a:Lf1/o;

    move-object/from16 v18, v3

    invoke-static {v2, v12}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v12, 0x30

    invoke-static {v14, v3, v7, v12}, Lod/e4;->g(Lad/a0;Lf1/r;Lr0/q;I)V

    invoke-static {v2, v13}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-static {v13}, Lu/h;->g(F)Lu/f;

    move-result-object v3

    sget-object v12, Lf1/c;->v:Lf1/i;

    move-object/from16 v21, v4

    const/16 v4, 0x36

    invoke-static {v3, v12, v7, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    move-object v12, v5

    iget-wide v4, v7, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    move-object/from16 v23, v12

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v12

    invoke-virtual {v7}, Lr0/q;->e0()V

    move/from16 v24, v13

    iget-boolean v13, v7, Lr0/q;->S:Z

    if-eqz v13, :cond_3

    invoke-virtual {v7, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_3
    invoke-static {v10, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v23

    invoke-static {v3, v5, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v7, v8, v7, v6}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v15, v12, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v4, v0, Lnd/h;->c:Z

    if-eqz v4, :cond_4

    const-wide v4, 0xffc62828L

    invoke-static {v4, v5}, Lm1/v;->d(J)J

    move-result-wide v4

    const-wide v25, 0xff2e7d32L

    new-instance v12, Lm1/p;

    invoke-direct {v12, v4, v5}, Lm1/p;-><init>(J)V

    new-instance v4, Lt8/j;

    const-string v5, "GPS \u2715"

    invoke-direct {v4, v5, v12}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    const-wide v25, 0xff2e7d32L

    invoke-static/range {v25 .. v26}, Lm1/v;->d(J)J

    move-result-wide v4

    new-instance v12, Lm1/p;

    invoke-direct {v12, v4, v5}, Lm1/p;-><init>(J)V

    new-instance v4, Lt8/j;

    const-string v5, "GPS \u2713"

    invoke-direct {v4, v5, v12}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    const-string v5, "gps_ride"

    const/16 v12, 0x36

    invoke-static {v2, v5, v7, v12}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v12, v7, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    invoke-static {v5, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v7}, Lr0/q;->e0()V

    move-object/from16 v22, v2

    iget-boolean v2, v7, Lr0/q;->S:Z

    if-eqz v2, :cond_5

    invoke-virtual {v7, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v10, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v13, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12, v7, v8, v7, v6}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v15, v5, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v1, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Lm1/p;

    iget-wide v4, v2, Lm1/p;->a:J

    move-object/from16 v23, v3

    move-wide v2, v4

    sget-wide v4, Lm1/p;->c:J

    const/16 v12, 0x4e

    int-to-float v12, v12

    move-object v13, v6

    new-instance v6, Lb3/f;

    invoke-direct {v6, v12}, Lb3/f;-><init>(F)V

    move-object v12, v8

    const/16 v8, 0xd80

    move-object/from16 v27, v9

    const/4 v9, 0x0

    move-object/from16 v28, v22

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    invoke-static/range {v25 .. v26}, Lm1/v;->d(J)J

    move-result-wide v2

    const/16 v1, 0x38

    int-to-float v1, v1

    new-instance v6, Lb3/f;

    invoke-direct {v6, v1}, Lb3/f;-><init>(F)V

    const/16 v8, 0xdb6

    move/from16 v22, v1

    const-string v1, "\ud83d\udd0a"

    move-object/from16 v25, v10

    move/from16 v10, v22

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const-wide v1, 0xff455a64L

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v6, Lb3/f;

    invoke-direct {v6, v10}, Lb3/f;-><init>(F)V

    const-string v1, "\ud83e\udded"

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const-wide v1, 0xffe7e0ecL

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v2

    const-wide v4, 0xff1c1b1fL

    invoke-static {v4, v5}, Lm1/v;->d(J)J

    move-result-wide v4

    const/16 v1, 0x30

    int-to-float v1, v1

    new-instance v6, Lb3/f;

    invoke-direct {v6, v1}, Lb3/f;-><init>(F)V

    const-string v1, "3D"

    invoke-static/range {v1 .. v9}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    iget-object v2, v0, Lnd/h;->e:Ljava/lang/String;

    if-nez v2, :cond_6

    const v2, 0x72395805

    invoke-virtual {v7, v2}, Lr0/q;->b0(I)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lr0/q;->q(Z)V

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-object/from16 v0, v21

    move-object/from16 v30, v23

    move-object/from16 v29, v25

    move-object/from16 v18, v15

    move-object v15, v11

    move-object v11, v7

    goto :goto_6

    :cond_6
    const v3, 0x72395806    # 3.671113E30f

    invoke-virtual {v7, v3}, Lr0/q;->b0(I)V

    const-wide v3, 0xe6263238L

    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    const/16 v5, 0xe

    int-to-float v5, v5

    invoke-static {v5}, La0/e;->a(F)La0/d;

    move-result-object v5

    sget-object v6, Lf1/c;->p:Lf1/j;

    invoke-virtual {v11, v6}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v6

    const/16 v8, 0x18

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v6, v8, v9, v10}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v6

    new-instance v8, Lnd/e;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v9}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v2, 0x5fd6e154

    invoke-static {v2, v8, v7}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v10

    move-object v2, v12

    const v12, 0xc00180

    move-object v8, v13

    const/16 v13, 0x78

    move/from16 v16, v1

    move-object v9, v2

    move-object v2, v5

    move-object v1, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v22, v9

    const/4 v9, 0x0

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-object/from16 v32, v20

    move-object/from16 v0, v21

    move-object/from16 v31, v22

    move-object/from16 v30, v23

    move-object/from16 v29, v25

    move-object/from16 v18, v15

    move-object v15, v11

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lr0/q;->q(Z)V

    :goto_6
    sget-object v1, Lf1/c;->s:Lf1/j;

    invoke-virtual {v15, v1}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v8, 0x2

    move/from16 v6, v24

    move/from16 v7, v24

    move-object v3, v1

    move/from16 v4, v24

    invoke-static/range {v3 .. v8}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v1

    invoke-static {v14, v0, v11, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v2, v11, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v1, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v4, v11, Lr0/q;->S:Z

    if-eqz v4, :cond_7

    move-object/from16 v4, v27

    invoke-virtual {v11, v4}, Lr0/q;->l(Li9/a;)V

    :goto_7
    move-object/from16 v4, v29

    goto :goto_8

    :cond_7
    invoke-virtual {v11}, Lr0/q;->o0()V

    goto :goto_7

    :goto_8
    invoke-static {v4, v0, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v12, v30

    invoke-static {v12, v3, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    invoke-static {v2, v11, v12, v11, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_8

    new-instance v0, Ln/p1;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ln/p1;-><init>(I)V

    invoke-virtual {v11, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v2, v0

    check-cast v2, Li9/c;

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    new-instance v0, Ln/k1;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ln/k1;-><init>(I)V

    invoke-virtual {v11, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v3, v0

    check-cast v3, Li9/a;

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    new-instance v0, Ln/k1;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ln/k1;-><init>(I)V

    invoke-virtual {v11, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    move-object v4, v0

    check-cast v4, Li9/a;

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    new-instance v0, Ln/k1;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ln/k1;-><init>(I)V

    invoke-virtual {v11, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    move-object v7, v0

    check-cast v7, Li9/a;

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    new-instance v0, Ln/k1;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ln/k1;-><init>(I)V

    invoke-virtual {v11, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    move-object v8, v0

    check-cast v8, Li9/a;

    move-object/from16 v5, v28

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v9

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_d

    new-instance v0, Ln/p1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln/p1;-><init>(I)V

    invoke-virtual {v11, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    move-object v12, v0

    check-cast v12, Li9/c;

    const/16 v17, 0x30

    const/16 v18, 0x3600

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, v16

    const v16, 0x6db6db0

    move-object/from16 v15, p1

    move/from16 v0, p2

    invoke-static/range {v1 .. v18}, Lod/e4;->j(Lad/a0;Li9/c;Li9/a;Li9/a;FZLi9/a;Li9/a;Lf1/r;ZZLi9/c;Ljava/lang/String;ZLr0/q;III)V

    move-object v7, v15

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_e
    move/from16 v0, p2

    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_9
    invoke-virtual {v7}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Lb0/x;

    const/16 v3, 0xe

    move-object/from16 v4, p0

    invoke-direct {v2, v0, v3, v4}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v2, v1, Lr0/n1;->d:Li9/e;

    :cond_f
    return-void
.end method

.method public static final j(ZLr0/q;I)V
    .locals 14

    move-object v10, p1

    move/from16 v13, p2

    const v0, -0x39538416

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->h(Z)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v13

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v2, v0, Lo0/u0;->n:J

    sget-object v0, Lu/b1;->c:Lu/v;

    new-instance v1, Lnd/o;

    const/4 v4, 0x0

    invoke-direct {v1, v4, p0}, Lnd/o;-><init>(IZ)V

    const v4, -0x164c5d91

    invoke-static {v4, v1, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc00006

    const/16 v12, 0x7a

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lnd/o;

    const/4 v2, 0x1

    invoke-direct {v1, v13, v2, p0}, Lnd/o;-><init>(IIZ)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final k(Ll1/c;Lr0/q;I)V
    .locals 12

    const v0, 0x3a0c2695

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p1, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/c;

    const/4 v6, 0x6

    int-to-float v6, v6

    invoke-interface {v3, v6}, Lb3/c;->V(F)F

    move-result v3

    invoke-virtual {p1, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb3/c;

    const/16 v7, 0xe

    int-to-float v8, v7

    invoke-interface {v6, v8}, Lb3/c;->V(F)F

    move-result v6

    invoke-virtual {p1, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/c;

    const/4 v8, 0x3

    int-to-float v8, v8

    invoke-interface {v1, v8}, Lb3/c;->V(F)F

    move-result v1

    sget-object v8, Lu/b1;->c:Lu/v;

    const/4 v9, 0x0

    const v10, 0x6ffff

    const/4 v11, 0x0

    invoke-static {v8, v11, v11, v9, v10}, Lm1/v;->q(Lf1/r;FFLm1/h0;I)Lf1/r;

    move-result-object v8

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lr0/m;->a:Lr0/e;

    if-ne v9, v10, :cond_2

    sget-object v9, Lnd/f;->c:Lnd/f;

    invoke-virtual {p1, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v11, Lt8/z;->a:Lt8/z;

    invoke-static {v8, v11, v9}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v8

    and-int/2addr v0, v7

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-virtual {p1, v3}, Lr0/q;->d(F)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {p1, v6}, Lr0/q;->d(F)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Lr0/q;->d(F)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_4

    if-ne v2, v10, :cond_5

    :cond_4
    new-instance v2, Lnd/q;

    invoke-direct {v2, p0, v3, v6, v1}, Lnd/q;-><init>(Ll1/c;FFF)V

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Li9/c;

    invoke-static {v4, v8, v2, p1}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lb0/x;

    const/16 v1, 0xf

    invoke-direct {v0, p2, v1, p0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final l(IILi9/a;Li9/a;Lr0/q;I)V
    .locals 18

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v15, p4

    const v0, 0x2d3f9b87

    invoke-virtual {v15, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v15, v1}, Lr0/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v15, v2}, Lr0/q;->e(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v15, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x493

    const/16 v6, 0x492

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    move v5, v7

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    and-int/2addr v0, v7

    invoke-virtual {v15, v0, v5}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v7, v0, Lo0/u0;->p:J

    const/16 v0, 0x12

    int-to-float v0, v0

    invoke-static {v0}, La0/e;->a(F)La0/d;

    move-result-object v6

    const/16 v0, 0x8

    int-to-float v12, v0

    new-instance v0, Lnd/f0;

    invoke-direct {v0, v1, v2, v3, v4}, Lnd/f0;-><init>(IILi9/a;Li9/a;)V

    const v5, -0x7e84e7f4

    invoke-static {v5, v0, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const/high16 v16, 0xc30000

    const/16 v17, 0x59

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v17}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    :goto_5
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v0, Lnd/f0;

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lnd/f0;-><init>(IILi9/a;Li9/a;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final m(Lnd/i0;IIZLi9/a;Li9/a;Li9/a;Li9/a;Lr0/q;I)V
    .locals 15

    move-object/from16 v10, p8

    const v0, -0x2b1c2789

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    move/from16 v3, p1

    invoke-virtual {v10, v3}, Lr0/q;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move/from16 v4, p2

    invoke-virtual {v10, v4}, Lr0/q;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move/from16 v6, p3

    invoke-virtual {v10, v6}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v7, p5

    invoke-virtual {v10, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v1, 0x10000

    :goto_4
    or-int/2addr v0, v1

    move-object/from16 v8, p6

    invoke-virtual {v10, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v1, 0x80000

    :goto_5
    or-int/2addr v0, v1

    move-object/from16 v9, p7

    invoke-virtual {v10, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v1, 0x400000

    :goto_6
    or-int/2addr v0, v1

    const v1, 0x492493

    and-int/2addr v1, v0

    const v2, 0x492492

    const/4 v5, 0x1

    if-eq v1, v2, :cond_7

    move v1, v5

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    and-int/2addr v0, v5

    invoke-virtual {v10, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v11, v0, Lo0/u0;->p:J

    const/16 v0, 0x12

    int-to-float v0, v0

    invoke-static {v0}, La0/e;->a(F)La0/d;

    move-result-object v0

    const/16 v1, 0x8

    int-to-float v13, v1

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v14

    new-instance v1, Lnd/r;

    move-object v2, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v2

    move-object v2, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Lnd/r;-><init>(Lnd/i0;IILi9/a;ZLi9/a;Li9/a;Li9/a;)V

    const v2, -0x52aec4ee

    invoke-static {v2, v1, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    move-wide v2, v11

    const v11, 0xc30006

    const/16 v12, 0x58

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move v7, v13

    move-object v0, v14

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_8

    :cond_8
    invoke-virtual/range {p8 .. p8}, Lr0/q;->W()V

    :goto_8
    invoke-virtual/range {p8 .. p8}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lnd/r;

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lnd/r;-><init>(Lnd/i0;IIZLi9/a;Li9/a;Li9/a;Li9/a;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final n(Li9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 17

    move-object/from16 v2, p1

    move-object/from16 v12, p3

    const-string v0, "onFinish"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSkip"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4a329544    # 2925905.0f

    invoke-virtual {v12, v0}, Lr0/q;->c0(I)Lr0/q;

    move/from16 v13, p4

    or-int/lit16 v0, v13, 0x180

    and-int/lit16 v3, v0, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    and-int/2addr v0, v5

    invoke-virtual {v12, v0, v3}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lnd/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v3, v4, :cond_1

    new-instance v3, Lr0/b1;

    invoke-direct {v3, v6}, Lr0/b1;-><init>(I)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    move-object v5, v3

    check-cast v5, Lr0/b1;

    invoke-virtual {v5}, Lr0/b1;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnd/i0;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    new-instance v7, Lnd/j0;

    invoke-direct {v7}, Lnd/j0;-><init>()V

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v9, v7

    check-cast v9, Lnd/j0;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_3

    new-instance v7, Lr0/a1;

    const/high16 v8, 0x43960000    # 300.0f

    invoke-direct {v7, v8}, Lr0/a1;-><init>(F)V

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    move-object v8, v7

    check-cast v8, Lr0/a1;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v7

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v11, v7

    check-cast v11, Lr0/u0;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_5

    new-instance v7, Ll1/b;

    const-wide/16 v14, 0x0

    invoke-direct {v7, v14, v15}, Ll1/b;-><init>(J)V

    invoke-static {v7}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v7

    invoke-virtual {v12, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lr0/u0;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v10

    invoke-virtual {v12, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v10, Lr0/u0;

    invoke-virtual {v12, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_7

    if-ne v15, v4, :cond_8

    :cond_7
    new-instance v15, Lb0/o;

    const/16 v14, 0xa

    invoke-direct {v15, v0, v11, v5, v14}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v15, Li9/c;

    invoke-virtual {v12, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v14, :cond_9

    if-ne v6, v4, :cond_a

    :cond_9
    new-instance v6, Lb0/c3;

    const/4 v14, 0x2

    invoke-direct {v6, v15, v2, v5, v14}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Li9/a;

    const/4 v14, 0x0

    invoke-static {v14, v6, v12, v14}, Lwa/h;->a(ZLi9/a;Lr0/q;I)V

    invoke-virtual {v5}, Lr0/b1;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 p2, v0

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_b

    if-ne v0, v4, :cond_c

    :cond_b
    new-instance v0, Lb0/m2;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v11, v8, v4}, Lb0/m2;-><init>(Lnd/i0;Lr0/u0;Lr0/a1;Ly8/c;)V

    invoke-virtual {v12, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v0, Li9/e;

    invoke-static {v6, v14, v0, v12}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    sget-object v0, Lnd/k0;->a:Lr0/a0;

    invoke-virtual {v0, v9}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v14

    new-instance v0, Lnd/u;

    move-object v4, v1

    move-object v1, v3

    move-object v6, v7

    move-object v7, v10

    move-object v3, v15

    move-object v10, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v11}, Lnd/u;-><init>(Lnd/i0;Ljava/util/ArrayList;Li9/c;Li9/a;Lr0/b1;Lr0/u0;Lr0/u0;Lr0/a1;Lnd/j0;Li9/a;Lr0/u0;)V

    const v1, 0x52ad1a04

    invoke-static {v1, v0, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v14, v0, v12, v1}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    sget-object v0, Lf1/o;->a:Lf1/o;

    move-object v3, v0

    goto :goto_1

    :cond_d
    invoke-virtual {v12}, Lr0/q;->W()V

    move-object/from16 v3, p2

    :goto_1
    invoke-virtual {v12}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v0, Lb0/k0;

    const/4 v5, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/r;II)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method
