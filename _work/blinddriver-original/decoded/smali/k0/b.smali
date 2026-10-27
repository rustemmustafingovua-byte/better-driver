.class public final Lk0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/s;


# instance fields
.field public a:Lk0/n;

.field public b:Lu9/j1;

.field public c:Lk0/s;

.field public d:Lx9/b0;


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk0/b;->j(Lb0/d2;)V

    return-void
.end method

.method public final b(Ll1/c;)V
    .locals 4

    iget-object p0, p0, Lk0/b;->c:Lk0/s;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Ll1/c;->a:F

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    iget v2, p1, Ll1/c;->b:F

    invoke-static {v2}, Ll9/a;->z(F)I

    move-result v2

    iget v3, p1, Ll1/c;->c:F

    invoke-static {v3}, Ll9/a;->z(F)I

    move-result v3

    iget p1, p1, Ll1/c;->d:F

    invoke-static {p1}, Ll9/a;->z(F)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lk0/s;->l:Landroid/graphics/Rect;

    iget-object p1, p0, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/s;->l:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lk0/s;->a:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lk0/b;->a:Lk0/n;

    if-eqz p0, :cond_0

    sget-object v0, Lf2/l1;->p:Lr0/s2;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/k2;

    if-eqz p0, :cond_0

    check-cast p0, Lf2/n1;

    invoke-virtual {p0}, Lf2/n1;->b()V

    :cond_0
    return-void
.end method

.method public final d(Lu2/x;Lu2/q;Lp2/j0;Lb0/g2;Ll1/c;Ll1/c;)V
    .locals 0

    iget-object p0, p0, Lk0/b;->c:Lk0/s;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lk0/s;->m:Lk0/p;

    iget-object p4, p0, Lk0/p;->c:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iput-object p1, p0, Lk0/p;->j:Lu2/x;

    iput-object p2, p0, Lk0/p;->l:Lu2/q;

    iput-object p3, p0, Lk0/p;->k:Lp2/j0;

    iput-object p5, p0, Lk0/p;->m:Ll1/c;

    iput-object p6, p0, Lk0/p;->n:Ll1/c;

    iget-boolean p1, p0, Lk0/p;->e:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lk0/p;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lk0/p;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4

    throw p0

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 12

    iget-object v0, p0, Lk0/b;->b:Lu9/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lk0/b;->b:Lu9/j1;

    invoke-virtual {p0}, Lk0/b;->i()Lx9/w;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v1, p0

    check-cast v1, Lx9/b0;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lx9/b0;->o()J

    move-result-wide v2

    iget p0, v1, Lx9/b0;->v:I

    int-to-long v4, p0

    add-long/2addr v2, v4

    iget-wide v4, v1, Lx9/b0;->u:J

    invoke-virtual {v1}, Lx9/b0;->o()J

    move-result-wide v6

    iget p0, v1, Lx9/b0;->v:I

    int-to-long v8, p0

    add-long/2addr v6, v8

    invoke-virtual {v1}, Lx9/b0;->o()J

    move-result-wide v8

    iget p0, v1, Lx9/b0;->v:I

    int-to-long v10, p0

    add-long/2addr v8, v10

    iget p0, v1, Lx9/b0;->w:I

    int-to-long v10, p0

    add-long/2addr v8, v10

    invoke-virtual/range {v1 .. v9}, Lx9/b0;->u(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_1
    return-void
.end method

.method public final f(Lu2/x;Lu2/x;)V
    .locals 12

    iget-object p0, p0, Lk0/b;->c:Lk0/s;

    if-eqz p0, :cond_e

    iget-object v0, p0, Lk0/s;->h:Lu2/x;

    iget-wide v0, v0, Lu2/x;->b:J

    iget-wide v2, p2, Lu2/x;->b:J

    invoke-static {v0, v1, v2, v3}, Lp2/l0;->b(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk0/s;->h:Lu2/x;

    iget-object v0, v0, Lu2/x;->c:Lp2/l0;

    iget-object v2, p2, Lu2/x;->c:Lp2/l0;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-object p2, p0, Lk0/s;->h:Lu2/x;

    iget-object v2, p0, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk0/t;

    if-eqz v4, :cond_2

    iput-object p2, v4, Lk0/t;->g:Lu2/x;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lk0/s;->m:Lk0/p;

    iget-object v3, v2, Lk0/p;->c:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v2, Lk0/p;->j:Lu2/x;

    iput-object v4, v2, Lk0/p;->l:Lu2/q;

    iput-object v4, v2, Lk0/p;->k:Lp2/j0;

    iput-object v4, v2, Lk0/p;->m:Ll1/c;

    iput-object v4, v2, Lk0/p;->n:Ll1/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    if-eqz v0, :cond_e

    iget-object p1, p0, Lk0/s;->b:Lk0/l;

    iget-wide v0, p2, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->f(J)I

    move-result v6

    iget-wide v0, p2, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->e(J)I

    move-result v7

    iget-object p2, p0, Lk0/s;->h:Lu2/x;

    iget-object p2, p2, Lu2/x;->c:Lp2/l0;

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lp2/l0;->a:J

    invoke-static {v0, v1}, Lp2/l0;->f(J)I

    move-result p2

    move v8, p2

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    iget-object p0, p0, Lk0/s;->h:Lu2/x;

    iget-object p0, p0, Lu2/x;->c:Lp2/l0;

    if-eqz p0, :cond_5

    iget-wide v0, p0, Lp2/l0;->a:J

    invoke-static {v0, v1}, Lp2/l0;->e(J)I

    move-result v3

    :cond_5
    move v9, v3

    invoke-virtual {p1}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object p0, p1, Lk0/l;->m:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void

    :cond_6
    if-eqz p1, :cond_8

    iget-object v0, p1, Lu2/x;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    iget-object v2, p2, Lu2/x;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v4, p1, Lu2/x;->b:J

    iget-wide v6, p2, Lu2/x;->b:J

    invoke-static {v4, v5, v6, v7}, Lp2/l0;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lu2/x;->c:Lp2/l0;

    iget-object p2, p2, Lu2/x;->c:Lp2/l0;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p0, p0, Lk0/s;->b:Lk0/l;

    invoke-virtual {p0}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p0, p0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void

    :cond_8
    iget-object p1, p0, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_e

    iget-object p2, p0, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk0/t;

    if-eqz p2, :cond_d

    iget-object v0, p0, Lk0/s;->h:Lu2/x;

    iget-object v2, p0, Lk0/s;->b:Lk0/l;

    iget-boolean v4, p2, Lk0/t;->k:Z

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    iput-object v0, p2, Lk0/t;->g:Lu2/x;

    iget-boolean v4, p2, Lk0/t;->i:Z

    if-eqz v4, :cond_a

    iget p2, p2, Lk0/t;->h:I

    invoke-static {v0}, Lk0/o;->d(Lu2/x;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    invoke-virtual {v2}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    iget-object v6, v2, Lk0/l;->m:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6, p2, v4}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_a
    iget-object p2, v0, Lu2/x;->c:Lp2/l0;

    iget-wide v4, v0, Lu2/x;->b:J

    if-eqz p2, :cond_b

    iget-wide v6, p2, Lp2/l0;->a:J

    invoke-static {v6, v7}, Lp2/l0;->f(J)I

    move-result p2

    move v10, p2

    goto :goto_5

    :cond_b
    move v10, v3

    :goto_5
    iget-object p2, v0, Lu2/x;->c:Lp2/l0;

    if-eqz p2, :cond_c

    iget-wide v6, p2, Lp2/l0;->a:J

    invoke-static {v6, v7}, Lp2/l0;->e(J)I

    move-result p2

    move v11, p2

    goto :goto_6

    :cond_c
    move v11, v3

    :goto_6
    invoke-static {v4, v5}, Lp2/l0;->f(J)I

    move-result v8

    invoke-static {v4, v5}, Lp2/l0;->e(J)I

    move-result v9

    invoke-virtual {v2}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    iget-object p2, v2, Lk0/l;->m:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Landroid/view/View;

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_d
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3

    throw p0

    :cond_e
    return-void
.end method

.method public final g(Lu2/x;Lu2/k;Lb0/o;Lb0/h0;)V
    .locals 6

    new-instance v0, Lb0/d2;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lb0/d2;-><init>(Lu2/x;Lk0/b;Lu2/k;Lb0/o;Li9/c;)V

    invoke-virtual {v2, v0}, Lk0/b;->j(Lb0/d2;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object p0, p0, Lk0/b;->a:Lk0/n;

    if-eqz p0, :cond_0

    sget-object v0, Lf2/l1;->p:Lr0/s2;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/k2;

    if-eqz p0, :cond_0

    check-cast p0, Lf2/n1;

    invoke-virtual {p0}, Lf2/n1;->a()V

    :cond_0
    return-void
.end method

.method public final i()Lx9/w;
    .locals 3

    iget-object v0, p0, Lk0/b;->d:Lx9/b0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v0, Lj0/e;->a:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, Lw9/a;->n:Lw9/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lx9/c0;->a(IILw9/a;)Lx9/b0;

    move-result-object v0

    iput-object v0, p0, Lk0/b;->d:Lx9/b0;

    return-object v0
.end method

.method public final j(Lb0/d2;)V
    .locals 6

    iget-object v3, p0, Lk0/b;->a:Lk0/n;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/j0;

    const/4 v5, 0x4

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iget-boolean p0, v3, Lf1/q;->y:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lf1/q;->A0()Lu9/t;

    move-result-object p0

    sget-object p1, Lu9/u;->o:Lu9/u;

    new-instance v1, Landroidx/lifecycle/i0;

    const/16 v5, 0xf

    invoke-direct {v1, v3, v0, v4, v5}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v0, 0x1

    invoke-static {p0, v4, p1, v1, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v4

    :goto_0
    iput-object v4, v2, Lk0/b;->b:Lu9/j1;

    return-void
.end method

.method public final k(Lk0/n;)V
    .locals 2

    iget-object v0, p0, Lk0/b;->a:Lk0/n;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected textInputModifierNode to be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lk0/b;->a:Lk0/n;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt/b;->c(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lk0/b;->a:Lk0/n;

    return-void
.end method
