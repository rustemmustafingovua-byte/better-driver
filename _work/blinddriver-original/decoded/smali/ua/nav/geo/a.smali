.class public final Lua/nav/geo/a;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Lua/nav/geo/c;


# direct methods
.method public constructor <init>(Lua/nav/geo/c;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/geo/a;->m:Lua/nav/geo/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lua/nav/geo/a;

    iget-object p0, p0, Lua/nav/geo/a;->m:Lua/nav/geo/c;

    invoke-direct {p1, p0, p2}, Lua/nav/geo/a;-><init>(Lua/nav/geo/c;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/geo/a;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/geo/a;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/geo/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lua/nav/geo/a;->m:Lua/nav/geo/c;

    iget-object v1, v0, Lua/nav/geo/c;->d:Lx9/l0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lua/nav/geo/a;->l:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lyc/d;

    const/4 v11, 0x0

    const/16 v12, 0x2b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_1
    sget-object p1, Lgd/h;->a:Lr9/i;

    const-string p1, "https://github.com/chatmag/blinddriver-releases/releases/download/geo/geo.json"

    iput v3, p0, Lua/nav/geo/a;->l:I

    invoke-static {p1, p0}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lgd/h;->c:Lia/r;

    sget-object v0, Lua/nav/geo/Manifest;->Companion:Lua/nav/geo/Manifest$Companion;

    invoke-virtual {v0}, Lua/nav/geo/Manifest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0, p1, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/geo/Manifest;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lyc/d;

    iget-object p0, p0, Lua/nav/geo/Manifest;->a:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lua/nav/geo/PackInfo;

    sget-object v2, Lua/nav/geo/c;->Companion:Lyc/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyc/e;->a(Lua/nav/geo/PackInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    const/16 v12, 0x3d

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lyc/d;

    const/4 v11, 0x0

    const/16 v12, 0x3b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lyc/d;

    sget-object p1, Lgd/h;->a:Lr9/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "\u043c\u0435\u0440\u0435\u0436\u0430"

    :cond_5
    invoke-static {p0}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0430\u043a\u0435\u0442\u0456\u0432: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x2f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_5
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lyc/d;

    const/4 v11, 0x0

    const/16 v12, 0x3b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p0
.end method
