.class public Lu9/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/v0;
.implements Lu9/i1;


# static fields
.field public static final synthetic l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state$volatile"

    const-class v1, Lu9/c1;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu9/c1;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lu9/v;->j:Lu9/i0;

    goto :goto_0

    :cond_0
    sget-object p1, Lu9/v;->i:Lu9/i0;

    :goto_0
    iput-object p1, p0, Lu9/c1;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static S(Lz9/j;)Lu9/k;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lz9/j;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lz9/j;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0}, Lz9/j;->f()Lz9/j;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz9/j;

    :goto_1
    invoke-virtual {p0}, Lz9/j;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz9/j;

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz9/j;->h()Lz9/j;

    move-result-object p0

    invoke-virtual {p0}, Lz9/j;->i()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lu9/k;

    if-eqz v0, :cond_3

    check-cast p0, Lu9/k;

    return-object p0

    :cond_3
    instance-of v0, p0, Lu9/e1;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Z(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lu9/b1;

    const-string v1, "Active"

    if-eqz v0, :cond_2

    check-cast p0, Lu9/b1;

    invoke-virtual {p0}, Lu9/b1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    return-object p0

    :cond_0
    sget-object v0, Lu9/b1;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Completing"

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    instance-of v0, p0, Lu9/s0;

    if-eqz v0, :cond_4

    check-cast p0, Lu9/s0;

    invoke-interface {p0}, Lu9/s0;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    const-string p0, "New"

    return-object p0

    :cond_4
    instance-of p0, p0, Lu9/n;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    return-object p0

    :cond_5
    const-string p0, "Completed"

    return-object p0
.end method


# virtual methods
.method public final A(Lu9/s0;Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lu9/c1;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu9/j;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lu9/g0;->a()V

    sget-object v1, Lu9/g1;->l:Lu9/g1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lu9/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lu9/n;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lu9/n;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lu9/y0;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lu9/y0;

    invoke-virtual {v0, p2}, Lu9/y0;->l(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Landroidx/fragment/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lu9/c1;->J(Landroidx/fragment/app/i0;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lu9/s0;->d()Lu9/e1;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lz9/i;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lz9/i;-><init>(I)V

    invoke-virtual {p1, v0, v4}, Lz9/j;->e(Lz9/j;I)Z

    sget-object v0, Lz9/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    invoke-static {v0, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lz9/j;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lu9/y0;

    if-eqz v4, :cond_5

    :try_start_1
    move-object v4, v0

    check-cast v4, Lu9/y0;

    invoke-virtual {v4, p2}, Lu9/y0;->l(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_4

    invoke-static {v1, v4}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Landroidx/fragment/app/i0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lz9/j;->h()Lz9/j;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lu9/c1;->J(Landroidx/fragment/app/i0;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final B(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    instance-of p0, p1, Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_0
    check-cast p1, Lu9/i1;

    check-cast p1, Lu9/c1;

    sget-object p0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lu9/b1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lu9/b1;

    invoke-virtual {v0}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lu9/n;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lu9/n;

    iget-object v0, v0, Lu9/n;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lu9/s0;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lu9/w0;

    invoke-static {p0}, Lu9/c1;->Z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Parent job is "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final D(Lu9/b1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lu9/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lu9/n;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lu9/n;->a:Ljava/lang/Throwable;

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lu9/b1;->e()Z

    invoke-virtual {p1, v1}, Lu9/b1;->f(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lu9/c1;->E(Lu9/b1;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :cond_3
    :goto_1
    if-ge v7, v6, :cond_4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Throwable;

    if-eq v8, v2, :cond_3

    if-eq v8, v2, :cond_3

    instance-of v9, v8, Ljava/util/concurrent/CancellationException;

    if-nez v9, :cond_3

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v2, v8}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit p1

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Lu9/n;

    invoke-direct {p2, v2, v3}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Lu9/c1;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Lu9/c1;->I(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lu9/n;

    sget-object v1, Lu9/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_8
    invoke-virtual {p0, p2}, Lu9/c1;->U(Ljava/lang/Object;)V

    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lu9/s0;

    if-eqz v1, :cond_9

    new-instance v1, Lu9/t0;

    move-object v2, p2

    check-cast v2, Lu9/s0;

    invoke-direct {v1, v2}, Lu9/t0;-><init>(Lu9/s0;)V

    goto :goto_4

    :cond_9
    move-object v1, p2

    :cond_a
    :goto_4
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_a

    :goto_5
    invoke-virtual {p0, p1, p2}, Lu9/c1;->A(Lu9/s0;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final E(Lu9/b1;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lu9/b1;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lu9/w0;

    invoke-virtual {p0}, Lu9/c1;->x()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :cond_2
    if-ge v0, p0, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    instance-of v0, p0, Lu9/p1;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_5
    if-ge p1, v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eq v3, p0, :cond_5

    instance-of v3, v3, Lu9/p1;

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p0
.end method

.method public F()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public G()Z
    .locals 0

    instance-of p0, p0, Lu9/l;

    return p0
.end method

.method public final H(Lu9/s0;)Lu9/e1;
    .locals 2

    invoke-interface {p1}, Lu9/s0;->d()Lu9/e1;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lu9/i0;

    if-eqz v0, :cond_0

    new-instance p0, Lu9/e1;

    invoke-direct {p0}, Lz9/j;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p1, Lu9/y0;

    if-eqz v0, :cond_1

    check-cast p1, Lu9/y0;

    invoke-virtual {p0, p1}, Lu9/c1;->X(Lu9/y0;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State should have list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public I(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public J(Landroidx/fragment/app/i0;)V
    .locals 0

    throw p1
.end method

.method public final K(ZZLb0/k2;)Lu9/g0;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lu9/u0;

    invoke-direct {p1, p3}, Lu9/u0;-><init>(Lb0/k2;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lu9/h0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p3}, Lu9/h0;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lu9/c1;->M(ZLu9/y0;)Lu9/g0;

    move-result-object p0

    return-object p0
.end method

.method public final L(Lu9/v0;)V
    .locals 3

    sget-object v0, Lu9/c1;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lu9/g1;->l:Lu9/g1;

    if-nez p1, :cond_0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lu9/v0;->start()Z

    invoke-interface {p1, p0}, Lu9/v0;->t(Lu9/c1;)Lu9/j;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lu9/s0;

    if-nez v2, :cond_1

    invoke-interface {p1}, Lu9/g0;->a()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final M(ZLu9/y0;)Lu9/g0;
    .locals 7

    iput-object p0, p2, Lu9/y0;->o:Lu9/c1;

    :cond_0
    :goto_0
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu9/i0;

    sget-object v3, Lu9/g1;->l:Lu9/g1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lu9/i0;

    iget-boolean v6, v2, Lu9/i0;->l:Z

    if-eqz v6, :cond_3

    :cond_1
    invoke-virtual {v0, p0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lu9/c1;->W(Lu9/i0;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lu9/s0;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lu9/s0;

    invoke-interface {v2}, Lu9/s0;->d()Lu9/e1;

    move-result-object v6

    if-nez v6, :cond_5

    check-cast v1, Lu9/y0;

    invoke-virtual {p0, v1}, Lu9/c1;->X(Lu9/y0;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lu9/y0;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v2, Lu9/b1;

    if-eqz v1, :cond_6

    check-cast v2, Lu9/b1;

    goto :goto_1

    :cond_6
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v5

    :goto_2
    if-nez v1, :cond_8

    const/4 v1, 0x5

    invoke-virtual {v6, p2, v1}, Lz9/j;->e(Lz9/j;I)Z

    move-result v1

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_e

    invoke-virtual {p2, v1}, Lu9/y0;->l(Ljava/lang/Throwable;)V

    return-object v3

    :cond_9
    invoke-virtual {v6, p2, v4}, Lz9/j;->e(Lz9/j;I)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_b

    return-object p2

    :cond_b
    if-eqz p1, :cond_e

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lu9/n;

    if-eqz p1, :cond_c

    check-cast p0, Lu9/n;

    goto :goto_5

    :cond_c
    move-object p0, v5

    :goto_5
    if-eqz p0, :cond_d

    iget-object v5, p0, Lu9/n;->a:Ljava/lang/Throwable;

    :cond_d
    invoke-virtual {p2, v5}, Lu9/y0;->l(Ljava/lang/Throwable;)V

    :cond_e
    return-object v3
.end method

.method public N()Z
    .locals 0

    instance-of p0, p0, Lu9/c;

    return p0
.end method

.method public final O(Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lu9/c1;->a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lu9/v;->d:Lmb/s2;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v1, Lu9/v;->e:Lmb/s2;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lu9/v;->f:Lmb/s2;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lu9/c1;->p(Ljava/lang/Object;)V

    return v2
.end method

.method public final P(Li9/c;)Lu9/g0;
    .locals 2

    new-instance v0, Lu9/h0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lu9/h0;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lu9/c1;->M(ZLu9/y0;)Lu9/g0;

    move-result-object p0

    return-object p0
.end method

.method public final Q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lu9/c1;->a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lu9/v;->d:Lmb/s2;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lu9/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lu9/n;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lu9/n;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lu9/v;->f:Lmb/s2;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final T(Lu9/e1;Ljava/lang/Throwable;)V
    .locals 5

    new-instance v0, Lz9/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lz9/i;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lz9/j;->e(Lz9/j;I)Z

    sget-object v0, Lz9/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lz9/j;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lu9/y0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lu9/y0;

    invoke-virtual {v2}, Lu9/y0;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lu9/y0;

    invoke-virtual {v2, p2}, Lu9/y0;->l(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/fragment/app/i0;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in completion handler "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lz9/j;->h()Lz9/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lu9/c1;->J(Landroidx/fragment/app/i0;)V

    :cond_3
    invoke-virtual {p0, p2}, Lu9/c1;->v(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public U(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public final W(Lu9/i0;)V
    .locals 3

    new-instance v0, Lu9/e1;

    invoke-direct {v0}, Lz9/j;-><init>()V

    iget-boolean v1, p1, Lu9/i0;->l:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lu9/r0;

    invoke-direct {v1, v0}, Lu9/r0;-><init>(Lu9/e1;)V

    move-object v0, v1

    :cond_1
    :goto_0
    sget-object v1, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    :goto_1
    return-void
.end method

.method public final X(Lu9/y0;)V
    .locals 3

    new-instance v0, Lu9/e1;

    invoke-direct {v0}, Lz9/j;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lz9/j;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lz9/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lz9/j;->g(Lz9/j;)V

    :goto_1
    invoke-virtual {p1}, Lz9/j;->h()Lz9/j;

    move-result-object v2

    :cond_1
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0
.end method

.method public final Y(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Lu9/i0;

    const/4 v1, 0x1

    sget-object v2, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lu9/i0;

    iget-boolean v0, v0, Lu9/i0;->l:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lu9/v;->j:Lu9/i0;

    :cond_1
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lu9/c1;->V()V

    return v1

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lu9/r0;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lu9/r0;

    iget-object v0, v0, Lu9/r0;->l:Lu9/e1;

    :cond_4
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lu9/c1;->V()V

    return v1

    :cond_5
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_4

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lu9/s0;

    if-nez v0, :cond_0

    sget-object p0, Lu9/v;->d:Lmb/s2;

    return-object p0

    :cond_0
    instance-of v0, p1, Lu9/i0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lu9/y0;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lu9/k;

    if-nez v0, :cond_5

    instance-of v0, p2, Lu9/n;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lu9/s0;

    sget-object v1, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of p1, p2, Lu9/s0;

    if-eqz p1, :cond_2

    new-instance p1, Lu9/t0;

    move-object v2, p2

    check-cast v2, Lu9/s0;

    invoke-direct {p1, v2}, Lu9/t0;-><init>(Lu9/s0;)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :cond_3
    :goto_0
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lu9/c1;->U(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lu9/c1;->A(Lu9/s0;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_3

    sget-object p0, Lu9/v;->f:Lmb/s2;

    return-object p0

    :cond_5
    check-cast p1, Lu9/s0;

    invoke-virtual {p0, p1}, Lu9/c1;->H(Lu9/s0;)Lu9/e1;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p0, Lu9/v;->f:Lmb/s2;

    return-object p0

    :cond_6
    instance-of v1, p1, Lu9/b1;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lu9/b1;

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_8

    new-instance v1, Lu9/b1;

    invoke-direct {v1, v0, v2}, Lu9/b1;-><init>(Lu9/e1;Ljava/lang/Throwable;)V

    :cond_8
    monitor-enter v1

    :try_start_0
    sget-object v3, Lu9/b1;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    move v4, v5

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    sget-object p0, Lu9/v;->d:Lmb/s2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_a
    :try_start_1
    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v1, p1, :cond_d

    sget-object v3, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_b
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_b

    sget-object p0, Lu9/v;->f:Lmb/s2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_d
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Lu9/b1;->e()Z

    move-result p1

    instance-of v3, p2, Lu9/n;

    if-eqz v3, :cond_e

    move-object v3, p2

    check-cast v3, Lu9/n;

    goto :goto_4

    :cond_e
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_f

    iget-object v3, v3, Lu9/n;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lu9/b1;->a(Ljava/lang/Throwable;)V

    :cond_f
    invoke-virtual {v1}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_10

    move-object v2, v3

    :cond_10
    monitor-exit v1

    if-eqz v2, :cond_11

    invoke-virtual {p0, v0, v2}, Lu9/c1;->T(Lu9/e1;Ljava/lang/Throwable;)V

    :cond_11
    invoke-static {v0}, Lu9/c1;->S(Lz9/j;)Lu9/k;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, v1, p1, p2}, Lu9/c1;->b0(Lu9/b1;Lu9/k;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p0, Lu9/v;->e:Lmb/s2;

    return-object p0

    :cond_12
    new-instance p1, Lz9/i;

    const/4 v2, 0x2

    invoke-direct {p1, v2}, Lz9/i;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Lz9/j;->e(Lz9/j;I)Z

    invoke-static {v0}, Lu9/c1;->S(Lz9/j;)Lu9/k;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v1, p1, p2}, Lu9/c1;->b0(Lu9/b1;Lu9/k;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lu9/v;->e:Lmb/s2;

    return-object p0

    :cond_13
    invoke-virtual {p0, v1, p2}, Lu9/c1;->D(Lu9/b1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_5
    monitor-exit v1

    throw p0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lu9/s0;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/s0;

    invoke-interface {p0}, Lu9/s0;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b0(Lu9/b1;Lu9/k;Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    iget-object v0, p2, Lu9/k;->p:Lu9/c1;

    new-instance v1, Lu9/a1;

    invoke-direct {v1, p0, p1, p2, p3}, Lu9/a1;-><init>(Lu9/c1;Lu9/b1;Lu9/k;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lu9/v;->q(Lu9/v0;ZLu9/y0;)Lu9/g0;

    move-result-object v0

    sget-object v1, Lu9/g1;->l:Lu9/g1;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p2}, Lu9/c1;->S(Lz9/j;)Lu9/k;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public c(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lu9/w0;

    invoke-virtual {p0}, Lu9/c1;->x()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    :cond_0
    invoke-virtual {p0, p1}, Lu9/c1;->u(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(La9/c;)Ljava/lang/Object;
    .locals 4

    :cond_0
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lu9/s0;

    sget-object v2, Lt8/z;->a:Lt8/z;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    invoke-static {p0}, Lu9/v;->i(Ly8/h;)V

    return-object v2

    :cond_1
    invoke-virtual {p0, v0}, Lu9/c1;->Y(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lu9/g;

    invoke-static {p1}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    new-instance p1, Lu9/i;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3}, Lu9/i;-><init>(Lu9/g;I)V

    invoke-static {p0, v1, p1}, Lu9/v;->q(Lu9/v0;ZLu9/y0;)Lu9/g0;

    move-result-object p0

    new-instance p1, Lu9/e;

    const/4 v1, 0x2

    invoke-direct {p1, v1, p0}, Lu9/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lu9/g;->u(Lu9/h1;)V

    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v2
.end method

.method public final getKey()Ly8/g;
    .locals 0

    sget-object p0, Lu9/q;->m:Lu9/q;

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 1

    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lu9/n;

    if-nez v0, :cond_1

    instance-of v0, p0, Lu9/b1;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/b1;

    invoke-virtual {p0}, Lu9/b1;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final k(Ly8/g;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .locals 4

    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lu9/b1;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Lu9/b1;

    invoke-virtual {v0}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v3, :cond_2

    new-instance v2, Lu9/w0;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lu9/c1;->x()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    return-object v2

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v1, v0, Lu9/s0;

    if-nez v1, :cond_8

    instance-of v1, v0, Lu9/n;

    if-eqz v1, :cond_7

    check-cast v0, Lu9/n;

    iget-object v0, v0, Lu9/n;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_5
    if-nez v3, :cond_6

    new-instance v1, Lu9/w0;

    invoke-virtual {p0}, Lu9/c1;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    return-object v1

    :cond_6
    return-object v3

    :cond_7
    new-instance v0, Lu9/w0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lu9/w0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lu9/c1;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Ly8/g;)Ly8/f;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public r(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu9/c1;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 9

    sget-object v0, Lu9/v;->d:Lmb/s2;

    invoke-virtual {p0}, Lu9/c1;->G()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lu9/s0;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lu9/b1;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lu9/b1;

    sget-object v4, Lu9/b1;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lu9/n;

    invoke-virtual {p0, p1}, Lu9/c1;->B(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lu9/c1;->a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lu9/v;->f:Lmb/s2;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lu9/v;->d:Lmb/s2;

    :goto_1
    sget-object v1, Lu9/v;->e:Lmb/s2;

    if-ne v0, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-object v1, Lu9/v;->d:Lmb/s2;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    sget-object v4, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lu9/b1;

    if-eqz v6, :cond_a

    monitor-enter v5

    :try_start_0
    move-object v4, v5

    check-cast v4, Lu9/b1;

    sget-object v6, Lu9/b1;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lu9/v;->h:Lmb/s2;

    if-ne v4, v6, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v4, :cond_6

    sget-object p1, Lu9/v;->g:Lmb/s2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    :goto_4
    move-object v0, p1

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_6
    :try_start_1
    move-object v4, v5

    check-cast v4, Lu9/b1;

    invoke-virtual {v4}, Lu9/b1;->e()Z

    move-result v4

    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, Lu9/c1;->B(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_7
    move-object p1, v5

    check-cast p1, Lu9/b1;

    invoke-virtual {p1, v1}, Lu9/b1;->a(Ljava/lang/Throwable;)V

    move-object p1, v5

    check-cast p1, Lu9/b1;

    invoke-virtual {p1}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_8

    move-object v0, p1

    :cond_8
    monitor-exit v5

    if-eqz v0, :cond_9

    check-cast v5, Lu9/b1;

    iget-object p1, v5, Lu9/b1;->l:Lu9/e1;

    invoke-virtual {p0, p1, v0}, Lu9/c1;->T(Lu9/e1;Ljava/lang/Throwable;)V

    :cond_9
    sget-object p1, Lu9/v;->d:Lmb/s2;

    goto :goto_4

    :goto_5
    monitor-exit v5

    throw p0

    :cond_a
    instance-of v6, v5, Lu9/s0;

    if-eqz v6, :cond_11

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lu9/c1;->B(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_b
    move-object v6, v5

    check-cast v6, Lu9/s0;

    invoke-interface {v6}, Lu9/s0;->b()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p0, v6}, Lu9/c1;->H(Lu9/s0;)Lu9/e1;

    move-result-object v7

    if-nez v7, :cond_c

    goto :goto_2

    :cond_c
    new-instance v8, Lu9/b1;

    invoke-direct {v8, v7, v1}, Lu9/b1;-><init>(Lu9/e1;Ljava/lang/Throwable;)V

    :cond_d
    invoke-virtual {v4, p0, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0, v7, v1}, Lu9/c1;->T(Lu9/e1;Ljava/lang/Throwable;)V

    sget-object p1, Lu9/v;->d:Lmb/s2;

    goto :goto_4

    :cond_e
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v6, :cond_d

    goto/16 :goto_2

    :cond_f
    new-instance v4, Lu9/n;

    invoke-direct {v4, v1, v2}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v5, v4}, Lu9/c1;->a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lu9/v;->d:Lmb/s2;

    if-eq v4, v6, :cond_10

    sget-object v5, Lu9/v;->f:Lmb/s2;

    if-eq v4, v5, :cond_4

    move-object v0, v4

    goto :goto_6

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot happen in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    sget-object p1, Lu9/v;->g:Lmb/s2;

    goto/16 :goto_4

    :cond_12
    :goto_6
    sget-object p1, Lu9/v;->d:Lmb/s2;

    if-ne v0, p1, :cond_13

    goto :goto_7

    :cond_13
    sget-object p1, Lu9/v;->e:Lmb/s2;

    if-ne v0, p1, :cond_14

    :goto_7
    return v3

    :cond_14
    sget-object p1, Lu9/v;->g:Lmb/s2;

    if-ne v0, p1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0, v0}, Lu9/c1;->p(Ljava/lang/Object;)V

    return v3
.end method

.method public final start()Z
    .locals 2

    :goto_0
    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu9/c1;->Y(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final t(Lu9/c1;)Lu9/j;
    .locals 5

    new-instance v0, Lu9/k;

    invoke-direct {v0, p1}, Lu9/k;-><init>(Lu9/c1;)V

    iput-object p0, v0, Lu9/y0;->o:Lu9/c1;

    :goto_0
    sget-object p1, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu9/i0;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lu9/i0;

    iget-boolean v3, v2, Lu9/i0;->l:Z

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lu9/c1;->W(Lu9/i0;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lu9/s0;

    sget-object v3, Lu9/g1;->l:Lu9/g1;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lu9/s0;

    invoke-interface {v2}, Lu9/s0;->d()Lu9/e1;

    move-result-object v2

    if-nez v2, :cond_4

    check-cast v1, Lu9/y0;

    invoke-virtual {p0, v1}, Lu9/c1;->X(Lu9/y0;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lz9/j;->e(Lz9/j;I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lz9/j;->e(Lz9/j;I)Z

    move-result v1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lu9/b1;

    if-eqz p1, :cond_6

    check-cast p0, Lu9/b1;

    invoke-virtual {p0}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_2

    :cond_6
    instance-of p1, p0, Lu9/n;

    if-eqz p1, :cond_7

    check-cast p0, Lu9/n;

    goto :goto_1

    :cond_7
    move-object p0, v4

    :goto_1
    if-eqz p0, :cond_8

    iget-object v4, p0, Lu9/n;->a:Ljava/lang/Throwable;

    :cond_8
    :goto_2
    invoke-virtual {v0, v4}, Lu9/k;->l(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_9

    :goto_3
    return-object v0

    :cond_9
    return-object v3

    :cond_a
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lu9/n;

    if-eqz p1, :cond_b

    check-cast p0, Lu9/n;

    goto :goto_4

    :cond_b
    move-object p0, v4

    :goto_4
    if-eqz p0, :cond_c

    iget-object v4, p0, Lu9/n;->a:Ljava/lang/Throwable;

    :cond_c
    invoke-virtual {v0, v4}, Lu9/k;->l(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu9/c1;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lu9/c1;->Z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lu9/v;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu9/c1;->s(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, Lu9/c1;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v1, Lu9/c1;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu9/j;

    if-eqz p0, :cond_4

    sget-object v1, Lu9/g1;->l:Lu9/g1;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lu9/j;->c(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public final y(Ly8/h;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu9/c1;->s(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lu9/c1;->F()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
