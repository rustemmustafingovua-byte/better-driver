.class public abstract Lg0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz0/d;

.field public static final b:Lz0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc0/a;-><init>(I)V

    new-instance v1, Lz0/d;

    const v2, 0x25ecfd93

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lz0/d;-><init>(IZLt8/e;)V

    sput-object v1, Lg0/i;->a:Lz0/d;

    new-instance v0, Lc0/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc0/a;-><init>(I)V

    new-instance v1, Lz0/d;

    const v2, -0x50ee6e26

    invoke-direct {v1, v2, v3, v0}, Lz0/d;-><init>(IZLt8/e;)V

    sput-object v1, Lg0/i;->b:Lz0/d;

    return-void
.end method

.method public static final a(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 10

    const v0, 0x2f1e7ec1

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v3, p3, 0x30

    if-nez v3, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit8 v3, v0, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    and-int/2addr v0, v5

    invoke-virtual {p2, v0, v3}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v0, v3, :cond_5

    sget-object v0, Lr0/e;->o:Lr0/e;

    new-instance v4, Lr0/e1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    invoke-virtual {p2, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v0, v4

    :cond_5
    move-object v6, v0

    check-cast v6, Lr0/u0;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    new-instance v0, Lb0/u;

    const/4 v3, 0x3

    invoke-direct {v0, v6, v3}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object v9, v0

    check-cast v9, Li9/a;

    sget-object v0, Lg0/m;->a:Lf3/a0;

    sget-object v0, Lg0/i;->b:Lz0/d;

    const/4 v3, 0x6

    invoke-static {v0, p2, v3}, Lc6/o;->G(Lz0/d;Lr0/q;I)Li0/c;

    move-result-object v8

    invoke-static {v9, p2, v2}, Lg0/i;->e(Li9/a;Lr0/q;I)Lg0/g;

    move-result-object v0

    sget-object v2, Li0/g;->b:Lr0/a0;

    invoke-virtual {v2, v0}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v0

    sget-object v2, Li0/g;->a:Lr0/a0;

    invoke-virtual {v2, v8}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v2

    filled-new-array {v0, v2}, [Lj6/g0;

    move-result-object v0

    new-instance v4, Lg0/p;

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lg0/p;-><init>(Lf1/r;Lr0/u0;Lz0/d;Li0/c;Li9/a;)V

    const p0, 0x3fd00381

    invoke-static {p0, v4, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 p1, 0x38

    invoke-static {v0, p0, p2, p1}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_4

    :cond_7
    move-object v5, p0

    move-object v7, p1

    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lg0/h;

    invoke-direct {p1, v5, v7, p3, v1}, Lg0/h;-><init>(Lf1/r;Lz0/d;II)V

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method

.method public static final b(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 9

    const v0, 0x94b3c0e

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Li0/g;->a:Lr0/a0;

    invoke-virtual {p2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    sget-object v2, Li0/g;->b:Lr0/a0;

    invoke-virtual {p2, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    const v1, -0x75d97e52    # -8.016999E-33f

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lf1/c;->l:Lf1/j;

    invoke-static {v1, v4}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v5, p2, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {p2}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {p0, p2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {p2}, Lr0/q;->e0()V

    iget-boolean v8, p2, Lr0/q;->S:Z

    if-eqz v8, :cond_7

    invoke-virtual {p2, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lr0/q;->o0()V

    :goto_6
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v1, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v5, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {p2, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {p2, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v6, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4}, Lr0/q;->q(Z)V

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_8
    if-eqz v1, :cond_9

    const v1, -0x75d6974a

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p0, p1, p2, v0}, Lg0/i;->c(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_9
    if-eqz v2, :cond_a

    const v1, -0x75d44a4a

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p0, p1, p2, v0}, Lg0/m;->d(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_a
    const v1, -0x75d24cd9

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p0, p1, p2, v0}, Lg0/i;->a(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_b
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance v0, Lg0/h;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p3, v1}, Lg0/h;-><init>(Lf1/r;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final c(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 3

    const v0, 0x7b14daa1

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0xe

    or-int/lit8 v1, v1, 0x30

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v1

    invoke-static {p0, p1, p2, v0}, Lg0/i;->d(Lf1/r;Lz0/d;Lr0/q;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lg0/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lg0/h;-><init>(Lf1/r;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final d(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 6

    const v0, 0x2e032b74

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p2, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p3, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v3, 0x92

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_6

    move v1, v5

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    and-int/2addr v0, v5

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_7

    sget-object v0, Lr0/e;->o:Lr0/e;

    new-instance v3, Lr0/e1;

    invoke-direct {v3, v2, v0}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    invoke-virtual {p2, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_7
    check-cast v0, Lr0/u0;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    new-instance v2, Lb0/u;

    const/4 v1, 0x2

    invoke-direct {v2, v0, v1}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Li9/a;

    invoke-static {v2, p2, v4}, Lg0/i;->e(Li9/a;Lr0/q;I)Lg0/g;

    move-result-object v1

    sget-object v2, Li0/g;->b:Lr0/a0;

    invoke-virtual {v2, v1}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    new-instance v2, Lb0/k0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, p1, v3}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0x115affcc

    invoke-static {v0, v2, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v1, v0, p2, v2}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lg0/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lg0/h;-><init>(Lf1/r;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final e(Li9/a;Lr0/q;I)Lg0/g;
    .locals 3

    sget-object p2, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {p1, p2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Lg0/g;

    const/4 v0, 0x0

    invoke-direct {v1, p2, v0, p0}, Lg0/g;-><init>(Landroid/view/View;Li9/c;Li9/a;)V

    invoke-virtual {p1, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lg0/g;

    invoke-virtual {p1, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    if-nez p0, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    new-instance p2, Lg0/a;

    const/4 p0, 0x3

    invoke-direct {p2, v1, p0}, Lg0/a;-><init>(Lg0/g;I)V

    invoke-virtual {p1, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast p2, Li9/c;

    invoke-static {v1, p2, p1}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    return-object v1
.end method
