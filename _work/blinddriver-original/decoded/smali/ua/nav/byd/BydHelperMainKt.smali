.class public final Lua/nav/byd/BydHelperMainKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final main([Ljava/lang/String;)V
    .locals 11

    const-string v0, "args"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lu8/l;->w0(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x9543

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lu8/l;->w0(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    move-object v2, p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "no token"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_0
    new-instance p0, Ljava/net/ServerSocket;

    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSystemContext"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "systemMain"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.content.Context"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ctx="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " port="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v0, "speed"

    const-string v3, "Speed"

    invoke-static {v1, v0, v3}, Ly4/s;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "gearbox"

    const-string v4, "Gearbox"

    invoke-static {v1, v3, v4}, Ly4/s;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lg5/s;

    const-string v4, "getCurrentSpeed"

    invoke-direct {v3, v0, v4}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lg5/s;

    const-string v5, "getSpeedFromGateway"

    invoke-direct {v4, v0, v5}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lg5/s;

    const-string v0, "getCurrentGear"

    invoke-direct {v5, v1, v0}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lg5/s;

    const-string v0, "getBrakePedalState"

    invoke-direct {v6, v1, v0}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const v7, 0xea60

    invoke-virtual {p0, v7}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-object v1, v7

    :try_start_2
    invoke-static/range {v1 .. v6}, Ly4/s;->C(Ljava/net/Socket;Ljava/lang/String;Lg5/s;Lg5/s;Lg5/s;Lg5/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ly4/s;->B(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "client end "

    invoke-static {v7, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_1

    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    const-wide/32 v9, 0x1b7740

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    const-string p0, "idle exit"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    const-string p0, "busy "

    invoke-static {v0, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
