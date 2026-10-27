.class public final Lua/nav/update/InstallResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p0, "update_install_failed status="

    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_7

    const/4 p1, 0x3

    const/4 v2, 0x0

    if-eq v0, p1, :cond_4

    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lr9/k;->j0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v3, 0xc8

    invoke-static {v3, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_0
    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, -0x3e7

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " msg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, v5, p0}, Ldd/q0;->b(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/update/a;->j:Lx9/l0;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_3

    :cond_2
    const-string p1, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0443 \u0441\u043a\u0430\u0441\u043e\u0432\u0430\u043d\u043e \u0430\u0431\u043e \u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f"

    :cond_3
    new-instance p2, Lqd/h;

    invoke-direct {p2, p1}, Lqd/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, p2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_4
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/update/a;->j:Lx9/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lqd/i;->a:Lqd/i;

    invoke-virtual {p0, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_6

    invoke-static {p2}, Lb/b;->o(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    goto :goto_3

    :cond_6
    const-string p0, "android.intent.extra.INTENT"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    :goto_3
    if-eqz p0, :cond_7

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method
