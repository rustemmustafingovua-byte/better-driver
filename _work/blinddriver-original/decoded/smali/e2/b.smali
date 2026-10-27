.class public final Le2/b;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/n;
.implements Le2/z1;
.implements Le2/v1;
.implements Ld2/c;
.implements Le2/t1;
.implements Le2/w;
.implements Le2/o;
.implements Lk1/g;
.implements Lk1/t;
.implements Lk1/w;
.implements Le2/r1;
.implements Lj1/a;


# instance fields
.field public z:Lf1/p;


# virtual methods
.method public final C(Lm2/x;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Le2/b;->z:Lf1/p;

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier"

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lm2/b;

    new-instance v2, Lm2/m;

    invoke-direct {v2}, Lm2/m;-><init>()V

    iget-boolean v3, v0, Lm2/b;->a:Z

    iput-boolean v3, v2, Lm2/m;->n:Z

    iget-object v0, v0, Lm2/b;->b:Li9/c;

    invoke-interface {v0, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration"

    invoke-static {v1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lm2/m;

    iget-object v1, v0, Lm2/m;->l:Lk/m0;

    iget-boolean v3, v2, Lm2/m;->n:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-boolean v4, v0, Lm2/m;->n:Z

    :cond_0
    iget-boolean v3, v2, Lm2/m;->o:Z

    if-eqz v3, :cond_1

    iput-boolean v4, v0, Lm2/m;->o:Z

    :cond_1
    iget-object v0, v2, Lm2/m;->l:Lk/m0;

    iget-object v2, v0, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v3, v0, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v0, v0, Lk/m0;->a:[J

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_8

    const/4 v6, 0x0

    :goto_0
    aget-wide v7, v0, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_6

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_5

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget-object v13, v2, v12

    aget-object v12, v3, v12

    check-cast v13, Lm2/w;

    invoke-virtual {v1, v13}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v1, v13, v12}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v14, v12, Lm2/a;

    if-eqz v14, :cond_5

    invoke-virtual {v1, v13}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>"

    invoke-static {v14, v15}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lm2/a;

    new-instance v15, Lm2/a;

    iget-object v5, v14, Lm2/a;->a:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v12

    check-cast v5, Lm2/a;

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    :cond_3
    iget-object v14, v14, Lm2/a;->b:Lt8/e;

    if-nez v14, :cond_4

    check-cast v12, Lm2/a;

    iget-object v14, v12, Lm2/a;->b:Lt8/e;

    :cond_4
    invoke-direct {v15, v5, v14}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-virtual {v1, v13, v15}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    if-ne v9, v10, :cond_8

    :cond_7
    if-eq v6, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final E0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le2/b;->M0(Z)V

    return-void
.end method

.method public final F()V
    .locals 11

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly1/a0;

    iget-object p0, p0, Ly1/a0;->d:Lg5/i;

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ly1/y;

    iget-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v1, Ly1/a0;

    sget-object v2, Ly1/y;->m:Ly1/y;

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v0, Ly1/z;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly1/z;-><init>(Ly1/a0;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {v0, v2}, Ly1/z;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    sget-object v0, Ly1/y;->l:Ly1/y;

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    iput-boolean v3, v1, Ly1/a0;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final F0()V
    .locals 1

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "unInitializeModifier called on unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lf1/q;->n:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->C()V

    :cond_1
    return-void
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 4

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc2/a0;

    new-instance v0, Lc2/i;

    sget-object v1, Lc2/u0;->l:Lc2/u0;

    sget-object v2, Lc2/v0;->m:Lc2/v0;

    const/4 v3, 0x1

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/16 v1, 0xd

    invoke-static {p3, p2, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/a0;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public final K()V
    .locals 0

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    return-void
.end method

.method public final L()V
    .locals 1

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly1/a0;

    iget-object p0, p0, Ly1/a0;->d:Lg5/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final M0(Z)V
    .locals 4

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "initializeModifier called on unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Le2/b;->z:Lf1/p;

    iget v1, p0, Lf1/q;->n:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-static {p0, v2}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v1

    invoke-virtual {v1}, Le2/h1;->b1()V

    :cond_1
    iget v1, p0, Lf1/q;->n:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    const-string v3, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v1, Le2/b2;->z:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf1/q;->s:Le2/h1;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Le2/z;

    invoke-virtual {v3, p0}, Le2/z;->v1(Le2/x;)V

    iget-object v1, v1, Le2/h1;->W:Le2/p1;

    if-eqz v1, :cond_2

    check-cast v1, Lf2/r1;

    invoke-virtual {v1}, Lf2/r1;->invalidate()V

    :cond_2
    if-nez p1, :cond_3

    invoke-static {p0, v2}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p1

    invoke-virtual {p1}, Le2/h1;->b1()V

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    invoke-virtual {p1}, Le2/g0;->E()V

    :cond_3
    instance-of p1, v0, Lw/n;

    if-eqz p1, :cond_4

    move-object p1, v0

    check-cast p1, Lw/n;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object p1, p1, Lw/n;->a:Lw/p;

    iput-object v1, p1, Lw/p;->k:Le2/g0;

    :cond_4
    iget p1, p0, Lf1/q;->n:I

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_5

    instance-of v1, v0, Ly1/a0;

    if-eqz v1, :cond_5

    check-cast v0, Ly1/a0;

    iget-object v0, v0, Ly1/a0;->d:Lg5/i;

    iget-object v1, p0, Lf1/q;->s:Le2/h1;

    iput-object v1, v0, Lg5/i;->m:Ljava/lang/Object;

    :cond_5
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->C()V

    :cond_6
    return-void
.end method

.method public final R()Ld2/a;
    .locals 0

    sget-object p0, Ld2/a;->a:Ld2/a;

    return-object p0
.end method

.method public final a()Lb3/c;
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    return-object p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 1

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc2/a0;

    invoke-interface {p0, p1, p2, p3, p4}, Lc2/a0;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 4

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc2/a0;

    new-instance v0, Lc2/i;

    sget-object v1, Lc2/u0;->m:Lc2/u0;

    sget-object v2, Lc2/v0;->m:Lc2/v0;

    const/4 v3, 0x1

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/16 v1, 0xd

    invoke-static {p3, p2, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/a0;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Le2/b;->z:Lf1/p;

    instance-of v0, v0, Ly1/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le2/b;->F()V

    :cond_0
    return-void
.end method

.method public final d()J
    .locals 2

    const/16 v0, 0x80

    invoke-static {p0, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    iget-wide v0, p0, Lc2/f1;->n:J

    invoke-static {v0, v1}, Ly4/s;->E(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->L:Lb3/m;

    return-object p0
.end method

.method public final k0()Z
    .locals 1

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly1/a0;

    iget-object p0, p0, Ly1/a0;->d:Lg5/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final l(J)V
    .locals 0

    return-void
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 4

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc2/a0;

    new-instance v0, Lc2/i;

    sget-object v1, Lc2/u0;->m:Lc2/u0;

    sget-object v2, Lc2/v0;->l:Lc2/v0;

    const/4 v3, 0x1

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/4 v1, 0x7

    invoke-static {p2, p3, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/a0;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lf1/q;->y:Z

    return p0
.end method

.method public final q0(Le2/h1;)V
    .locals 0

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string p1, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final s0(Lk1/z;)V
    .locals 0

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string p1, "onFocusEvent called on wrong node"

    invoke-static {p1}, Lb2/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lc2/u;)V
    .locals 0

    return-void
.end method

.method public final v0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string p1, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lb0/g3;

    return-object p0
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 8

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string p3, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, p3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly1/a0;

    iget-object p0, p0, Ly1/a0;->d:Lg5/i;

    iget-object p3, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p3, Ly1/a0;

    iget-object p4, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u;

    invoke-static {v4}, Ly1/t;->b(Ly1/u;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ly1/t;->d(Ly1/u;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v2

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    invoke-virtual {v5}, Ly1/u;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v1

    :goto_4
    iget-boolean v4, p3, Ly1/a0;->c:Z

    if-nez v4, :cond_8

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, v1

    :goto_5
    if-ge v5, v4, :cond_6

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly1/u;

    invoke-static {v6}, Ly1/t;->b(Ly1/u;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v6}, Ly1/t;->d(Ly1/u;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v2, v1

    goto :goto_7

    :cond_8
    :goto_6
    move v2, v3

    :goto_7
    iget-object v4, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v4, Ly1/y;

    sget-object v5, Ly1/y;->n:Ly1/y;

    if-eq v4, v5, :cond_d

    sget-object v4, Ly1/m;->l:Ly1/m;

    if-ne p2, v4, :cond_b

    if-eqz v2, :cond_b

    iput-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-boolean v4, p3, Ly1/a0;->c:Z

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    move v4, v1

    goto :goto_9

    :cond_a
    :goto_8
    move v4, v3

    :goto_9
    invoke-virtual {p0, p1, v4}, Lg5/i;->l(Ly1/l;Z)V

    :cond_b
    sget-object v4, Ly1/m;->m:Ly1/m;

    if-ne p2, v4, :cond_c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v4, Ly1/l;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, p3, Ly1/a0;->c:Z

    if-eqz v4, :cond_c

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, v1

    :goto_a
    if-ge v5, v4, :cond_c

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly1/u;

    invoke-virtual {v6}, Ly1/u;->a()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    sget-object v4, Ly1/m;->n:Ly1/m;

    if-ne p2, v4, :cond_d

    if-nez v2, :cond_d

    iget-object v2, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v2, Ly1/l;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0, p1, v3}, Lg5/i;->l(Ly1/l;Z)V

    :cond_d
    sget-object v2, Ly1/m;->n:Ly1/m;

    if-ne p2, v2, :cond_12

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p2

    move v2, v1

    :goto_b
    if-ge v2, p2, :cond_f

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/u;

    invoke-static {v3}, Ly1/t;->d(Ly1/u;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_f
    sget-object p2, Ly1/y;->l:Ly1/y;

    iput-object p2, p0, Lg5/i;->n:Ljava/lang/Object;

    iget-object p2, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p2, Ly1/a0;

    iput-boolean v1, p2, Ly1/a0;->c:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lg5/i;->o:Ljava/lang/Object;

    :goto_c
    iget-object p2, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p2, Ly1/l;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz v0, :cond_12

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p2

    move v0, v1

    :goto_d
    if-ge v0, p2, :cond_11

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/u;

    invoke-virtual {v2}, Ly1/u;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean p2, p3, Ly1/a0;->c:Z

    if-nez p2, :cond_11

    invoke-virtual {p0, p1}, Lg5/i;->E(Ly1/l;)V

    return-void

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_11
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_e
    if-ge v1, p0, :cond_12

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/u;

    invoke-virtual {p1}, Ly1/u;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    return-void
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 4

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc2/a0;

    new-instance v0, Lc2/i;

    sget-object v1, Lc2/u0;->l:Lc2/u0;

    sget-object v2, Lc2/v0;->l:Lc2/v0;

    const/4 v3, 0x1

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/4 v1, 0x7

    invoke-static {p2, p3, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/a0;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public final z(Le2/j0;)V
    .locals 1

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lj1/f;

    invoke-virtual {p1}, Le2/j0;->b()V

    return-void
.end method

.method public final z0(Lk1/q;)V
    .locals 0

    iget-object p0, p0, Le2/b;->z:Lf1/p;

    const-string p1, "applyFocusProperties called on wrong node"

    invoke-static {p1}, Lb2/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
