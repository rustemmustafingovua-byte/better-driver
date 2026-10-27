.class public final Lc5/f;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc5/f;->l:I

    iput-object p2, p0, Lc5/f;->m:Ljava/lang/Object;

    iput-object p3, p0, Lc5/f;->n:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lc5/f;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Ly4/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast v0, Lx4/s;

    check-cast p1, Ly4/t;

    iget p1, p1, Ly4/t;->l:I

    iget-object v0, v0, Lx4/s;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_0
    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lv7/a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const-string v0, "onTouchEvent"

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v1, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast v1, Ly1/a0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object p0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p0, Lg5/i;

    iget-object v1, v1, Ly1/a0;->a:Le3/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ly1/y;->m:Ly1/y;

    goto :goto_0

    :cond_1
    sget-object p1, Ly1/y;->n:Ly1/y;

    :goto_0
    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object p0, v1, Ly1/a0;->a:Le3/e;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_4
    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lc2/e1;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lc2/f1;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lm1/i0;

    iget-object v4, p0, Lm1/i0;->M:Landroidx/fragment/app/t;

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc2/e1;->p(Lc2/e1;Lc2/f1;IILi9/c;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lc2/e1;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lc2/f1;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lm1/l;

    iget-object v4, p0, Lm1/l;->z:Li9/c;

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc2/e1;->p(Lc2/e1;Lc2/f1;IILi9/c;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Lr0/g0;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p1, Lf3/x;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf3/z;

    invoke-virtual {p1, p0}, Lf3/x;->setPositionProvider(Lf3/z;)V

    invoke-virtual {p1}, Lf3/x;->m()V

    new-instance p0, Lf3/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_4
    check-cast p1, Lf2/n;

    iget-object v0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast v0, Li9/e;

    iget-object p0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p0, Lf2/g3;

    iget-boolean v1, p0, Lf2/g3;->n:Z

    if-nez v1, :cond_6

    iget-object p1, p1, Lf2/n;->a:Landroidx/lifecycle/v;

    invoke-interface {p1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p1

    iput-object v0, p0, Lf2/g3;->p:Li9/e;

    iget-object v1, p0, Lf2/g3;->o:Landroidx/lifecycle/q;

    if-nez v1, :cond_5

    iput-object p1, p0, Lf2/g3;->o:Landroidx/lifecycle/q;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    goto :goto_2

    :cond_5
    check-cast p1, Landroidx/lifecycle/x;

    iget-object p1, p1, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/p;->n:Landroidx/lifecycle/p;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_6

    iget-object p1, p0, Lf2/g3;->m:Lr0/x;

    new-instance v1, Lf2/f3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lf2/f3;-><init>(Lf2/g3;Li9/e;I)V

    new-instance p0, Lz0/d;

    const v0, 0x4f523a4f

    invoke-direct {p0, v0, v2, v1}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {p1, p0}, Lr0/x;->B(Li9/e;)V

    :cond_6
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p1, Lf2/x0;

    iget-object p1, p1, Lf2/x0;->m:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf2/w0;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p1, Lf2/v0;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf2/w0;

    iget-object v1, p1, Lf2/v0;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lf2/v0;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :pswitch_7
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p1, Lf2/v1;

    iget-object v1, p1, Lf2/v1;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p1, Lf2/v1;->e:Z

    iget-object v0, p1, Lf2/v1;->d:Lt0/b;

    iget-object v2, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    if-ge v3, v0, :cond_8

    aget-object v5, v2, v3

    check-cast v5, Le2/g2;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/n;

    if-eqz v5, :cond_7

    iget-object v6, v5, Lu2/n;->b:Lk0/t;

    if-eqz v6, :cond_7

    invoke-virtual {v5, v6}, Lu2/n;->a(Lk0/t;)V

    iput-object v4, v5, Lu2/n;->b:Lk0/t;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_8
    iget-object p1, p1, Lf2/v1;->d:Lt0/b;

    invoke-virtual {p1}, Lt0/b;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf2/q0;

    iget-object p0, p0, Lf2/q0;->m:Lu2/y;

    iget-object p1, p0, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lu2/y;->a:Lu2/s;

    invoke-interface {p0}, Lu2/s;->e()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_4
    monitor-exit v1

    throw p0

    :pswitch_8
    check-cast p1, Lu9/t;

    new-instance p1, Lf2/v1;

    iget-object v0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast v0, Lk0/s;

    new-instance v1, Lc2/l0;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf2/q0;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lf2/v1;-><init>(Lk0/s;Lc2/l0;)V

    return-object p1

    :pswitch_9
    check-cast p1, Lr0/g0;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf2/n0;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    new-instance v0, Lb0/q2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p0}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_a
    check-cast p1, Lr0/g0;

    iget-object p1, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf2/m0;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    new-instance v0, Lb0/q2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p0}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_b
    check-cast p1, Lc2/e1;

    iget-object v0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast v0, Lc2/f1;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf1/w;

    iget p0, p0, Lf1/w;->z:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Lc2/e1;->i(Lc2/f1;IIF)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_c
    check-cast p1, Lf1/r;

    iget-object v0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast v0, Le2/g0;

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lf1/r;

    invoke-interface {p1, p0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Le2/g0;->f0(Lf1/r;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_d
    check-cast p1, Lc5/c;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc5/f;->m:Ljava/lang/Object;

    check-cast v0, Lu9/j1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    iget-object p0, p0, Lc5/f;->n:Ljava/lang/Object;

    check-cast p0, Lw9/r;

    check-cast p0, Lw9/q;

    invoke-virtual {p0, p1}, Lw9/q;->l(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
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
