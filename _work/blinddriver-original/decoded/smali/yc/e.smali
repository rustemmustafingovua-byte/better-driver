.class public final Lyc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lua/nav/geo/PackInfo;)Ljava/lang/String;
    .locals 4

    const-string v0, "p"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lua/nav/geo/c;->h:Lr9/i;

    iget-object v1, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0456\u0434\u0435\u043d\u0442\u0438\u0444\u0456\u043a\u0430\u0442\u043e\u0440 \u043f\u0430\u043a\u0435\u0442\u0430"

    return-object p0

    :cond_0
    iget-object v0, p0, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    const-string v1, "https://github.com/chatmag/blinddriver-releases/releases/download/"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "\u0410\u0434\u0440\u0435\u0441\u0430 \u043f\u0430\u043a\u0435\u0442\u0430 \u043d\u0435 \u0437 \u0440\u0435\u043f\u043e\u0437\u0438\u0442\u043e\u0440\u0456\u044e \u0440\u0435\u043b\u0456\u0437\u0456\u0432"

    return-object p0

    :cond_1
    sget-object v0, Lua/nav/geo/c;->g:Lr9/i;

    iget-object v1, p0, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    return-object p0

    :cond_2
    iget-wide v0, p0, Lua/nav/geo/PackInfo;->f:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_4

    const-wide/32 v2, 0x32000000

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u043f\u0430\u043a\u0435\u0442\u0430"

    return-object p0
.end method
