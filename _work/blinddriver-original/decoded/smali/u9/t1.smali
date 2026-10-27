.class public final Lu9/t1;
.super Lz9/q;
.source "SourceFile"


# instance fields
.field public final p:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Ly8/c;Ly8/h;)V
    .locals 2

    sget-object v0, Lu9/u1;->l:Lu9/u1;

    invoke-interface {p2, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lz9/q;-><init>(Ly8/c;Ly8/h;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lu9/t1;->p:Ljava/lang/ThreadLocal;

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    sget-object v0, Ly8/d;->l:Ly8/d;

    invoke-interface {p1, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p1

    instance-of p1, p1, Lu9/p;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lu9/t1;->i0(Ly8/h;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final f0()V
    .locals 0

    invoke-virtual {p0}, Lu9/t1;->h0()V

    return-void
.end method

.method public final g0()Z
    .locals 2

    iget-boolean v0, p0, Lu9/t1;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu9/t1;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lu9/t1;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final h0()V
    .locals 2

    iget-boolean v0, p0, Lu9/t1;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu9/t1;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt8/j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Ly8/h;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    invoke-static {v1, v0}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lu9/t1;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    return-void
.end method

.method public final i0(Ly8/h;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu9/t1;->threadLocalIsSet:Z

    iget-object p0, p0, Lu9/t1;->p:Ljava/lang/ThreadLocal;

    new-instance v0, Lt8/j;

    invoke-direct {v0, p1, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lu9/t1;->h0()V

    invoke-static {p1}, Lu9/v;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lz9/q;->o:Ly8/c;

    invoke-interface {p0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lz9/b;->d:Lmb/s2;

    if-eq v2, v3, :cond_0

    invoke-static {p0, v0, v2}, Lu9/v;->y(Ly8/c;Ly8/h;Ljava/lang/Object;)Lu9/t1;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lu9/t1;->g0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {v0, v2}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lu9/t1;->g0()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v0, v2}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    :cond_4
    throw p0
.end method
