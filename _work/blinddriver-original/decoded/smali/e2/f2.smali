.class public final Le2/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final l:Ljava/lang/Object;

.field public final m:Ljava/util/ArrayList;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le2/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/f2;->l:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le2/f2;->m:Ljava/util/ArrayList;

    iput-object p1, p0, Le2/f2;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Le2/f2;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Le2/f2;->l:Ljava/lang/Object;

    iput-object v0, p0, Le2/f2;->n:Ljava/lang/Object;

    iget-object p0, p0, Le2/f2;->l:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    invoke-virtual {p0}, Le2/g0;->R()V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Le2/g0;

    iget-object p0, p0, Le2/f2;->n:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    invoke-virtual {p0, p1, p2}, Le2/g0;->B(ILe2/g0;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le2/f2;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Le2/f2;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le2/f2;->n:Ljava/lang/Object;

    return-void
.end method

.method public final e()V
    .locals 7

    iget-object p0, p0, Le2/f2;->n:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onReuse is only expected on attached node"

    invoke-static {v1}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Le2/g0;->A:Le3/z;

    if-eqz v1, :cond_2

    iget-object v2, v1, Le3/k;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Le3/k;->q:Li9/a;

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v1, p0, Le2/g0;->T:Lc2/n0;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lc2/n0;->i(Z)V

    :cond_3
    iput-boolean v2, p0, Le2/g0;->F:Z

    iget-boolean v1, p0, Le2/g0;->c0:Z

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Le2/g0;->c0:Z

    goto :goto_4

    :cond_4
    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v4, v3, Lf1/q;->y:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lf1/q;->H0()V

    :cond_5
    iget-object v3, v3, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_6
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_8

    iget-boolean v4, v3, Lf1/q;->y:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lf1/q;->J0()V

    :cond_7
    iget-object v3, v3, Lf1/q;->p:Lf1/q;

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v1, :cond_a

    iget-boolean v3, v1, Lf1/q;->y:Z

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lf1/q;->D0()V

    :cond_9
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_3

    :cond_a
    :goto_4
    iget v1, p0, Le2/g0;->m:I

    iget-object v3, p0, Le2/g0;->z:Le2/q1;

    if-eqz v3, :cond_b

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3, p0}, Ln2/b;->g(Le2/g0;)V

    :cond_b
    sget-object v3, Lm2/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    iput v3, p0, Le2/g0;->m:I

    iget-object v3, p0, Le2/g0;->z:Le2/q1;

    if-eqz v3, :cond_c

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getLayoutNodes()Lk/x;

    move-result-object v5

    invoke-virtual {v5, v1}, Lk/x;->g(I)Ljava/lang/Object;

    invoke-virtual {v3}, Lf2/y;->getLayoutNodes()Lk/x;

    move-result-object v3

    iget v5, p0, Le2/g0;->m:I

    invoke-virtual {v3, v5, p0}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_c
    iget-object v3, v0, Le2/c1;->f:Lf1/q;

    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lf1/q;->C0()V

    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Le2/c1;->e()V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Le2/c1;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Le2/g0;->F()V

    :cond_e
    invoke-static {p0}, Le2/g0;->Y(Le2/g0;)V

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_10

    check-cast v0, Lf2/y;

    iget-object v0, v0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lg1/c;->n:Lf2/y;

    iget-object v5, v0, Lg1/c;->l:Lb0/l1;

    iget-object v0, v0, Lg1/c;->s:Lk/y;

    invoke-virtual {v0, v1}, Lk/y;->e(I)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v3, v1, v2}, Lb0/l1;->x(Landroid/view/View;IZ)V

    :cond_f
    invoke-virtual {p0}, Le2/g0;->x()Lm2/m;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v1, Lm2/m;->l:Lk/m0;

    sget-object v2, Lm2/t;->q:Lm2/w;

    invoke-virtual {v1, v2}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_10

    iget v1, p0, Le2/g0;->m:I

    invoke-virtual {v0, v1}, Lk/y;->a(I)Z

    iget v0, p0, Le2/g0;->m:I

    invoke-virtual {v5, v3, v0, v4}, Lb0/l1;->x(Landroid/view/View;IZ)V

    :cond_10
    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_11

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0, v4}, Ln2/b;->e(Le2/g0;Z)V

    :cond_11
    return-void
.end method

.method public final f(III)V
    .locals 0

    iget-object p0, p0, Le2/f2;->n:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    invoke-virtual {p0, p1, p2, p3}, Le2/g0;->L(III)V

    return-void
.end method

.method public final g(II)V
    .locals 0

    iget-object p0, p0, Le2/f2;->n:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    invoke-virtual {p0, p1, p2}, Le2/g0;->S(II)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Le2/f2;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le2/f2;->n:Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic l(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Le2/g0;

    return-void
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Le2/f2;->l:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object p0, p0, Le2/g0;->z:Le2/q1;

    if-eqz p0, :cond_0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->y()V

    :cond_0
    return-void
.end method

.method public final n()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le2/f2;->n:Ljava/lang/Object;

    return-object p0
.end method
