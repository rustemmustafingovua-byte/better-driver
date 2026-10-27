.class public final Lu/e1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/e2;


# instance fields
.field public A:Lu/j1;

.field public B:Lu/j1;

.field public C:Li9/c;

.field public D:Lu/k1;

.field public z:Lu/j1;


# virtual methods
.method public final E0()V
    .locals 3

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lu/k1;->v:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lu/n;->f(Landroid/view/View;)Lu/k1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu/k1;->a(Landroid/view/View;)V

    iget-object v0, p0, Lu/e1;->C:Li9/c;

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/j1;

    iget-object v2, p0, Lu/e1;->B:Lu/j1;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lu/e1;->B:Lu/j1;

    invoke-virtual {p0}, Lu/e1;->M0()V

    :cond_0
    iput-object v1, p0, Lu/e1;->D:Lu/k1;

    new-instance v0, Lu/a0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lu/a0;-><init>(Lu/e1;I)V

    const-string v1, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    invoke-static {p0, v1, v0}, Le2/l;->y(Le2/j;Ljava/lang/Object;Li9/c;)V

    invoke-virtual {p0}, Lu/e1;->M0()V

    return-void
.end method

.method public final F0()V
    .locals 3

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lu/e1;->D:Lu/k1;

    if-eqz v1, :cond_0

    iget v2, v1, Lu/k1;->t:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lu/k1;->t:I

    if-nez v2, :cond_0

    sget-object v2, Lq3/q;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lq3/m;->b(Landroid/view/View;Lq3/f;)V

    invoke-static {v0, v2}, Lq3/q;->d(Landroid/view/View;Lja/c;)V

    iget-object v1, v1, Lu/k1;->u:Lu/b0;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lu/e1;->z:Lu/j1;

    iput-object v0, p0, Lu/e1;->A:Lu/j1;

    new-instance v0, Lu/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu/a0;-><init>(Lu/e1;I)V

    const-string v1, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    invoke-static {p0, v1, v0}, Le2/l;->A(Le2/j;Ljava/lang/String;Li9/c;)V

    return-void
.end method

.method public final G0()V
    .locals 1

    sget-object v0, Lu/b;->c:Lu/x;

    iput-object v0, p0, Lu/e1;->z:Lu/j1;

    return-void
.end method

.method public final M0()V
    .locals 3

    iget-object v0, p0, Lu/e1;->z:Lu/j1;

    iget-object v1, p0, Lu/e1;->B:Lu/j1;

    new-instance v2, Lu/f1;

    invoke-direct {v2, v0, v1}, Lu/f1;-><init>(Lu/j1;Lu/j1;)V

    iput-object v2, p0, Lu/e1;->A:Lu/j1;

    new-instance v0, Lu/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu/a0;-><init>(Lu/e1;I)V

    const-string v1, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    invoke-static {p0, v1, v0}, Le2/l;->A(Le2/j;Ljava/lang/String;Li9/c;)V

    invoke-static {p0}, Le2/l;->l(Le2/x;)V

    return-void
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 6

    iget-object v0, p0, Lu/e1;->A:Lu/j1;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lu/j1;->a(Lc2/t0;Lb3/m;)I

    move-result v0

    iget-object v1, p0, Lu/e1;->z:Lu/j1;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lu/j1;->a(Lc2/t0;Lb3/m;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lu/e1;->A:Lu/j1;

    invoke-interface {v1, p1}, Lu/j1;->d(Lb3/c;)I

    move-result v1

    iget-object v2, p0, Lu/e1;->z:Lu/j1;

    invoke-interface {v2, p1}, Lu/j1;->d(Lb3/c;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lu/e1;->A:Lu/j1;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lu/j1;->b(Lc2/t0;Lb3/m;)I

    move-result v2

    iget-object v3, p0, Lu/e1;->z:Lu/j1;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lu/j1;->b(Lc2/t0;Lb3/m;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lu/e1;->A:Lu/j1;

    invoke-interface {v3, p1}, Lu/j1;->c(Lc2/t0;)I

    move-result v3

    iget-object p0, p0, Lu/e1;->z:Lu/j1;

    invoke-interface {p0, p1}, Lu/j1;->c(Lc2/t0;)I

    move-result p0

    sub-int/2addr v3, p0

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    neg-int p0, v2

    neg-int v4, v3

    invoke-static {p0, v4, p3, p4}, Lb3/b;->i(IIJ)J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    add-int/2addr p2, v2

    invoke-static {p2, p3, p4}, Lb3/b;->g(IJ)I

    move-result p2

    iget v2, p0, Lc2/f1;->m:I

    add-int/2addr v2, v3

    invoke-static {v2, p3, p4}, Lb3/b;->f(IJ)I

    move-result p3

    new-instance p4, Lo0/w1;

    const/4 v2, 0x1

    invoke-direct {p4, p0, v0, v1, v2}, Lo0/w1;-><init>(Ljava/lang/Object;III)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    const-string p0, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    return-object p0
.end method
