.class public final Le3/t;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Lk1/t;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public A:Landroid/view/ViewTreeObserver;

.field public final B:Le3/s;

.field public final C:Le3/s;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf1/q;-><init>()V

    new-instance v0, Le3/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le3/s;-><init>(Le3/t;I)V

    iput-object v0, p0, Le3/t;->B:Le3/s;

    new-instance v0, Le3/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le3/s;-><init>(Le3/t;I)V

    iput-object v0, p0, Le3/t;->C:Le3/s;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 1

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Le3/t;->A:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final F0()V
    .locals 2

    iget-object v0, p0, Le3/t;->A:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Le3/t;->A:Landroid/view/ViewTreeObserver;

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    iput-object v0, p0, Le3/t;->z:Landroid/view/View;

    return-void
.end method

.method public final M0()Lk1/b0;
    .locals 9

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitLocalDescendants called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget v0, p0, Lf1/q;->o:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p0, :cond_a

    iget v2, p0, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_9

    instance-of v5, v3, Lk1/b0;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    check-cast v3, Lk1/b0;

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    move v1, v6

    goto :goto_4

    :cond_2
    iget v5, v3, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    instance-of v5, v3, Le2/k;

    if-eqz v5, :cond_8

    move-object v5, v3

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    move v7, v0

    :goto_2
    if-eqz v5, :cond_7

    iget v8, v5, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    new-instance v4, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v4, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v4, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_7
    if-ne v7, v6, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find focus target of embedded view wrapper"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->z:Le2/q1;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p0}, Le3/l;->c(Lf1/q;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v1

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne p1, v5, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_3
    if-eqz p1, :cond_5

    if-eqz v3, :cond_5

    iput-object p2, p0, Le3/t;->z:Landroid/view/View;

    return-void

    :cond_5
    if-eqz v3, :cond_6

    iput-object p2, p0, Le3/t;->z:Landroid/view/View;

    invoke-virtual {p0}, Le3/t;->M0()Lk1/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object p1

    invoke-virtual {p1}, Lk1/z;->a()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p0}, Lk1/d;->w(Lk1/b0;)Z

    return-void

    :cond_6
    const/4 p2, 0x0

    if-eqz p1, :cond_8

    iput-object p2, p0, Le3/t;->z:Landroid/view/View;

    invoke-virtual {p0}, Le3/t;->M0()Lk1/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object p0

    invoke-virtual {p0}, Lk1/z;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    check-cast v1, Lk1/o;

    invoke-virtual {v1, p0, v4, v4}, Lk1/o;->b(IZZ)Z

    :cond_7
    :goto_4
    return-void

    :cond_8
    iput-object p2, p0, Le3/t;->z:Landroid/view/View;

    return-void
.end method

.method public final z0(Lk1/q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lk1/q;->d(Z)V

    iget-object v0, p0, Le3/t;->B:Le3/s;

    invoke-interface {p1, v0}, Lk1/q;->c(Le3/s;)V

    iget-object p0, p0, Le3/t;->C:Le3/s;

    invoke-interface {p1, p0}, Lk1/q;->b(Le3/s;)V

    return-void
.end method
