.class public final Lb0/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/e1;

.field public b:Lp2/g;

.field public final c:Ld1/v;


# direct methods
.method public constructor <init>(Lp2/g;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, v0, Lb0/e3;->a:Lr0/e1;

    new-instance v1, Lad/b2;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lad/b2;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp2/d;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lp2/d;-><init>(Lp2/g;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lp2/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp2/c;

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Lp2/c;->a(I)Lp2/e;

    move-result-object v8

    invoke-virtual {v1, v8}, Lad/b2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp2/e;

    new-instance v13, Lp2/c;

    iget-object v14, v12, Lp2/e;->a:Ljava/lang/Object;

    iget v15, v12, Lp2/e;->b:I

    iget v6, v12, Lp2/e;->c:I

    iget-object v12, v12, Lp2/e;->d:Ljava/lang/String;

    invoke-direct {v13, v12, v15, v6, v14}, Lp2/c;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v9, v3}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lp2/d;->e()Lp2/g;

    move-result-object v1

    iput-object v1, v0, Lb0/e3;->b:Lp2/g;

    new-instance v1, Ld1/v;

    invoke-direct {v1}, Ld1/v;-><init>()V

    iput-object v1, v0, Lb0/e3;->c:Ld1/v;

    return-void
.end method

.method public static c(Lp2/e;Lp2/j0;)Lp2/e;
    .locals 2

    iget-object p1, p1, Lp2/j0;->b:Lp2/n;

    iget v0, p1, Lp2/n;->f:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lp2/n;->c(IZ)I

    move-result p1

    iget v0, p0, Lp2/e;->b:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    iget v0, p0, Lp2/e;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0xb

    invoke-static {p0, v1, p1, v0}, Lp2/e;->a(Lp2/e;Lp2/b;II)Lp2/e;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lr0/q;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const v3, 0x44d294da

    invoke-virtual {v1, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    or-int/2addr v3, v2

    and-int/lit8 v6, v3, 0x3

    const/4 v8, 0x0

    if-eq v6, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    and-int/lit8 v9, v3, 0x1

    invoke-virtual {v1, v9, v6}, Lr0/q;->T(IZ)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Lf2/l1;->r:Lr0/s2;

    invoke-virtual {v1, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf2/y0;

    iget-object v9, v0, Lb0/e3;->b:Lp2/g;

    iget-object v10, v9, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lp2/g;->a(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_15

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp2/e;

    iget v13, v12, Lp2/e;->b:I

    iget-object v14, v12, Lp2/e;->a:Ljava/lang/Object;

    iget v15, v12, Lp2/e;->c:I

    const/16 v16, 0x4

    if-eq v13, v15, :cond_13

    const v13, 0x2b3dee17

    invoke-virtual {v1, v13}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-ne v13, v15, :cond_2

    new-instance v13, Ls/i;

    invoke-direct {v13}, Ls/i;-><init>()V

    invoke-virtual {v1, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v13, Ls/i;

    move/from16 v17, v5

    new-instance v5, Lb0/r0;

    const/16 v18, 0x1

    const/4 v7, 0x3

    invoke-direct {v5, v7, v0, v12}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lf1/o;->a:Lf1/o;

    invoke-static {v7, v5}, Lm1/v;->o(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v5

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_3

    new-instance v7, Lad/b2;

    const/16 v4, 0xe

    invoke-direct {v7, v4}, Lad/b2;-><init>(I)V

    invoke-virtual {v1, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v7, Li9/c;

    invoke-static {v5, v8, v7}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v4

    new-instance v5, Lb0/g3;

    new-instance v7, Lb0/b3;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0, v12}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v7}, Lb0/g3;-><init>(Lb0/b3;)V

    invoke-interface {v4, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v4

    invoke-static {v4, v13}, Lp/o;->o(Lf1/r;Ls/i;)Lf1/r;

    move-result-object v4

    sget-object v5, Ly1/r;->a:Ly1/q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ly1/t;->c:Ly1/a;

    invoke-static {v4, v5}, Ly1/t;->g(Lf1/r;Ly1/a;)Lf1/r;

    move-result-object v4

    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v1, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v1, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_4

    if-ne v7, v15, :cond_5

    :cond_4
    new-instance v7, Lb0/c3;

    const/4 v5, 0x0

    invoke-direct {v7, v0, v12, v6, v5}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Li9/a;

    invoke-static {v4, v13, v7}, Lp/o;->l(Lf1/r;Ls/i;Li9/a;)Lf1/r;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    check-cast v14, Lp2/m;

    invoke-virtual {v14}, Lp2/m;->a()Lp2/k0;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v5, v4, Lp2/k0;->a:Lp2/e0;

    if-nez v5, :cond_6

    iget-object v5, v4, Lp2/k0;->b:Lp2/e0;

    if-nez v5, :cond_6

    iget-object v5, v4, Lp2/k0;->c:Lp2/e0;

    if-nez v5, :cond_6

    iget-object v4, v4, Lp2/k0;->d:Lp2/e0;

    if-nez v4, :cond_6

    const v4, 0x2aaf473e

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_6
    const v4, 0x2b4a813f

    invoke-virtual {v1, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_7

    new-instance v4, Lb0/t1;

    invoke-direct {v4, v13}, Lb0/t1;-><init>(Ls/i;)V

    invoke-virtual {v1, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v4, Lb0/t1;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    if-ne v5, v15, :cond_8

    new-instance v5, Lad/w;

    const/4 v8, 0x4

    invoke-direct {v5, v4, v7, v8}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v1, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v5, Li9/e;

    sget-object v8, Lt8/z;->a:Lt8/z;

    invoke-static {v5, v8, v1}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v5, v4, Lb0/t1;->b:Lr0/b1;

    iget-object v8, v4, Lb0/t1;->b:Lr0/b1;

    invoke-virtual {v5}, Lr0/b1;->g()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    move/from16 v5, v18

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    move/from16 v5, v18

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_b

    move/from16 v5, v18

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual {v14}, Lp2/m;->a()Lp2/k0;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, v5, Lp2/k0;->a:Lp2/e0;

    move-object/from16 v22, v5

    goto :goto_6

    :cond_c
    move-object/from16 v22, v7

    :goto_6
    invoke-virtual {v14}, Lp2/m;->a()Lp2/k0;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, v5, Lp2/k0;->b:Lp2/e0;

    move-object/from16 v23, v5

    goto :goto_7

    :cond_d
    move-object/from16 v23, v7

    :goto_7
    invoke-virtual {v14}, Lp2/m;->a()Lp2/k0;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, v5, Lp2/k0;->c:Lp2/e0;

    move-object/from16 v24, v5

    goto :goto_8

    :cond_e
    move-object/from16 v24, v7

    :goto_8
    invoke-virtual {v14}, Lp2/m;->a()Lp2/k0;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v7, v5, Lp2/k0;->d:Lp2/e0;

    :cond_f
    move-object/from16 v25, v7

    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v1, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_10

    if-ne v8, v15, :cond_11

    :cond_10
    new-instance v8, Lb0/r0;

    const/4 v7, 0x4

    invoke-direct {v8, v0, v12, v4, v7}, Lb0/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Li9/c;

    shl-int/lit8 v4, v3, 0x6

    and-int/lit16 v4, v4, 0x380

    invoke-virtual {v0, v5, v8, v1, v4}, Lb0/e3;->b([Ljava/lang/Object;Li9/c;Lr0/q;I)V

    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v1, v5}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    const v4, 0x2aaf473e

    :goto_a
    invoke-virtual {v1, v4}, Lr0/q;->b0(I)V

    goto :goto_9

    :goto_b
    invoke-virtual {v1, v5}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_13
    move/from16 v17, v5

    move v5, v8

    const v4, 0x2aaf473e

    const/16 v18, 0x1

    invoke-virtual {v1, v4}, Lr0/q;->b0(I)V

    goto :goto_b

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v8, v5

    move/from16 v5, v17

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v1}, Lr0/q;->W()V

    :cond_15
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v3, Lb0/x;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4, v0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v3, v1, Lr0/n1;->d:Li9/e;

    :cond_16
    return-void
.end method

.method public final b([Ljava/lang/Object;Li9/c;Lr0/q;I)V
    .locals 7

    const v0, -0x7c28da43

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x30

    const/16 v1, 0x20

    if-nez v0, :cond_1

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit16 v2, p4, 0x180

    if-nez v2, :cond_3

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const v4, -0x155b52f2

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5, v2, v3}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    array-length v2, p1

    invoke-virtual {p3, v2}, Lr0/q;->e(I)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    or-int/2addr v0, v2

    array-length v2, p1

    move v4, v5

    :goto_4
    if-ge v4, v2, :cond_6

    aget-object v6, p1, v4

    invoke-virtual {p3, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_5

    :cond_5
    move v6, v5

    :goto_5
    or-int/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p3, v5}, Lr0/q;->q(Z)V

    and-int/lit8 v2, v0, 0xe

    if-nez v2, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    and-int/lit16 v2, v0, 0x93

    const/16 v3, 0x92

    const/4 v4, 0x1

    if-eq v2, v3, :cond_8

    move v2, v4

    goto :goto_6

    :cond_8
    move v2, v5

    :goto_6
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lc5/o;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lc5/o;-><init>(I)V

    iget-object v3, v2, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lc5/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v1, :cond_9

    move v5, v4

    :cond_9
    or-int v0, v3, v5

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_b

    :cond_a
    new-instance v1, Lb0/s;

    const/4 v0, 0x1

    invoke-direct {v1, p0, p2, v0}, Lb0/s;-><init>(Lb0/e3;Li9/c;I)V

    invoke-virtual {p3, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Li9/c;

    invoke-static {v2, v1, p3}, Lr0/r;->e([Ljava/lang/Object;Li9/c;Lr0/q;)V

    goto :goto_7

    :cond_c
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_d

    new-instance v0, Lb0/a3;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p4

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method
