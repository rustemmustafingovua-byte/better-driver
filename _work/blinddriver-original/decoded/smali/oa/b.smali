.class public final Loa/b;
.super Loa/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li9/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Loa/b;->e:I

    iput-object p2, p0, Loa/b;->f:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Loa/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lpa/r;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Loa/b;->e:I

    iput-object p1, p0, Loa/b;->f:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2}, Loa/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Loa/b;->e:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Loa/b;->f:Ljava/lang/Object;

    check-cast v0, Lpa/r;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, v0, Lpa/r;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v4, v0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "iterator(...)"

    invoke-static {v4, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpa/q;

    iget-object v5, v5, Lpa/q;->d:Lla/f0;

    iget-object v5, v5, Lla/f0;->a:Lla/a;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_1
    iget-wide v4, v0, Lpa/r;->b:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-object v6, v0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "iterator(...)"

    invoke-static {v6, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-wide v9, 0x7fffffffffffffffL

    move-wide v10, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v9, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpa/q;

    invoke-static {v14}, Lj9/n;->d(Ljava/lang/Object;)V

    monitor-enter v14

    :try_start_0
    invoke-virtual {v0, v14, v1, v2}, Lpa/r;->a(Lpa/q;J)I

    move-result v15

    if-lez v15, :cond_2

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v16, v1

    goto :goto_2

    :cond_2
    move v15, v9

    iget-wide v8, v14, Lpa/q;->t:J

    cmp-long v16, v8, v4

    if-gez v16, :cond_3

    move-wide v4, v8

    move-object v12, v14

    :cond_3
    move-wide/from16 v16, v1

    iget-object v1, v14, Lpa/q;->d:Lla/f0;

    iget-object v1, v1, Lla/f0;->a:Lla/a;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    add-int/lit8 v7, v7, 0x1

    cmp-long v1, v8, v10

    if-gez v1, :cond_4

    move-wide v10, v8

    move-object v13, v14

    :cond_4
    move v9, v15

    :goto_2
    monitor-exit v14

    move-wide/from16 v1, v16

    goto :goto_1

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0

    :cond_6
    move-wide/from16 v16, v1

    move v15, v9

    const-wide/16 v1, -0x1

    if-eqz v12, :cond_7

    move-object v8, v12

    goto :goto_3

    :cond_7
    const/4 v4, 0x5

    if-le v7, v4, :cond_8

    move-wide v4, v10

    move-object v8, v13

    goto :goto_3

    :cond_8
    move-wide v4, v1

    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_e

    monitor-enter v8

    :try_start_2
    iget-object v1, v8, Lpa/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v6, 0x0

    if-nez v1, :cond_a

    monitor-exit v8

    :cond_9
    :goto_4
    move-wide v1, v6

    goto :goto_7

    :cond_a
    :try_start_3
    iget-wide v1, v8, Lpa/q;->t:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v1, v1, v4

    if-eqz v1, :cond_b

    monitor-exit v8

    goto :goto_4

    :cond_b
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, v8, Lpa/q;->m:Z

    iget-object v1, v0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v8

    iget-object v1, v8, Lpa/q;->d:Lla/f0;

    iget-object v1, v1, Lla/f0;->a:Lla/a;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v1, v8, Lpa/q;->f:Ljava/net/Socket;

    invoke-static {v1}, Lma/e;->c(Ljava/net/Socket;)V

    iget-object v1, v0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lpa/r;->d:Loa/c;

    iget-object v1, v0, Loa/c;->a:Loa/d;

    monitor-enter v1

    :try_start_5
    invoke-virtual {v0}, Loa/c;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Loa/c;->a:Loa/d;

    invoke-virtual {v2, v0}, Loa/d;->c(Loa/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_c
    :goto_5
    monitor-exit v1

    goto :goto_4

    :goto_6
    monitor-exit v1

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_e
    if-eqz v13, :cond_f

    iget-wide v0, v0, Lpa/r;->b:J

    add-long/2addr v10, v0

    sub-long v1, v10, v16

    goto :goto_7

    :cond_f
    if-lez v15, :cond_10

    iget-wide v1, v0, Lpa/r;->b:J

    :cond_10
    :goto_7
    return-wide v1

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, v0, Loa/b;->f:Ljava/lang/Object;

    check-cast v0, Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
