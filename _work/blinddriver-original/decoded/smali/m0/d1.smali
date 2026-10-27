.class public abstract Lm0/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1/c;

.field public static b:Lm1/e;

.field public static c:Lm1/a;

.field public static d:Lo1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll1/c;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Ll1/c;-><init>(FFFF)V

    sput-object v0, Lm0/d1;->a:Ll1/c;

    return-void
.end method

.method public static final A(Lc2/u;)Ll1/c;
    .locals 11

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc2/x;->f(Lc2/u;Z)Ll1/c;

    move-result-object v0

    invoke-virtual {v0}, Ll1/c;->e()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lc2/u;->E(J)J

    move-result-wide v1

    iget v3, v0, Ll1/c;->c:F

    iget v0, v0, Ll1/c;->d:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v3, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-interface {p0, v3, v4}, Lc2/u;->E(J)J

    move-result-wide v3

    new-instance p0, Ll1/c;

    shr-long v5, v1, v0

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    and-long/2addr v1, v7

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v9, v3, v0

    long-to-int v0, v9

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long v2, v3, v7

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-direct {p0, v5, v1, v0, v2}, Ll1/c;-><init>(FFFF)V

    return-object p0
.end method

.method public static final a(Lm0/r;Lf1/e;Lz0/d;Lr0/q;I)V
    .locals 12

    move/from16 v1, p4

    const v0, -0x40fab302

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v1, 0x6

    const/4 v2, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, v1, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    and-int/lit8 v5, v1, 0x30

    const/16 v6, 0x20

    if-nez v5, :cond_4

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v0, v5

    :cond_4
    and-int/lit16 v5, v1, 0x180

    if-nez v5, :cond_6

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_4

    :cond_5
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v0, v7

    :cond_6
    and-int/lit16 v7, v0, 0x93

    const/16 v8, 0x92

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v7, v8, :cond_7

    move v7, v11

    goto :goto_5

    :cond_7
    move v7, v10

    :goto_5
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {p3, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_d

    and-int/lit8 v7, v0, 0x70

    if-ne v7, v6, :cond_8

    move v6, v11

    goto :goto_6

    :cond_8
    move v6, v10

    :goto_6
    and-int/lit8 v7, v0, 0xe

    if-eq v7, v2, :cond_a

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_9

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    move v11, v10

    :cond_a
    :goto_7
    or-int v2, v6, v11

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_b

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v6, v2, :cond_c

    :cond_b
    new-instance v6, Lm0/n;

    invoke-direct {v6, p1, p0}, Lm0/n;-><init>(Lf1/e;Lm0/r;)V

    invoke-virtual {p3, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lm0/n;

    new-instance v7, Lf3/a0;

    sget-object v2, Lf3/b0;->l:Lf3/b0;

    invoke-direct {v7, v10, v2, v10}, Lf3/a0;-><init>(ZLf3/b0;Z)V

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit16 v10, v0, 0x180

    const/4 v11, 0x2

    move-object v5, v6

    const/4 v6, 0x0

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v5 .. v11}, Lf3/k;->a(Lf3/z;Li9/a;Lf3/a0;Lz0/d;Lr0/q;II)V

    goto :goto_8

    :cond_d
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_8
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v0, Lb0/a3;

    const/4 v2, 0x7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public static final b(Lf1/r;Lm0/a0;Li9/c;Lz0/d;Lr0/q;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v5, p5

    const v3, -0x36b68b90    # -825159.0f

    invoke-virtual {v0, v3}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v3, v5, 0x6

    const/4 v6, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_4

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_3

    :cond_3
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v3, v7

    :cond_4
    and-int/lit16 v7, v3, 0x493

    const/16 v8, 0x492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_5

    move v7, v10

    goto :goto_4

    :cond_5
    move v7, v9

    :goto_4
    and-int/2addr v3, v10

    invoke-virtual {v0, v3, v7}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v7, v8, :cond_6

    new-instance v7, Lia/n;

    const/16 v11, 0x1b

    invoke-direct {v7, v11}, Lia/n;-><init>(I)V

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Li9/a;

    sget-object v11, Lm0/i1;->l:Lg5/c;

    const/16 v12, 0x180

    invoke-static {v3, v11, v7, v0, v12}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i1;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_7

    new-instance v7, Lm0/b1;

    invoke-direct {v7, v3}, Lm0/b1;-><init>(Lm0/i1;)V

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v7, Lm0/b1;

    sget-object v11, Lf2/l1;->f:Lr0/s2;

    invoke-virtual {v0, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf2/g1;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v8, :cond_8

    invoke-static {v0}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v12

    invoke-virtual {v0, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Lu9/t;

    sget-object v13, Lf2/l1;->l:Lr0/s2;

    invoke-virtual {v0, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt1/a;

    iput-object v13, v7, Lm0/b1;->e:Lt1/a;

    invoke-virtual {v0, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v0, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_9

    if-ne v14, v8, :cond_a

    :cond_9
    new-instance v14, Lb0/r0;

    const/16 v13, 0x9

    invoke-direct {v14, v13, v12, v11}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Li9/c;

    iput-object v14, v7, Lm0/b1;->f:Li9/c;

    sget-object v11, Lf2/l1;->q:Lr0/s2;

    invoke-virtual {v0, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf2/l2;

    new-instance v11, Lb0/r0;

    const/16 v13, 0xa

    move-object/from16 v14, p2

    invoke-direct {v11, v13, v7, v14}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v7, Lm0/b1;->d:Li9/c;

    invoke-virtual {v7, v2}, Lm0/b1;->l(Lm0/a0;)V

    const v11, -0x4e78104

    invoke-virtual {v0, v11}, Lr0/q;->b0(I)V

    sget-object v11, Lm0/y;->m:Lm0/y;

    const/4 v13, 0x0

    const/16 v15, 0x36

    invoke-static {v11, v13, v0, v15}, Lm0/w;->b(Lm0/y;Lw2/b;Lr0/q;I)Lm0/u;

    move-result-object v11

    iput-object v11, v7, Lm0/b1;->w:Lm0/u;

    iput-object v12, v7, Lm0/b1;->v:Lu9/t;

    invoke-virtual {v0, v9}, Lr0/q;->q(Z)V

    invoke-virtual {v7}, Lm0/b1;->h()Z

    new-instance v11, Lm0/f0;

    const/4 v12, 0x3

    invoke-direct {v11, v7, v12}, Lm0/f0;-><init>(Lm0/b1;I)V

    new-instance v15, Lb0/a1;

    invoke-direct {v15, v10, v7, v11}, Lb0/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v11, Lf1/o;->a:Lf1/o;

    sget-object v9, Lt8/z;->a:Lt8/z;

    invoke-static {v11, v9, v15}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v9

    new-instance v15, Lm0/i0;

    invoke-direct {v15, v7, v6}, Lm0/i0;-><init>(Lm0/b1;I)V

    invoke-static {v9, v15}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v6

    iget-object v9, v7, Lm0/b1;->h:Lk1/u;

    invoke-static {v6, v9}, Lk1/d;->j(Lf1/r;Lk1/u;)Lf1/r;

    move-result-object v6

    new-instance v9, Lm0/i0;

    const/4 v15, 0x5

    invoke-direct {v9, v7, v15}, Lm0/i0;-><init>(Lm0/b1;I)V

    invoke-static {v6, v9}, Lk1/d;->s(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v6

    invoke-static {v6, v10, v13}, Lp/o;->n(Lf1/r;ZLs/i;)Lf1/r;

    move-result-object v6

    new-instance v9, Lm0/i0;

    const/4 v13, 0x6

    invoke-direct {v9, v7, v13}, Lm0/i0;-><init>(Lm0/b1;I)V

    const v13, 0x845fed

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lb0/w0;

    invoke-direct {v15, v12, v9}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    invoke-static {v6, v13, v15}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v6

    new-instance v9, Lb0/g2;

    invoke-direct {v9, v10, v7}, Lb0/g2;-><init>(ILjava/lang/Object;)V

    invoke-static {v6, v9}, Lw1/c;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v6

    invoke-virtual {v7}, Lm0/b1;->e()Lb0/d1;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Lm0/b1;->g()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Lm0/b1;->f()Lm0/a0;

    move-result-object v9

    if-nez v9, :cond_b

    goto :goto_5

    :cond_b
    iget-object v10, v9, Lm0/a0;->a:Lm0/z;

    iget-object v9, v9, Lm0/a0;->b:Lm0/z;

    invoke-static {v10, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    :goto_5
    if-nez v10, :cond_c

    sget-object v9, Lp/i1;->a:Lm2/w;

    new-instance v9, Lb0/x2;

    const/4 v10, 0x5

    invoke-direct {v9, v10, v7}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    invoke-static {v11, v9}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v11

    :cond_c
    invoke-interface {v6, v11}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v6

    new-instance v9, Lb0/x;

    const/16 v10, 0xb

    invoke-direct {v9, v10, v7}, Lb0/x;-><init>(ILjava/lang/Object;)V

    invoke-static {v6, v9}, Lh0/h;->a(Lf1/r;Li9/e;)Lf1/r;

    move-result-object v6

    invoke-interface {v1, v6}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v6

    new-instance v9, Lm0/h0;

    invoke-direct {v9, v7, v3, v4}, Lm0/h0;-><init>(Lm0/b1;Lm0/i1;Lz0/d;)V

    const v3, -0x6b43299a

    invoke-static {v3, v9, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const/16 v9, 0x30

    invoke-static {v6, v3, v0, v9}, Lm0/d1;->f(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {v0, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_d

    if-ne v6, v8, :cond_e

    :cond_d
    new-instance v6, Lm0/i0;

    const/4 v3, 0x0

    invoke-direct {v6, v7, v3}, Lm0/i0;-><init>(Lm0/b1;I)V

    invoke-virtual {v0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Li9/c;

    invoke-static {v7, v6, v0}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    goto :goto_6

    :cond_f
    move-object/from16 v14, p2

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v0, Lb4/c;

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lb4/c;-><init>(Lf1/r;Lm0/a0;Li9/c;Lz0/d;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final c(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 8

    const v0, 0x742e8cdd

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v0, p3, 0x6

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    invoke-virtual {p2, p0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lm0/a0;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    new-instance v1, Lb0/y;

    const/4 v0, 0x7

    invoke-direct {v1, p0, v0}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v1

    check-cast v4, Li9/c;

    const/16 v7, 0xd86

    sget-object v2, Lf1/o;->a:Lf1/o;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lm0/d1;->b(Lf1/r;Lm0/a0;Li9/c;Lz0/d;Lr0/q;I)V

    move-object p0, v2

    goto :goto_1

    :cond_3
    move-object v5, p1

    move-object v6, p2

    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_1
    invoke-virtual {v6}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lm0/g0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v5, p3, v0}, Lm0/g0;-><init>(Lf1/r;Lz0/d;II)V

    iput-object p2, p1, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final d(Lm0/r;ZLa3/j;ZJFLf1/r;Lr0/q;I)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    const v0, -0x1bcadee8

    invoke-virtual {v11, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v12, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, v12, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v11, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v12

    goto :goto_2

    :cond_2
    move v0, v12

    :goto_2
    and-int/lit8 v2, v12, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_4

    invoke-virtual {v11, v7}, Lr0/q;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v0, v2

    :cond_4
    and-int/lit16 v2, v12, 0x180

    if-nez v2, :cond_6

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v11, v2}, Lr0/q;->e(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_4

    :cond_5
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v0, v2

    :cond_6
    and-int/lit16 v2, v12, 0xc00

    if-nez v2, :cond_8

    invoke-virtual {v11, v9}, Lr0/q;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_5

    :cond_7
    const/16 v2, 0x400

    :goto_5
    or-int/2addr v0, v2

    :cond_8
    and-int/lit16 v2, v12, 0x6000

    if-nez v2, :cond_9

    or-int/lit16 v0, v0, 0x2000

    :cond_9
    const/high16 v2, 0x180000

    and-int/2addr v2, v12

    if-nez v2, :cond_b

    invoke-virtual {v11, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_a
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    :cond_b
    const v2, 0x82493

    and-int/2addr v2, v0

    const v4, 0x82492

    const/4 v5, 0x0

    if-eq v2, v4, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    move v2, v5

    :goto_7
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v11, v4, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v11}, Lr0/q;->Y()V

    and-int/lit8 v2, v12, 0x1

    const v4, -0xe001

    if-eqz v2, :cond_e

    invoke-virtual {v11}, Lr0/q;->C()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v11}, Lr0/q;->W()V

    and-int/2addr v0, v4

    move-wide/from16 v14, p4

    goto :goto_9

    :cond_e
    :goto_8
    and-int/2addr v0, v4

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    :goto_9
    invoke-virtual {v11}, Lr0/q;->r()V

    if-eqz v7, :cond_12

    sget v2, Lm0/s0;->a:F

    sget-object v2, La3/j;->l:La3/j;

    if-ne v8, v2, :cond_f

    if-eqz v9, :cond_10

    :cond_f
    sget-object v2, La3/j;->m:La3/j;

    if-ne v8, v2, :cond_11

    if-eqz v9, :cond_11

    :cond_10
    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    move v2, v5

    :goto_a
    move v4, v2

    goto :goto_c

    :cond_12
    sget v2, Lm0/s0;->a:F

    sget-object v2, La3/j;->l:La3/j;

    if-ne v8, v2, :cond_13

    if-eqz v9, :cond_14

    :cond_13
    sget-object v2, La3/j;->m:La3/j;

    if-ne v8, v2, :cond_15

    if-eqz v9, :cond_15

    :cond_14
    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    move v2, v5

    :goto_b
    if-nez v2, :cond_16

    const/4 v4, 0x1

    goto :goto_c

    :cond_16
    move v4, v5

    :goto_c
    if-eqz v4, :cond_17

    sget-object v2, Lf1/a;->b:Lf1/g;

    goto :goto_d

    :cond_17
    sget-object v2, Lf1/a;->a:Lf1/g;

    :goto_d
    and-int/lit8 v13, v0, 0xe

    if-eq v13, v1, :cond_19

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_18

    invoke-virtual {v11, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_e

    :cond_18
    move v1, v5

    goto :goto_f

    :cond_19
    :goto_e
    const/4 v1, 0x1

    :goto_f
    and-int/lit8 v0, v0, 0x70

    if-ne v0, v3, :cond_1a

    const/16 v16, 0x1

    goto :goto_10

    :cond_1a
    move/from16 v16, v5

    :goto_10
    or-int v0, v1, v16

    invoke-virtual {v11, v4}, Lr0/q;->h(Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1b

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_1c

    :cond_1b
    new-instance v1, Lm0/a;

    invoke-direct {v1, v6, v7, v4}, Lm0/a;-><init>(Lm0/r;ZZ)V

    invoke-virtual {v11, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1c
    check-cast v1, Li9/c;

    invoke-static {v10, v5, v1}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v5

    sget-object v0, Lf2/l1;->s:Lr0/s2;

    invoke-virtual {v11, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lf2/p2;

    new-instance v0, Lm0/c;

    move-wide/from16 v17, v14

    move-object v14, v2

    move-wide/from16 v2, v17

    invoke-direct/range {v0 .. v6}, Lm0/c;-><init>(Lf2/p2;JZLf1/r;Lm0/r;)V

    const v1, 0x515e2041

    invoke-static {v1, v0, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    or-int/lit16 v1, v13, 0x180

    invoke-static {v6, v14, v0, v11, v1}, Lm0/d1;->a(Lm0/r;Lf1/e;Lz0/d;Lr0/q;I)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v11}, Lr0/q;->W()V

    move-wide/from16 v2, p4

    :goto_11
    invoke-virtual {v11}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_1e

    new-instance v0, Lm0/d;

    move-object v1, v6

    move v4, v9

    move v9, v12

    move-wide v5, v2

    move v2, v7

    move-object v3, v8

    move-object v8, v10

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lm0/d;-><init>(Lm0/r;ZLa3/j;ZJFLf1/r;I)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_1e
    return-void
.end method

.method public static final e(Lf1/r;Li9/a;ZLr0/q;I)V
    .locals 4

    const v0, 0x7ddd909a

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p3, p2}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_3

    :cond_3
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    and-int/2addr v0, v3

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lm0/s0;->a:F

    sget v1, Lm0/s0;->b:F

    invoke-static {p0, v0, v1}, Lu/b1;->m(Lf1/r;FF)Lf1/r;

    move-result-object v0

    new-instance v1, Lm0/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lm0/h;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v0, v1}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    invoke-static {v0, p3}, Lu/b;->e(Lf1/r;Lr0/q;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lm0/g;

    invoke-direct {v0, p0, p1, p2, p4}, Lm0/g;-><init>(Lf1/r;Li9/a;ZI)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final f(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 7

    const v0, -0x6e8e8303

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_2

    sget-object v0, Lm0/k1;->a:Lm0/k1;

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lc2/r0;

    iget-wide v1, p2, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p2}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {p0, p2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p2}, Lr0/q;->e0()V

    iget-boolean v6, p2, Lr0/q;->S:Z

    if-eqz v6, :cond_3

    invoke-virtual {p2, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lr0/q;->o0()V

    :goto_2
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v2, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {p2, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {p2, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v4, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lm0/g0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lm0/g0;-><init>(Lf1/r;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final g(ZLa3/j;Lm0/v1;Lr0/q;I)V
    .locals 12

    move-object v8, p3

    move/from16 v10, p4

    const v0, -0x50245748

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v10, 0x6

    const/4 v2, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v3, v10, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p3, v3}, Lr0/q;->e(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v10, 0x180

    if-nez v3, :cond_5

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v0, 0x93

    const/16 v5, 0x92

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    move v3, v6

    :goto_4
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {p3, v5, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_11

    and-int/lit8 v3, v0, 0xe

    if-ne v3, v2, :cond_7

    move v5, v7

    goto :goto_5

    :cond_7
    move v5, v6

    :goto_5
    invoke-virtual {p3, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-nez v5, :cond_8

    if-ne v9, v11, :cond_9

    :cond_8
    new-instance v9, Lm0/a1;

    invoke-direct {v9, p2, p0}, Lm0/a1;-><init>(Lm0/v1;Z)V

    invoke-virtual {p3, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lb0/c2;

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-ne v3, v2, :cond_a

    move v6, v7

    :cond_a
    or-int v2, v5, v6

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_b

    if-ne v3, v11, :cond_c

    :cond_b
    new-instance v3, Lm0/w1;

    invoke-direct {v3, p2, p0}, Lm0/w1;-><init>(Lm0/v1;Z)V

    invoke-virtual {p3, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Lm0/r;

    invoke-virtual {p2}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    iget-wide v5, v2, Lu2/x;->b:J

    invoke-static {v5, v6}, Lp2/l0;->g(J)Z

    move-result v2

    if-eqz p0, :cond_d

    invoke-virtual {p2}, Lm0/v1;->n()Lu2/x;

    move-result-object v5

    iget-wide v5, v5, Lu2/x;->b:J

    shr-long v4, v5, v4

    :goto_6
    long-to-int v4, v4

    goto :goto_7

    :cond_d
    invoke-virtual {p2}, Lm0/v1;->n()Lu2/x;

    move-result-object v4

    iget-wide v4, v4, Lu2/x;->b:J

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_6

    :goto_7
    iget-object v5, p2, Lm0/v1;->d:Lb0/r1;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lb0/r1;->d()Lb0/z2;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, v5, Lb0/z2;->a:Lp2/j0;

    invoke-static {v5, v4}, Lb0/n1;->w(Lp2/j0;I)F

    move-result v4

    :goto_8
    move v6, v4

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    :goto_9
    invoke-virtual {p3, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_f

    if-ne v5, v11, :cond_10

    :cond_f
    new-instance v5, Lm0/j0;

    const/4 v4, 0x1

    invoke-direct {v5, v9, v4}, Lm0/j0;-><init>(Lb0/c2;I)V

    invoke-virtual {p3, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v9, v5}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v7

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v9, v0, 0x3f0

    const-wide/16 v4, 0x0

    move v1, p0

    move-object v0, v3

    move v3, v2

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Lm0/d1;->d(Lm0/r;ZLa3/j;ZJFLf1/r;Lr0/q;I)V

    goto :goto_a

    :cond_11
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_a
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v2, Lm0/g;

    invoke-direct {v2, p0, p1, p2, v10}, Lm0/g;-><init>(ZLa3/j;Lm0/v1;I)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_12
    return-void
.end method

.method public static final h(Lm0/t0;Lm0/j;)Lm0/a0;
    .locals 6

    invoke-interface {p0}, Lm0/t0;->h()Lm0/k;

    move-result-object v0

    sget-object v1, Lm0/k;->l:Lm0/k;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Lm0/a0;

    invoke-interface {p0}, Lm0/t0;->k()Lm0/x;

    move-result-object v4

    invoke-interface {p0}, Lm0/t0;->l()I

    move-result v5

    invoke-static {v4, v0, v3, v5, p1}, Lm0/d1;->l(Lm0/x;ZZILm0/j;)Lm0/z;

    move-result-object v3

    invoke-interface {p0}, Lm0/t0;->g()Lm0/x;

    move-result-object v4

    invoke-interface {p0}, Lm0/t0;->f()I

    move-result p0

    invoke-static {v4, v0, v2, p0, p1}, Lm0/d1;->l(Lm0/x;ZZILm0/j;)Lm0/z;

    move-result-object p0

    invoke-direct {v1, v3, p0, v0}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    return-object v1
.end method

.method public static final i(Ly1/j0;La9/a;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lm0/l0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm0/l0;

    iget v1, v0, Lm0/l0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm0/l0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm0/l0;

    invoke-direct {v0, p1}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p1, v0, Lm0/l0;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lm0/l0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm0/l0;->l:Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :goto_1
    sget-object p1, Ly1/m;->m:Ly1/m;

    iput-object p0, v0, Lm0/l0;->l:Ly1/j0;

    iput v3, v0, Lm0/l0;->n:I

    invoke-virtual {p0, p1, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p1, Ly1/l;

    iget-object v2, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly1/u;

    invoke-static {v6}, Ly1/t;->a(Ly1/u;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    return-object p1
.end method

.method public static final j(Ly1/j0;Lb0/c2;Ly1/l;ILa9/a;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p4, Lm0/o0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lm0/o0;

    iget v1, v0, Lm0/o0;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm0/o0;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm0/o0;

    invoke-direct {v0, p4}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p4, v0, Lm0/o0;->p:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lm0/o0;->q:I

    const/4 v3, 0x0

    sget-object v4, Lt8/z;->a:Lt8/z;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lm0/o0;->m:Lb0/c2;

    iget-object p0, v0, Lm0/o0;->l:Ly1/j0;

    :try_start_0
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lm0/o0;->o:J

    iget-object p2, v0, Lm0/o0;->n:Lj9/x;

    iget-object p3, v0, Lm0/o0;->m:Lb0/c2;

    iget-object v2, v0, Lm0/o0;->l:Ly1/j0;

    :try_start_1
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v7, p0

    move-object p1, p3

    move-object p0, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p3

    goto/16 :goto_6

    :cond_3
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p2, Ly1/l;->a:Ljava/lang/Object;

    invoke-static {p2}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly1/u;

    iget-wide v7, p2, Ly1/u;->a:J

    iget-wide v9, p2, Ly1/u;->c:J

    if-le p3, v5, :cond_4

    sget-object p2, Lm0/c0;->f:Lm0/b0;

    goto :goto_1

    :cond_4
    sget-object p2, Lm0/c0;->e:Lm0/b0;

    :goto_1
    invoke-interface {p1, v9, v10, p2}, Lb0/c2;->a(JLm0/b0;)V

    new-instance p2, Lj9/x;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const-wide p3, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide p3, p2, Lj9/x;->l:J

    invoke-virtual {p0}, Ly1/j0;->e()Lf2/p2;

    move-result-object p3

    invoke-interface {p3}, Lf2/p2;->b()J

    move-result-wide p3

    new-instance v2, Lm0/p0;

    invoke-direct {v2, v7, v8, p2, v3}, Lm0/p0;-><init>(JLj9/x;Ly8/c;)V

    iput-object p0, v0, Lm0/o0;->l:Ly1/j0;

    iput-object p1, v0, Lm0/o0;->m:Lb0/c2;

    iput-object p2, v0, Lm0/o0;->n:Lj9/x;

    iput-wide v7, v0, Lm0/o0;->o:J

    iput v6, v0, Lm0/o0;->q:I

    invoke-virtual {p0, p3, p4, v2, v0}, Ly1/j0;->k(JLi9/e;La9/a;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    check-cast p4, Lm0/m;

    if-nez p4, :cond_6

    sget-object p4, Lm0/m;->n:Lm0/m;

    :cond_6
    sget-object p3, Lm0/m;->o:Lm0/m;

    if-ne p4, p3, :cond_7

    invoke-interface {p1}, Lb0/c2;->onCancel()V

    return-object v4

    :cond_7
    sget-object p3, Lm0/m;->l:Lm0/m;

    if-ne p4, p3, :cond_8

    invoke-interface {p1}, Lb0/c2;->b()V

    return-object v4

    :cond_8
    sget-object p3, Lm0/m;->m:Lm0/m;

    if-ne p4, p3, :cond_9

    iget-wide p2, p2, Lj9/x;->l:J

    invoke-interface {p1, p2, p3}, Lb0/c2;->e(J)V

    :cond_9
    new-instance p2, Lb0/v1;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3}, Lb0/v1;-><init>(Lb0/c2;I)V

    iput-object p0, v0, Lm0/o0;->l:Ly1/j0;

    iput-object p1, v0, Lm0/o0;->m:Lb0/c2;

    iput-object v3, v0, Lm0/o0;->n:Lj9/x;

    iput v5, v0, Lm0/o0;->q:I

    invoke-static {p0, v7, v8, p2, v0}, Lr/i0;->g(Ly1/j0;JLi9/c;La9/a;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    :goto_4
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p0, p0, Ly1/k0;->D:Ly1/l;

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_5
    if-ge p3, p2, :cond_c

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ly1/u;

    invoke-static {p4}, Ly1/t;->c(Ly1/u;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p4}, Ly1/u;->a()V

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_c
    invoke-interface {p1}, Lb0/c2;->b()V

    return-object v4

    :cond_d
    invoke-interface {p1}, Lb0/c2;->onCancel()V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :goto_6
    invoke-interface {p1}, Lb0/c2;->onCancel()V

    throw p0
.end method

.method public static final k(Lm0/t0;Lm0/x;Lm0/z;)Lm0/z;
    .locals 12

    invoke-interface {p0}, Lm0/t0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lm0/x;->c:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    iget v0, p1, Lm0/x;->d:I

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Lm0/t0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lm0/t0;->l()I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lm0/t0;->f()I

    move-result v0

    :goto_2
    iget v1, p1, Lm0/x;->b:I

    iget-object v7, p1, Lm0/x;->f:Lp2/j0;

    iget v8, p1, Lm0/x;->e:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v3}, Lm0/x;->a(I)Lm0/z;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lt8/h;->m:Lt8/h;

    new-instance v1, Lm0/d0;

    const/4 v9, 0x0

    invoke-direct {v1, v3, v9, p1}, Lm0/d0;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v6

    invoke-interface {p0}, Lm0/t0;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lm0/x;->d:I

    :goto_3
    move v4, v1

    goto :goto_4

    :cond_3
    iget v1, p1, Lm0/x;->c:I

    goto :goto_3

    :goto_4
    new-instance v1, Lm0/e0;

    move-object v5, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lm0/e0;-><init>(Lm0/x;IILm0/t0;Lt8/g;)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object p0

    iget-wide v0, v2, Lm0/x;->a:J

    iget-wide v10, p2, Lm0/z;->c:J

    cmp-long p1, v0, v10

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/z;

    return-object p0

    :cond_4
    if-ne v3, v8, :cond_5

    return-object p2

    :cond_5
    iget-object p1, v7, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p1, v8}, Lp2/n;->d(I)I

    move-result p1

    invoke-interface {v6}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_6

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/z;

    return-object p0

    :cond_6
    iget p1, p2, Lm0/z;->b:I

    invoke-virtual {v7, p1}, Lp2/j0;->j(I)J

    move-result-wide v0

    invoke-interface {v5}, Lm0/t0;->a()Z

    move-result p2

    const/4 v4, -0x1

    if-ne v8, v4, :cond_7

    goto :goto_5

    :cond_7
    if-ne v3, v8, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lm0/x;->b()Lm0/k;

    move-result-object v4

    sget-object v5, Lm0/k;->l:Lm0/k;

    if-ne v4, v5, :cond_9

    const/4 v9, 0x1

    :cond_9
    xor-int/2addr p2, v9

    if-eqz p2, :cond_a

    if-ge v3, v8, :cond_d

    goto :goto_5

    :cond_a
    if-le v3, v8, :cond_d

    :goto_5
    sget p2, Lp2/l0;->c:I

    const/16 p2, 0x20

    shr-long v4, v0, p2

    long-to-int p2, v4

    if-eq p1, p2, :cond_c

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int p2, v0

    if-ne p1, p2, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v3}, Lm0/x;->a(I)Lm0/z;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_6
    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/z;

    return-object p0

    :cond_d
    :goto_7
    invoke-virtual {v2, v3}, Lm0/x;->a(I)Lm0/z;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lm0/x;ZZILm0/j;)Lm0/z;
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lm0/x;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lm0/x;->d:I

    :goto_0
    iget v1, p0, Lm0/x;->b:I

    if-eq p3, v1, :cond_1

    invoke-virtual {p0, v0}, Lm0/x;->a(I)Lm0/z;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p4, p0, v0}, Lm0/j;->a(Lm0/x;I)J

    move-result-wide p3

    xor-int/2addr p1, p2

    if-eqz p1, :cond_2

    sget p1, Lp2/l0;->c:I

    const/16 p1, 0x20

    shr-long p1, p3, p1

    :goto_1
    long-to-int p1, p1

    goto :goto_2

    :cond_2
    sget p1, Lp2/l0;->c:I

    const-wide p1, 0xffffffffL

    and-long/2addr p1, p3

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p1}, Lm0/x;->a(I)Lm0/z;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lm0/l;Lm0/l;Lm0/u0;JLm0/z;)Lm0/l;
    .locals 0

    if-eqz p5, :cond_2

    iget-wide p0, p5, Lm0/z;->c:J

    iget-object p2, p2, Lm0/u0;->f:Lad/m0;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lad/m0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    sget-object p0, Lm0/l;->l:Lm0/l;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lm0/l;->n:Lm0/l;

    return-object p0

    :cond_1
    sget-object p0, Lm0/l;->m:Lm0/l;

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lm0/d1;->y(Lm0/l;Lm0/l;)Lm0/l;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ly1/x;Lm0/o;Lb0/c2;Ly8/c;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ld1/c0;

    move-object v1, p0

    check-cast v1, Ly1/k0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->M:Lf2/p2;

    invoke-direct {v0, v1}, Ld1/c0;-><init>(Lf2/p2;)V

    new-instance v1, Lj0/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lj0/c;-><init>(Ld1/c0;Lm0/o;Lb0/c2;Ly8/c;)V

    invoke-static {p0, v1, p3}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final o(Lm0/z;Lm0/x;I)Lm0/z;
    .locals 2

    iget-object p1, p1, Lm0/x;->f:Lp2/j0;

    invoke-virtual {p1, p2}, Lp2/j0;->a(I)La3/j;

    move-result-object p1

    iget-wide v0, p0, Lm0/z;->c:J

    new-instance p0, Lm0/z;

    invoke-direct {p0, p1, p2, v0, v1}, Lm0/z;-><init>(La3/j;IJ)V

    return-object p0
.end method

.method public static final p(Ll1/c;J)Z
    .locals 4

    iget v0, p0, Ll1/c;->a:F

    iget v1, p0, Ll1/c;->c:F

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_0

    iget v0, p0, Ll1/c;->b:F

    iget p0, p0, Ll1/c;->d:F

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p2, v0, p1

    if-gtz p2, :cond_0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final q(Lj1/c;F)Lm1/e;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v3, p1

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Lm0/d1;->b:Lm1/e;

    sget-object v4, Lm0/d1;->c:Lm1/a;

    sget-object v5, Lm0/d1;->d:Lo1/b;

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    iget-object v6, v2, Lm1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v1, v7, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v1, v6, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v8, v2

    move-object v9, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v1, v2}, Lm1/v;->f(III)Lm1/e;

    move-result-object v2

    sput-object v2, Lm0/d1;->b:Lm1/e;

    invoke-static {v2}, Lm1/v;->a(Lm1/e;)Lm1/a;

    move-result-object v4

    sput-object v4, Lm0/d1;->c:Lm1/a;

    goto :goto_0

    :goto_2
    if-nez v5, :cond_2

    new-instance v5, Lo1/b;

    invoke-direct {v5}, Lo1/b;-><init>()V

    sput-object v5, Lm0/d1;->d:Lo1/b;

    :cond_2
    move-object v10, v5

    iget-object v1, v10, Lo1/b;->l:Lo1/a;

    iget-object v2, v0, Lj1/c;->l:Lj1/a;

    invoke-interface {v2}, Lj1/a;->getLayoutDirection()Lb3/m;

    move-result-object v2

    iget-object v4, v8, Lm1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v11, v4

    const/16 v4, 0x20

    shl-long/2addr v5, v4

    const-wide v18, 0xffffffffL

    and-long v11, v11, v18

    or-long/2addr v5, v11

    iget-object v7, v1, Lo1/a;->a:Lb3/c;

    iget-object v11, v1, Lo1/a;->b:Lb3/m;

    iget-object v12, v1, Lo1/a;->c:Lm1/o;

    iget-wide v13, v1, Lo1/a;->d:J

    iput-object v0, v1, Lo1/a;->a:Lb3/c;

    iput-object v2, v1, Lo1/a;->b:Lb3/m;

    iput-object v9, v1, Lo1/a;->c:Lm1/o;

    iput-wide v5, v1, Lo1/a;->d:J

    invoke-virtual {v9}, Lm1/a;->h()V

    move-object v0, v11

    move-object v2, v12

    sget-wide v11, Lm1/p;->b:J

    invoke-interface {v10}, Lo1/d;->d()J

    move-result-wide v15

    const/16 v17, 0x3a

    move-wide v5, v13

    const-wide/16 v13, 0x0

    invoke-static/range {v10 .. v17}, Lo1/d;->h(Lo1/d;JJJI)V

    const-wide v20, 0xff000000L

    invoke-static/range {v20 .. v21}, Lm1/v;->d(J)J

    move-result-wide v11

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v22, v4

    move-wide/from16 v23, v5

    int-to-long v4, v15

    shl-long v13, v13, v22

    and-long v4, v4, v18

    or-long v15, v13, v4

    const/16 v17, 0x78

    const-wide/16 v13, 0x0

    invoke-static/range {v10 .. v17}, Lo1/d;->h(Lo1/d;JJJI)V

    invoke-static/range {v20 .. v21}, Lm1/v;->d(J)J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v11, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v13, v6

    shl-long v11, v11, v22

    and-long v13, v13, v18

    or-long/2addr v11, v13

    const/4 v6, 0x0

    move-object v13, v7

    const/16 v7, 0x78

    move-wide/from16 v14, v23

    move-wide/from16 v25, v11

    move-object v11, v0

    move-object v12, v2

    move-object v0, v10

    move-object v10, v1

    move-wide v1, v4

    move-wide/from16 v4, v25

    invoke-static/range {v0 .. v7}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    invoke-virtual {v9}, Lm1/a;->q()V

    iput-object v13, v10, Lo1/a;->a:Lb3/c;

    iput-object v11, v10, Lo1/a;->b:Lb3/m;

    iput-object v12, v10, Lo1/a;->c:Lm1/o;

    iput-wide v14, v10, Lo1/a;->d:J

    return-object v8
.end method

.method public static final r(Lm0/b1;JLm0/z;)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lm0/b1;->c(Lm0/z;)Lm0/q;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v5, v0, Lm0/b1;->l:Lc2/u;

    if-nez v5, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v6, v4, Lm0/q;->c:Ll0/h;

    invoke-virtual {v4}, Lm0/q;->c()Lc2/u;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_b

    :cond_2
    iget v3, v3, Lm0/z;->b:I

    invoke-virtual {v6}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp2/j0;

    const/4 v9, 0x0

    if-nez v8, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v8}, Lm0/q;->b(Lp2/j0;)I

    move-result v8

    :goto_0
    if-le v3, v8, :cond_4

    goto/16 :goto_b

    :cond_4
    iget-object v0, v0, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v10, v0, Ll1/b;->a:J

    invoke-interface {v7, v5, v10, v11}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v10

    const/16 v0, 0x20

    shr-long/2addr v10, v0

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v6}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp2/j0;

    const/4 v11, 0x1

    if-nez v10, :cond_5

    sget-wide v9, Lp2/l0;->b:J

    goto :goto_1

    :cond_5
    iget-object v12, v10, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v4, v10}, Lm0/q;->b(Lp2/j0;)I

    move-result v4

    if-ge v4, v11, :cond_6

    sget-wide v9, Lp2/l0;->b:J

    goto :goto_1

    :cond_6
    sub-int/2addr v4, v11

    invoke-static {v3, v9, v4}, Lg6/c1;->f(III)I

    move-result v4

    invoke-virtual {v12, v4}, Lp2/n;->d(I)I

    move-result v4

    invoke-virtual {v10, v4}, Lp2/j0;->g(I)I

    move-result v9

    invoke-virtual {v12, v4, v11}, Lp2/n;->c(IZ)I

    move-result v4

    invoke-static {v9, v4}, Lp2/d0;->b(II)J

    move-result-wide v9

    :goto_1
    invoke-static {v9, v10}, Lp2/l0;->c(J)Z

    move-result v4

    const/high16 v13, -0x40800000    # -1.0f

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/j0;

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object v9, v4, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v9, v3}, Lp2/n;->d(I)I

    move-result v10

    iget v9, v9, Lp2/n;->f:I

    if-lt v10, v9, :cond_8

    :goto_2
    move v4, v13

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v10}, Lp2/j0;->e(I)F

    move-result v4

    :goto_3
    const-wide v14, 0xffffffffL

    goto :goto_8

    :cond_9
    move/from16 p0, v11

    const-wide v14, 0xffffffffL

    shr-long v11, v9, v0

    long-to-int v4, v11

    invoke-virtual {v6}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lp2/j0;

    if-nez v11, :cond_a

    goto :goto_4

    :cond_a
    iget-object v12, v11, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v12, v4}, Lp2/n;->d(I)I

    move-result v4

    iget v12, v12, Lp2/n;->f:I

    if-lt v4, v12, :cond_b

    :goto_4
    move v4, v13

    goto :goto_5

    :cond_b
    invoke-virtual {v11, v4}, Lp2/j0;->e(I)F

    move-result v4

    :goto_5
    and-long/2addr v9, v14

    long-to-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp2/j0;

    if-nez v10, :cond_c

    :goto_6
    move v9, v13

    goto :goto_7

    :cond_c
    iget-object v11, v10, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v11, v9}, Lp2/n;->d(I)I

    move-result v9

    iget v11, v11, Lp2/n;->f:I

    if-lt v9, v11, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v10, v9}, Lp2/j0;->f(I)F

    move-result v9

    :goto_7
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v8, v10, v4}, Lg6/c1;->e(FFF)F

    move-result v4

    :goto_8
    cmpg-float v9, v4, v13

    if-nez v9, :cond_e

    goto :goto_b

    :cond_e
    const-wide/16 v9, 0x0

    invoke-static {v1, v2, v9, v10}, Lb3/l;->a(JJ)Z

    move-result v9

    const/4 v10, 0x2

    if-nez v9, :cond_f

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    shr-long/2addr v1, v0

    long-to-int v1, v1

    div-int/2addr v1, v10

    int-to-float v1, v1

    cmpl-float v1, v8, v1

    if-lez v1, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v6}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/j0;

    if-nez v1, :cond_10

    :goto_9
    move v1, v13

    goto :goto_a

    :cond_10
    iget-object v1, v1, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v1, v3}, Lp2/n;->d(I)I

    move-result v2

    iget v3, v1, Lp2/n;->f:I

    if-lt v2, v3, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v1, v2}, Lp2/n;->f(I)F

    move-result v3

    invoke-virtual {v1, v2}, Lp2/n;->b(I)F

    move-result v1

    sub-float/2addr v1, v3

    int-to-float v2, v10

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    :goto_a
    cmpg-float v2, v1, v13

    if-nez v2, :cond_12

    :goto_b
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide v0

    :cond_12
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v8, v1

    shl-long v0, v2, v0

    and-long v2, v8, v14

    or-long/2addr v0, v2

    invoke-interface {v5, v7, v0, v1}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final s(JLp2/j0;)I
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object v1, p2, Lp2/j0;->b:Lp2/n;

    iget v2, v1, Lp2/n;->e:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object p0, p2, Lp2/j0;->a:Lp2/i0;

    iget-object p0, p0, Lp2/i0;->a:Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v1, p0, p1}, Lp2/n;->g(J)I

    move-result p0

    return p0
.end method

.method public static final t(Lp2/j0;IZZ)J
    .locals 5

    iget-object v0, p0, Lp2/j0;->b:Lp2/n;

    iget-wide v1, p0, Lp2/j0;->c:J

    invoke-virtual {v0, p1}, Lp2/n;->d(I)I

    move-result v3

    iget v4, v0, Lp2/n;->f:I

    if-lt v3, v4, :cond_0

    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide p0

    :cond_0
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    move p2, p1

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p1, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2}, Lp2/j0;->a(I)La3/j;

    move-result-object p2

    invoke-virtual {p0, p1}, Lp2/j0;->h(I)La3/j;

    move-result-object p0

    if-ne p2, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    move p0, v4

    :goto_1
    iget-object p2, v0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lp2/n;->l(I)V

    iget-object p3, v0, Lp2/n;->a:Landroidx/lifecycle/a1;

    iget-object p3, p3, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast p3, Lp2/g;

    iget-object p3, p3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p1, p3, :cond_5

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result p3

    goto :goto_2

    :cond_5
    invoke-static {p1, p2}, Lp2/d0;->d(ILjava/util/List;)I

    move-result p3

    :goto_2
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp2/p;

    iget-object p3, p2, Lp2/p;->a:Lp2/a;

    invoke-virtual {p2, p1}, Lp2/p;->d(I)I

    move-result p1

    iget-object p2, p3, Lp2/a;->d:Lq2/j;

    if-eqz p0, :cond_6

    invoke-virtual {p2, p1, v4}, Lq2/j;->h(IZ)F

    move-result p0

    goto :goto_3

    :cond_6
    invoke-virtual {p2, p1, v4}, Lq2/j;->i(IZ)F

    move-result p0

    :goto_3
    const/16 p1, 0x20

    shr-long p2, v1, p1

    long-to-int p2, p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-static {p0, p3, p2}, Lg6/c1;->e(FFF)F

    move-result p0

    invoke-virtual {v0, v3}, Lp2/n;->b(I)F

    move-result p2

    const-wide v3, 0xffffffffL

    and-long v0, v1, v3

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p2, p3, v0}, Lg6/c1;->e(FFF)F

    move-result p2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    shl-long p0, v0, p1

    and-long/2addr p2, v3

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static final u(Lp2/j0;I)La3/j;
    .locals 4

    iget-object v0, p0, Lp2/j0;->a:Lp2/i0;

    iget-object v1, p0, Lp2/j0;->b:Lp2/n;

    iget-object v2, v0, Lp2/i0;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lp2/n;->d(I)I

    move-result v2

    if-eqz p1, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Lp2/n;->d(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v0, v0, Lp2/i0;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Lp2/n;->d(I)I

    move-result v0

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lp2/j0;->a(I)La3/j;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lp2/j0;->h(I)La3/j;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Ly1/l;)Z
    .locals 7

    iget-object v0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    iget v5, v5, Ly1/u;->i:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly1/l;->a()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ly1/l;->a()Landroid/view/MotionEvent;

    move-result-object p0

    if-eqz p0, :cond_2

    const v0, 0x100008

    invoke-virtual {p0, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p0

    if-ne p0, v4, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v4
.end method

.method public static final w(Lm0/v1;Z)Z
    .locals 1

    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb0/r1;->c()Lc2/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lm0/d1;->A(Lc2/u;)Ll1/c;

    move-result-object v0

    invoke-virtual {p0, p1}, Lm0/v1;->l(Z)J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lm0/d1;->p(Ll1/c;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final x(Ly1/j0;Lm0/o;Ld1/c0;Ly1/l;La9/a;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lm0/c0;->d:Lm0/b0;

    instance-of v1, p4, Lm0/m0;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Lm0/m0;

    iget v2, v1, Lm0/m0;->p:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lm0/m0;->p:I

    goto :goto_0

    :cond_0
    new-instance v1, Lm0/m0;

    invoke-direct {v1, p4}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p4, v1, Lm0/m0;->o:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lm0/m0;->p:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p0, v1, Lm0/m0;->n:Lj9/u;

    iget-object p1, v1, Lm0/m0;->m:Lm0/o;

    iget-object p2, v1, Lm0/m0;->l:Ly1/j0;

    :try_start_0
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v1, Lm0/m0;->m:Lm0/o;

    iget-object p0, v1, Lm0/m0;->l:Ly1/j0;

    :try_start_1
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V

    iget-object p4, p3, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ly1/u;

    iget p3, p3, Ly1/l;->e:I

    and-int/2addr p3, v6

    if-eqz p3, :cond_7

    iget-wide p2, p4, Ly1/u;->c:J

    invoke-interface {p1, p2, p3}, Lm0/o;->e(J)Z

    move-result p2

    if-eqz p2, :cond_d

    :try_start_2
    invoke-virtual {p4}, Ly1/u;->a()V

    iget-wide p2, p4, Ly1/u;->a:J

    new-instance p4, Lb0/a;

    const/16 v0, 0x10

    invoke-direct {p4, v0, p1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iput-object p0, v1, Lm0/m0;->l:Ly1/j0;

    iput-object p1, v1, Lm0/m0;->m:Lm0/o;

    iput v6, v1, Lm0/m0;->p:I

    invoke-static {p0, p2, p3, p4, v1}, Lr/i0;->g(Ly1/j0;JLi9/c;La9/a;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v2, :cond_4

    goto :goto_5

    :cond_4
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p0, p0, Ly1/k0;->D:Ly1/l;

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_2
    if-ge v4, p2, :cond_6

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly1/u;

    invoke-static {p3}, Ly1/t;->c(Ly1/u;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Ly1/u;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lm0/o;->c()V

    goto/16 :goto_9

    :goto_3
    invoke-interface {p1}, Lm0/o;->c()V

    throw p0

    :cond_7
    iget p2, p2, Ld1/c0;->b:I

    if-eq p2, v6, :cond_9

    if-eq p2, v5, :cond_8

    sget-object p3, Lm0/c0;->f:Lm0/b0;

    goto :goto_4

    :cond_8
    sget-object p3, Lm0/c0;->e:Lm0/b0;

    goto :goto_4

    :cond_9
    move-object p3, v0

    :goto_4
    iget-wide v7, p4, Ly1/u;->c:J

    invoke-interface {p1, v7, v8, p3, p2}, Lm0/o;->b(JLm0/b0;I)Z

    move-result p2

    if-eqz p2, :cond_d

    :try_start_3
    new-instance p2, Lj9/u;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    iput-boolean v0, p2, Lj9/u;->l:Z

    iget-wide v6, p4, Ly1/u;->a:J

    new-instance p4, Lb0/o;

    const/16 v0, 0x8

    invoke-direct {p4, p1, p3, p2, v0}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p0, v1, Lm0/m0;->l:Ly1/j0;

    iput-object p1, v1, Lm0/m0;->m:Lm0/o;

    iput-object p2, v1, Lm0/m0;->n:Lj9/u;

    iput v5, v1, Lm0/m0;->p:I

    invoke-static {p0, v6, v7, p4, v1}, Lr/i0;->g(Ly1/j0;JLi9/c;La9/a;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v2, :cond_a

    :goto_5
    return-object v2

    :cond_a
    move-object v9, p2

    move-object p2, p0

    move-object p0, v9

    :goto_6
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_c

    iget-boolean p0, p0, Lj9/u;->l:Z

    if-eqz p0, :cond_c

    iget-object p0, p2, Ly1/j0;->q:Ly1/k0;

    iget-object p0, p0, Ly1/k0;->D:Ly1/l;

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_7
    if-ge v4, p2, :cond_c

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly1/u;

    invoke-static {p3}, Ly1/t;->c(Ly1/u;)Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-virtual {p3}, Ly1/u;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Lm0/o;->c()V

    goto :goto_9

    :goto_8
    invoke-interface {p1}, Lm0/o;->c()V

    throw p0

    :cond_d
    :goto_9
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final y(Lm0/l;Lm0/l;)Lm0/l;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    sget-object p0, Lm0/l;->n:Lm0/l;

    return-object p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_3

    if-ne p0, v0, :cond_2

    sget-object p0, Lm0/l;->n:Lm0/l;

    return-object p0

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    sget-object p0, Lm0/l;->m:Lm0/l;

    return-object p0

    :cond_4
    sget-object p0, Lm0/l;->l:Lm0/l;

    return-object p0

    :cond_5
    sget-object p0, Lm0/l;->l:Lm0/l;

    return-object p0
.end method

.method public static final z(Ly1/j0;Lb0/c2;Ly1/l;La9/a;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lm0/n0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lm0/n0;

    iget v1, v0, Lm0/n0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm0/n0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm0/n0;

    invoke-direct {v0, p3}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p3, v0, Lm0/n0;->o:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lm0/n0;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lm0/n0;->m:Lb0/c2;

    iget-object p0, v0, Lm0/n0;->l:Ly1/j0;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lm0/n0;->n:Ly1/u;

    iget-object p1, v0, Lm0/n0;->m:Lb0/c2;

    iget-object p2, v0, Lm0/n0;->l:Ly1/j0;

    :try_start_1
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, p2

    move-object p2, p0

    move-object p0, v10

    goto :goto_1

    :cond_3
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p2, Ly1/l;->a:Ljava/lang/Object;

    invoke-static {p2}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly1/u;

    iget-wide v6, p2, Ly1/u;->a:J

    iput-object p0, v0, Lm0/n0;->l:Ly1/j0;

    iput-object p1, v0, Lm0/n0;->m:Lb0/c2;

    iput-object p2, v0, Lm0/n0;->n:Ly1/u;

    iput v5, v0, Lm0/n0;->p:I

    invoke-static {p0, v6, v7, v0}, Lr/i0;->d(Ly1/j0;JLa9/a;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p3, Ly1/u;

    if-eqz p3, :cond_a

    iget-wide v6, p3, Ly1/u;->c:J

    invoke-virtual {p0}, Ly1/j0;->e()Lf2/p2;

    move-result-object v2

    iget v8, p2, Ly1/u;->i:I

    invoke-static {v2, v8}, Lr/i0;->j(Lf2/p2;I)F

    move-result v2

    iget-wide v8, p2, Ly1/u;->c:J

    invoke-static {v8, v9, v6, v7}, Ll1/b;->d(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ll1/b;->c(J)F

    move-result p2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-eqz v5, :cond_a

    sget-object p2, Lm0/c0;->e:Lm0/b0;

    invoke-interface {p1, v6, v7, p2}, Lb0/c2;->a(JLm0/b0;)V

    iget-wide p2, p3, Ly1/u;->a:J

    new-instance v2, Lb0/v1;

    const/4 v5, 0x1

    invoke-direct {v2, p1, v5}, Lb0/v1;-><init>(Lb0/c2;I)V

    iput-object p0, v0, Lm0/n0;->l:Ly1/j0;

    iput-object p1, v0, Lm0/n0;->m:Lb0/c2;

    const/4 v5, 0x0

    iput-object v5, v0, Lm0/n0;->n:Ly1/u;

    iput v4, v0, Lm0/n0;->p:I

    invoke-static {p0, p2, p3, v2, v0}, Lr/i0;->g(Ly1/j0;JLi9/c;La9/a;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    :goto_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p0, p0, Ly1/k0;->D:Ly1/l;

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_5
    if-ge v3, p2, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly1/u;

    invoke-static {p3}, Ly1/t;->c(Ly1/u;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ly1/u;->a()V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Lb0/c2;->b()V

    goto :goto_6

    :cond_9
    invoke-interface {p1}, Lb0/c2;->onCancel()V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_7
    invoke-interface {p1}, Lb0/c2;->onCancel()V

    throw p0
.end method
