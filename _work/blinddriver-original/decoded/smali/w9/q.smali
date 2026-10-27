.class public final Lw9/q;
.super Lu9/a;
.source "SourceFile"

# interfaces
.implements Lw9/r;
.implements Lw9/i;


# instance fields
.field public final o:Lw9/e;


# direct methods
.method public constructor <init>(Ly8/h;Lw9/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lu9/a;-><init>(Ly8/h;Z)V

    iput-object p2, p0, Lw9/q;->o:Lw9/e;

    return-void
.end method


# virtual methods
.method public final a(Ly9/o;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lw9/e;->C(Lw9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lu9/c1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lu9/w0;

    invoke-virtual {p0}, Lu9/a;->x()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    :cond_1
    invoke-virtual {p0, p1}, Lw9/q;->u(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final c0(Ljava/lang/Throwable;Z)V
    .locals 2

    iget-object v0, p0, Lw9/q;->o:Lw9/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lw9/e;->k(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lu9/a;->n:Ly8/h;

    invoke-static {p1, p0}, Lu9/v;->p(Ljava/lang/Throwable;Ly8/h;)V

    :cond_0
    return-void
.end method

.method public final d0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lt8/z;

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lw9/e;->j(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final f(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-interface {p0, p1, p2}, Lw9/u;->f(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f0(Lkd/d;)V
    .locals 4

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lw9/e;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lw9/g;->q:Lmb/s2;

    if-ne v1, v2, :cond_4

    sget-object v3, Lw9/g;->r:Lmb/s2;

    :cond_2
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lw9/e;->q()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkd/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_4
    sget-object p0, Lw9/g;->r:Lmb/s2;

    if-ne v1, p0, :cond_5

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Another handler is already registered: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-virtual {p0}, Lw9/e;->g()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-virtual {p0, p1}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Lw9/b;
    .locals 1

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lw9/b;

    invoke-direct {v0, p0}, Lw9/b;-><init>(Lw9/e;)V

    return-object v0
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw9/q;->o:Lw9/e;

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    iget-object v0, p0, Lw9/q;->o:Lw9/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lw9/e;->k(Ljava/lang/Throwable;Z)Z

    invoke-virtual {p0, p1}, Lu9/c1;->s(Ljava/lang/Object;)Z

    return-void
.end method
