.class public abstract Le3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld7/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld7/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    sput-object v0, Le3/l;->a:Ld7/g;

    return-void
.end method

.method public static final a(ILf1/r;Li9/c;Lr0/q;)V
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    sget-object v10, Le3/c;->p:Le3/c;

    const v2, -0xabaf393

    invoke-virtual {v9, v2}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v9, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

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

    if-nez v3, :cond_3

    invoke-virtual {v9, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    or-int/lit16 v2, v2, 0x180

    and-int/lit16 v3, v0, 0xc00

    if-nez v3, :cond_5

    invoke-virtual {v9, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x800

    goto :goto_3

    :cond_4
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v2, v3

    :cond_5
    and-int/lit16 v3, v0, 0x6000

    if-nez v3, :cond_7

    invoke-virtual {v9, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x4000

    goto :goto_4

    :cond_6
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v2, v3

    :cond_7
    and-int/lit16 v3, v2, 0x2493

    const/16 v5, 0x2492

    if-eq v3, v5, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v5, v2, 0x1

    invoke-virtual {v9, v5, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-wide v5, v9, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    sget-object v3, Le3/r;->a:Le3/r;

    invoke-interface {v1, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    sget-object v5, Lk1/a0;->a:Lk1/a0;

    invoke-interface {v3, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    sget-object v5, Le3/x;->a:Le3/x;

    invoke-interface {v3, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    sget-object v5, Le3/u;->a:Le3/u;

    invoke-interface {v3, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    invoke-static {v3, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v14

    sget-object v3, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lb3/c;

    sget-object v3, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/m;

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    sget-object v6, Lb4/h;->a:Lr0/m1;

    invoke-virtual {v9, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/v;

    sget-object v7, Lo4/a;->a:Lr0/m1;

    invoke-virtual {v9, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln4/g;

    const v8, 0x4e5ddecf    # 9.305917E8f

    invoke-virtual {v9, v8}, Lr0/q;->b0(I)V

    and-int/lit8 v2, v2, 0xe

    iget-wide v11, v9, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    sget-object v11, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v9, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    move-object v12, v5

    invoke-static {v9}, Lr0/r;->B(Lr0/q;)Lr0/p;

    move-result-object v5

    move/from16 v16, v2

    sget-object v2, Lc1/h;->a:Lr0/s2;

    invoke-virtual {v9, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/f;

    move-object/from16 v17, v3

    sget-object v3, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v9, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v18

    and-int/lit8 v19, v16, 0xe

    move-object/from16 v20, v6

    xor-int/lit8 v6, v19, 0x6

    move-object/from16 v19, v7

    const/4 v7, 0x4

    if-le v6, v7, :cond_9

    invoke-virtual {v9, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    and-int/lit8 v6, v16, 0x6

    if-ne v6, v7, :cond_b

    :cond_a
    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    or-int v6, v18, v6

    invoke-virtual {v9, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v9, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v9, v8}, Lr0/q;->e(I)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v9, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_c

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v7, v6, :cond_d

    :cond_c
    move-object v6, v2

    goto :goto_7

    :cond_d
    move/from16 v16, v13

    move-object/from16 v11, v17

    move-object/from16 v0, v19

    move-object/from16 v13, v20

    goto :goto_8

    :goto_7
    new-instance v2, Le3/o;

    move v7, v8

    move/from16 v16, v13

    move-object/from16 v0, v19

    move-object/from16 v13, v20

    move-object v8, v3

    move-object v3, v11

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v8}, Le3/o;-><init>(Landroid/content/Context;Li9/c;Lr0/p;Lc1/f;ILandroid/view/View;)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v7, v2

    :goto_8
    check-cast v7, Li9/a;

    const/16 v2, 0x7d

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v9, v2, v5, v3, v3}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v5, v9, Lr0/q;->r:Z

    iget-boolean v2, v9, Lr0/q;->S:Z

    if-eqz v2, :cond_e

    invoke-virtual {v9, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_9
    sget-object v2, Le2/h;->b:Le2/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v12, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le3/n;->o:Le3/n;

    invoke-static {v2, v14, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le3/n;->p:Le3/n;

    invoke-static {v2, v15, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le3/n;->q:Le3/n;

    invoke-static {v2, v13, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le3/n;->r:Le3/n;

    invoke-static {v2, v0, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le3/n;->s:Le3/n;

    invoke-static {v0, v11, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v9, v0, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le3/n;->m:Le3/n;

    invoke-static {v0, v10, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le3/n;->n:Le3/n;

    invoke-static {v0, v10, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Lr0/q;->q(Z)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_f
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_a
    invoke-virtual {v9}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v2, Lc2/m1;

    move/from16 v3, p0

    invoke-direct {v2, v4, v1, v3}, Lc2/m1;-><init>(Li9/c;Lf1/r;I)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final b(Li9/c;Lf1/r;Li9/c;Lr0/q;I)V
    .locals 4

    sget-object v0, Le3/c;->p:Le3/c;

    const v1, -0x6a521d79

    invoke-virtual {p3, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    or-int/lit16 v1, v1, 0x180

    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    and-int/lit8 p2, v1, 0xe

    or-int/lit16 p2, p2, 0x6c30

    invoke-static {p2, p1, p0, p3}, Le3/l;->a(ILf1/r;Li9/c;Lr0/q;)V

    move-object p2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Le3/m;

    invoke-direct {v0, p0, p1, p2, p4}, Le3/m;-><init>(Li9/c;Lf1/r;Li9/c;I)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final c(Lf1/q;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->A:Le3/z;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le3/k;->getInteropView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not fetch interop view"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Le3/z;Le2/g0;)V
    .locals 4

    iget-object p1, p1, Le2/g0;->R:Le2/c1;

    iget-object p1, p1, Le2/c1;->c:Le2/s;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Le2/h1;->R(J)J

    move-result-wide v0

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static final e(Le2/g0;)Le3/z;
    .locals 0

    iget-object p0, p0, Le2/g0;->A:Le3/z;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method
