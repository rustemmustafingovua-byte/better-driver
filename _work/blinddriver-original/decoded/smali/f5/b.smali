.class public final Lf5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/i;
.implements Ly4/b;


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public final l:Ly4/q;

.field public final m:Li5/a;

.field public final n:Ljava/lang/Object;

.field public o:Lg5/j;

.field public final p:Ljava/util/LinkedHashMap;

.field public final q:Ljava/util/HashMap;

.field public final r:Ljava/util/HashMap;

.field public final s:Lc5/o;

.field public t:Landroidx/work/impl/foreground/SystemForegroundService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf5/b;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf5/b;->n:Ljava/lang/Object;

    invoke-static {p1}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object p1

    iput-object p1, p0, Lf5/b;->l:Ly4/q;

    iget-object v0, p1, Ly4/q;->o:Li5/a;

    iput-object v0, p0, Lf5/b;->m:Li5/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lf5/b;->o:Lg5/j;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lf5/b;->p:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf5/b;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf5/b;->q:Ljava/util/HashMap;

    new-instance v0, Lc5/o;

    iget-object v1, p1, Ly4/q;->u:Le5/k;

    invoke-direct {v0, v1}, Lc5/o;-><init>(Le5/k;)V

    iput-object v0, p0, Lf5/b;->s:Lc5/o;

    iget-object p1, p1, Ly4/q;->q:Ly4/e;

    invoke-virtual {p1, p0}, Ly4/e;->a(Ly4/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lg5/j;Lx4/l;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    iget-object v1, p1, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    iget p1, p1, Lg5/j;->b:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION_ID"

    iget p1, p2, Lx4/l;->a:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    iget p1, p2, Lx4/l;->b:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    iget-object p1, p2, Lx4/l;->c:Landroid/app/Notification;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v0, :cond_3

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lg5/j;

    invoke-direct {v5, v3, v4}, Lg5/j;-><init>(Ljava/lang/String;I)V

    const-string v4, "KEY_NOTIFICATION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Notifying with (id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", workSpecId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notificationType :"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lf5/b;->u:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v3, Lx4/l;

    invoke-direct {v3, v0, v2, p1}, Lx4/l;-><init>(IILandroid/app/Notification;)V

    iget-object v2, p0, Lf5/b;->p:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lf5/b;->o:Lg5/j;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx4/l;

    if-nez v4, :cond_0

    iput-object v5, p0, Lf5/b;->o:Lg5/j;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v3, v3, Landroidx/work/impl/foreground/SystemForegroundService;->o:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/l;

    iget v0, v0, Lx4/l;->b:I

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    new-instance v3, Lx4/l;

    iget p1, v4, Lx4/l;->a:I

    iget-object v0, v4, Lx4/l;->c:Landroid/app/Notification;

    invoke-direct {v3, p1, v1, v0}, Lx4/l;-><init>(IILandroid/app/Notification;)V

    :goto_1
    iget-object p0, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    iget p1, v3, Lx4/l;->b:I

    iget-object v0, v3, Lx4/l;->c:Landroid/app/Notification;

    iget v1, v3, Lx4/l;->a:I

    invoke-virtual {p0, v1, p1, v0}, Landroidx/work/impl/foreground/SystemForegroundService;->c(IILandroid/app/Notification;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Notification passed in the intent was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "handleNotify was called on the destroyed dispatcher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lg5/o;Lc5/c;)V
    .locals 4

    instance-of v0, p2, Lc5/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg5/o;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Constraints unmet for WorkSpec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lf5/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object p1

    check-cast p2, Lc5/b;

    iget p2, p2, Lc5/b;->a:I

    iget-object p0, p0, Lf5/b;->l:Ly4/q;

    iget-object v0, p0, Ly4/q;->o:Li5/a;

    new-instance v1, Lh5/i;

    iget-object p0, p0, Ly4/q;->q:Ly4/e;

    new-instance v2, Ly4/k;

    invoke-direct {v2, p1}, Ly4/k;-><init>(Lg5/j;)V

    const/4 p1, 0x1

    invoke-direct {v1, p0, v2, p1, p2}, Lh5/i;-><init>(Ly4/e;Ly4/k;ZI)V

    invoke-virtual {v0, v1}, Li5/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v1, p0, Lf5/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lf5/b;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu9/v0;

    invoke-interface {v3, v0}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lf5/b;->l:Ly4/q;

    iget-object v0, v0, Ly4/q;->q:Ly4/e;

    invoke-virtual {v0, p0}, Ly4/e;->f(Ly4/b;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e(Lg5/j;Z)V
    .locals 5

    iget-object p2, p0, Lf5/b;->n:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lf5/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf5/b;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu9/v0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lf5/b;->p:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx4/l;

    iget-object v0, p0, Lf5/b;->o:Lg5/j;

    invoke-virtual {p1, v0}, Lg5/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf5/b;->p:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lf5/b;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/j;

    iput-object v0, p0, Lf5/b;->o:Lg5/j;

    iget-object v0, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/l;

    iget-object v1, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v2, v0, Lx4/l;->a:I

    iget v3, v0, Lx4/l;->b:I

    iget-object v4, v0, Lx4/l;->c:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/impl/foreground/SystemForegroundService;->c(IILandroid/app/Notification;)V

    iget-object v1, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v0, v0, Lx4/l;->a:I

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundService;->o:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    :cond_3
    iput-object v1, p0, Lf5/b;->o:Lg5/j;

    :cond_4
    :goto_2
    iget-object p0, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, Lf5/b;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing Notification (id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lx4/l;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", workSpecId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lx4/l;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Lx4/l;->a:I

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->o:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_5
    return-void

    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final f(I)V
    .locals 7

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Foreground service timed out, FGS type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lf5/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf5/b;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4/l;

    iget v3, v3, Lx4/l;->b:I

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/j;

    iget-object v3, p0, Lf5/b;->l:Ly4/q;

    iget-object v4, v3, Ly4/q;->o:Li5/a;

    new-instance v5, Lh5/i;

    iget-object v3, v3, Ly4/q;->q:Ly4/e;

    new-instance v6, Ly4/k;

    invoke-direct {v6, v1}, Ly4/k;-><init>(Lg5/j;)V

    const/16 v1, -0x80

    invoke-direct {v5, v3, v6, v2, v1}, Lh5/i;-><init>(Ly4/e;Ly4/k;ZI)V

    invoke-virtual {v4, v5}, Li5/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf5/b;->t:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p0, :cond_2

    iput-boolean v2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->m:Z

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->p:Ljava/lang/String;

    const-string v1, "Shutting down."

    invoke-virtual {p1, v0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    return-void
.end method
