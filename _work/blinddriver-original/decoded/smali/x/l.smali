.class public abstract Lx/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/graphhopper/isochrone/algorithm/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    sput-object v0, Lx/l;->a:Lcom/graphhopper/isochrone/algorithm/b;

    return-void
.end method

.method public static final a(Li9/a;Lf1/r;Lx/f0;Lw/j;Lr0/q;I)V
    .locals 6

    const v0, 0x3ee63d6d

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p4, p3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    and-int/2addr v0, v3

    invoke-virtual {p4, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p4}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v0

    new-instance v1, Lx/v;

    invoke-direct {v1, p2, p1, p3, v0}, Lx/v;-><init>(Lx/f0;Lf1/r;Lw/j;Lr0/u0;)V

    const v0, -0x379ecb6b

    invoke-static {v0, v1, p4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p4, v1}, Lx/l;->c(Lz0/d;Lr0/q;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p4

    if-eqz p4, :cond_6

    new-instance v0, Lx/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lx/w;-><init>(Li9/a;Lf1/r;Lx/f0;Lw/j;I)V

    iput-object v0, p4, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final b(Ljava/lang/Object;ILx/c0;Lz0/d;Lr0/q;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v5, p5

    const v6, 0x340208e3

    invoke-virtual {v0, v6}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Lr0/q;->e(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x493

    const/16 v8, 0x492

    if-eq v7, v8, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-nez v7, :cond_9

    if-ne v8, v9, :cond_a

    :cond_9
    new-instance v8, Lx/a0;

    invoke-direct {v8, v1, v3}, Lx/a0;-><init>(Ljava/lang/Object;Lx/c0;)V

    invoke-virtual {v0, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lx/a0;

    iput v2, v8, Lx/a0;->c:I

    iget-object v7, v8, Lx/a0;->g:Lr0/e1;

    sget-object v10, Lc2/d1;->a:Lr0/a0;

    invoke-virtual {v0, v10}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lx/a0;

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ld1/g;->e()Li9/c;

    move-result-object v14

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    invoke-static {v12}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v15

    :try_start_0
    invoke-virtual {v7}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lx/a0;

    if-eq v11, v13, :cond_e

    invoke-virtual {v7, v11}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget v7, v8, Lx/a0;->d:I

    if-lez v7, :cond_e

    iget-object v7, v8, Lx/a0;->e:Lx/a0;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lx/a0;->b()V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_c
    :goto_7
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lx/a0;->a()Lx/a0;

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    iput-object v11, v8, Lx/a0;->e:Lx/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    invoke-static {v12, v15, v14}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_f

    if-ne v11, v9, :cond_10

    :cond_f
    new-instance v11, Lr0/o1;

    const/16 v7, 0xb

    invoke-direct {v11, v7, v8}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v11, Li9/c;

    invoke-static {v8, v11, v0}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v10, v8}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v7

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x70

    const/16 v8, 0x8

    or-int/2addr v6, v8

    invoke-static {v7, v4, v0, v6}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_a

    :goto_9
    invoke-static {v12, v15, v14}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_a
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lx/b0;

    invoke-direct/range {v0 .. v5}, Lx/b0;-><init>(Ljava/lang/Object;ILx/c0;Lz0/d;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_12
    return-void
.end method

.method public static final c(Lz0/d;Lr0/q;I)V
    .locals 10

    const v0, -0x2a4a252b

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lc1/h;->a:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/f;

    const v3, 0x753e26b5

    invoke-virtual {p1, v3}, Lr0/q;->b0(I)V

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-ne v4, v5, :cond_1

    new-instance v4, La1/b;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, La1/b;-><init>(I)V

    invoke-virtual {p1, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Li9/a;

    const/16 v6, 0x180

    sget-object v7, Lc1/d;->p:Lg5/c;

    invoke-static {v3, v7, v4, p1, v6}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc1/d;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc1/f;

    iput-object v4, v3, Lc1/d;->n:Lc1/f;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Lsc/u0;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, Lsc/u0;-><init>(I)V

    new-instance v7, Lp/o0;

    const/16 v8, 0x11

    invoke-direct {v7, v8, v1, v3}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lg5/c;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v6, v7}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2

    if-ne v7, v5, :cond_3

    :cond_2
    new-instance v7, Lr0/w0;

    const/4 v5, 0x7

    invoke-direct {v7, v5, v1, v3}, Lr0/w0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v7, Li9/a;

    invoke-static {v4, v8, v7, p1, v2}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/m0;

    invoke-virtual {v0, v1}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v0

    new-instance v2, Lg0/k;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, p0, v1}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v1, -0x189b31eb

    invoke-static {v1, v2, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, v2}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lo0/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lo0/d;-><init>(Lz0/d;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final d(Lw/g;Ljava/lang/Object;ILjava/lang/Object;Lr0/q;I)V
    .locals 6

    const v0, 0x55d242fd

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p4, p2}, Lr0/q;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p4, p3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    and-int/2addr v0, v3

    invoke-virtual {p4, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lc1/c;

    new-instance v1, Lw/f;

    invoke-direct {v1, p2, p3, p0}, Lw/f;-><init>(ILjava/lang/Object;Lw/g;)V

    const v2, 0x3a785bde

    invoke-static {v2, v1, p4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const/16 v2, 0x30

    invoke-interface {v0, p3, v1, p4, v2}, Lc1/c;->a(Ljava/lang/Object;Lz0/d;Lr0/q;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p4

    if-eqz p4, :cond_6

    new-instance v0, Lb0/a3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(Lw/g;Ljava/lang/Object;ILjava/lang/Object;I)V

    iput-object v0, p4, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final e(ILt0/b;)I
    .locals 5

    iget v0, p1, Lt0/b;->n:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget-object v3, p1, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v4, v3, v2

    check-cast v4, Lx/i;

    iget v4, v4, Lx/i;->a:I

    if-ne v4, p0, :cond_1

    goto :goto_1

    :cond_1
    if-ge v4, p0, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v3, v1

    check-cast v3, Lx/i;

    iget v3, v3, Lx/i;->a:I

    if-ge p0, v3, :cond_0

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static final f(ILjava/lang/Object;Lw/g;)I
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lw/g;->c()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lw/g;->c()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p2, p0}, Lw/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lw/g;->d:Ld1/c0;

    invoke-virtual {p2, p1}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    return p1

    :cond_2
    :goto_0
    return p0
.end method

.method public static final g(Lw/d;Lr/a;Lr/m1;)Lf1/r;
    .locals 1

    new-instance v0, Lx/k;

    invoke-direct {v0, p0, p1, p2}, Lx/k;-><init>(Lw/d;Lr/a;Lr/m1;)V

    return-object v0
.end method

.method public static final h(Lf1/r;Lp9/c;Lw/c;Lr/m1;Z)Lf1/r;
    .locals 1

    new-instance v0, Lx/i0;

    invoke-direct {v0, p1, p2, p3, p4}, Lx/i0;-><init>(Li9/a;Lw/c;Lr/m1;Z)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
