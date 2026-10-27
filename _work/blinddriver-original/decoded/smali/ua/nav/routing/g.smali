.class public final Lua/nav/routing/g;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lia/r;

.field public m:Lkotlinx/serialization/KSerializer;

.field public n:I

.field public final synthetic o:Lua/nav/routing/i;


# direct methods
.method public constructor <init>(Lua/nav/routing/i;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/routing/g;->o:Lua/nav/routing/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lua/nav/routing/g;

    iget-object p0, p0, Lua/nav/routing/g;->o:Lua/nav/routing/i;

    invoke-direct {p1, p0, p2}, Lua/nav/routing/g;-><init>(Lua/nav/routing/i;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/routing/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/routing/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lua/nav/routing/g;->o:Lua/nav/routing/i;

    iget-object v1, v0, Lua/nav/routing/i;->h:Lx9/l0;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, p0, Lua/nav/routing/g;->n:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lua/nav/routing/g;->m:Lkotlinx/serialization/KSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lua/nav/routing/g;->l:Lia/r;

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lid/e1;

    const/4 v12, 0x0

    const/16 v13, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, ""

    invoke-static/range {v6 .. v13}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_1
    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v3, Lua/nav/routing/RoutingManifest;->Companion:Lua/nav/routing/RoutingManifest$Companion;

    invoke-virtual {v3}, Lua/nav/routing/RoutingManifest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    iget-boolean v0, v0, Lua/nav/routing/i;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "https://github.com/chatmag/blinddriver-releases/releases/download/routing/routing_truck.json"

    goto :goto_0

    :cond_2
    const-string v0, "https://github.com/chatmag/blinddriver-releases/releases/download/routing/routing.json"

    :goto_0
    iput-object p1, p0, Lua/nav/routing/g;->l:Lia/r;

    move-object v6, v3

    check-cast v6, Lkotlinx/serialization/KSerializer;

    iput-object v6, p0, Lua/nav/routing/g;->m:Lkotlinx/serialization/KSerializer;

    iput v4, p0, Lua/nav/routing/g;->n:I

    invoke-static {v0, p0}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v3

    :goto_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/RoutingManifest;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lid/e1;

    iget-object p0, p0, Lua/nav/routing/RoutingManifest;->a:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lua/nav/routing/RoutingPackInfo;

    sget-object v2, Lua/nav/routing/i;->Companion:Lid/f1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lid/f1;->a(Lua/nav/routing/RoutingPackInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    const/16 v13, 0x3d

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lid/e1;

    const/4 v12, 0x0

    const/16 v13, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lid/e1;

    sget-object p1, Lgd/h;->a:Lr9/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "\u043c\u0435\u0440\u0435\u0436\u0430"

    :cond_6
    invoke-static {p0}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0430\u043a\u0435\u0442\u0456\u0432: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_6
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lid/e1;

    const/4 v12, 0x0

    const/16 v13, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p0
.end method
