.class public Landroidx/lifecycle/d0;
.super Landroidx/lifecycle/c0;
.source "SourceFile"


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/c0;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/c0;->g:I

    iput-object p1, p0, Landroidx/lifecycle/c0;->e:Ljava/lang/Object;

    iget-boolean p1, p0, Landroidx/lifecycle/c0;->h:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/lifecycle/c0;->i:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroidx/lifecycle/c0;->h:Z

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/c0;->i:Z

    iget-object v0, p0, Landroidx/lifecycle/c0;->b:Li/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li/d;

    invoke-direct {v1, v0}, Li/d;-><init>(Li/f;)V

    iget-object v0, v0, Li/f;->n:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1}, Li/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Li/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c0;->b(Landroidx/lifecycle/b0;)V

    iget-boolean v0, p0, Landroidx/lifecycle/c0;->i:Z

    if-eqz v0, :cond_2

    :cond_3
    iget-boolean v0, p0, Landroidx/lifecycle/c0;->i:Z

    if-nez v0, :cond_1

    iput-boolean p1, p0, Landroidx/lifecycle/c0;->h:Z

    :goto_0
    return-void
.end method

.method public final d(Ll9/a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/c0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/c0;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/c0;->k:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/c0;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lh/b;->N()Lh/b;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/c0;->j:Landroidx/lifecycle/a0;

    iget-object p1, p1, Lh/b;->o:Lh/d;

    iget-object v0, p1, Lh/d;->q:Landroid/os/Handler;

    if-nez v0, :cond_3

    iget-object v0, p1, Lh/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p1, Lh/d;->q:Landroid/os/Handler;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p1, Lh/d;->q:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    iget-object p1, p1, Lh/d;->q:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
