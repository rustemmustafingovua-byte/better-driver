.class public final Ldd/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldd/j0;->l:I

    iput-object p2, p0, Ldd/j0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf7/k;Lf7/c0;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Ldd/j0;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldd/j0;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lv8/i;
    .locals 4

    iget-object v0, p0, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lk4/j;

    new-instance v1, Lv8/i;

    invoke-direct {v1}, Lv8/i;-><init>()V

    iget-object v0, v0, Lk4/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v2, Lmb/s2;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Lmb/s2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv8/i;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    invoke-static {v1}, Ll7/a;->d(Lv8/i;)Lv8/i;

    move-result-object v0

    iget-object v1, v0, Lv8/i;->l:Lv8/f;

    invoke-virtual {v1}, Lv8/f;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v1, Lk4/j;

    iget-object v1, v1, Lk4/j;->h:Lr4/i;

    const-string v2, "Required value was null."

    if-eqz v1, :cond_2

    iget-object p0, p0, Ldd/j0;->m:Ljava/lang/Object;

    check-cast p0, Lk4/j;

    iget-object p0, p0, Lk4/j;->h:Lr4/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lr4/i;->b()I

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Ldd/j0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lu9/g;

    invoke-static {v0}, Lv9/e;->a(Lu9/g;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Loa/d;

    monitor-enter v2

    :try_start_0
    iget v0, v2, Loa/d;->g:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v2, Loa/d;->g:I

    invoke-virtual {v2}, Loa/d;->b()Loa/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    monitor-exit v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v5, v0

    const-wide/16 v6, -0x1

    :try_start_1
    iget-object v0, v5, Loa/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Loa/d;

    iget-object v8, v0, Loa/d;->b:Ljava/util/logging/Logger;

    iget-object v9, v5, Loa/a;->c:Loa/c;

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    const-string v0, "starting"

    invoke-static {v8, v5, v9, v0}, Ll7/a;->c(Ljava/util/logging/Logger;Loa/a;Loa/c;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-wide v11, v6

    :goto_0
    :try_start_2
    invoke-virtual {v5}, Loa/a;->a()J

    move-result-wide v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v10, :cond_3

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finished run in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ll7/a;->n(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v5, v9, v0}, Ll7/a;->c(Ljava/util/logging/Logger;Loa/a;Loa/c;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Loa/d;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v8, v5, v13, v14, v3}, Loa/d;->a(Loa/d;Loa/a;JZ)V

    invoke-virtual {v8}, Loa/d;->b()Loa/a;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v8

    throw v0

    :catchall_2
    move-exception v0

    if-eqz v10, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed a run in "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ll7/a;->n(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v5, v9, v3}, Ll7/a;->c(Ljava/util/logging/Logger;Loa/a;Loa/c;Ljava/lang/String;)V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    iget-object v1, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v1, Loa/d;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v3, 0x0

    :try_start_8
    invoke-static {v1, v5, v6, v7, v3}, Loa/d;->a(Loa/d;Loa/a;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_1
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lk4/j;

    iget-object v0, v0, Lk4/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Landroidx/work/impl/WorkDatabase;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    const-string v0, "readWriteLock.readLock()"

    invoke-static {v2, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lk4/j;

    invoke-virtual {v0}, Lk4/j;->a()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v0, :cond_5

    :goto_4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_b

    :cond_5
    :try_start_b
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lk4/j;

    iget-object v0, v0, Lk4/j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lk4/j;

    iget-object v0, v0, Lk4/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->v()Lr4/b;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lk4/j;

    iget-object v0, v0, Lk4/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->v()Lr4/b;

    move-result-object v3

    invoke-virtual {v3}, Lr4/b;->c()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    invoke-virtual {v1}, Ldd/j0;->a()Lv8/i;

    move-result-object v0

    invoke-virtual {v3}, Lr4/b;->y()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-virtual {v3}, Lr4/b;->e()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :goto_5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    :catchall_6
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v3}, Lr4/b;->e()V

    throw v0
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :goto_6
    :try_start_f
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lu8/t;->l:Lu8/t;

    goto :goto_5

    :goto_7
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lu8/t;->l:Lu8/t;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_5

    :goto_8
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v1, Lk4/j;

    iget-object v2, v1, Lk4/j;->j:Li/f;

    monitor-enter v2

    :try_start_10
    iget-object v1, v1, Lk4/j;->j:Li/f;

    invoke-virtual {v1}, Li/f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    move-object v3, v1

    check-cast v3, Li/b;

    invoke-virtual {v3}, Li/b;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Li/b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk4/i;

    invoke-virtual {v3, v0}, Lk4/i;->a(Ljava/util/Set;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    goto :goto_a

    :cond_8
    monitor-exit v2

    goto :goto_b

    :goto_a
    monitor-exit v2

    throw v0

    :cond_9
    :goto_b
    return-void

    :goto_c
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_2
    const/4 v0, 0x0

    throw v0

    :pswitch_3
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lf7/z;

    iget-object v0, v0, Lf7/z;->j:Lf7/q;

    new-instance v1, Ld7/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ld7/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lf7/q;->j(Ld7/a;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lb0/l1;

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf7/o;

    iget-object v0, v0, Lf7/o;->d:Le7/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le7/c;->c(Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lf7/o;

    invoke-virtual {v0}, Lf7/o;->h()V

    return-void

    :pswitch_6
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Lf2/y;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, v0, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v2, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_a

    move v0, v5

    :cond_a
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    if-eq v3, v0, :cond_d

    if-eq v3, v5, :cond_d

    goto :goto_d

    :cond_b
    if-eq v3, v5, :cond_d

    :goto_d
    const/4 v0, 0x7

    if-eq v3, v0, :cond_c

    const/16 v4, 0x9

    if-eq v3, v4, :cond_c

    const/4 v0, 0x2

    :cond_c
    move v3, v0

    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lf2/y;

    iget-wide v4, v1, Lf2/y;->G0:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lf2/y;->J(Landroid/view/MotionEvent;IJZ)V

    :cond_d
    return-void

    :pswitch_7
    iget-object v0, v1, Ldd/j0;->m:Ljava/lang/Object;

    check-cast v0, Ldd/k0;

    iget-object v2, v0, Ldd/k0;->j:Ldd/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ldd/m;->a(J)V

    iget-object v2, v2, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd/n;

    iget-boolean v2, v2, Ldd/n;->l:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Ldd/k0;->a:Ldd/q0;

    iget-object v2, v2, Ldd/q0;->d:Ljava/io/File;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_e

    :cond_e
    const-wide/16 v2, 0x0

    :goto_e
    iget-object v4, v0, Ldd/k0;->c:Li9/a;

    invoke-interface {v4}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    const-string v2, "size"

    invoke-virtual {v0, v2}, Ldd/k0;->i(Ljava/lang/String;)Ljava/io/File;

    :cond_f
    iget-boolean v2, v0, Ldd/k0;->m:Z

    if-eqz v2, :cond_10

    iget-object v0, v0, Ldd/k0;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
