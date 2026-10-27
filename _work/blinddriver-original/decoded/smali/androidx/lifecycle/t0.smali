.class public abstract Landroidx/lifecycle/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld7/g;

.field public static final b:Ld7/g;

.field public static final c:Ld7/g;

.field public static final d:Lf4/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ld7/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/t0;->a:Ld7/g;

    new-instance v0, Ld7/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/t0;->b:Ld7/g;

    new-instance v0, Ld7/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/t0;->c:Ld7/g;

    new-instance v0, Lf4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/t0;->d:Lf4/c;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/z0;Ln4/e;Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z0;->c(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/r0;

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/r0;->n:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p2, p1}, Landroidx/lifecycle/r0;->k(Landroidx/lifecycle/q;Ln4/e;)V

    move-object p0, p2

    check-cast p0, Landroidx/lifecycle/x;

    iget-object p0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v0, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/lifecycle/p;->o:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/lifecycle/h;

    invoke-direct {p0, p2, p1}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/q;Ln4/e;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ln4/e;->d()V

    :cond_2
    return-void
.end method

.method public static b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/q0;
    .locals 3

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Landroidx/lifecycle/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Landroidx/lifecycle/a1;

    sget-object v0, Lu8/s;->l:Lu8/s;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a1;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/a1;

    return-object p0

    :cond_1
    const-class p1, Landroidx/lifecycle/q0;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p1

    new-instance v0, Lv8/f;

    invoke-direct {v0, p1}, Lv8/f;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv8/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lv8/f;->b()Lv8/f;

    move-result-object p0

    new-instance p1, Landroidx/lifecycle/q0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Landroidx/lifecycle/a1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a1;-><init>(Ljava/util/Map;)V

    iput-object v0, p1, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/a1;

    return-object p1
.end method

.method public static final c(Ld4/c;)Landroidx/lifecycle/q0;
    .locals 7

    iget-object p0, p0, Ld4/b;->a:Ljava/util/LinkedHashMap;

    sget-object v0, Landroidx/lifecycle/t0;->a:Ld7/g;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/g;

    if-eqz v0, :cond_9

    sget-object v1, Landroidx/lifecycle/t0;->b:Ld7/g;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/g1;

    if-eqz v1, :cond_8

    sget-object v2, Landroidx/lifecycle/t0;->c:Ld7/g;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/e1;->b:Ld7/g;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-interface {v0}, Ln4/g;->getSavedStateRegistry()Ln4/e;

    move-result-object v0

    invoke-virtual {v0}, Ln4/e;->b()Ln4/d;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/u0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/u0;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_6

    invoke-static {v1}, Landroidx/lifecycle/t0;->g(Landroidx/lifecycle/g1;)Landroidx/lifecycle/v0;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/v0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/q0;

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/lifecycle/u0;->b()V

    iget-object v3, v0, Landroidx/lifecycle/u0;->c:Landroid/os/Bundle;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    new-array v6, v5, [Lt8/j;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lt8/j;

    invoke-static {v5}, Lg5/f;->o([Lt8/j;)Landroid/os/Bundle;

    move-result-object v5

    :cond_3
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v4, v0, Landroidx/lifecycle/u0;->c:Landroid/os/Bundle;

    :cond_4
    move-object v4, v5

    :goto_1
    invoke-static {v4, v2}, Landroidx/lifecycle/t0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/q0;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_5
    return-object v3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ln4/g;)V
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/x;

    iget-object v0, v0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/p;->n:Landroidx/lifecycle/p;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ln4/g;->getSavedStateRegistry()Ln4/e;

    move-result-object v0

    invoke-virtual {v0}, Ln4/e;->b()Ln4/d;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/u0;

    invoke-interface {p0}, Ln4/g;->getSavedStateRegistry()Ln4/e;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/g1;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/u0;-><init>(Ln4/e;Landroidx/lifecycle/g1;)V

    invoke-interface {p0}, Ln4/g;->getSavedStateRegistry()Ln4/e;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Ln4/e;->c(Ljava/lang/String;Ln4/d;)V

    invoke-interface {p0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/lifecycle/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    :cond_2
    return-void
.end method

.method public static final e(Landroid/view/View;)Landroidx/lifecycle/v;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const v1, 0x7f08008f

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/lifecycle/v;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/lifecycle/v;

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lr5/u0;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final f(Landroid/view/View;)Landroidx/lifecycle/g1;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const v1, 0x7f080093

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/lifecycle/g1;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/lifecycle/g1;

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lr5/u0;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final g(Landroidx/lifecycle/g1;)Landroidx/lifecycle/v0;
    .locals 2

    new-instance v0, Landroidx/lifecycle/s0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Ld7/g;->k(Landroidx/lifecycle/g1;Landroidx/lifecycle/s0;I)Landroidx/lifecycle/e1;

    move-result-object p0

    const-class v0, Landroidx/lifecycle/v0;

    invoke-static {v0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/e1;->a:Lg5/i;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {p0, v0, v1}, Lg5/i;->u(Lj9/f;Ljava/lang/String;)Landroidx/lifecycle/z0;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/v0;

    return-object p0
.end method

.method public static final h(Landroidx/lifecycle/z0;)Lf4/a;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/t0;->d:Lf4/c;

    monitor-enter v0

    :try_start_0
    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/z0;->c(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Lf4/a;

    if-nez v1, :cond_0

    sget-object v1, Ly8/i;->l:Ly8/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lz9/n;->a:Lv9/d;

    iget-object v1, v2, Lv9/d;->q:Lv9/d;
    :try_end_1
    .catch Lt8/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v2, Lf4/a;

    invoke-static {}, Lu9/v;->c()Lu9/l1;

    move-result-object v3

    invoke-interface {v1, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v1

    invoke-direct {v2, v1}, Lf4/a;-><init>(Ly8/h;)V

    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v1, v2}, Landroidx/lifecycle/z0;->a(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final i(Landroid/view/View;Landroidx/lifecycle/v;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08008f

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static final j(Landroid/view/View;Landroidx/lifecycle/g1;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f080093

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
