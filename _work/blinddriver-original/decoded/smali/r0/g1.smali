.class public final Lr0/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/x;

.field public final b:Lr0/u;

.field public final c:Lr0/q;

.field public final d:Li9/e;

.field public final e:Z

.field public final f:Le2/f2;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;

.field public i:J

.field public j:Lk/n0;

.field public final k:Lmb/x4;

.field public final l:Lr0/v1;


# direct methods
.method public constructor <init>(Lr0/x;Lr0/u;Lr0/q;Lk/p0;Li9/e;ZLe2/f2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/g1;->a:Lr0/x;

    iput-object p2, p0, Lr0/g1;->b:Lr0/u;

    iput-object p3, p0, Lr0/g1;->c:Lr0/q;

    iput-object p5, p0, Lr0/g1;->d:Li9/e;

    iput-boolean p6, p0, Lr0/g1;->e:Z

    iput-object p7, p0, Lr0/g1;->f:Le2/f2;

    iput-object p8, p0, Lr0/g1;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lr0/h1;->n:Lr0/h1;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lz0/i;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lr0/g1;->i:J

    sget-object p1, Lk/u0;->a:Lk/n0;

    const-string p2, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.emptyScatterSet>"

    invoke-static {p1, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lr0/g1;->j:Lk/n0;

    new-instance p1, Lmb/x4;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lmb/x4;-><init>(I)V

    invoke-virtual {p3}, Lr0/q;->D()Le1/e;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    iput-object p1, p0, Lr0/g1;->k:Lmb/x4;

    new-instance p1, Lr0/v1;

    iget-object p2, p7, Le2/f2;->n:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lr0/v1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lr0/g1;->l:Lr0/v1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/h1;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The paused composition has already been applied"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lr0/g1;->b()V

    sget-object p0, Lr0/h1;->q:Lr0/h1;

    sget-object v1, Lr0/h1;->r:Lr0/h1;

    :cond_0
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state change from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/k1;->b(Ljava/lang/String;)V

    return-void

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The paused composition has not completed yet"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The paused composition has been cancelled"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The paused composition is invalid because of a previous exception"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lr0/h1;->l:Lr0/h1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 5

    const-string v0, "PausedComposition:applyChanges"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lr0/g1;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lr0/g1;->l:Lr0/v1;

    iget-object v3, p0, Lr0/g1;->f:Le2/f2;

    iget-object v4, p0, Lr0/g1;->k:Lmb/x4;

    invoke-virtual {v2, v3, v4}, Lr0/v1;->a(Le2/f2;Lmb/x4;)V

    iget-object v2, p0, Lr0/g1;->k:Lmb/x4;

    invoke-virtual {v2}, Lmb/x4;->c()V

    iget-object v2, p0, Lr0/g1;->k:Lmb/x4;

    invoke-virtual {v2}, Lmb/x4;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lr0/g1;->k:Lmb/x4;

    invoke-virtual {v2}, Lmb/x4;->b()V

    iget-object p0, p0, Lr0/g1;->a:Lr0/x;

    iput-object v1, p0, Lr0/x;->B:Lr0/g1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lr0/g1;->k:Lmb/x4;

    invoke-virtual {v3}, Lmb/x4;->b()V

    iget-object p0, p0, Lr0/g1;->a:Lr0/x;

    iput-object v1, p0, Lr0/x;->B:Lr0/g1;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    monitor-exit v0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final c()Z
    .locals 1

    iget-object p0, p0, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/h1;

    sget-object v0, Lr0/h1;->q:Lr0/h1;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 4

    sget-object v0, Lr0/h1;->o:Lr0/h1;

    sget-object v1, Lr0/h1;->q:Lr0/h1;

    :cond_0
    iget-object v2, p0, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state change from: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/k1;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final e(Lr0/c2;)Z
    .locals 11

    iget-object v0, p0, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/h1;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lr0/g1;->a:Lr0/x;

    iget-object v3, p0, Lr0/g1;->b:Lr0/u;

    const/16 v4, 0x2e

    const-string v5, " to: "

    const-string v6, "Unexpected state change from: "

    packed-switch v1, :pswitch_data_0

    :try_start_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The paused composition has been applied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pausable composition is complete and apply() should be applied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const-string p0, "Recursive call to resume()"

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_3
    sget-object v1, Lr0/h1;->o:Lr0/h1;

    sget-object v7, Lr0/h1;->p:Lr0/h1;

    :cond_0
    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v1, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0/k1;->b(Ljava/lang/String;)V

    :goto_0
    iget-wide v7, p0, Lr0/g1;->i:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lz0/i;->b()J

    move-result-wide v9

    iput-wide v9, p0, Lr0/g1;->i:J

    iget-object v1, p0, Lr0/g1;->j:Lk/n0;

    invoke-virtual {v3, v2, p1, v1}, Lr0/u;->n(Lr0/x;Lr0/c2;Lk/n0;)Lk/n0;

    move-result-object p1

    iput-object p1, p0, Lr0/g1;->j:Lk/n0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-wide v7, p0, Lr0/g1;->i:J

    sget-object p1, Lr0/h1;->p:Lr0/h1;

    sget-object v1, Lr0/h1;->o:Lr0/h1;

    :cond_2
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0/k1;->b(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lr0/g1;->j:Lk/n0;

    invoke-virtual {p1}, Lk/n0;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lr0/g1;->d()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    iput-wide v7, p0, Lr0/g1;->i:J

    sget-object p0, Lr0/h1;->p:Lr0/h1;

    sget-object v1, Lr0/h1;->o:Lr0/h1;

    :goto_2
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/k1;->b(Ljava/lang/String;)V

    :cond_5
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :pswitch_4
    iget-object v1, p0, Lr0/g1;->c:Lr0/q;

    iget-boolean v7, p0, Lr0/g1;->e:Z

    if-eqz v7, :cond_6

    const/16 v8, 0x64

    :try_start_4
    iput v8, v1, Lr0/q;->z:I

    const/4 v8, 0x1

    iput-boolean v8, v1, Lr0/q;->y:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :try_start_5
    iget-object v8, p0, Lr0/g1;->d:Li9/e;

    invoke-virtual {v3, v2, p1, v8}, Lr0/u;->b(Lr0/x;Lr0/c2;Li9/e;)Lk/n0;

    move-result-object p1

    iput-object p1, p0, Lr0/g1;->j:Lk/n0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_7

    :try_start_6
    invoke-virtual {v1}, Lr0/q;->v()V

    :cond_7
    sget-object p1, Lr0/h1;->n:Lr0/h1;

    sget-object v1, Lr0/h1;->o:Lr0/h1;

    :cond_8
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0/k1;->b(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lr0/g1;->j:Lk/n0;

    invoke-virtual {p1}, Lk/n0;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lr0/g1;->d()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lr0/g1;->c()Z

    move-result p0

    return p0

    :catchall_1
    move-exception p0

    if-eqz v7, :cond_b

    :try_start_7
    invoke-virtual {v1}, Lr0/q;->v()V

    :cond_b
    throw p0

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The paused composition has been cancelled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The paused composition is invalid because of a previous exception"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    sget-object p1, Lr0/h1;->l:Lr0/h1;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
