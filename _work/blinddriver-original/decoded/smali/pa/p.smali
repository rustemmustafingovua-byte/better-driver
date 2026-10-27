.class public final Lpa/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/e;
.implements Ljava/lang/Cloneable;


# instance fields
.field public final l:Lla/v;

.field public final m:Lg7/c;

.field public final n:Lpa/r;

.field public final o:Lpa/o;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q:Ljava/lang/Object;

.field public r:Lpa/h;

.field public s:Lpa/q;

.field public t:Lk4/h;

.field public u:Z

.field public v:Z

.field public w:Z

.field public volatile x:Z

.field public volatile y:Lk4/h;

.field public final z:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lla/v;Lg7/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/p;->l:Lla/v;

    iput-object p2, p0, Lpa/p;->m:Lg7/c;

    iget-object p2, p1, Lla/v;->D:Lb0/l1;

    iget-object p2, p2, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p2, Lpa/r;

    iput-object p2, p0, Lpa/p;->n:Lpa/r;

    iget-object p2, p1, Lla/v;->d:Lc2/c0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lpa/o;

    invoke-direct {p2, p0}, Lpa/o;-><init>(Lpa/p;)V

    iget p1, p1, Lla/v;->v:I

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1}, Lbb/w;->g(J)Lbb/w;

    iput-object p2, p0, Lpa/p;->o:Lpa/o;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lpa/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpa/p;->w:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lpa/p;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final a(Lpa/p;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lpa/p;->x:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpa/p;->m:Lg7/c;

    iget-object p0, p0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p0, Lla/r;

    invoke-virtual {p0}, Lla/r;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lpa/p;

    iget-object v1, p0, Lpa/p;->l:Lla/v;

    iget-object p0, p0, Lpa/p;->m:Lg7/c;

    invoke-direct {v0, v1, p0}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    return-object v0
.end method

.method public final f(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v0, p0, Lpa/p;->s:Lpa/q;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lpa/p;->r()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lpa/p;->s:Lpa/q;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lma/e;->c(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lpa/p;->o:Lpa/o;

    invoke-virtual {p0}, Lbb/e;->i()Z

    move-result p0

    if-nez p0, :cond_3

    move-object p0, p1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    :cond_5
    return-object p0
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lpa/p;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpa/p;->x:Z

    iget-object v0, p0, Lpa/p;->y:Lk4/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lk4/h;->d:Ljava/lang/Object;

    check-cast v0, Lqa/d;

    invoke-interface {v0}, Lqa/d;->cancel()V

    :cond_1
    iget-object p0, p0, Lpa/p;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpa/v;

    invoke-interface {v0}, Lpa/v;->cancel()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final h(Lla/f;)V
    .locals 3

    iget-object v0, p0, Lpa/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lva/c;->a:Lva/a;

    sget-object v0, Lva/c;->a:Lva/a;

    invoke-virtual {v0}, Lva/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lpa/p;->q:Ljava/lang/Object;

    iget-object v0, p0, Lpa/p;->l:Lla/v;

    iget-object v0, v0, Lla/v;->a:Lla/n;

    new-instance v1, Lpa/m;

    invoke-direct {v1, p0, p1}, Lpa/m;-><init>(Lpa/p;Lla/f;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lla/n;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lpa/p;->m:Lg7/c;

    iget-object p0, p0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p0, Lla/r;

    iget-object p0, p0, Lla/r;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lla/n;->b(Ljava/lang/String;)Lpa/m;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lpa/m;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p0, v1, Lpa/m;->m:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    invoke-virtual {v0}, Lla/n;->e()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    const-string p0, "Already Executed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Lla/c0;
    .locals 3

    iget-object v0, p0, Lpa/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpa/p;->o:Lpa/o;

    invoke-virtual {v0}, Lbb/e;->h()V

    sget-object v0, Lva/c;->a:Lva/a;

    sget-object v0, Lva/c;->a:Lva/a;

    invoke-virtual {v0}, Lva/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lpa/p;->q:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lpa/p;->l:Lla/v;

    iget-object v0, v0, Lla/v;->a:Lla/n;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lla/n;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-virtual {p0}, Lpa/p;->l()Lla/c0;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lpa/p;->l:Lla/v;

    iget-object v1, v1, Lla/v;->a:Lla/n;

    iget-object v2, v1, Lla/n;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lla/n;->c(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, Lpa/p;->l:Lla/v;

    iget-object v1, v1, Lla/v;->a:Lla/n;

    iget-object v2, v1, Lla/n;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lla/n;->c(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string p0, "Already Executed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpa/p;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpa/p;->y:Lk4/h;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lk4/h;->d:Ljava/lang/Object;

    check-cast v1, Lqa/d;

    invoke-interface {v1}, Lqa/d;->cancel()V

    iget-object v1, p1, Lk4/h;->b:Ljava/lang/Object;

    check-cast v1, Lpa/p;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Lpa/p;->o(Lk4/h;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, Lpa/p;->t:Lk4/h;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l()Lla/c0;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lpa/p;->l:Lla/v;

    iget-object v0, v0, Lla/v;->b:Ljava/util/List;

    invoke-static {v0, v2}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    new-instance v0, Lqa/a;

    iget-object v1, p0, Lpa/p;->l:Lla/v;

    invoke-direct {v0, v1}, Lqa/a;-><init>(Lla/v;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lqa/a;

    iget-object v1, p0, Lpa/p;->l:Lla/v;

    iget-object v1, v1, Lla/v;->j:Lla/b;

    invoke-direct {v0, v1}, Lqa/a;-><init>(Lla/b;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lgd/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgd/g;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lpa/b;->a:Lpa/b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpa/p;->l:Lla/v;

    iget-object v0, v0, Lla/v;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    new-instance v0, Lgd/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgd/g;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lqa/f;

    iget-object v5, p0, Lpa/p;->m:Lg7/c;

    iget-object v1, p0, Lpa/p;->l:Lla/v;

    iget v6, v1, Lla/v;->w:I

    iget v7, v1, Lla/v;->x:I

    iget v8, v1, Lla/v;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lqa/f;-><init>(Lpa/p;Ljava/util/ArrayList;ILk4/h;Lg7/c;III)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Lqa/f;->b(Lg7/c;)Lla/c0;

    move-result-object v0

    iget-boolean v3, v1, Lpa/p;->x:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v1, p0}, Lpa/p;->p(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lma/c;->b(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Lpa/p;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Lpa/p;->p(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public final o(Lk4/h;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpa/p;->y:Lk4/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_5

    :cond_0
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lpa/p;->u:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lpa/p;->v:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v0, p0, Lpa/p;->u:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean v0, p0, Lpa/p;->v:Z

    :cond_4
    iget-boolean p2, p0, Lpa/p;->u:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Lpa/p;->v:Z

    if-nez p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lpa/p;->v:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lpa/p;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move v0, p1

    :cond_6
    move p2, v0

    move v0, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, v0

    :goto_3
    monitor-exit p0

    if-eqz v0, :cond_8

    const/4 p3, 0x0

    iput-object p3, p0, Lpa/p;->y:Lk4/h;

    iget-object p3, p0, Lpa/p;->s:Lpa/q;

    if-eqz p3, :cond_8

    monitor-enter p3

    :try_start_1
    iget v0, p3, Lpa/q;->p:I

    add-int/2addr v0, p1

    iput v0, p3, Lpa/q;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, Lpa/p;->f(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_5
    return-object p4
.end method

.method public final p(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpa/p;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lpa/p;->w:Z

    iget-boolean v0, p0, Lpa/p;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lpa/p;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lpa/p;->f(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final r()Ljava/net/Socket;
    .locals 7

    iget-object v0, p0, Lpa/p;->s:Lpa/q;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v1, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v1, v0, Lpa/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lpa/p;->s:Lpa/q;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lpa/q;->t:J

    iget-object p0, p0, Lpa/p;->n:Lpa/r;

    iget-object v1, p0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v3, Lma/e;->a:Ljava/util/TimeZone;

    iget-boolean v3, v0, Lpa/q;->m:Z

    if-nez v3, :cond_2

    iget-object v0, p0, Lpa/r;->d:Loa/c;

    iget-object p0, p0, Lpa/r;->e:Loa/b;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, p0, v3, v4}, Loa/c;->c(Loa/a;J)V

    return-object v2

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lpa/q;->m:Z

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lpa/r;->d:Loa/c;

    iget-object v2, v1, Loa/c;->a:Loa/d;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Loa/c;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Loa/c;->a:Loa/d;

    invoke-virtual {v3, v1}, Loa/d;->c(Loa/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2

    throw p0

    :cond_4
    :goto_4
    iget-object v1, v0, Lpa/q;->d:Lla/f0;

    iget-object v1, v1, Lla/f0;->a:Lla/a;

    const-string v2, "address"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpa/r;->c:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    iget-object p0, v0, Lpa/q;->f:Ljava/net/Socket;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_6
    return-object v2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
