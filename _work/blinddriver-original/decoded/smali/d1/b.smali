.class public final Ld1/b;
.super Ld1/c;
.source "SourceFile"


# virtual methods
.method public final C(Li9/c;Li9/c;)Ld1/c;
    .locals 1

    new-instance p0, Lb0/b1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lb0/b1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ld1/o;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ld1/o;-><init>(Li9/c;I)V

    invoke-static {p1}, Ld1/p;->e(Li9/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld1/g;

    check-cast p0, Ld1/c;

    return-object p0
.end method

.method public final c()V
    .locals 1

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ld1/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final k()V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()V
    .locals 0

    invoke-static {}, Ld1/p;->a()V

    return-void
.end method

.method public final u(Li9/c;)Ld1/g;
    .locals 1

    new-instance p0, Ld1/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld1/a;-><init>(Li9/c;I)V

    new-instance p1, Ld1/o;

    invoke-direct {p1, p0, v0}, Ld1/o;-><init>(Li9/c;I)V

    invoke-static {p1}, Ld1/p;->e(Li9/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld1/g;

    check-cast p0, Ld1/f;

    return-object p0
.end method

.method public final w()Ld1/w;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
