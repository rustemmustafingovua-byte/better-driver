.class public final Lf8/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/Object;


# direct methods
.method public static d(Lf8/j3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    check-cast p0, Lf8/v2;

    invoke-virtual {p0}, Lf8/v2;->i()Lf8/x5;

    move-result-object v0

    iget-object v0, v0, Lf8/x5;->l:Lf8/y5;

    sget-object v1, Lf8/y5;->u:Lf8/y5;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lf8/v2;->l()Z

    move-result p0

    if-eqz p0, :cond_6

    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lf8/n4;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lf8/n4;

    invoke-interface {v2}, Lf8/n4;->build()Lf8/o4;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eq v2, v1, :cond_3

    if-ne p0, p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    :cond_2
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Repeated field should contains a List but actually contains type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of p0, p1, Lf8/n4;

    if-eqz p0, :cond_7

    check-cast p1, Lf8/n4;

    invoke-interface {p1}, Lf8/n4;->build()Lf8/o4;

    move-result-object p0

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static e(Lf8/x5;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1}, Lf8/k3;->j(Lf8/x5;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lf8/x5;->l:Lf8/y5;

    sget-object v0, Lf8/y5;->u:Lf8/y5;

    if-ne p0, v0, :cond_0

    instance-of p0, p1, Lf8/n4;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf8/i3;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf8/i3;->a:Z

    iput-boolean v0, p0, Lf8/i3;->b:Z

    iget-object v0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/f;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, v0, Lcom/graphhopper/routing/f;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, v0, Lcom/graphhopper/routing/f;->m:Ljava/lang/Object;

    check-cast v3, Lv4/t;

    iget-object v0, v0, Lcom/graphhopper/routing/f;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lv4/t;->h()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_0
    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lf8/i3;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_4
    iput-boolean v1, p0, Lf8/i3;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public b(Lf8/v2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lf8/i3;->d(Lf8/j3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast v0, Lf8/v2;

    invoke-virtual {v0}, Lf8/v2;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lf8/i3;->b(Lf8/v2;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lf8/k3;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    invoke-virtual {p0, v0, v1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v0}, Lf8/v2;->i()Lf8/x5;

    move-result-object v1

    iget-object v1, v1, Lf8/x5;->l:Lf8/y5;

    sget-object v2, Lf8/y5;->u:Lf8/y5;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lf8/i3;->b(Lf8/v2;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    invoke-static {p1}, Lf8/k3;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    instance-of v2, v1, Lf8/n4;

    if-eqz v2, :cond_4

    check-cast v1, Lf8/n4;

    check-cast p1, Lf8/o4;

    check-cast v1, Lf8/a;

    check-cast p1, Lf8/c;

    invoke-virtual {v1, p1}, Lf8/a;->x(Lf8/c;)Lf8/a;

    return-void

    :cond_4
    check-cast v1, Lf8/o4;

    invoke-interface {v1}, Lf8/o4;->f()Lf8/n4;

    move-result-object v1

    check-cast p1, Lf8/o4;

    check-cast v1, Lf8/a;

    check-cast p1, Lf8/c;

    invoke-virtual {v1, p1}, Lf8/a;->x(Lf8/c;)Lf8/a;

    move-result-object p1

    invoke-interface {p1}, Lf8/n4;->build()Lf8/o4;

    move-result-object p1

    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    invoke-static {p1}, Lf8/k3;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
