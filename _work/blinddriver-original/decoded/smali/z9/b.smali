.class public abstract Lz9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmb/s2;

.field public static final b:Lmb/s2;

.field public static final c:Lmb/s2;

.field public static final d:Lmb/s2;

.field public static final e:Lsc/u0;

.field public static final f:Lsc/u0;

.field public static final g:Lsc/u0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lmb/s2;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/b;->a:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/b;->b:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/b;->c:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/b;->d:Lmb/s2;

    new-instance v0, Lsc/u0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    sput-object v0, Lz9/b;->e:Lsc/u0;

    new-instance v0, Lsc/u0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    sput-object v0, Lz9/b;->f:Lsc/u0;

    new-instance v0, Lsc/u0;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    sput-object v0, Lz9/b;->g:Lsc/u0;

    return-void
.end method

.method public static final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Expected positive parallelism level, but got "

    invoke-static {p0, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lz9/r;JLi9/e;)Ljava/lang/Object;
    .locals 5

    :goto_0
    iget-wide v0, p0, Lz9/r;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lz9/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p0

    :cond_1
    :goto_1
    sget-object v0, Lz9/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lz9/b;->a:Lmb/s2;

    if-ne v1, v2, :cond_2

    return-object v2

    :cond_2
    check-cast v1, Lz9/c;

    check-cast v1, Lz9/r;

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object p0, v1

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lz9/r;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz9/r;

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lz9/r;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lz9/c;->d()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0
.end method

.method public static final c(Ljava/lang/Object;)Lz9/r;
    .locals 1

    sget-object v0, Lz9/b;->a:Lmb/s2;

    if-eq p0, v0, :cond_0

    check-cast p0, Lz9/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Does not contain segment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ljava/lang/Throwable;Ly8/h;)V
    .locals 4

    sget-object v0, Lz9/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu9/r;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lu9/r;->w(Ljava/lang/Throwable;Ly8/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p0, v1, :cond_0

    move-object v2, p0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lz9/f;

    invoke-direct {v0, p1}, Lz9/f;-><init>(Ly8/h;)V

    invoke-static {p0, v0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lz9/b;->a:Lmb/s2;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final g(Ly8/h;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lz9/b;->d:Lmb/s2;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lz9/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lz9/v;

    iget-object p0, p1, Lz9/v;->b:[Lu9/m1;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    aget-object p0, p0, v0

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p1, Lz9/v;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    throw v1

    :cond_2
    sget-object p1, Lz9/b;->f:Lsc/u0;

    invoke-interface {p0, p1, v1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr0/i;->p(Ljava/lang/Object;)V

    throw v1
.end method

.method public static final h(Ljava/lang/Object;Ly8/c;)V
    .locals 9

    instance-of v0, p1, Lz9/g;

    if-eqz v0, :cond_9

    check-cast p1, Lz9/g;

    iget-object v0, p1, Lz9/g;->o:Lu9/p;

    iget-object v1, p1, Lz9/g;->p:La9/c;

    invoke-static {p0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    new-instance v3, Lu9/n;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-interface {v1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    invoke-static {v0, v2}, Lz9/b;->j(Lu9/p;Ly8/h;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v3, p1, Lz9/g;->q:Ljava/lang/Object;

    iput v4, p1, Lu9/c0;->n:I

    invoke-interface {v1}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lz9/b;->i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lu9/n1;->a()Lu9/o0;

    move-result-object v0

    iget-wide v5, v0, Lu9/o0;->n:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    iput-object v3, p1, Lz9/g;->q:Ljava/lang/Object;

    iput v4, p1, Lu9/c0;->n:I

    invoke-virtual {v0, p1}, Lu9/o0;->W(Lu9/c0;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v0, v4}, Lu9/o0;->Y(Z)V

    :try_start_0
    invoke-interface {v1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    sget-object v3, Lu9/q;->m:Lu9/q;

    invoke-interface {v2, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v2

    check-cast v2, Lu9/v0;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lu9/v0;->b()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lu9/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v2, p1, Lz9/g;->r:Ljava/lang/Object;

    invoke-interface {v1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v3

    invoke-static {v3, v2}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lz9/b;->d:Lmb/s2;

    if-eq v2, v5, :cond_4

    invoke-static {v1, v3, v2}, Lu9/v;->y(Ly8/c;Ly8/h;Ljava/lang/Object;)Lu9/t1;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v1, p0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5}, Lu9/t1;->g0()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-static {v3, v2}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lu9/o0;->a0()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_6

    :goto_3
    invoke-virtual {v0, v4}, Lu9/o0;->V(Z)V

    goto :goto_5

    :catchall_1
    move-exception p0

    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v5}, Lu9/t1;->g0()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {v3, v2}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    :cond_8
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p1, p0}, Lu9/c0;->f(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_5
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v4}, Lu9/o0;->V(Z)V

    throw p0

    :cond_9
    invoke-interface {p1, p0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lu9/p;->R(Ly8/h;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Lu9/a0;

    invoke-direct {v0, p2, p0, p1}, Lu9/a0;-><init>(Ljava/lang/Throwable;Lu9/p;Ly8/h;)V

    throw v0
.end method

.method public static final j(Lu9/p;Ly8/h;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lu9/p;->T(Ly8/h;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    new-instance v1, Lu9/a0;

    invoke-direct {v1, v0, p0, p1}, Lu9/a0;-><init>(Ljava/lang/Throwable;Lu9/p;Ly8/h;)V

    throw v1
.end method

.method public static final k(Ljava/lang/String;JJJ)J
    .locals 4

    sget v0, Lz9/t;->a:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-static {v0}, Lr9/r;->V(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x27

    const-string v1, "System property \'"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-gtz p1, :cond_1

    cmp-long p1, v2, p5

    if-gtz p1, :cond_1

    return-wide v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    const-string p3, ", but is \'"

    invoke-static {v0, p0, p5, p6, p3}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l(IILjava/lang/String;)I
    .locals 7

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const p1, 0x1ffffe

    :goto_0
    int-to-long v1, p0

    const/4 p0, 0x1

    int-to-long v3, p0

    int-to-long v5, p1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lz9/b;->k(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final m(Ly8/h;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz9/b;->e:Lsc/u0;

    invoke-interface {p0, v1, v0}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lz9/b;->m(Ly8/h;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lz9/b;->d:Lmb/s2;

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lz9/v;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Lz9/v;-><init>(ILy8/h;)V

    sget-object p1, Lz9/b;->g:Lsc/u0;

    invoke-interface {p0, p1, v0}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr0/i;->p(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
