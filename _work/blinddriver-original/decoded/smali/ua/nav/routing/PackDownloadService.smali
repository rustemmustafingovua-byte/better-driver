.class public final Lua/nav/routing/PackDownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/v;


# instance fields
.field public final l:Lz9/d;

.field public m:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/PackDownloadService;->Companion:Lid/v;

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

    iput-object v0, p0, Lua/nav/routing/PackDownloadService;->l:Lz9/d;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    new-instance v0, Li3/d;

    const-string v1, "packs"

    invoke-direct {v0, p0, v1}, Li3/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080081

    iget-object v1, v0, Li3/d;->s:Landroid/app/Notification;

    iput p0, v1, Landroid/app/Notification;->icon:I

    invoke-static {p2}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Li3/d;->e:Ljava/lang/CharSequence;

    invoke-static {p3}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Li3/d;->f:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 p2, 0x64

    iput p2, v0, Li3/d;->k:I

    iput p1, v0, Li3/d;->l:I

    iput-boolean p0, v0, Li3/d;->m:Z

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Li3/d;->c(I)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Li3/d;->c(I)V

    const/4 p0, -0x1

    iput p0, v0, Li3/d;->h:I

    invoke-virtual {v0}, Li3/d;->a()Landroid/app/Notification;

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

    const-string v2, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043f\u0430\u043a\u0435\u0442\u0456\u0432"

    const/4 v3, 0x2

    const-string v4, "packs"

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

    const-string v2, "blinddriver:pack"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iput-object v0, p0, Lua/nav/routing/PackDownloadService;->m:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lua/nav/routing/PackDownloadService;->l:Lz9/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu9/v;->e(Lu9/t;Lf1/s;)V

    iget-object v0, p0, Lua/nav/routing/PackDownloadService;->m:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string p2, "kind"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v4

    :goto_0
    const-string p3, "geo_all"

    invoke-static {p2, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x3

    iget-object v6, p0, Lua/nav/routing/PackDownloadService;->l:Lz9/d;

    const/4 v0, 0x1

    const-string v1, "\u041f\u0456\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u2026"

    const/4 v2, 0x0

    const/4 v7, 0x2

    if-eqz p2, :cond_1

    const-string p1, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432 \u0430\u0434\u0440\u0435\u0441"

    invoke-virtual {p0, v2, p1, v1}, Lua/nav/routing/PackDownloadService;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v7, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object p1

    new-instance p2, Landroidx/lifecycle/m0;

    const/4 v0, 0x6

    invoke-direct {p2, p1, p0, v4, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v6, v4, v4, p2, p3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return v7

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    move-object v3, p0

    goto :goto_3

    :cond_3
    const-string v3, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0433\u0440\u0430\u0444\u0430 \u0434\u043e\u0440\u0456\u0433"

    invoke-virtual {p0, v2, v3, v1}, Lua/nav/routing/PackDownloadService;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v7, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    const-string v0, "truck"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    sget-object p1, Lsc/i0;->K:Lt8/o;

    invoke-virtual {p1}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/routing/i;

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_4
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->q()Lua/nav/routing/i;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance v0, Landroidx/lifecycle/j0;

    const/4 v5, 0x3

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v6, v4, v4, v0, p3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return v7

    :goto_3
    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V

    return v7
.end method
