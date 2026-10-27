.class public final Ly4/q;
.super Lr5/h1;
.source "SourceFile"


# static fields
.field public static v:Ly4/q;

.field public static w:Ly4/q;

.field public static final x:Ljava/lang/Object;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Lx4/a;

.field public final n:Landroidx/work/impl/WorkDatabase;

.field public final o:Li5/a;

.field public final p:Ljava/util/List;

.field public final q:Ly4/e;

.field public final r:Lh5/d;

.field public s:Z

.field public t:Landroid/content/BroadcastReceiver$PendingResult;

.field public final u:Le5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ly4/q;->v:Ly4/q;

    sput-object v0, Ly4/q;->w:Ly4/q;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly4/q;->x:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx4/a;Li5/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Ly4/e;Le5/k;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly4/q;->s:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lx4/t;

    iget v2, p2, Lx4/a;->h:I

    invoke-direct {v1, v2}, Lx4/t;-><init>(I)V

    sget-object v2, Lx4/t;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lx4/t;->c:Lx4/t;

    if-nez v3, :cond_0

    sput-object v1, Lx4/t;->c:Lx4/t;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Ly4/q;->l:Landroid/content/Context;

    iput-object p3, p0, Ly4/q;->o:Li5/a;

    iput-object p4, p0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Ly4/q;->q:Ly4/e;

    iput-object p7, p0, Ly4/q;->u:Le5/k;

    iput-object p2, p0, Ly4/q;->m:Lx4/a;

    iput-object p5, p0, Ly4/q;->p:Ljava/util/List;

    iget-object p7, p3, Li5/a;->b:Lu9/p;

    const-string v1, "taskExecutor.taskCoroutineDispatcher"

    invoke-static {p7, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object p7

    new-instance v1, Lh5/d;

    const/4 v2, 0x1

    invoke-direct {v1, p4, v2}, Lh5/d;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v1, p0, Ly4/q;->r:Lh5/d;

    iget-object v1, p3, Li5/a;->a:Lh5/h;

    sget-object v2, Ly4/j;->a:Ljava/lang/String;

    new-instance v2, Ly4/h;

    invoke-direct {v2, v1, p5, p2, p4}, Ly4/h;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lx4/a;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {p6, v2}, Ly4/e;->a(Ly4/b;)V

    new-instance p5, Lh5/b;

    invoke-direct {p5, p1, p0}, Lh5/b;-><init>(Landroid/content/Context;Ly4/q;)V

    invoke-virtual {p3, p5}, Li5/a;->a(Ljava/lang/Runnable;)V

    sget-object p0, Ly4/m;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lh5/g;->a(Landroid/content/Context;Lx4/a;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p4}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    invoke-static {v0, p2}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object p2

    iget-object v2, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    const-string p3, "workspec"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg5/p;

    invoke-direct {v4, p0, p2}, Lg5/p;-><init>(Lg5/q;Lk4/n;)V

    new-instance v1, Landroidx/lifecycle/j0;

    const/4 v6, 0x5

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    new-instance p0, Lc5/n;

    invoke-direct {p0, v1}, Lc5/n;-><init>(Li9/e;)V

    new-instance p2, Ly4/l;

    const/4 p3, 0x4

    invoke-direct {p2, p3, v5}, La9/i;-><init>(ILy8/c;)V

    new-instance p3, Lx9/m;

    invoke-direct {p3, p0, p2, v0}, Lx9/m;-><init>(Ljava/lang/Object;La9/i;I)V

    const/4 p0, -0x1

    invoke-static {p3, p0}, Lx9/c0;->d(Lx9/g;I)Lx9/g;

    move-result-object p0

    invoke-static {p0}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object p0

    new-instance p2, Lod/k;

    invoke-direct {p2, p1, v5}, Lod/k;-><init>(Landroid/content/Context;Ly8/c;)V

    new-instance p1, Lx9/m;

    invoke-direct {p1, p0, p2}, Lx9/m;-><init>(Lx9/g;Li9/e;)V

    new-instance p0, Lad/w;

    const/16 p2, 0x18

    invoke-direct {p0, p1, v5, p2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 p1, 0x3

    invoke-static {p7, v5, v5, p0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static M(Landroid/content/Context;)Ly4/q;
    .locals 2

    sget-object v0, Ly4/q;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Ly4/q;->v:Ly4/q;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Ly4/q;->w:Ly4/q;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final L(Ljava/lang/String;Lx4/y;)Lx4/j;
    .locals 6

    new-instance v0, Ly4/n;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ly4/n;-><init>(Ly4/q;Ljava/lang/String;ILjava/util/List;I)V

    invoke-virtual {v0}, Ly4/n;->w()Lx4/j;

    move-result-object p0

    return-object p0
.end method

.method public final N()V
    .locals 2

    sget-object v0, Ly4/q;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ly4/q;->s:Z

    iget-object v1, p0, Ly4/q;->t:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Ly4/q;->t:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final O()V
    .locals 4

    iget-object v0, p0, Ly4/q;->m:Lx4/a;

    iget-object v0, v0, Lx4/a;->m:Lx4/j;

    const-string v1, "ReschedulingWork"

    new-instance v2, Lod/x4;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    const-string p0, "<this>"

    invoke-static {v0, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lu4/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {v1}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lod/x4;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v0
.end method
