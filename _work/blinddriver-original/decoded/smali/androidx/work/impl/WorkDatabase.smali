.class public abstract Landroidx/work/impl/WorkDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lr4/b;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Lq4/b;

.field public final d:Lk4/j;

.field public e:Z

.field public f:Ljava/util/List;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final i:Ljava/lang/ThreadLocal;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->d()Lk4/j;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase;->d:Lk4/j;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "synchronizedMap(mutableMapOf())"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase;->k:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static r(Ljava/lang/Class;Lq4/b;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Lk4/c;

    if-eqz v0, :cond_1

    check-cast p1, Lk4/c;

    invoke-interface {p1}, Lk4/c;->b()Lq4/b;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase;->r(Ljava/lang/Class;Lq4/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean p0, p0, Landroidx/work/impl/WorkDatabase;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->v()Lr4/b;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->a()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->a()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->v()Lr4/b;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase;->d:Lk4/j;

    invoke-virtual {p0, v0}, Lk4/j;->d(Lr4/b;)V

    invoke-virtual {v0}, Lr4/b;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lr4/b;->c()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lr4/b;->b()V

    return-void
.end method

.method public abstract d()Lk4/j;
.end method

.method public abstract e(Lk4/b;)Lq4/b;
.end method

.method public abstract f()Lg5/c;
.end method

.method public g(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    const-string p0, "autoMigrationSpecs"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final h()Lq4/b;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase;->c:Lq4/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "internalOpenHelper"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public i()Ljava/util/Set;
    .locals 0

    sget-object p0, Lu8/t;->l:Lu8/t;

    return-object p0
.end method

.method public j()Ljava/util/Map;
    .locals 0

    sget-object p0, Lu8/s;->l:Lu8/s;

    return-object p0
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->v()Lr4/b;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b;->e()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->v()Lr4/b;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase;->d:Lk4/j;

    iget-object v0, p0, Lk4/j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk4/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Landroidx/work/impl/WorkDatabase;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk4/j;->m:Ldd/j0;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "internalQueryExecutor"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public abstract l()Lg5/e;
.end method

.method public final m(Lq4/d;)Landroid/database/Cursor;
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->a()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object p0

    invoke-interface {p0}, Lq4/b;->v()Lr4/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr4/b;->w(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->k()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
.end method

.method public final o(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
.end method

.method public final p()V
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object p0

    invoke-interface {p0}, Lq4/b;->v()Lr4/b;

    move-result-object p0

    invoke-virtual {p0}, Lr4/b;->y()V

    return-void
.end method

.method public abstract q()Lg5/i;
.end method

.method public abstract s()Lg5/l;
.end method

.method public abstract t()Lg5/m;
.end method

.method public abstract u()Lg5/q;
.end method

.method public abstract v()Lg5/s;
.end method
