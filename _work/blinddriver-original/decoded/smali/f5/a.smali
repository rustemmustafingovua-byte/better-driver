.class public final Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf5/a;->l:I

    iput-object p2, p0, Lf5/a;->n:Ljava/lang/Object;

    iput-object p3, p0, Lf5/a;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;I)V
    .locals 0

    .line 2
    iput p3, p0, Lf5/a;->l:I

    iput-object p1, p0, Lf5/a;->m:Ljava/lang/Object;

    iput-object p2, p0, Lf5/a;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v0, Lh5/h;

    iget-object v0, v0, Lh5/h;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lh5/h;

    invoke-virtual {p0}, Lh5/h;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v1, Lh5/h;

    iget-object v1, v1, Lh5/h;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lh5/h;

    invoke-virtual {p0}, Lh5/h;->a()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private final b()V
    .locals 2

    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lu7/g;

    iget-object v0, v0, Lu7/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v1, Lu7/g;

    iget-object v1, v1, Lu7/g;->d:Ljava/lang/Object;

    check-cast v1, Lu7/b;

    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lu7/i;

    invoke-interface {v1, p0}, Lu7/b;->b(Lu7/i;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final c()V
    .locals 4

    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lu7/g;

    iget-object v0, v0, Lu7/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v1, Lu7/g;

    iget-object v1, v1, Lu7/g;->d:Ljava/lang/Object;

    check-cast v1, Lg5/l;

    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lu7/i;

    iget-object v2, p0, Lu7/i;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lu7/i;->f:Ljava/lang/Exception;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lg7/s;->c(Ljava/lang/Object;)V

    iget-object v2, v1, Lg5/l;->m:Ljava/lang/Object;

    check-cast v2, Lkd/j;

    iget-object v2, v2, Lkd/j;->e:Lp2/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "share error "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Lu9/g;

    invoke-virtual {p0}, Lu9/g;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lu7/g;

    iget-object v0, v0, Lu7/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v1, Lu7/g;

    iget-object v1, v1, Lu7/g;->d:Ljava/lang/Object;

    check-cast v1, Lb0/l1;

    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lu7/i;

    invoke-virtual {p0}, Lu7/i;->a()Ljava/lang/Object;

    move-result-object p0

    iget-object v1, v1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v1, Lkd/d;

    invoke-virtual {v1, p0}, Lkd/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lf5/a;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    sget-object v3, Ly8/i;->l:Ly8/i;

    invoke-static {v2, v3}, Lu9/v;->p(Ljava/lang/Throwable;Ly8/h;)V

    :goto_0
    iget-object v2, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v2, Lz9/h;

    invoke-virtual {v2}, Lz9/h;->V()Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lf5/a;->m:Ljava/lang/Object;

    add-int/2addr v0, v1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v2, Lz9/h;

    iget-object v3, v2, Lz9/h;->o:Lu9/p;

    invoke-static {v3, v2}, Lz9/b;->j(Lu9/p;Ly8/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lz9/h;

    iget-object v1, v0, Lz9/h;->o:Lu9/p;

    invoke-static {v1, v0, p0}, Lz9/b;->i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lz9/h;

    iget-object v1, p0, Lz9/h;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lz9/h;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, Lz4/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling work "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v3, Lg5/o;

    iget-object v4, v3, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lz4/a;

    iget-object p0, p0, Lz4/a;->a:Lz4/c;

    filled-new-array {v3}, [Lg5/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz4/c;->d([Lg5/o;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lu9/g;

    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lu9/q0;

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p0, v1}, Lu9/g;->C(Lu9/p;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lf5/a;->d()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lf5/a;->c()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lf5/a;->b()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v0, Lu7/i;

    iget-boolean v0, v0, Lu7/i;->d:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lu7/f;

    iget-object p0, p0, Lu7/f;->a:Lu7/i;

    iget-object v0, p0, Lu7/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v2, p0, Lu7/i;->c:Z

    if-eqz v2, :cond_2

    monitor-exit v0

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lu7/i;->c:Z

    iput-boolean v1, p0, Lu7/i;->d:Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v0, p0, Lu7/i;->b:Lad/a2;

    invoke-virtual {v0, p0}, Lad/a2;->r(Lu7/i;)V

    goto :goto_5

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :cond_3
    :try_start_5
    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lu7/f;
    :try_end_5
    .catch Lu7/c; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    iget-object p0, v0, Lu7/f;->a:Lu7/i;

    invoke-virtual {p0, v2}, Lu7/i;->d(Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_3
    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lu7/f;

    iget-object p0, p0, Lu7/f;->a:Lu7/i;

    invoke-virtual {p0, v0}, Lu7/i;->c(Ljava/lang/Exception;)V

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lu7/f;

    iget-object p0, p0, Lu7/f;->a:Lu7/i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lu7/i;->c(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_4
    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lu7/f;

    iget-object p0, p0, Lu7/f;->a:Lu7/i;

    invoke-virtual {p0, v0}, Lu7/i;->c(Ljava/lang/Exception;)V

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Lf5/a;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lf7/z;

    iget-object p0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast p0, Lt7/f;

    iget-object v1, p0, Lt7/f;->m:Ld7/a;

    iget v3, v1, Ld7/a;->m:I

    if-nez v3, :cond_a

    iget-object p0, p0, Lt7/f;->n:Lg7/o;

    invoke-static {p0}, Lg7/s;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lg7/o;->n:Ld7/a;

    iget v3, v1, Ld7/a;->m:I

    if-nez v3, :cond_9

    iget-object v1, v0, Lf7/z;->j:Lf7/q;

    iget-object p0, p0, Lg7/o;->m:Landroid/os/IBinder;

    if-nez p0, :cond_5

    goto :goto_6

    :cond_5
    sget v2, Lg7/a;->d:I

    const-string v2, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg7/f;

    if-eqz v3, :cond_6

    check-cast v2, Lg7/f;

    goto :goto_6

    :cond_6
    new-instance v2, Lg7/e0;

    invoke-direct {v2, p0}, Lg7/e0;-><init>(Landroid/os/IBinder;)V

    :goto_6
    iget-object p0, v0, Lf7/z;->g:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_8

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    iput-object v2, v1, Lf7/q;->d:Ljava/lang/Object;

    iput-object p0, v1, Lf7/q;->e:Ljava/lang/Object;

    iget-boolean v3, v1, Lf7/q;->a:Z

    if-eqz v3, :cond_b

    iget-object v1, v1, Lf7/q;->b:Ljava/lang/Object;

    check-cast v1, Le7/c;

    invoke-interface {v1, v2, p0}, Le7/c;->f(Lg7/f;Ljava/util/Set;)V

    goto :goto_8

    :cond_8
    :goto_7
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v3, "Received null response from onSignInSuccess"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ld7/a;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Ld7/a;-><init>(I)V

    invoke-virtual {v1, p0}, Lf7/q;->j(Ld7/a;)V

    goto :goto_8

    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    const-string v4, "SignInCoordinator"

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lf7/z;->j:Lf7/q;

    invoke-virtual {p0, v1}, Lf7/q;->j(Ld7/a;)V

    iget-object p0, v0, Lf7/z;->i:Lt7/a;

    invoke-interface {p0}, Le7/c;->g()V

    goto :goto_9

    :cond_a
    iget-object p0, v0, Lf7/z;->j:Lf7/q;

    invoke-virtual {p0, v1}, Lf7/q;->j(Ld7/a;)V

    :cond_b
    :goto_8
    iget-object p0, v0, Lf7/z;->i:Lt7/a;

    invoke-interface {p0}, Le7/c;->g()V

    :goto_9
    return-void

    :pswitch_8
    iget-object v0, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v0, Ld7/a;

    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lf7/q;

    iget-object v3, p0, Lf7/q;->b:Ljava/lang/Object;

    check-cast v3, Le7/c;

    iget-object v4, p0, Lf7/q;->f:Ljava/lang/Object;

    check-cast v4, Lf7/d;

    iget-object v4, v4, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lf7/q;->c:Ljava/lang/Object;

    check-cast v5, Lf7/b;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf7/o;

    if-nez v4, :cond_c

    goto :goto_a

    :cond_c
    iget v5, v0, Ld7/a;->m:I

    if-nez v5, :cond_e

    iput-boolean v1, p0, Lf7/q;->a:Z

    invoke-interface {v3}, Le7/c;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lf7/q;->a:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lf7/q;->d:Ljava/lang/Object;

    check-cast v0, Lg7/f;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lf7/q;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {v3, v0, p0}, Le7/c;->f(Lg7/f;Ljava/util/Set;)V

    goto :goto_a

    :cond_d
    :try_start_6
    invoke-interface {v3}, Le7/c;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v3, v2, p0}, Le7/c;->f(Lg7/f;Ljava/util/Set;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_a

    :catch_2
    move-exception p0

    const-string v0, "GoogleApiManager"

    const-string v1, "Failed to get service from broker. "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "Failed to get service from broker."

    invoke-interface {v3, p0}, Le7/c;->c(Ljava/lang/String;)V

    new-instance p0, Ld7/a;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ld7/a;-><init>(I)V

    invoke-virtual {v4, p0, v2}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v4, v0, v2}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    :cond_f
    :goto_a
    return-void

    :pswitch_9
    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lf5/b;

    iget-object v0, v0, Lf5/b;->l:Ly4/q;

    iget-object v0, v0, Ly4/q;->q:Ly4/e;

    iget-object v1, p0, Lf5/a;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    invoke-virtual {v0, v1}, Ly4/e;->c(Ljava/lang/String;)Ly4/c0;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, v0, Ly4/c0;->a:Lg5/o;

    monitor-exit v3

    goto :goto_b

    :catchall_4
    move-exception p0

    goto :goto_d

    :cond_10
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_b
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lg5/o;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v0, Lf5/b;

    iget-object v0, v0, Lf5/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v1, Lf5/b;

    iget-object v1, v1, Lf5/b;->q:Ljava/util/HashMap;

    invoke-static {v2}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast v1, Lf5/b;

    iget-object v3, v1, Lf5/b;->s:Lc5/o;

    iget-object v4, v1, Lf5/b;->m:Li5/a;

    iget-object v4, v4, Li5/a;->b:Lu9/p;

    invoke-static {v3, v2, v4, v1}, Lc5/p;->a(Lc5/o;Lg5/o;Lu9/p;Lc5/i;)Lu9/j1;

    move-result-object v1

    iget-object p0, p0, Lf5/a;->n:Ljava/lang/Object;

    check-cast p0, Lf5/b;

    iget-object p0, p0, Lf5/b;->r:Ljava/util/HashMap;

    invoke-static {v2}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_c

    :catchall_5
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0

    :cond_11
    :goto_c
    return-void

    :goto_d
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
