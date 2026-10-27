.class public abstract Ly9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public l:[Ly9/d;

.field public m:I

.field public n:I

.field public o:Ly9/y;


# virtual methods
.method public final c()Ly9/d;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly9/b;->l:[Ly9/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly9/b;->f()[Ly9/d;

    move-result-object v0

    iput-object v0, p0, Ly9/b;->l:[Ly9/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v1, p0, Ly9/b;->m:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Ly9/d;

    iput-object v1, p0, Ly9/b;->l:[Ly9/d;

    check-cast v0, [Ly9/d;

    :cond_1
    :goto_0
    iget v1, p0, Ly9/b;->n:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ly9/b;->e()Ly9/d;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, Ly9/d;->a(Ly9/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Ly9/b;->n:I

    iget v0, p0, Ly9/b;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ly9/b;->m:I

    iget-object v0, p0, Ly9/b;->o:Ly9/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ly9/y;->w(I)V

    :cond_5
    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract e()Ly9/d;
.end method

.method public abstract f()[Ly9/d;
.end method

.method public final g(Ly9/d;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ly9/b;->m:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Ly9/b;->m:I

    iget-object v2, p0, Ly9/b;->o:Ly9/y;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, Ly9/b;->n:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ly9/d;->b(Ly9/b;)[Ly8/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length p0, p1

    :goto_1
    if-ge v3, p0, :cond_2

    aget-object v0, p1, v3

    if-eqz v0, :cond_1

    sget-object v4, Lt8/z;->a:Lt8/z;

    invoke-interface {v0, v4}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ly9/y;->w(I)V

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final h()Ly9/y;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly9/b;->o:Ly9/y;

    if-nez v0, :cond_0

    new-instance v0, Ly9/y;

    iget v1, p0, Ly9/b;->m:I

    sget-object v2, Lw9/a;->m:Lw9/a;

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v0, v3, v4, v2}, Lx9/b0;-><init>(IILw9/a;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx9/b0;->q(Ljava/lang/Object;)Z

    iput-object v0, p0, Ly9/b;->o:Ly9/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
