.class public abstract Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/n;

.field public static final b:Lu/n;

.field public static final c:Lu/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lu/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu/n;-><init>(I)V

    sput-object v0, Lu/b;->a:Lu/n;

    new-instance v0, Lu/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu/n;-><init>(I)V

    sput-object v0, Lu/b;->b:Lu/n;

    new-instance v0, Lu/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu/b;->c:Lu/x;

    return-void
.end method

.method public static final a(Lf1/r;Lf1/j;Lz0/d;Lr0/q;I)V
    .locals 6

    const v0, 0x16a877ea

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit16 v0, p4, 0x180

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v0

    invoke-virtual {p3, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Lg0/k;

    const/16 v1, 0x18

    invoke-direct {v2, v1, v0, p2}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Li9/e;

    const/4 v0, 0x6

    invoke-static {p0, v2, p3, v0}, Lc2/x;->b(Lf1/r;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, Lb0/k0;

    const/16 v5, 0xc

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lt8/e;II)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static b(FI)Lu/s0;
    .locals 1

    and-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    int-to-float p0, v0

    :cond_0
    int-to-float p1, v0

    new-instance v0, Lu/s0;

    invoke-direct {v0, p0, p1, p0, p1}, Lu/s0;-><init>(FFFF)V

    return-object v0
.end method

.method public static final c(FFFF)Lu/s0;
    .locals 1

    new-instance v0, Lu/s0;

    invoke-direct {v0, p0, p1, p2, p3}, Lu/s0;-><init>(FFFF)V

    return-object v0
.end method

.method public static d(F)Lu/s0;
    .locals 4

    const/4 v0, 0x0

    int-to-float v1, v0

    int-to-float v2, v0

    int-to-float v0, v0

    new-instance v3, Lu/s0;

    invoke-direct {v3, v1, v2, v0, p0}, Lu/s0;-><init>(FFFF)V

    return-object v3
.end method

.method public static final e(Lf1/r;Lr0/q;)V
    .locals 5

    sget-object v0, Lu/k;->c:Lu/k;

    iget-wide v1, p1, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-static {p0, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    sget-object v3, Le2/h;->b:Le2/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Le2/g;->b:Le2/f;

    iget-object v4, p1, Lr0/q;->a:Le2/f2;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v4, p1, Lr0/q;->S:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lr0/q;->l(Li9/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_0
    sget-object v3, Le2/g;->f:Le2/e;

    invoke-static {v3, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {p1, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Le2/g;->g:Le2/e;

    invoke-static {p1, p0, v0}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lr0/q;->q(Z)V

    return-void
.end method

.method public static final f(Lu/s0;Lb3/m;)F
    .locals 1

    sget-object v0, Lb3/m;->l:Lb3/m;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lu/s0;->b(Lb3/m;)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lu/s0;->a(Lb3/m;)F

    move-result p0

    return p0
.end method

.method public static final g(Lu/s0;Lb3/m;)F
    .locals 1

    sget-object v0, Lb3/m;->l:Lb3/m;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lu/s0;->a(Lb3/m;)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lu/s0;->b(Lb3/m;)F

    move-result p0

    return p0
.end method

.method public static final h(Lc2/q0;)Lu/v0;
    .locals 1

    invoke-interface {p0}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lu/v0;

    if-eqz v0, :cond_0

    check-cast p0, Lu/v0;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final i(Lu/v0;)F
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Lu/v0;->a:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final j()Lf1/r;
    .locals 1

    sget-object v0, Lu/f0;->l:Lu/f0;

    new-instance v0, Lu/d0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static k(Lu/u0;IIIIILc2/t0;Ljava/util/List;[Lc2/f1;I)Lc2/s0;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move/from16 v5, p9

    int-to-long v6, v3

    new-array v8, v5, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v11, v5, :cond_5

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lc2/q0;

    invoke-static {v9}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lu/b;->i(Lu/v0;)F

    move-result v17

    cmpl-float v18, v17, v16

    if-lez v18, :cond_0

    add-float v15, v15, v17

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v18, v6

    move/from16 v20, v11

    goto :goto_5

    :cond_0
    sub-int v14, v1, v13

    aget-object v17, p8, v11

    move-wide/from16 v18, v6

    if-nez v17, :cond_3

    const v6, 0x7fffffff

    if-ne v1, v6, :cond_1

    move/from16 v20, v11

    move/from16 v21, v12

    const v6, 0x7fffffff

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    move/from16 v20, v11

    move/from16 v21, v12

    if-gez v14, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move v6, v14

    goto :goto_1

    :goto_2
    invoke-interface {v0, v7, v6, v7, v2}, Lu/u0;->a(IIZI)J

    move-result-wide v11

    invoke-interface {v9, v11, v12}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v17

    :goto_3
    move-object/from16 v6, v17

    goto :goto_4

    :cond_3
    move/from16 v20, v11

    move/from16 v21, v12

    goto :goto_3

    :goto_4
    invoke-interface {v0, v6}, Lu/u0;->c(Lc2/f1;)I

    move-result v7

    invoke-interface {v0, v6}, Lu/u0;->b(Lc2/f1;)I

    move-result v9

    aput v7, v8, v20

    sub-int v11, v14, v7

    if-gez v11, :cond_4

    const/4 v11, 0x0

    :cond_4
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/2addr v7, v14

    add-int/2addr v13, v7

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput-object v6, p8, v20

    move/from16 v12, v21

    :goto_5
    add-int/lit8 v11, v20, 0x1

    move-wide/from16 v6, v18

    goto :goto_0

    :cond_5
    move-wide/from16 v18, v6

    move/from16 v21, v12

    if-nez v21, :cond_6

    sub-int/2addr v13, v14

    const/4 v7, 0x0

    goto/16 :goto_f

    :cond_6
    const v6, 0x7fffffff

    if-eq v1, v6, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    move/from16 v3, p1

    :goto_6
    const/4 v6, 0x1

    add-int/lit8 v12, v21, -0x1

    int-to-long v11, v12

    mul-long v11, v11, v18

    sub-int/2addr v3, v13

    int-to-long v6, v3

    sub-long/2addr v6, v11

    const-wide/16 v18, 0x0

    cmp-long v3, v6, v18

    if-gez v3, :cond_8

    move-wide/from16 v6, v18

    :cond_8
    long-to-float v3, v6

    div-float/2addr v3, v15

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v5, :cond_9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc2/q0;

    invoke-static {v14}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v14

    invoke-static {v14}, Lu/b;->i(Lu/v0;)F

    move-result v14

    mul-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v6, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    move v14, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v9, v5, :cond_f

    aget-object v15, p8, v9

    if-nez v15, :cond_e

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc2/q0;

    invoke-static {v15}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v1

    invoke-static {v1}, Lu/b;->i(Lu/v0;)F

    move-result v17

    cmpl-float v18, v17, v16

    if-lez v18, :cond_a

    :goto_9
    move/from16 v18, v3

    goto :goto_a

    :cond_a
    const-string v18, "All weights <= 0 should have placeables"

    invoke-static/range {v18 .. v18}, Lv/a;->b(Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    move-result v3

    move-wide/from16 v19, v6

    int-to-long v6, v3

    sub-long v6, v19, v6

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v3, v17, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Lu/v0;->b:Z

    goto :goto_b

    :cond_b
    const/4 v1, 0x1

    :goto_b
    if-eqz v1, :cond_c

    const v1, 0x7fffffff

    if-eq v3, v1, :cond_d

    move v4, v3

    :goto_c
    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const v1, 0x7fffffff

    :cond_d
    const/4 v4, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v0, v4, v3, v1, v2}, Lu/u0;->a(IIZI)J

    move-result-wide v3

    invoke-interface {v15, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v3

    invoke-interface {v0, v3}, Lu/u0;->c(Lc2/f1;)I

    move-result v4

    invoke-interface {v0, v3}, Lu/u0;->b(Lc2/f1;)I

    move-result v15

    aput v4, v8, v9

    add-int/2addr v10, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput-object v3, p8, v9

    move v14, v4

    goto :goto_e

    :cond_e
    move/from16 v18, v3

    move-wide/from16 v19, v6

    const/4 v1, 0x1

    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    move-object/from16 v4, p7

    move/from16 v3, v18

    goto :goto_8

    :cond_f
    int-to-long v1, v10

    add-long/2addr v1, v11

    long-to-int v7, v1

    sub-int v1, p3, v13

    if-gez v7, :cond_10

    const/4 v7, 0x0

    :cond_10
    if-le v7, v1, :cond_11

    move v7, v1

    :cond_11
    move v10, v14

    :goto_f
    add-int/2addr v7, v13

    if-gez v7, :cond_12

    const/4 v7, 0x0

    :cond_12
    move/from16 v1, p1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v1, p2

    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v3, v5, [I

    move-object/from16 v2, p6

    invoke-interface {v0, v4, v2, v8, v3}, Lu/u0;->i(ILc2/t0;[I[I)V

    move v5, v1

    move-object/from16 v1, p8

    invoke-interface/range {v0 .. v5}, Lu/u0;->d([Lc2/f1;Lc2/t0;[III)Lc2/s0;

    move-result-object v0

    return-object v0
.end method

.method public static final l(Lf1/r;)Lf1/r;
    .locals 2

    new-instance v0, Lsc/t0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lsc/t0;-><init>(I)V

    new-instance v1, Lu/d1;

    invoke-direct {v1, v0}, Lu/d1;-><init>(Li9/c;)V

    invoke-interface {p0, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lu/n0;

    invoke-direct {v0, p1}, Lu/n0;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lf1/r;FF)Lf1/r;
    .locals 1

    new-instance v0, Lu/l0;

    invoke-direct {v0, p1, p2}, Lu/l0;-><init>(FF)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lf1/r;Lu/s0;)Lf1/r;
    .locals 1

    new-instance v0, Lu/r0;

    invoke-direct {v0, p1}, Lu/r0;-><init>(Lu/s0;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lf1/r;F)Lf1/r;
    .locals 1

    new-instance v0, Lu/p0;

    invoke-direct {v0, p1, p1, p1, p1}, Lu/p0;-><init>(FFFF)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Lf1/r;FF)Lf1/r;
    .locals 1

    new-instance v0, Lu/p0;

    invoke-direct {v0, p1, p2, p1, p2}, Lu/p0;-><init>(FFFF)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lf1/r;FFI)Lf1/r;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    int-to-float p2, v1

    :cond_1
    invoke-static {p0, p1, p2}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Lf1/r;FFFF)Lf1/r;
    .locals 1

    new-instance v0, Lu/p0;

    invoke-direct {v0, p1, p2, p3, p4}, Lu/p0;-><init>(FFFF)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lf1/r;FFFFI)Lf1/r;
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    int-to-float p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    int-to-float p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    int-to-float p4, v1

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lu/b;->s(Lf1/r;FFFF)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final u(Lf1/r;)Lf1/r;
    .locals 2

    new-instance v0, Lsc/t0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lsc/t0;-><init>(I)V

    new-instance v1, Lu/d1;

    invoke-direct {v1, v0}, Lu/d1;-><init>(Li9/c;)V

    invoke-interface {p0, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Ll3/b;)Lu/c0;
    .locals 4

    new-instance v0, Lu/c0;

    iget v1, p0, Ll3/b;->a:I

    iget v2, p0, Ll3/b;->b:I

    iget v3, p0, Ll3/b;->c:I

    iget p0, p0, Ll3/b;->d:I

    invoke-direct {v0, v1, v2, v3, p0}, Lu/c0;-><init>(IIII)V

    return-object v0
.end method

.method public static final w(Lf1/r;Lu/f0;)Lf1/r;
    .locals 1

    new-instance v0, Lu/h0;

    invoke-direct {v0, p1}, Lu/h0;-><init>(Lu/f0;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
