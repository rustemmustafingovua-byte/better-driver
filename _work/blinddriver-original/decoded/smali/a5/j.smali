.class public final La5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/b;


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Li5/a;

.field public final n:Lh5/r;

.field public final o:Ly4/e;

.field public final p:Ly4/q;

.field public final q:La5/b;

.field public final r:Ljava/util/ArrayList;

.field public s:Landroid/content/Intent;

.field public t:Landroidx/work/impl/background/systemalarm/SystemAlarmService;

.field public final u:Lg5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmDispatcher"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La5/j;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/background/systemalarm/SystemAlarmService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, La5/j;->l:Landroid/content/Context;

    new-instance v1, Lia/z;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lia/z;-><init>(I)V

    new-instance v2, Lk0/l;

    invoke-direct {v2, v1}, Lk0/l;-><init>(Lia/z;)V

    invoke-static {p1}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object p1

    iget-object v1, p1, Ly4/q;->m:Lx4/a;

    iput-object p1, p0, La5/j;->p:Ly4/q;

    new-instance v3, La5/b;

    iget-object v4, v1, Lx4/a;->d:Lx4/j;

    invoke-direct {v3, v0, v4, v2}, La5/b;-><init>(Landroid/content/Context;Lx4/j;Lk0/l;)V

    iput-object v3, p0, La5/j;->q:La5/b;

    new-instance v0, Lh5/r;

    iget-object v1, v1, Lx4/a;->g:Lq3/k;

    invoke-direct {v0, v1}, Lh5/r;-><init>(Lq3/k;)V

    iput-object v0, p0, La5/j;->n:Lh5/r;

    iget-object v0, p1, Ly4/q;->q:Ly4/e;

    iput-object v0, p0, La5/j;->o:Ly4/e;

    iget-object p1, p1, Ly4/q;->o:Li5/a;

    iput-object p1, p0, La5/j;->m:Li5/a;

    new-instance v1, Lg5/c;

    invoke-direct {v1, v0, p1}, Lg5/c;-><init>(Ly4/e;Li5/a;)V

    iput-object v1, p0, La5/j;->u:Lg5/c;

    invoke-virtual {v0, p0}, Ly4/e;->a(Ly4/b;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La5/j;->r:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, La5/j;->s:Landroid/content/Intent;

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;I)V
    .locals 6

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, La5/j;->v:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding command "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La5/j;->b()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    const-string p1, "Unknown command. Ignoring"

    invoke-virtual {p0, v1, p1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    invoke-static {}, La5/j;->b()V

    iget-object v1, p0, La5/j;->r:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, La5/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    const-string v0, "KEY_START_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, La5/j;->r:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, La5/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, La5/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, La5/j;->c()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit p2

    return-void

    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, La5/j;->b()V

    iget-object v0, p0, La5/j;->l:Landroid/content/Context;

    const-string v1, "ProcessCommand"

    invoke-static {v0, v1}, Lh5/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, La5/j;->p:Ly4/q;

    iget-object v1, v1, Ly4/q;->o:Li5/a;

    new-instance v2, La5/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, La5/h;-><init>(La5/j;I)V

    invoke-virtual {v1, v2}, Li5/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p0
.end method

.method public final e(Lg5/j;Z)V
    .locals 5

    iget-object v0, p0, La5/j;->m:Li5/a;

    iget-object v0, v0, Li5/a;->d:Lf7/l;

    new-instance v1, La5/i;

    sget-object v2, La5/b;->q:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget-object v4, p0, La5/j;->l:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v2, p1}, La5/b;->c(Landroid/content/Intent;Lg5/j;)V

    const/4 p1, 0x0

    invoke-direct {v1, p1, p0, v2}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
