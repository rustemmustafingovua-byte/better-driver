.class public abstract Lf3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;

.field public static final b:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf3/c;->o:Lf3/c;

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lf3/k;->a:Lr0/a0;

    sget-object v0, Lf3/c;->n:Lf3/c;

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lf3/k;->b:Lr0/a0;

    return-void
.end method

.method public static final a(Lf3/z;Li9/a;Lf3/a0;Lz0/d;Lr0/q;II)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, -0x699ff8ef

    invoke-virtual {v9, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v9, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    :cond_2
    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x30

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    invoke-virtual {v9, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :goto_3
    and-int/lit16 v4, v10, 0x180

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-virtual {v9, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    goto :goto_5

    :cond_6
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v5, v10, 0xc00

    move-object/from16 v14, p3

    if-nez v5, :cond_8

    invoke-virtual {v9, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_6

    :cond_7
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v0, v5

    :cond_8
    move v15, v0

    and-int/lit16 v0, v15, 0x493

    const/16 v5, 0x492

    const/4 v7, 0x0

    if-eq v0, v5, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    move v0, v7

    :goto_7
    and-int/lit8 v5, v15, 0x1

    invoke-virtual {v9, v5, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v2, :cond_a

    const/16 v16, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v16, v3

    :goto_8
    sget-object v2, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {v9, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v3, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lb3/c;

    sget-object v3, Lf3/k;->a:Lr0/a0;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    sget-object v3, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v9, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lb3/m;

    invoke-static {v9}, Lr0/r;->B(Lr0/q;)Lr0/p;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v8

    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-ne v6, v11, :cond_b

    sget-object v6, Lf3/c;->p:Lf3/c;

    invoke-virtual {v9, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Li9/a;

    invoke-static {v0, v6, v9}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    sget-object v6, Lf3/k;->b:Lr0/a0;

    invoke-virtual {v9, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_c

    move-object v7, v0

    new-instance v0, Lf3/x;

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    move-object v12, v3

    move-object v13, v8

    move-object/from16 v3, v18

    const/4 v10, 0x0

    const/16 v20, 0x0

    move v8, v6

    move-object v6, v1

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v8}, Lf3/x;-><init>(Li9/a;Lf3/a0;Ljava/lang/String;Landroid/view/View;Lb3/c;Lf3/z;Ljava/util/UUID;Z)V

    move-object v1, v6

    new-instance v2, Lf3/j;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v13, v4}, Lf3/j;-><init>(Lf3/x;Lr0/u0;I)V

    new-instance v4, Lz0/d;

    const v5, -0x11bbdae4

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {v0, v12, v4}, Lf3/x;->i(Lr0/u;Li9/e;)V

    invoke-virtual {v9, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v7, v0

    goto :goto_9

    :cond_c
    move-object v0, v7

    move-object/from16 v3, v18

    const/4 v10, 0x0

    const/16 v20, 0x0

    :goto_9
    check-cast v7, Lf3/x;

    invoke-virtual {v9, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v2, v15, 0x70

    const/16 v4, 0x20

    if-ne v2, v4, :cond_d

    const/4 v6, 0x1

    goto :goto_a

    :cond_d
    move/from16 v6, v20

    :goto_a
    or-int/2addr v0, v6

    and-int/lit16 v4, v15, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    :cond_e
    move/from16 v6, v20

    :goto_b
    or-int/2addr v0, v6

    invoke-virtual {v9, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v9, v5}, Lr0/q;->e(I)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_10

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    move v0, v15

    move-object v15, v7

    goto :goto_d

    :cond_10
    :goto_c
    new-instance v14, Lf3/e;

    move-object/from16 v17, p2

    move-object/from16 v18, v3

    move v0, v15

    move-object v15, v7

    invoke-direct/range {v14 .. v19}, Lf3/e;-><init>(Lf3/x;Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V

    invoke-virtual {v9, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v5, v14

    :goto_d
    check-cast v5, Li9/c;

    invoke-static {v15, v5, v9}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v9, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x20

    if-ne v2, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_e

    :cond_11
    move/from16 v6, v20

    :goto_e
    or-int v2, v5, v6

    const/16 v5, 0x100

    if-ne v4, v5, :cond_12

    const/4 v6, 0x1

    goto :goto_f

    :cond_12
    move/from16 v6, v20

    :goto_f
    or-int/2addr v2, v6

    invoke-virtual {v9, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v9, v4}, Lr0/q;->e(I)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_14

    if-ne v4, v11, :cond_13

    goto :goto_10

    :cond_13
    move-object/from16 v3, v19

    goto :goto_11

    :cond_14
    :goto_10
    new-instance v14, Lf3/f;

    move-object/from16 v17, p2

    move-object/from16 v18, v3

    invoke-direct/range {v14 .. v19}, Lf3/f;-><init>(Lf3/x;Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v14

    :goto_11
    check-cast v4, Li9/a;

    invoke-static {v4, v9}, Lr0/r;->j(Li9/a;Lr0/q;)V

    invoke-virtual {v9, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v0, v0, 0xe

    const/4 v4, 0x4

    if-ne v0, v4, :cond_15

    const/4 v6, 0x1

    goto :goto_12

    :cond_15
    move/from16 v6, v20

    :goto_12
    or-int v0, v2, v6

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_16

    if-ne v2, v11, :cond_17

    :cond_16
    new-instance v2, Lc5/f;

    const/16 v0, 0xa

    invoke-direct {v2, v0, v15, v1}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    check-cast v2, Li9/c;

    invoke-static {v1, v2, v9}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v9, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_18

    if-ne v2, v11, :cond_19

    :cond_18
    new-instance v2, Landroidx/lifecycle/i0;

    const/16 v0, 0x8

    invoke-direct {v2, v15, v10, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    check-cast v2, Li9/e;

    invoke-static {v2, v15, v9}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v9, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1a

    if-ne v2, v11, :cond_1b

    :cond_1a
    new-instance v2, Lf3/h;

    const/4 v0, 0x0

    invoke-direct {v2, v15, v0}, Lf3/h;-><init>(Lf3/x;I)V

    invoke-virtual {v9, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    check-cast v2, Li9/c;

    sget-object v0, Lf1/o;->a:Lf1/o;

    invoke-static {v0, v2}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    invoke-virtual {v9, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v9, v4}, Lr0/q;->e(I)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_1c

    if-ne v4, v11, :cond_1d

    :cond_1c
    new-instance v4, Lb0/f3;

    const/4 v2, 0x1

    invoke-direct {v4, v2, v15, v3}, Lb0/f3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1d
    check-cast v4, Lc2/r0;

    iget-wide v2, v9, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v0, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v6, v9, Lr0/q;->S:Z

    if-eqz v6, :cond_1e

    invoke-virtual {v9, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_13

    :cond_1e
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_13
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v4, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v3, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v9, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v9, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v0, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lr0/q;->q(Z)V

    move-object/from16 v2, v16

    goto :goto_14

    :cond_1f
    invoke-virtual {v9}, Lr0/q;->W()V

    move-object v2, v3

    :goto_14
    invoke-virtual {v9}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_20

    new-instance v0, Lf3/i;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lf3/i;-><init>(Lf3/z;Li9/a;Lf3/a0;Lz0/d;II)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_20
    return-void
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
