.class public final Lgd/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;


# direct methods
.method public constructor <init>(Lgd/d;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lgd/b;->l:Lgd/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lgd/b;

    iget-object p0, p0, Lgd/b;->l:Lgd/d;

    invoke-direct {p1, p0, p2}, Lgd/b;-><init>(Lgd/d;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lgd/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "http_"

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lgd/b;->l:Lgd/d;

    invoke-virtual {p1}, Lgd/d;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lgd/b;->l:Lgd/d;

    const-string p1, "not_configured"

    iput-object p1, p0, Lgd/d;->h:Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lgd/b;->l:Lgd/d;

    const-string v3, "GET"

    const-string v4, "/v1/alerts"

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lgd/d;->e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;

    move-result-object p1

    iget-object v2, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    iget-object p1, p0, Lgd/b;->l:Lgd/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgd/d;->h:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgd/b;->l:Lgd/d;

    iput-object v1, v0, Lgd/d;->h:Ljava/lang/String;

    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v2, Lua/nav/alerts/AlertsDto;->Companion:Lua/nav/alerts/AlertsDto$Companion;

    invoke-virtual {v2}, Lua/nav/alerts/AlertsDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, p1, v2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/alerts/AlertsDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    iget-object p0, p0, Lgd/b;->l:Lgd/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgd/d;->h:Ljava/lang/String;

    return-object v1
.end method
