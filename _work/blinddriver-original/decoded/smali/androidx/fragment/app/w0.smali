.class public abstract Landroidx/fragment/app/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/e1;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/a;

.field public final g:Landroidx/fragment/app/s0;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/Map;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lg5/s;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public m:I

.field public n:Landroidx/fragment/app/o0;

.field public o:Landroidx/fragment/app/l0;

.field public p:Landroidx/fragment/app/l0;

.field public final q:Landroidx/fragment/app/u0;

.field public final r:Ld7/g;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Landroidx/fragment/app/a1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/e1;

    invoke-direct {v0}, Landroidx/fragment/app/e1;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    new-instance v0, Landroidx/fragment/app/s0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/w0;)V

    iput-object v0, p0, Landroidx/fragment/app/w0;->g:Landroidx/fragment/app/s0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/w0;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->j:Ljava/util/ArrayList;

    new-instance v0, Lg5/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lg5/s;->l:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lg5/s;->m:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/w0;->k:Lg5/s;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/w0;I)V

    new-instance v0, Landroidx/fragment/app/r0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/w0;I)V

    new-instance v0, Landroidx/fragment/app/r0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/w0;I)V

    new-instance v0, Landroidx/fragment/app/r0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/w0;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/w0;->m:I

    new-instance v0, Landroidx/fragment/app/u0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->q:Landroidx/fragment/app/u0;

    new-instance v0, Ld7/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/w0;->r:Ld7/g;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v0, Landroidx/fragment/app/v;

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/v;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public static l(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Landroidx/fragment/app/l0;)Z
    .locals 5

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_1
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/l0;

    if-eqz v4, :cond_2

    invoke-static {v4}, Landroidx/fragment/app/w0;->m(Landroidx/fragment/app/l0;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static o(Landroidx/fragment/app/l0;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-object v1, v0, Landroidx/fragment/app/w0;->p:Landroidx/fragment/app/l0;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/l0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    invoke-static {p0}, Landroidx/fragment/app/w0;->o(Landroidx/fragment/app/l0;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {v1}, Landroidx/fragment/app/e1;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/d1;

    iget-object v4, v4, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-object v4, v4, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->k()Ld7/g;

    move-result-object v5

    const-string v6, "factory"

    invoke-static {v5, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f08006d

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroidx/fragment/app/u;

    if-eqz v7, :cond_1

    check-cast v6, Landroidx/fragment/app/u;

    goto :goto_1

    :cond_1
    new-instance v6, Landroidx/fragment/app/u;

    invoke-direct {v6, v4}, Landroidx/fragment/app/u;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final b(ZLandroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/l0;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/w0;->b(ZLandroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->performLowMemory()V

    if-eqz p1, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w0;->c(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(ZZ)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->performMultiWindowModeChanged(Z)V

    if-eqz p2, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/w0;->d(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroidx/fragment/app/l0;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->isHidden()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/l0;->onHiddenChanged(Z)V

    iget-object v2, v2, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v2}, Landroidx/fragment/app/w0;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Landroidx/fragment/app/l0;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/e1;->a(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/l0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/l0;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public final g(ZZ)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->performPictureInPictureModeChanged(Z)V

    if-eqz p2, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/w0;->g(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/w0;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    iget-object v0, v0, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d1;

    if-eqz v2, :cond_0

    iput p1, v2, Landroidx/fragment/app/d1;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/w0;->p(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->a()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/w0;->b:Z

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0

    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/w0;->b:Z

    throw p1
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/w0;->b:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/w0;->v:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()Landroidx/fragment/app/u0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->j()Landroidx/fragment/app/u0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/w0;->q:Landroidx/fragment/app/u0;

    return-object p0
.end method

.method public final k()Ld7/g;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->k()Ld7/g;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/w0;->r:Ld7/g;

    return-object p0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->n()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final p(IZ)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    if-nez p2, :cond_0

    iget p2, p0, Landroidx/fragment/app/w0;->m:I

    if-ne p1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iput p1, p0, Landroidx/fragment/app/w0;->m:I

    iget-object p1, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    iget-object p2, p1, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/l0;

    iget-object v4, v4, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/d1;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/fragment/app/d1;->k()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/d1;->k()V

    iget-object v1, v0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-boolean v3, v1, Landroidx/fragment/app/l0;->mRemoving:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v1, Landroidx/fragment/app/l0;->mBeingSaved:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroidx/fragment/app/e1;->c:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, v1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/fragment/app/d1;->m()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/e1;->f(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/d1;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/e1;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v2

    :cond_6
    :goto_2
    if-ge v0, p2, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroidx/fragment/app/d1;

    iget-object v3, v1, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-boolean v4, v3, Landroidx/fragment/app/l0;->mDeferStart:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroidx/fragment/app/w0;->b:Z

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v2, v3, Landroidx/fragment/app/l0;->mDeferStart:Z

    invoke-virtual {v1}, Landroidx/fragment/app/d1;->k()V

    goto :goto_2

    :cond_8
    :goto_3
    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()V
    .locals 5

    const-string v0, "FragmentManager "

    iget-object v1, p0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/w0;->g:Landroidx/fragment/app/s0;

    invoke-virtual {v2, v4}, Lb/b0;->e(Z)V

    invoke-static {v3}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/w0;->f:Landroidx/fragment/app/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    invoke-static {v0}, Landroidx/fragment/app/w0;->o(Landroidx/fragment/app/l0;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-static {v3}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnBackPressedCallback for FragmentManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enabled state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/w0;->g:Landroidx/fragment/app/s0;

    invoke-virtual {p0, v4}, Lb/b0;->e(Z)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
