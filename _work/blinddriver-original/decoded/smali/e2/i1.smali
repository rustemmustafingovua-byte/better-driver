.class public abstract Le2/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lk/q0;->a:Lk/d0;

    new-instance v0, Lk/d0;

    invoke-direct {v0}, Lk/d0;-><init>()V

    sput-object v0, Le2/i1;->a:Lk/d0;

    return-void
.end method

.method public static final a(Lf1/q;II)V
    .locals 3

    instance-of v0, p0, Le2/k;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Le2/k;

    iget v1, v0, Le2/k;->z:I

    and-int v2, v1, p1

    invoke-static {p0, v2, p2}, Le2/i1;->b(Lf1/q;II)V

    not-int p0, v1

    and-int/2addr p0, p1

    iget-object p1, v0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1, p0, p2}, Le2/i1;->a(Lf1/q;II)V

    iget-object p1, p1, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lf1/q;->n:I

    and-int/2addr p1, v0

    invoke-static {p0, p1, p2}, Le2/i1;->b(Lf1/q;II)V

    return-void
.end method

.method public static final b(Lf1/q;II)V
    .locals 9

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lf1/q;->B0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    instance-of v0, p0, Le2/x;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Le2/x;

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    if-ne p2, v1, :cond_1

    invoke-static {p0, v1}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v0

    invoke-virtual {v0}, Le2/h1;->g1()V

    :cond_1
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_2

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    invoke-virtual {v0}, Le2/g0;->E()V

    :cond_2
    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq p2, v1, :cond_3

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    invoke-virtual {v0, v2}, Le2/g0;->W(Z)V

    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    instance-of v0, p0, Le2/o;

    if-eqz v0, :cond_8

    if-eq p2, v4, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget v5, v0, Le2/g0;->b0:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Le2/g0;->c0(I)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget v5, v0, Le2/g0;->b0:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Le2/g0;->c0(I)V

    :goto_0
    if-eq p2, v1, :cond_8

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p2

    iget v0, p2, Le2/g0;->b0:I

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Le2/g0;->q()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Le2/g0;->r()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p2, Le2/g0;->a0:Z

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    iget-object v1, v0, Lf2/y;->i0:Le2/v0;

    iget-object v1, v1, Le2/v0;->e:Lg5/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p2, Le2/g0;->b0:I

    if-lez v5, :cond_7

    iget-object v1, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    iput-boolean v4, p2, Le2/g0;->a0:Z

    :cond_7
    invoke-virtual {v0, v3}, Lf2/y;->G(Le2/g0;)V

    :cond_8
    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_9

    instance-of p2, p0, Le2/n;

    if-eqz p2, :cond_9

    move-object p2, p0

    check-cast p2, Le2/n;

    invoke-static {p2}, Le2/l;->k(Le2/n;)V

    :cond_9
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_a

    instance-of p2, p0, Le2/z1;

    if-eqz p2, :cond_a

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p2

    iput-boolean v4, p2, Le2/g0;->D:Z

    :cond_a
    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_b

    instance-of p2, p0, Le2/t1;

    if-eqz p2, :cond_b

    move-object p2, p0

    check-cast p2, Le2/t1;

    invoke-static {p2}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p2

    iget-object p2, p2, Le2/g0;->S:Le2/l0;

    iget-object v0, p2, Le2/l0;->p:Le2/x0;

    iput-boolean v4, v0, Le2/x0;->B:Z

    iget-object p2, p2, Le2/l0;->q:Le2/t0;

    if-eqz p2, :cond_b

    iput-boolean v4, p2, Le2/t0;->H:Z

    :cond_b
    and-int/lit16 p2, p1, 0x800

    if-eqz p2, :cond_18

    instance-of p2, p0, Lk1/t;

    if-eqz p2, :cond_18

    move-object p2, p0

    check-cast p2, Lk1/t;

    sput-object v3, Le2/c;->b:Ljava/lang/Boolean;

    sget-object v0, Le2/c;->a:Le2/c;

    invoke-interface {p2, v0}, Lk1/t;->z0(Lk1/q;)V

    sget-object v0, Le2/c;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    check-cast p2, Lf1/q;

    iget-object v0, p2, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_c

    const-string v0, "visitChildren called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v5, v1, [Lf1/q;

    invoke-direct {v0, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p2, p2, Lf1/q;->l:Lf1/q;

    iget-object v5, p2, Lf1/q;->q:Lf1/q;

    if-nez v5, :cond_d

    invoke-static {v0, p2}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v0, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_e
    :goto_2
    iget p2, v0, Lt0/b;->n:I

    if-eqz p2, :cond_18

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf1/q;

    iget v5, p2, Lf1/q;->o:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_f

    invoke-static {v0, p2}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_2

    :cond_f
    :goto_3
    if-eqz p2, :cond_e

    iget v5, p2, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_17

    move-object v5, v3

    :goto_4
    if-eqz p2, :cond_e

    instance-of v6, p2, Lk1/b0;

    if-eqz v6, :cond_10

    check-cast p2, Lk1/b0;

    invoke-static {p2}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v6

    check-cast v6, Lf2/y;

    invoke-virtual {v6}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v6

    check-cast v6, Lk1/o;

    iget-object v6, v6, Lk1/o;->d:Lk1/i;

    iget-object v7, v6, Lk1/i;->c:Lk/n0;

    invoke-virtual {v7, p2}, Lk/n0;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {v6}, Lk1/i;->a()V

    goto :goto_7

    :cond_10
    iget v6, p2, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_16

    instance-of v6, p2, Le2/k;

    if-eqz v6, :cond_16

    move-object v6, p2

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v7, v2

    :goto_5
    if-eqz v6, :cond_15

    iget v8, v6, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_14

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_11

    move-object p2, v6

    goto :goto_6

    :cond_11
    if-nez v5, :cond_12

    new-instance v5, Lt0/b;

    new-array v8, v1, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {v5, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p2, v3

    :cond_13
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_14
    :goto_6
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_15
    if-ne v7, v4, :cond_16

    goto :goto_4

    :cond_16
    :goto_7
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p2

    goto :goto_4

    :cond_17
    iget-object p2, p2, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_18
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_19

    instance-of p1, p0, Lk1/g;

    if-eqz p1, :cond_19

    check-cast p0, Lk1/g;

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p1

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p1

    check-cast p1, Lk1/o;

    iget-object p1, p1, Lk1/o;->d:Lk1/i;

    iget-object p2, p1, Lk1/i;->d:Lk/n0;

    invoke-virtual {p2, p0}, Lk/n0;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Lk1/i;->a()V

    :cond_19
    :goto_8
    return-void
.end method

.method public static final c(Lf1/q;)V
    .locals 2

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Le2/i1;->a(Lf1/q;II)V

    return-void
.end method

.method public static final d(Lf1/p;)I
    .locals 2

    instance-of v0, p0, Lc2/a0;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    instance-of v1, p0, Lj1/f;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    instance-of v1, p0, Lm2/b;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    instance-of v1, p0, Ly1/a0;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    instance-of v1, p0, Lb0/g3;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    :cond_4
    instance-of p0, p0, Lj2/a;

    if-eqz p0, :cond_5

    const/high16 p0, 0x80000

    or-int/2addr p0, v0

    return p0

    :cond_5
    return v0
.end method

.method public static final e(Lf1/q;)I
    .locals 4

    iget v0, p0, Lf1/q;->n:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Le2/i1;->a:Lk/d0;

    invoke-virtual {v1, v0}, Lk/d0;->d(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object p0, v1, Lk/d0;->c:[I

    aget p0, p0, v2

    return p0

    :cond_1
    instance-of v2, p0, Le2/x;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    instance-of v3, p0, Le2/n;

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    instance-of v3, p0, Le2/z1;

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x8

    :cond_4
    instance-of v3, p0, Le2/v1;

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x10

    :cond_5
    instance-of v3, p0, Ld2/c;

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x20

    :cond_6
    instance-of v3, p0, Le2/t1;

    if-eqz v3, :cond_7

    or-int/lit8 v2, v2, 0x40

    :cond_7
    instance-of v3, p0, Lc2/b1;

    if-eqz v3, :cond_8

    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    :cond_8
    instance-of v3, p0, Le2/w;

    if-eqz v3, :cond_9

    const v3, 0x400080

    or-int/2addr v2, v3

    :cond_9
    :goto_1
    instance-of v3, p0, Le2/o;

    if-eqz v3, :cond_a

    or-int/lit16 v2, v2, 0x100

    :cond_a
    instance-of v3, p0, Lk1/b0;

    if-eqz v3, :cond_b

    or-int/lit16 v2, v2, 0x400

    :cond_b
    instance-of v3, p0, Lk1/t;

    if-eqz v3, :cond_c

    or-int/lit16 v2, v2, 0x800

    :cond_c
    instance-of v3, p0, Lk1/g;

    if-eqz v3, :cond_d

    or-int/lit16 v2, v2, 0x1000

    :cond_d
    instance-of v3, p0, Lw1/e;

    if-eqz v3, :cond_e

    or-int/lit16 v2, v2, 0x2000

    :cond_e
    instance-of v3, p0, Lf2/m;

    if-eqz v3, :cond_f

    or-int/lit16 v2, v2, 0x4000

    :cond_f
    instance-of v3, p0, Le2/i;

    if-eqz v3, :cond_10

    const v3, 0x8000

    or-int/2addr v2, v3

    :cond_10
    instance-of v3, p0, Le2/e2;

    if-eqz v3, :cond_11

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    :cond_11
    instance-of v3, p0, Lj2/a;

    if-eqz v3, :cond_12

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    :cond_12
    instance-of v3, p0, Lv1/c;

    if-eqz v3, :cond_13

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    :cond_13
    instance-of p0, p0, Lx/o;

    if-eqz p0, :cond_14

    const/high16 p0, 0x800000

    or-int/2addr v2, p0

    :cond_14
    invoke-virtual {v1, v2, v0}, Lk/d0;->g(ILjava/lang/Object;)V

    return v2
.end method

.method public static final f(Lf1/q;)I
    .locals 2

    instance-of v0, p0, Le2/k;

    if-eqz v0, :cond_1

    check-cast p0, Le2/k;

    iget v0, p0, Le2/k;->z:I

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {p0}, Le2/i1;->f(Lf1/q;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    invoke-static {p0}, Le2/i1;->e(Lf1/q;)I

    move-result p0

    return p0
.end method

.method public static final g(I)Z
    .locals 4

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/high16 v3, 0x400000

    and-int/2addr p0, v3

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    or-int p0, v0, v1

    return p0
.end method
