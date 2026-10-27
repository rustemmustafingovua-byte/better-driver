.class public final Lua/nav/guidance/NavService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/s0;


# instance fields
.field public final l:Lz9/d;

.field public m:Lu9/j1;

.field public n:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/s0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/guidance/NavService;->Companion:Lad/s0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lu9/v;->c()Lu9/l1;

    move-result-object v0

    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lz9/n;->a:Lv9/d;

    invoke-static {v0, v1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v0

    iput-object v0, p0, Lua/nav/guidance/NavService;->l:Lz9/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lua/nav/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lua/nav/guidance/NavService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ua.nav.STOP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v4, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Li3/d;

    const-string v4, "nav"

    invoke-direct {v3, p0, v4}, Li3/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x108003d

    iget-object v4, v3, Li3/d;->s:Landroid/app/Notification;

    iput p0, v4, Landroid/app/Notification;->icon:I

    invoke-static {p1}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v3, Li3/d;->e:Ljava/lang/CharSequence;

    invoke-static {p2}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v3, Li3/d;->f:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    invoke-virtual {v3, p0}, Li3/d;->c(I)V

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Li3/d;->c(I)V

    iput-object v0, v3, Li3/d;->g:Landroid/app/PendingIntent;

    const-string p0, "\u0417\u0443\u043f\u0438\u043d\u0438\u0442\u0438"

    invoke-static {p0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Li3/c;

    invoke-direct {p1, v1, p0, v2}, Li3/c;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object p0, v3, Li3/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, -0x1

    iput p0, v3, Li3/d;->h:I

    invoke-virtual {v3}, Li3/d;->a()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u043f\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const/4 v3, 0x2

    const-string v4, "nav"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "marshrut:nav"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x1499700

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iput-object v0, p0, Lua/nav/guidance/NavService;->n:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const-class v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lua/nav/guidance/NavService;->m:Lu9/j1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v1, p0, Lua/nav/guidance/NavService;->l:Lz9/d;

    invoke-static {v1, v2}, Lu9/v;->e(Lu9/t;Lf1/s;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v2}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    invoke-static {v2}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_3
    iget-object v0, p0, Lua/nav/guidance/NavService;->n:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const-string p2, "fgs_start_failed type="

    const/4 p3, 0x2

    if-nez p1, :cond_0

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->z()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ua.nav.STOP"

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object p1

    invoke-virtual {p1}, Lad/j0;->K()V

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    invoke-virtual {p1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lsc/i0;->z()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p3

    :cond_1
    const-string p1, "\u0412\u0456\u0434\u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457"

    invoke-static {p1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u041f\u0456\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u2026"

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lua/nav/guidance/NavService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lua/nav/guidance/NavService;->m:Lu9/j1;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    new-instance p1, Lad/w;

    invoke-direct {p1, p0, p2, p3}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lua/nav/guidance/NavService;->l:Lz9/d;

    invoke-static {v1, p2, p2, p1, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p1

    iput-object p1, p0, Lua/nav/guidance/NavService;->m:Lu9/j1;

    return p3

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsc/i0;->R:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v3

    iget-object v3, v3, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-boolean v3, v3, Lad/a0;->a:Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-static {p1, v4, v5}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x12c

    invoke-static {v4, p1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " visible="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " active="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " msg="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldd/k0;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p3
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 4

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v0

    iget-object v0, v0, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-nez v0, :cond_2

    const-string v0, "closed_from_recents share="

    :try_start_0
    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v1

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v2

    iget-object v2, v2, Lkd/j;->j:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldd/k0;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v1

    iget-object v2, v1, Lad/x;->l:Lu9/j1;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v0, v1, Lad/x;->l:Lu9/j1;

    iget-object v1, v1, Lad/x;->a:Ldd/k0;

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    iput-object v0, v1, Ldd/m;->k:Lad/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    :try_start_2
    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v1

    invoke-virtual {v1}, Lua/nav/stats/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    invoke-static {}, Lsc/i0;->z()V

    :try_start_3
    sget-object v1, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v1, :cond_1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_1
    const-string v1, "app"

    invoke-static {v1}, Lj9/n;->m(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lf2/l;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lf2/l;-><init>(I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
