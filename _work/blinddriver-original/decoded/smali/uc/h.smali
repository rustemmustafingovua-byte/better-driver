.class public final Luc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 10

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lx4/u;

    const-class v2, Lua/nav/billing/TrialReminderWorker;

    const-string v3, "repeatIntervalTimeUnit"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lx4/u;-><init>(ILjava/lang/Class;)V

    iget-object v2, v1, Lk4/p;->b:Ljava/lang/Object;

    check-cast v2, Lg5/o;

    const-wide/16 v3, 0x6

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v5, 0xdbba0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v7

    sget-object v8, Lg5/o;->y:Ljava/lang/String;

    const-string v9, "Interval duration lesser than minimum allowed value; Changed to 900000"

    invoke-virtual {v7, v8, v9}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-gez v0, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    move-wide v7, v3

    :goto_0
    if-gez v0, :cond_2

    move-wide v3, v5

    :cond_2
    invoke-virtual {v2, v7, v8, v3, v4}, Lg5/o;->d(JJ)V

    invoke-virtual {v1}, Lk4/p;->b()Lx4/z;

    move-result-object v0

    check-cast v0, Lx4/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object p0

    const-string v1, "trial-reminder"

    invoke-virtual {p0, v1, v0}, Ly4/q;->L(Ljava/lang/String;Lx4/y;)Lx4/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method
