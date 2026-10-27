.class public final Lua/nav/net/g;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgd/d;Ljava/lang/String;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/g;->l:Lgd/d;

    iput-object p2, p0, Lua/nav/net/g;->m:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance p1, Lua/nav/net/g;

    iget-object v0, p0, Lua/nav/net/g;->l:Lgd/d;

    iget-object p0, p0, Lua/nav/net/g;->m:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lua/nav/net/g;-><init>(Lgd/d;Ljava/lang/String;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lua/nav/net/g;->l:Lgd/d;

    invoke-virtual {v1}, Lgd/d;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lua/nav/net/g;->m:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "text"

    invoke-static {p0}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object p0

    const-string v2, "element"

    invoke-static {p0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lia/l;

    new-instance p0, Lia/y;

    invoke-direct {p0, p1}, Lia/y;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lia/y;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string p0, "getBytes(...)"

    invoke-static {v5, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "POST"

    const-string v3, "/v1/messages"

    const/4 v4, 0x0

    const/16 v6, 0x14

    invoke-static/range {v1 .. v6}, Lgd/d;->e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;

    move-result-object p0

    iget-object p1, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v0, Lua/nav/net/AppMsgIdDto;->Companion:Lua/nav/net/AppMsgIdDto$Companion;

    invoke-virtual {v0}, Lua/nav/net/AppMsgIdDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/net/AppMsgIdDto;

    iget-wide p0, p0, Lua/nav/net/AppMsgIdDto;->a:J

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
