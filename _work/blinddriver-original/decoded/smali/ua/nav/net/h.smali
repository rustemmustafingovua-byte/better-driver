.class public final Lua/nav/net/h;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lgd/d;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgd/d;Ljava/lang/String;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/h;->m:Lgd/d;

    iput-object p2, p0, Lua/nav/net/h;->n:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Lua/nav/net/h;

    iget-object v1, p0, Lua/nav/net/h;->m:Lgd/d;

    iget-object p0, p0, Lua/nav/net/h;->n:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lua/nav/net/h;-><init>(Lgd/d;Ljava/lang/String;Ly8/c;)V

    iput-object p1, v0, Lua/nav/net/h;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lua/nav/net/h;->l:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lua/nav/net/h;->m:Lgd/d;

    invoke-virtual {v1}, Lgd/d;->a()Z

    move-result p1

    const-string v7, "offline"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez p1, :cond_0

    new-instance p0, Lgd/i;

    invoke-direct {p0, v9, v8, v7, v9}, Lgd/i;-><init>(IILjava/lang/String;Z)V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lua/nav/net/h;->n:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "code"

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

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

    const-string v3, "/v1/transfer/claim"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_2

    :try_start_1
    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v0, Lua/nav/net/ErrorDto;->Companion:Lua/nav/net/ErrorDto$Companion;

    invoke-virtual {v0}, Lua/nav/net/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/net/ErrorDto;

    iget-object p0, p0, Lua/nav/net/ErrorDto;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_0
    const-string p1, "bad_code"

    instance-of v0, p0, Lt8/l;

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/String;

    new-instance p1, Lgd/i;

    invoke-direct {p1, v9, v8, p0, v9}, Lgd/i;-><init>(IILjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Lgd/i;

    const-string p0, "rate"

    invoke-direct {p1, v9, v8, p0, v9}, Lgd/i;-><init>(IILjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v0, Lua/nav/net/ClaimDto;->Companion:Lua/nav/net/ClaimDto$Companion;

    invoke-virtual {v0}, Lua/nav/net/ClaimDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/net/ClaimDto;

    new-instance p1, Lgd/i;

    iget-boolean v0, p0, Lua/nav/net/ClaimDto;->a:Z

    iget p0, p0, Lua/nav/net/ClaimDto;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p1, p0, v2, v1, v0}, Lgd/i;-><init>(IILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Lgd/i;

    invoke-direct {p1, v9, v8, v7, v9}, Lgd/i;-><init>(IILjava/lang/String;Z)V

    :goto_1
    return-object p1
.end method
