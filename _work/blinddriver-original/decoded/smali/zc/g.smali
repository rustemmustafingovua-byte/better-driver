.class public abstract Lzc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Lr9/i;

.field public static final c:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lt8/j;

    const-string v1, "\u0432\u0443\u043b\u0438\u0446\u044f"

    const-string v2, "\u0432\u0443\u043b."

    invoke-direct {v0, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v2, "\u043f\u0440\u043e\u0441\u043f\u0435\u043a\u0442"

    const-string v3, "\u043f\u0440\u043e\u0441\u043f."

    invoke-direct {v1, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u043f\u0440\u043e\u0432\u0443\u043b\u043e\u043a"

    const-string v4, "\u043f\u0440\u043e\u0432."

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    const-string v4, "\u0431\u0443\u043b\u044c\u0432\u0430\u0440"

    const-string v5, "\u0431\u0443\u043b."

    invoke-direct {v3, v4, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lt8/j;

    const-string v5, "\u043f\u043b\u043e\u0449\u0430"

    const-string v6, "\u043f\u043b."

    invoke-direct {v4, v5, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lt8/j;

    const-string v6, "\u043d\u0430\u0431\u0435\u0440\u0435\u0436\u043d\u0430"

    const-string v7, "\u043d\u0430\u0431."

    invoke-direct {v5, v6, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lt8/j;

    const-string v7, "\u0442\u0443\u043f\u0438\u043a"

    const-string v8, "\u0442\u0443\u043f."

    invoke-direct {v6, v7, v8}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lt8/j;

    const-string v8, "\u0443\u0437\u0432\u0456\u0437"

    const-string v9, "\u0443\u0437\u0432."

    invoke-direct {v7, v8, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v7}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzc/g;->a:Ljava/util/List;

    new-instance v0, Lr9/i;

    const-string v1, "(\\d+)([\u0410-\u042f\u0490\u0404\u0406\u0407\u0430-\u044f\u0491\u0454\u0456\u0457A-Za-z])\\b"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/g;->b:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "(\\d+)-([\u0410-\u042f\u0490\u0404\u0406\u0407\u0430-\u044f\u0491\u0454\u0456\u0457A-Za-z])\\b"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/g;->c:Lr9/i;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "s"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcd/h;->a:Ljava/lang/Object;

    sget-object v0, Lzc/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(?i)\\b"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\b"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pattern"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "replacement"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "replaceAll(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcd/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lua/nav/routing/GeoPoint;)Ljava/lang/String;
    .locals 5

    const-string v0, "p"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->a:D

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v3, v4, v2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
