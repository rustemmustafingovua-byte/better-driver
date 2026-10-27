.class public final Lua/nav/net/i;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;


# direct methods
.method public constructor <init>(Lgd/d;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/i;->l:Lgd/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lua/nav/net/i;

    iget-object p0, p0, Lua/nav/net/i;->l:Lgd/d;

    invoke-direct {p1, p0, p2}, Lua/nav/net/i;-><init>(Lgd/d;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/i;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/i;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lua/nav/net/i;->l:Lgd/d;

    invoke-virtual {v1}, Lgd/d;->a()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v2, "POST"

    const-string v3, "/v1/transfer/start"

    const-string p0, "{}"

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string p0, "getBytes(...)"

    invoke-static {v5, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x14

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lgd/d;->e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;

    move-result-object p0

    iget-object v0, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v1, Lua/nav/net/TransferCodeDto;->Companion:Lua/nav/net/TransferCodeDto$Companion;

    invoke-virtual {v1}, Lua/nav/net/TransferCodeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, p0, v1}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lua/nav/net/TransferCodeDto;

    iget-object v0, v0, Lua/nav/net/TransferCodeDto;->a:Ljava/lang/String;

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    check-cast p0, Lua/nav/net/TransferCodeDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_1
    return-object p1
.end method
