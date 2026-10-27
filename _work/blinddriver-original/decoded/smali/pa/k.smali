.class public final Lpa/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/h;


# instance fields
.field public final a:Lpa/w;

.field public final b:Loa/d;

.field public final c:J

.field public d:J

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final f:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method public constructor <init>(Lpa/w;Loa/d;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/k;->a:Lpa/w;

    iput-object p2, p0, Lpa/k;->b:Loa/d;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lpa/k;->c:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lpa/k;->d:J

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lpa/k;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lpa/k;->f:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method


# virtual methods
.method public final a()Lpa/q;
    .locals 11

    iget-object v0, p0, Lpa/k;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lpa/k;->a:Lpa/w;

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v4, v1}, Lpa/w;->d(Lpa/q;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lpa/k;->c()V

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    throw v2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v4}, Lpa/w;->f()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lpa/k;->b:Loa/d;

    iget-object v3, v3, Loa/d;->a:Lm2/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lpa/k;->d:J

    sub-long/2addr v7, v5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lpa/k;->d()Lpa/u;

    move-result-object v3

    iget-wide v7, p0, Lpa/k;->c:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lpa/k;->d:J

    :goto_3
    if-nez v3, :cond_7

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    move-object v3, v1

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lpa/k;->f:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5, v7, v8, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpa/u;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, v3, Lpa/u;->a:Lpa/v;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_5
    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    iget-object v5, v3, Lpa/u;->a:Lpa/v;

    iget-object v6, v3, Lpa/u;->b:Lpa/v;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_8

    iget-object v6, v3, Lpa/u;->c:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    move v6, v8

    goto :goto_6

    :cond_8
    move v6, v7

    :goto_6
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lpa/k;->c()V

    invoke-interface {v5}, Lpa/v;->c()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v5}, Lpa/v;->f()Lpa/u;

    move-result-object v3

    :cond_9
    iget-object v5, v3, Lpa/u;->b:Lpa/v;

    if-nez v5, :cond_a

    iget-object v5, v3, Lpa/u;->c:Ljava/lang/Throwable;

    if-nez v5, :cond_a

    move v7, v8

    :cond_a
    if-eqz v7, :cond_b

    iget-object v0, v3, Lpa/u;->a:Lpa/v;

    invoke-interface {v0}, Lpa/v;->b()Lpa/q;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lpa/k;->c()V

    return-object v0

    :cond_b
    :try_start_3
    iget-object v5, v3, Lpa/u;->c:Ljava/lang/Throwable;

    if-eqz v5, :cond_e

    instance-of v6, v5, Ljava/io/IOException;

    if-eqz v6, :cond_d

    if-nez v2, :cond_c

    check-cast v5, Ljava/io/IOException;

    move-object v2, v5

    goto :goto_7

    :cond_c
    invoke-static {v2, v5}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_d
    throw v5

    :cond_e
    :goto_7
    iget-object v3, v3, Lpa/u;->b:Lpa/v;

    if-eqz v3, :cond_0

    invoke-interface {v4}, Lpa/w;->g()Lu8/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lu8/k;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    invoke-virtual {p0}, Lpa/k;->c()V

    throw v0
.end method

.method public final b()Lpa/w;
    .locals 0

    iget-object p0, p0, Lpa/k;->a:Lpa/w;

    return-object p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lpa/k;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpa/v;

    invoke-interface {v2}, Lpa/v;->cancel()V

    invoke-interface {v2}, Lpa/v;->a()Lpa/v;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lpa/k;->a:Lpa/w;

    invoke-interface {v3}, Lpa/w;->g()Lu8/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lu8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final d()Lpa/u;
    .locals 7

    iget-object v0, p0, Lpa/k;->a:Lpa/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lpa/w;->d(Lpa/q;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v0}, Lpa/w;->h()Lpa/v;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Lpa/i;

    invoke-direct {v3, v2}, Lpa/i;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v2}, Lpa/v;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Lpa/u;

    const/4 v0, 0x6

    invoke-direct {p0, v2, v1, v0}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V

    return-object p0

    :cond_0
    instance-of v3, v2, Lpa/i;

    if-eqz v3, :cond_1

    check-cast v2, Lpa/i;

    iget-object p0, v2, Lpa/i;->a:Lpa/u;

    return-object p0

    :cond_1
    iget-object v3, p0, Lpa/k;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lma/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lpa/w;->e()Lla/a;

    move-result-object v0

    iget-object v0, v0, Lla/a;->h:Lla/r;

    invoke-virtual {v0}, Lla/r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lpa/k;->b:Loa/d;

    invoke-virtual {v3}, Loa/d;->d()Loa/c;

    move-result-object v3

    new-instance v4, Lpa/j;

    invoke-direct {v4, v0, v2, p0}, Lpa/j;-><init>(Ljava/lang/String;Lpa/v;Lpa/k;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Loa/c;->c(Loa/a;J)V

    :cond_2
    return-object v1
.end method
