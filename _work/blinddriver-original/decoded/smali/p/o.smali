.class public abstract Lp/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FJ)Lp/x;
    .locals 2

    new-instance v0, Lp/x;

    new-instance v1, Lm1/j0;

    invoke-direct {v1, p1, p2}, Lm1/j0;-><init>(J)V

    invoke-direct {v0, p0, v1}, Lp/x;-><init>(FLm1/j0;)V

    return-object v0
.end method

.method public static final b(ILf1/r;Li9/c;Lr0/q;)V
    .locals 4

    const v0, -0x3799f46e

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p0

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    and-int/lit8 v1, p0, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

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

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/2addr v0, v3

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lj1/g;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    invoke-static {v0, p3}, Lu/b;->e(Lf1/r;Lr0/q;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lb0/h;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final c(Lq1/b;Lf1/r;Lf1/e;Lc2/x0;Lr0/q;I)V
    .locals 10

    const v1, 0x441d0e20

    invoke-virtual {p4, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p5

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x800

    goto :goto_1

    :cond_1
    const/16 v2, 0x400

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {p4, p3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4000

    goto :goto_2

    :cond_2
    const/16 v2, 0x2000

    :goto_2
    or-int/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p4, v2}, Lr0/q;->d(F)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x20000

    goto :goto_3

    :cond_3
    const/high16 v2, 0x10000

    :goto_3
    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x100000

    goto :goto_4

    :cond_4
    const/high16 v2, 0x80000

    :goto_4
    or-int/2addr v1, v2

    const v2, 0x92493

    and-int/2addr v2, v1

    const v6, 0x92492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v6, :cond_5

    move v2, v8

    goto :goto_5

    :cond_5
    move v2, v7

    :goto_5
    and-int/2addr v1, v8

    invoke-virtual {p4, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7133d784

    invoke-virtual {p4, v1}, Lr0/q;->b0(I)V

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-ne v1, v9, :cond_6

    new-instance v1, Ln/p1;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ln/p1;-><init>(I)V

    invoke-virtual {p4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v1, Li9/c;

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v7, v1}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    invoke-virtual {p4, v7}, Lr0/q;->q(Z)V

    invoke-interface {p1, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-static {v1}, Lj1/g;->c(Lf1/r;)Lf1/r;

    move-result-object v2

    const/4 v7, 0x2

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lj1/g;->g(Lf1/r;Lq1/b;Lf1/e;Lc2/x0;Lm1/j;I)Lf1/r;

    move-result-object v1

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_7

    sget-object v2, Lp/z0;->a:Lp/z0;

    invoke-virtual {p4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lc2/r0;

    iget-wide v3, p4, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-static {v1, p4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {p4}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p4}, Lr0/q;->e0()V

    iget-boolean v6, p4, Lr0/q;->S:Z

    if-eqz v6, :cond_8

    invoke-virtual {p4, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_8
    invoke-virtual {p4}, Lr0/q;->o0()V

    :goto_6
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v2, p4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, p4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {p4, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, p4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {p4, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-virtual {p4, v8}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_9
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v2, Li0/d;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Li0/d;-><init>(Lq1/b;Lf1/r;Lf1/e;Lc2/x0;I)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static d(Landroid/widget/EdgeEffect;FFLb3/c;)F
    .locals 8

    sget v0, Lp/k0;->a:F

    const v0, 0x43c10b3d

    invoke-interface {p3}, Lb3/c;->a()F

    move-result p3

    mul-float/2addr p3, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p3, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    const p3, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, p3

    float-to-double v2, v2

    sget p3, Lp/k0;->a:F

    float-to-double v4, p3

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lp/k0;->b:D

    sget-wide v6, Lp/k0;->c:D

    div-double/2addr v2, v6

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float p3, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    mul-float/2addr v3, p2

    cmpg-float p2, p3, v3

    if-gtz p2, :cond_3

    invoke-static {p1}, Ll9/a;->z(F)I

    move-result p2

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_2
    return p1

    :cond_3
    return v1
.end method

.method public static final e(Lf1/r;JLm1/h0;)Lf1/r;
    .locals 1

    new-instance v0, Lp/n;

    invoke-direct {v0, p1, p2, p3}, Lp/n;-><init>(JLm1/h0;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(JLf1/r;)Lf1/r;
    .locals 1

    sget-object v0, Lm1/v;->b:Lm1/e0;

    invoke-static {p2, p0, p1, v0}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lf1/r;Lp/q;)Lf1/r;
    .locals 3

    sget v0, Lp/k1;->a:F

    new-instance v1, Lp/l1;

    const/16 v2, 0x4b0

    invoke-direct {v1, v2, p1, v0}, Lp/l1;-><init>(ILp/q;F)V

    invoke-interface {p0, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lf1/r;FJLm1/h0;)Lf1/r;
    .locals 1

    new-instance v0, Lm1/j0;

    invoke-direct {v0, p2, p3}, Lm1/j0;-><init>(J)V

    new-instance p2, Lp/w;

    invoke-direct {p2, p1, v0, p4}, Lp/w;-><init>(FLm1/j0;Lm1/h0;)V

    invoke-interface {p0, p2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final i(JLr/m1;)V
    .locals 2

    sget-object v0, Lr/m1;->l:Lr/m1;

    const v1, 0x7fffffff

    if-ne p2, v0, :cond_1

    invoke-static {p0, p1}, Lb3/a;->g(J)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container."

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lb3/a;->h(J)I

    move-result p0

    if-eq p0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const-string p0, "Horizontally scrollable component was measured with an infinity maximum width constraints, which is disallowed. One of the common reasons is nesting layouts like LazyRow and Row(Modifier.horizontalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyRow scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container."

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static j(Lf1/r;Ls/i;Lo0/b3;ZLi9/a;)Lf1/r;
    .locals 7

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lp/y;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lp/y;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Li9/a;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    if-nez v2, :cond_1

    new-instance v0, Lp/y;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lp/y;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Li9/a;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lf1/o;->a:Lf1/o;

    if-eqz v1, :cond_2

    invoke-static {p1, v1, v2}, Lp/b1;->a(Lf1/r;Ls/i;Lp/e1;)Lf1/r;

    move-result-object p1

    new-instance v0, Lp/y;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lp/y;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Li9/a;)V

    invoke-interface {p1, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p2, Lp/z;

    invoke-direct {p2, v2, v4, v6}, Lp/z;-><init>(Lp/e1;ZLi9/a;)V

    invoke-static {p1, p2}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;
    .locals 7

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    move v4, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v5, p2

    new-instance v0, Lp/y;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lp/y;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Li9/a;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lf1/r;Ls/i;Li9/a;)Lf1/r;
    .locals 3

    new-instance v0, Lp/d0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, p1, v1}, Lp/d0;-><init>(Li9/a;Li9/a;Ls/i;Z)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lf1/r;Li9/a;Li9/a;)Lf1/r;
    .locals 3

    new-instance v0, Lp/d0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, v2, v1}, Lp/d0;-><init>(Li9/a;Li9/a;Ls/i;Z)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lf1/r;ZLs/i;)Lf1/r;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lp/n0;

    invoke-direct {p1, p2}, Lp/n0;-><init>(Ls/i;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lf1/o;->a:Lf1/o;

    :goto_0
    invoke-interface {p0, p1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lf1/r;Ls/i;)Lf1/r;
    .locals 1

    new-instance v0, Lp/u0;

    invoke-direct {v0, p1}, Lp/u0;-><init>(Ls/i;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {p0}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget p0, Lw1/a;->F:I

    sget-wide v2, Lw1/a;->h:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    sget-wide v2, Lw1/a;->r:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    sget-wide v2, Lw1/a;->E:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    sget-wide v2, Lw1/a;->q:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final q(Lr0/q;)Lp/a2;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lr0/q;->e(I)Z

    move-result v2

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v3, v2, :cond_1

    :cond_0
    new-instance v3, Lp/a1;

    const/4 v2, 0x2

    invoke-direct {v3, v2}, Lp/a1;-><init>(I)V

    invoke-virtual {p0, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Li9/a;

    sget-object v2, Lp/a2;->j:Lg5/c;

    invoke-static {v1, v2, v3, p0, v0}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp/a2;

    return-object p0
.end method

.method public static r(Lf1/r;Lw/p;Lr/m1;Lp/j;ZLr/k;Ls/i;)Lf1/r;
    .locals 8

    sget v0, Lp/c0;->a:F

    sget-object v0, Lr/m1;->l:Lr/m1;

    sget-object v1, Lf1/o;->a:Lf1/o;

    if-ne p2, v0, :cond_0

    sget-object v0, Lp/t0;->c:Lp/t0;

    invoke-static {v1, v0}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lp/t0;->b:Lp/t0;

    invoke-static {v1, v0}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    new-instance v0, Lp/b2;

    const/4 v7, 0x0

    move-object v4, p1

    move-object v3, p2

    move-object v1, p3

    move v6, p4

    move-object v2, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lp/b2;-><init>(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final s(FJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v1, p0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static t(Lf1/r;Lp/a2;)Lf1/r;
    .locals 8

    sget-object v3, Lr/m1;->l:Lr/m1;

    iget-object v5, p1, Lp/a2;->d:Ls/i;

    sget v0, Lp/c0;->a:F

    sget-object v0, Lf1/o;->a:Lf1/o;

    sget-object v1, Lp/t0;->c:Lp/t0;

    invoke-static {v0, v1}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v0

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    new-instance v0, Lp/b2;

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lp/b2;-><init>(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    new-instance p1, Lp/d2;

    invoke-direct {p1, v4}, Lp/d2;-><init>(Lp/a2;)V

    invoke-interface {p0, p1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
