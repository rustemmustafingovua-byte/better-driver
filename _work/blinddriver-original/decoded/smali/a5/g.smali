.class public final La5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/i;
.implements Lh5/p;


# static fields
.field public static final z:Ljava/lang/String;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:I

.field public final n:Lg5/j;

.field public final o:La5/j;

.field public final p:Lc5/o;

.field public final q:Ljava/lang/Object;

.field public r:I

.field public final s:Lh5/h;

.field public final t:Lf7/l;

.field public u:Landroid/os/PowerManager$WakeLock;

.field public v:Z

.field public final w:Ly4/k;

.field public final x:Lu9/p;

.field public volatile y:Lu9/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La5/g;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILa5/j;Ly4/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/g;->l:Landroid/content/Context;

    iput p2, p0, La5/g;->m:I

    iput-object p3, p0, La5/g;->o:La5/j;

    iget-object p1, p4, Ly4/k;->a:Lg5/j;

    iput-object p1, p0, La5/g;->n:Lg5/j;

    iput-object p4, p0, La5/g;->w:Ly4/k;

    iget-object p1, p3, La5/j;->p:Ly4/q;

    iget-object p1, p1, Ly4/q;->u:Le5/k;

    iget-object p2, p3, La5/j;->m:Li5/a;

    iget-object p3, p2, Li5/a;->a:Lh5/h;

    iput-object p3, p0, La5/g;->s:Lh5/h;

    iget-object p3, p2, Li5/a;->d:Lf7/l;

    iput-object p3, p0, La5/g;->t:Lf7/l;

    iget-object p2, p2, Li5/a;->b:Lu9/p;

    iput-object p2, p0, La5/g;->x:Lu9/p;

    new-instance p2, Lc5/o;

    invoke-direct {p2, p1}, Lc5/o;-><init>(Le5/k;)V

    iput-object p2, p0, La5/g;->p:Lc5/o;

    const/4 p1, 0x0

    iput-boolean p1, p0, La5/g;->v:Z

    iput p1, p0, La5/g;->r:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/g;->q:Ljava/lang/Object;

    return-void
.end method

.method public static a(La5/g;)V
    .locals 10

    iget v0, p0, La5/g;->m:I

    iget-object v1, p0, La5/g;->t:Lf7/l;

    iget-object v2, p0, La5/g;->l:Landroid/content/Context;

    iget-object v3, p0, La5/g;->o:La5/j;

    iget-object v4, p0, La5/g;->n:Lg5/j;

    iget-object v5, v4, Lg5/j;->a:Ljava/lang/String;

    iget v6, p0, La5/g;->r:I

    sget-object v7, La5/g;->z:Ljava/lang/String;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_1

    iput v8, p0, La5/g;->r:I

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Stopping work for WorkSpec "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-class v6, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {p0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "ACTION_STOP_WORK"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4}, La5/b;->c(Landroid/content/Intent;Lg5/j;)V

    new-instance v8, La5/i;

    invoke-direct {v8, v0, v3, p0}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v1, v8}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v3, La5/j;->o:Ly4/e;

    iget-object v8, v4, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ly4/e;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WorkSpec "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needs to be rescheduled"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4}, La5/b;->c(Landroid/content/Intent;Lg5/j;)V

    new-instance v2, La5/i;

    invoke-direct {v2, v0, v3, p0}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processor does not have WorkSpec "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No need to reschedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already stopped work for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(La5/g;)V
    .locals 7

    iget v0, p0, La5/g;->r:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, La5/g;->r:I

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, La5/g;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAllConstraintsMet for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La5/g;->n:Lg5/j;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La5/g;->o:La5/j;

    iget-object v0, v0, La5/j;->o:Ly4/e;

    iget-object v1, p0, La5/g;->w:Ly4/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly4/e;->g(Ly4/k;Lx4/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La5/g;->o:La5/j;

    iget-object v0, v0, La5/j;->n:Lh5/r;

    iget-object v1, p0, La5/g;->n:Lg5/j;

    const-string v2, "Starting timer for "

    iget-object v3, v0, Lh5/r;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    sget-object v5, Lh5/r;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lh5/r;->a(Lg5/j;)V

    new-instance v2, Lh5/q;

    invoke-direct {v2, v0, v1}, Lh5/q;-><init>(Lh5/r;Lg5/j;)V

    iget-object v4, v0, Lh5/r;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lh5/r;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lh5/r;->a:Lq3/k;

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p0}, La5/g;->d()V

    return-void

    :cond_1
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, La5/g;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already started work for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, La5/g;->n:Lg5/j;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Lg5/o;Lc5/c;)V
    .locals 1

    instance-of p1, p2, Lc5/a;

    iget-object p2, p0, La5/g;->s:Lh5/h;

    if-eqz p1, :cond_0

    new-instance p1, La5/f;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, La5/f;-><init>(La5/g;I)V

    invoke-virtual {p2, p1}, Lh5/h;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, La5/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, La5/f;-><init>(La5/g;I)V

    invoke-virtual {p2, p1}, Lh5/h;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 5

    const-string v0, "Releasing wakelock "

    iget-object v1, p0, La5/g;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, La5/g;->y:Lu9/j1;

    if-eqz v2, :cond_0

    iget-object v2, p0, La5/g;->y:Lu9/j1;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, La5/g;->o:La5/j;

    iget-object v2, v2, La5/j;->n:Lh5/r;

    iget-object v3, p0, La5/g;->n:Lg5/j;

    invoke-virtual {v2, v3}, Lh5/r;->a(Lg5/j;)V

    iget-object v2, p0, La5/g;->u:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v2

    sget-object v3, La5/g;->z:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, La5/g;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for WorkSpec "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La5/g;->n:Lg5/j;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La5/g;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, La5/g;->n:Lg5/j;

    iget-object v0, v0, Lg5/j;->a:Ljava/lang/String;

    iget-object v1, p0, La5/g;->l:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, La5/g;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh5/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, La5/g;->u:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    sget-object v2, La5/g;->z:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Acquiring wakelock "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, La5/g;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La5/g;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, La5/g;->o:La5/j;

    iget-object v1, v1, La5/j;->p:Ly4/q;

    iget-object v1, v1, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg5/q;->h(Ljava/lang/String;)Lg5/o;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, La5/g;->s:Lh5/h;

    new-instance v1, La5/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La5/f;-><init>(La5/g;I)V

    invoke-virtual {v0, v1}, Lh5/h;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lg5/o;->b()Z

    move-result v3

    iput-boolean v3, p0, La5/g;->v:Z

    if-nez v3, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    const-string v3, "No constraints for "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La5/g;->s:Lh5/h;

    new-instance v1, La5/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, La5/f;-><init>(La5/g;I)V

    invoke-virtual {v0, v1}, Lh5/h;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, La5/g;->p:Lc5/o;

    iget-object v2, p0, La5/g;->x:Lu9/p;

    invoke-static {v0, v1, v2, p0}, Lc5/p;->a(Lc5/o;Lg5/o;Lu9/p;Lc5/i;)Lu9/j1;

    move-result-object v0

    iput-object v0, p0, La5/g;->y:Lu9/j1;

    return-void
.end method

.method public final f(Z)V
    .locals 7

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecuted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La5/g;->n:Lg5/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, La5/g;->z:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, La5/g;->d()V

    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget v1, p0, La5/g;->m:I

    iget-object v3, p0, La5/g;->o:La5/j;

    iget-object v4, p0, La5/g;->t:Lf7/l;

    iget-object v5, p0, La5/g;->l:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, La5/b;->c(Landroid/content/Intent;Lg5/j;)V

    new-instance v2, La5/i;

    invoke-direct {v2, v1, v3, p1}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v4, v2}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p0, p0, La5/g;->v:Z

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, La5/i;

    invoke-direct {p1, v1, v3, p0}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v4, p1}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
