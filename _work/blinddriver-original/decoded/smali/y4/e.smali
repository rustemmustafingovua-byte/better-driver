.class public final Ly4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/PowerManager$WakeLock;

.field public final b:Landroid/content/Context;

.field public final c:Lx4/a;

.field public final d:Li5/a;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashSet;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly4/e;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx4/a;Li5/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/e;->b:Landroid/content/Context;

    iput-object p2, p0, Ly4/e;->c:Lx4/a;

    iput-object p3, p0, Ly4/e;->d:Li5/a;

    iput-object p4, p0, Ly4/e;->e:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ly4/e;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ly4/e;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ly4/e;->i:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly4/e;->j:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ly4/e;->a:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/e;->k:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ly4/e;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static d(Ljava/lang/String;Ly4/c0;I)Z
    .locals 2

    sget-object v0, Ly4/e;->l:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p1, Ly4/c0;->m:Lu9/x0;

    new-instance v1, Ly4/t;

    invoke-direct {v1, p2}, Ly4/t;-><init>(I)V

    invoke-virtual {p1, v1}, Lu9/c1;->u(Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WorkerWrapper interrupted for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WorkerWrapper could not be found for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ly4/b;)V
    .locals 1

    iget-object v0, p0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ly4/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/String;)Ly4/c0;
    .locals 5

    iget-object v0, p0, Ly4/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/c0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Ly4/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/c0;

    :cond_1
    iget-object v2, p0, Ly4/e;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Ly4/e;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ly4/e;->b:Landroid/content/Context;

    sget-object v2, Lf5/b;->u:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Ly4/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v2

    sget-object v3, Ly4/e;->l:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Ly4/e;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Ly4/e;->a:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_4
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ly4/c0;
    .locals 1

    iget-object v0, p0, Ly4/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/c0;

    if-nez v0, :cond_0

    iget-object p0, p0, Ly4/e;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly4/c0;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Ly4/e;->c(Ljava/lang/String;)Ly4/c0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Ly4/b;)V
    .locals 1

    iget-object v0, p0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ly4/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Ly4/k;Lx4/j;)Z
    .locals 11

    const-string p2, "Work "

    iget-object v0, p1, Ly4/k;->a:Lg5/j;

    iget-object v1, v0, Lg5/j;->a:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ly4/e;->e:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Ly4/d;

    invoke-direct {v3, p0, v9, v1}, Ly4/d;-><init>(Ly4/e;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lg5/o;

    const/4 v2, 0x0

    if-nez v8, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object p2, Ly4/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Didn\'t find WorkSpec for id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ly4/e;->d:Li5/a;

    iget-object p1, p1, Li5/a;->d:Lf7/l;

    new-instance p2, Lb/d;

    const/16 v1, 0x10

    invoke-direct {p2, v1, p0, v0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_0
    iget-object v10, p0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0, v1}, Ly4/e;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ly4/e;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly4/k;

    iget-object v3, v3, Ly4/k;->a:Lg5/j;

    iget v3, v3, Lg5/j;->b:I

    iget v4, v0, Lg5/j;->b:I

    if-ne v3, v4, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    sget-object p1, Ly4/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already enqueued for processing"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Ly4/e;->d:Li5/a;

    iget-object p1, p1, Li5/a;->d:Lf7/l;

    new-instance p2, Lb/d;

    const/16 v1, 0x10

    invoke-direct {p2, v1, p0, v0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    :goto_0
    monitor-exit v10

    return v2

    :cond_2
    iget p2, v8, Lg5/o;->t:I

    iget v3, v0, Lg5/j;->b:I

    if-eq p2, v3, :cond_3

    iget-object p1, p0, Ly4/e;->d:Li5/a;

    iget-object p1, p1, Li5/a;->d:Lf7/l;

    new-instance p2, Lb/d;

    const/16 v1, 0x10

    invoke-direct {p2, v1, p0, v0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    monitor-exit v10

    return v2

    :cond_3
    new-instance v2, Lf8/u3;

    iget-object v3, p0, Ly4/e;->b:Landroid/content/Context;

    iget-object v4, p0, Ly4/e;->c:Lx4/a;

    iget-object v5, p0, Ly4/e;->d:Li5/a;

    iget-object v7, p0, Ly4/e;->e:Landroidx/work/impl/WorkDatabase;

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lf8/u3;-><init>(Landroid/content/Context;Lx4/a;Li5/a;Ly4/e;Landroidx/work/impl/WorkDatabase;Lg5/o;Ljava/util/ArrayList;)V

    new-instance p0, Ly4/c0;

    invoke-direct {p0, v2}, Ly4/c0;-><init>(Lf8/u3;)V

    iget-object p2, p0, Ly4/c0;->d:Li5/a;

    iget-object p2, p2, Li5/a;->b:Lu9/p;

    invoke-static {}, Lu9/v;->b()Lu9/x0;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p2

    new-instance v2, Ly4/a0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Ly4/a0;-><init>(Ly4/c0;Ly8/c;I)V

    invoke-static {p2, v2}, Ll7/a;->s(Ly8/h;Li9/e;)Lg3/l;

    move-result-object p2

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0x15

    invoke-direct {v2, v6, p2, p0, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v3, v6, Ly4/e;->d:Li5/a;

    iget-object v3, v3, Li5/a;->d:Lf7/l;

    iget-object p2, p2, Lg3/l;->m:Lg3/k;

    invoke-virtual {p2, v2, v3}, Lg3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, v6, Ly4/e;->g:Ljava/util/HashMap;

    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, v6, Ly4/e;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    sget-object p1, Ly4/e;->l:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ly4/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": processing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
