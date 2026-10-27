.class public final Le2/r;
.super Le2/q0;
.source "SourceFile"


# virtual methods
.method public final C(J)Lc2/f1;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lc2/f1;->r0(J)V

    iget-object v0, p0, Le2/q0;->z:Le2/h1;

    iget-object v1, v0, Le2/h1;->z:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->z()Lt0/b;

    move-result-object v1

    iget-object v2, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, v1, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    check-cast v4, Le2/g0;

    iget-object v4, v4, Le2/g0;->S:Le2/l0;

    iget-object v4, v4, Le2/l0;->q:Le2/t0;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v5, Le2/e0;->n:Le2/e0;

    iput-object v5, v4, Le2/t0;->u:Le2/e0;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le2/h1;->z:Le2/g0;

    iget-object v1, v0, Le2/g0;->I:Lc2/r0;

    invoke-virtual {v0}, Le2/g0;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1, p2}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object p1

    invoke-static {p0, p1}, Le2/q0;->J0(Le2/q0;Lc2/s0;)V

    return-object p0
.end method

.method public final K0()V
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le2/t0;->z0()V

    return-void
.end method

.method public final b0(I)I
    .locals 2

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->g(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 2

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->h(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final t0(Lc2/a;)I
    .locals 6

    iget-object v0, p0, Le2/q0;->z:Le2/h1;

    iget-object v0, v0, Le2/h1;->z:Le2/g0;

    iget-object v0, v0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->q:Le2/t0;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, v0, Le2/t0;->C:Le2/h0;

    iget-boolean v2, v0, Le2/t0;->v:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Le2/t0;->q:Le2/l0;

    iget-object v4, v2, Le2/l0;->d:Le2/c0;

    sget-object v5, Le2/c0;->m:Le2/c0;

    if-ne v4, v5, :cond_0

    iput-boolean v3, v1, Le2/h0;->f:Z

    iget-boolean v4, v1, Le2/h0;->b:Z

    if-eqz v4, :cond_1

    iput-boolean v3, v2, Le2/l0;->f:Z

    iput-boolean v3, v2, Le2/l0;->g:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Le2/h0;->g:Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Le2/t0;->f()Le2/s;

    move-result-object v2

    iget-object v2, v2, Le2/s;->d0:Le2/r;

    if-eqz v2, :cond_2

    iput-boolean v3, v2, Le2/p0;->v:Z

    :cond_2
    invoke-virtual {v0}, Le2/t0;->N()V

    invoke-virtual {v0}, Le2/t0;->f()Le2/s;

    move-result-object v0

    iget-object v0, v0, Le2/s;->d0:Le2/r;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, v0, Le2/p0;->v:Z

    :cond_3
    iget-object v0, v1, Le2/h0;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    const/high16 v0, -0x80000000

    :goto_1
    iget-object p0, p0, Le2/q0;->E:Lk/d0;

    invoke-virtual {p0, v0, p1}, Lk/d0;->g(ILjava/lang/Object;)V

    return v0
.end method

.method public final u(I)I
    .locals 2

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->e(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final z(I)I
    .locals 2

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->f(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method
