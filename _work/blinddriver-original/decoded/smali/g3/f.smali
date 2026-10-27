.class public final Lg3/f;
.super Ll7/a;
.source "SourceFile"


# virtual methods
.method public final f(Lg3/h;Lg3/d;Lg3/d;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lg3/h;->m:Lg3/d;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lg3/h;->m:Lg3/d;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lg3/h;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lg3/h;->l:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lg3/h;->l:Ljava/lang/Object;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h(Lg3/h;Lg3/g;Lg3/g;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lg3/h;->n:Lg3/g;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lg3/h;->n:Lg3/g;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final v(Lg3/g;Lg3/g;)V
    .locals 0

    iput-object p2, p1, Lg3/g;->b:Lg3/g;

    return-void
.end method

.method public final w(Lg3/g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lg3/g;->a:Ljava/lang/Thread;

    return-void
.end method
