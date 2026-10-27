.class public final Landroidx/fragment/app/s0;
.super Lb/b0;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/fragment/app/w0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/w0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/s0;->d:Landroidx/fragment/app/w0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lb/b0;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    iget-object p0, p0, Landroidx/fragment/app/s0;->d:Landroidx/fragment/app/w0;

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelBackStackTransition for transition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/a;->o:Z

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/f1;

    iget-boolean v4, v3, Landroidx/fragment/app/f1;->c:Z

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget v4, v3, Landroidx/fragment/app/f1;->a:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    iput-boolean v1, v3, Landroidx/fragment/app/f1;->c:Z

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    iget-object v4, v3, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    iget v4, v4, Landroidx/fragment/app/l0;->mContainerId:I

    const/4 v5, 0x2

    iput v5, v3, Landroidx/fragment/app/f1;->a:I

    iput-boolean v1, v3, Landroidx/fragment/app/f1;->c:Z

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/f1;

    iget-boolean v6, v5, Landroidx/fragment/app/f1;->c:Z

    if-eqz v6, :cond_4

    iget-object v5, v5, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    iget v5, v5, Landroidx/fragment/app/l0;->mContainerId:I

    if-ne v5, v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    new-instance v2, Landroidx/fragment/app/b0;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Object;)V

    iget-object v3, v0, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    :cond_7
    iget-object v0, v0, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->b(Z)I

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0

    :cond_8
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    iget-object p0, p0, Landroidx/fragment/app/s0;->d:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Lb/a;)V
    .locals 10

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object p0, p0, Landroidx/fragment/app/s0;->d:Landroidx/fragment/app/w0;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v1, v1, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :cond_1
    :goto_0
    if-ge v6, v5, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/f1;

    iget-object v7, v7, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    if-eqz v7, :cond_1

    iget-object v7, v7, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    invoke-static {v7, p0}, Landroidx/fragment/app/u;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Processing Progress "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lb/a;->c:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, v3, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/s1;

    iget-object v9, v9, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_1

    :cond_5
    invoke-static {v6}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/r1;

    iget-object v9, v3, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8, p1, v9}, Landroidx/fragment/app/r1;->d(Lb/a;Landroid/view/ViewGroup;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/w0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public final d(Lb/a;)V
    .locals 1

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p1

    iget-object p0, p0, Landroidx/fragment/app/s0;->d:Landroidx/fragment/app/w0;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->a()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->i()V

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Landroidx/fragment/app/w0;->v:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
