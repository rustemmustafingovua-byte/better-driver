.class public final Lb0/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/f0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/q2;->a:I

    iput-object p2, p0, Lb0/q2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/q2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr0/g0;Landroid/content/Context;Lf7/s;)V
    .locals 0

    const/16 p1, 0x9

    iput p1, p0, Lb0/q2;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lb0/q2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/q2;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget v0, p0, Lb0/q2;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lb0/q2;->c:Ljava/lang/Object;

    iget-object p0, p0, Lb0/q2;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lx/m0;

    iget-object p0, p0, Lx/m0;->n:Lk/n0;

    invoke-virtual {p0, v2}, Lk/n0;->j(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lu/k1;

    check-cast v2, Landroid/view/View;

    iget v0, p0, Lu/k1;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lu/k1;->t:I

    if-nez v0, :cond_0

    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, v1}, Lq3/m;->b(Landroid/view/View;Lq3/f;)V

    invoke-static {v2, v1}, Lq3/q;->d(Landroid/view/View;Lja/c;)V

    iget-object p0, p0, Lu/k1;->u:Lu/b0;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/lifecycle/v;

    invoke-interface {p0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p0

    check-cast v2, Lb4/d;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/lifecycle/v;

    invoke-interface {p0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p0

    check-cast v2, Lod/r1;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    return-void

    :pswitch_3
    :try_start_0
    check-cast p0, Landroid/content/Context;

    check-cast v2, Lf7/s;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    return-void

    :pswitch_4
    check-cast p0, Ln/h1;

    check-cast v2, Ln/d1;

    iget-object p0, p0, Ln/h1;->i:Ld1/v;

    invoke-virtual {p0, v2}, Ld1/v;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    check-cast p0, Ln/h1;

    check-cast v2, Ln/b1;

    iget-object v0, v2, Ln/b1;->b:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/a1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ln/a1;->l:Ln/d1;

    iget-object p0, p0, Ln/h1;->i:Ld1/v;

    invoke-virtual {p0, v0}, Ld1/v;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_6
    check-cast p0, Ln/h1;

    check-cast v2, Ln/h1;

    iget-object p0, p0, Ln/h1;->j:Ld1/v;

    invoke-virtual {p0, v2}, Ld1/v;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    check-cast p0, Ln/e0;

    check-cast v2, Ln/c0;

    iget-object p0, p0, Ln/e0;->a:Lt0/b;

    invoke-virtual {p0, v2}, Lt0/b;->j(Ljava/lang/Object;)Z

    return-void

    :pswitch_8
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast v2, Lf2/n0;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void

    :pswitch_9
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast v2, Lf2/m0;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void

    :pswitch_a
    check-cast p0, Ld/b;

    check-cast v2, Lc/f;

    iget-object v0, p0, Ld/b;->a:Lg5/i;

    if-eqz v0, :cond_2

    iget-object p0, v2, Lc/f;->b:Ld/a;

    invoke-virtual {p0}, Lh4/d;->e()V

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Ld/b;->b:Lb/h0;

    if-eqz p0, :cond_c

    iget-object p0, v2, Lc/f;->a:Lb/i0;

    iget-object v0, p0, Lb/b0;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Lb/b0;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    instance-of v4, v2, Ljava/lang/AutoCloseable;

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_4
    instance-of v4, v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_8

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-interface {v2, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    if-nez v3, :cond_6

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_8
    instance-of v3, v2, Landroid/content/res/TypedArray;

    if-eqz v3, :cond_9

    check-cast v2, Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_3
    if-ge v3, p0, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lb/a0;

    invoke-virtual {v1}, Lh4/d;->e()V

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_4
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unreachable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    check-cast p0, Lb0/e3;

    iget-object p0, p0, Lb0/e3;->c:Ld1/v;

    check-cast v2, Li9/c;

    invoke-interface {p0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    check-cast p0, Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/k;

    if-eqz v0, :cond_e

    new-instance v3, Ls/j;

    invoke-direct {v3, v0}, Ls/j;-><init>(Ls/k;)V

    check-cast v2, Ls/i;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3}, Ls/i;->b(Ls/h;)V

    :cond_d
    invoke-interface {p0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
