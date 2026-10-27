.class public final Lua/nav/net/d;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;


# direct methods
.method public constructor <init>(Lgd/d;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/d;->l:Lgd/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lua/nav/net/d;

    iget-object p0, p0, Lua/nav/net/d;->l:Lgd/d;

    invoke-direct {p1, p0, p2}, Lua/nav/net/d;-><init>(Lgd/d;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/d;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/d;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lua/nav/net/d;->l:Lgd/d;

    invoke-virtual {v1}, Lgd/d;->a()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "POST"

    const-string v3, "/v1/pay/cancel"

    const-string p0, "{}"

    sget-object p1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string p0, "getBytes(...)"

    invoke-static {v5, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x14

    const/4 v4, 0x0

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

    sget-object v0, Lua/nav/net/PayCancelDto;->Companion:Lua/nav/net/PayCancelDto$Companion;

    invoke-virtual {v0}, Lua/nav/net/PayCancelDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/net/PayCancelDto;

    iget-object p0, p0, Lua/nav/net/PayCancelDto;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
