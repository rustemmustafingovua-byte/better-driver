.class public final Lid/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lua/nav/routing/RoutingPackInfo;)Ljava/lang/String;
    .locals 7

    const-string v0, "p"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    sget-object v1, Lua/nav/routing/i;->k:Lr9/i;

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0456\u0434\u0435\u043d\u0442\u0438\u0444\u0456\u043a\u0430\u0442\u043e\u0440 \u043f\u0430\u043a\u0435\u0442\u0430"

    return-object p0

    :cond_0
    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    const-string v2, "https://github.com/chatmag/blinddriver-releases/releases/download/"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "\u0410\u0434\u0440\u0435\u0441\u0430 \u043f\u0430\u043a\u0435\u0442\u0430 \u043d\u0435 \u0437 \u0440\u0435\u043f\u043e\u0437\u0438\u0442\u043e\u0440\u0456\u044e \u0440\u0435\u043b\u0456\u0437\u0456\u0432"

    return-object p0

    :cond_1
    sget-object v1, Lua/nav/routing/i;->j:Lr9/i;

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    return-object p0

    :cond_2
    iget-wide v1, p0, Lua/nav/routing/RoutingPackInfo;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    const-wide/32 v5, 0x38400000

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v1, p0, Lua/nav/routing/RoutingPackInfo;->h:J

    cmp-long p0, v1, v3

    if-lez p0, :cond_6

    const-wide/32 v3, 0x5dc00000

    cmp-long p0, v1, v3

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "graphhopper-11.0"

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "\u041f\u0430\u043a\u0435\u0442 \u0434\u043b\u044f \u0456\u043d\u0448\u043e\u0457 \u0432\u0435\u0440\u0441\u0456\u0457 \u0440\u0443\u0448\u0456\u044f ("

    const-string v1, "), \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443"

    invoke-static {p0, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u0433\u0440\u0430\u0444\u0430"

    return-object p0

    :cond_7
    :goto_1
    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u043f\u0430\u043a\u0435\u0442\u0430"

    return-object p0
.end method
