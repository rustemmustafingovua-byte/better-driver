.class public abstract Ln/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lt8/h;->m:Lt8/h;

    new-instance v1, Ln/k1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ln/k1;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    return-void
.end method

.method public static final a(Ln/h1;Ln/d1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Lr0/q;I)V
    .locals 7

    const v0, 0x33ae021d

    invoke-virtual {p5, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p6, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p5, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p6

    goto :goto_1

    :cond_1
    move v0, p6

    :goto_1
    and-int/lit8 v1, p6, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p5, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p6, 0x180

    if-nez v1, :cond_6

    and-int/lit16 v1, p6, 0x200

    if-nez v1, :cond_4

    invoke-virtual {p5, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_4
    invoke-virtual {p5, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    const/16 v1, 0x100

    goto :goto_4

    :cond_5
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v0, v1

    :cond_6
    and-int/lit16 v1, p6, 0xc00

    if-nez v1, :cond_9

    and-int/lit16 v1, p6, 0x1000

    if-nez v1, :cond_7

    invoke-virtual {p5, p3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_7
    invoke-virtual {p5, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_8

    const/16 v1, 0x800

    goto :goto_6

    :cond_8
    const/16 v1, 0x400

    :goto_6
    or-int/2addr v0, v1

    :cond_9
    and-int/lit16 v1, p6, 0x6000

    if-nez v1, :cond_c

    const v1, 0x8000

    and-int/2addr v1, p6

    if-nez v1, :cond_a

    invoke-virtual {p5, p4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7

    :cond_a
    invoke-virtual {p5, p4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    :goto_7
    if-eqz v1, :cond_b

    const/16 v1, 0x4000

    goto :goto_8

    :cond_b
    const/16 v1, 0x2000

    :goto_8
    or-int/2addr v0, v1

    :cond_c
    and-int/lit16 v1, v0, 0x2493

    const/16 v2, 0x2492

    const/4 v3, 0x1

    if-eq v1, v2, :cond_d

    move v1, v3

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    and-int/2addr v0, v3

    invoke-virtual {p5, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ln/h1;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2, p3, p4}, Ln/d1;->f(Ljava/lang/Object;Ljava/lang/Object;Ln/x;)V

    goto :goto_a

    :cond_e
    invoke-virtual {p1, p3, p4}, Ln/d1;->g(Ljava/lang/Object;Ln/x;)V

    goto :goto_a

    :cond_f
    invoke-virtual {p5}, Lr0/q;->W()V

    :goto_a
    invoke-virtual {p5}, Lr0/q;->u()Lr0/n1;

    move-result-object p5

    if-eqz p5, :cond_10

    new-instance v0, Ln/j1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ln/j1;-><init>(Ln/h1;Ln/d1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;I)V

    iput-object v0, p5, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final b(Ln/h1;Ln/o1;Ljava/lang/String;Lr0/q;)Ln/b1;
    .locals 3

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ln/b1;

    invoke-direct {v1, p0, p1, p2}, Ln/b1;-><init>(Ln/h1;Ln/o1;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Ln/b1;

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    new-instance p2, Lb0/r0;

    const/16 p1, 0xf

    invoke-direct {p2, p1, p0, v1}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast p2, Li9/c;

    invoke-static {v1, p2, p3}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {p0}, Ln/h1;->g()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Ln/b1;->b:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/a1;

    if-eqz p0, :cond_4

    iget-object p1, v1, Ln/b1;->c:Ln/h1;

    iget-object p2, p0, Ln/a1;->l:Ln/d1;

    iget-object p3, p0, Ln/a1;->n:Lj9/o;

    invoke-virtual {p1}, Ln/h1;->f()Ln/c1;

    move-result-object v0

    iget-object v0, v0, Ln/c1;->a:Ljava/lang/Object;

    invoke-interface {p3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Ln/a1;->n:Lj9/o;

    invoke-virtual {p1}, Ln/h1;->f()Ln/c1;

    move-result-object v2

    iget-object v2, v2, Ln/c1;->b:Ljava/lang/Object;

    invoke-interface {v0, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Ln/a1;->m:Li9/c;

    invoke-virtual {p1}, Ln/h1;->f()Ln/c1;

    move-result-object p1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/x;

    invoke-virtual {p2, p3, v0, p0}, Ln/d1;->f(Ljava/lang/Object;Ljava/lang/Object;Ln/x;)V

    :cond_4
    return-object v1
.end method

.method public static final c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;
    .locals 5

    invoke-virtual {p5, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p6

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-nez p6, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object p6

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ld1/g;->e()Li9/c;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p6}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v3

    :try_start_0
    new-instance v0, Ln/d1;

    iget-object v4, p4, Ln/o1;->a:Li9/c;

    invoke-interface {v4, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/p;

    invoke-virtual {v4}, Ln/p;->d()V

    invoke-direct {v0, p0, p1, v4, p4}, Ln/d1;-><init>(Ln/h1;Ljava/lang/Object;Ln/p;Ln/o1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p6, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    invoke-virtual {p5, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Ln/d1;

    const/4 p6, 0x0

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, v0

    invoke-static/range {p0 .. p6}, Ln/m1;->a(Ln/h1;Ln/d1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Lr0/q;I)V

    invoke-virtual {p5, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p5, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_3

    if-ne p3, v1, :cond_4

    :cond_3
    new-instance p3, Lb0/r0;

    const/16 p2, 0x10

    invoke-direct {p3, p2, p0, p1}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast p3, Li9/c;

    invoke-static {p1, p3, p5}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p6, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0
.end method

.method public static final d(Ljava/lang/Object;Ljava/lang/String;Lr0/q;II)Ln/h1;
    .locals 3

    and-int/lit8 p4, p4, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p4

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne p4, v1, :cond_1

    new-instance p4, Ln/h1;

    new-instance v2, Ln/i0;

    invoke-direct {v2, p0}, Ln/i0;-><init>(Ljava/lang/Object;)V

    invoke-direct {p4, v2, v0, p1}, Ln/h1;-><init>(Ln/i0;Ln/h1;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p4, Ln/h1;

    and-int/lit8 p1, p3, 0x8

    or-int/lit8 p1, p1, 0x30

    and-int/lit8 p3, p3, 0xe

    or-int/2addr p1, p3

    invoke-virtual {p4, p0, p2, p1}, Ln/h1;->a(Ljava/lang/Object;Lr0/q;I)V

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    new-instance p0, Ln/i1;

    const/4 p1, 0x1

    invoke-direct {p0, p4, p1}, Ln/i1;-><init>(Ln/h1;I)V

    invoke-virtual {p2, p0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast p0, Li9/c;

    invoke-static {p4, p0, p2}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    return-object p4
.end method
