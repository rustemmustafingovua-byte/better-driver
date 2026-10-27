.class public final Lua/nav/hazards/a;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Lkotlinx/serialization/KSerializer;

.field public n:I

.field public final synthetic o:Lbd/i;


# direct methods
.method public constructor <init>(Lbd/i;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/hazards/a;->o:Lbd/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lua/nav/hazards/a;

    iget-object p0, p0, Lua/nav/hazards/a;->o:Lbd/i;

    invoke-direct {p1, p0, p2}, Lua/nav/hazards/a;-><init>(Lbd/i;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/hazards/a;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/hazards/a;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/hazards/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043e\u043d\u043e\u0432\u0438\u0442\u0438 \u0431\u0430\u0437\u0443 \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432 \u0434\u043e\u0440\u0456\u0433: "

    const-string v3, "check: "

    const-string v0, "\u0411\u0430\u0437\u0443 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e: \u0434\u0430\u043d\u0456 \u0432\u0456\u0434 "

    const-string v4, "\u0411\u0430\u0437\u0430 \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432 \u0434\u043e\u0440\u0456\u0433 \u0430\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u0430 (\u0434\u0430\u043d\u0456 \u0432\u0456\u0434 "

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v6, v1, Lua/nav/hazards/a;->n:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_0

    iget-object v4, v1, Lua/nav/hazards/a;->l:Ljava/lang/Object;

    check-cast v4, Lua/nav/hazards/RoadObjectsPackInfo;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v6, v1, Lua/nav/hazards/a;->m:Lkotlinx/serialization/KSerializer;

    check-cast v6, Lkotlinx/serialization/KSerializer;

    iget-object v10, v1, Lua/nav/hazards/a;->l:Ljava/lang/Object;

    check-cast v10, Lia/c;

    :try_start_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v11, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v6, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v6, v6, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lbd/f;

    const/16 v17, 0x0

    const/16 v18, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_2
    sget-object v10, Lgd/h;->c:Lia/r;

    sget-object v6, Lua/nav/hazards/RoadObjectsPackInfo;->Companion:Lua/nav/hazards/RoadObjectsPackInfo$Companion;

    invoke-virtual {v6}, Lua/nav/hazards/RoadObjectsPackInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    const-string v11, "https://github.com/chatmag/blinddriver-releases/releases/download/routing/roadobjects.json"

    iput-object v10, v1, Lua/nav/hazards/a;->l:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Lkotlinx/serialization/KSerializer;

    iput-object v12, v1, Lua/nav/hazards/a;->m:Lkotlinx/serialization/KSerializer;

    iput v8, v1, Lua/nav/hazards/a;->n:I

    invoke-static {v11, v1}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_3

    goto/16 :goto_2

    :cond_3
    :goto_0
    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/hazards/RoadObjectsPackInfo;

    iget-object v10, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v10, v10, Lbd/i;->d:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "last_check_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v10, Lbd/i;->Companion:Lbd/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lbd/g;->a(Lua/nav/hazards/RoadObjectsPackInfo;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    iget-object v10, v6, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    invoke-static {}, Lsc/i0;->d()Lbd/l;

    move-result-object v11

    iget-object v11, v11, Lbd/l;->c:Ljava/lang/String;

    const-string v12, "candidate"

    invoke-static {v10, v12}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "current"

    invoke-static {v11, v12}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_5

    iget-object v0, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v0, v0, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lbd/f;

    invoke-static {}, Lsc/i0;->d()Lbd/l;

    move-result-object v5

    iget-object v5, v5, Lbd/l;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x2f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v17}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v4, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iput-object v6, v1, Lua/nav/hazards/a;->l:Ljava/lang/Object;

    iput-object v9, v1, Lua/nav/hazards/a;->m:Lkotlinx/serialization/KSerializer;

    iput v7, v1, Lua/nav/hazards/a;->n:I

    invoke-static {v4, v6, v1}, Lbd/i;->a(Lbd/i;Lua/nav/hazards/RoadObjectsPackInfo;La9/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v4, v6

    :goto_3
    iget-object v5, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v5, v5, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lbd/f;

    iget-object v4, v4, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x2f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v17}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v9, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iget-object v0, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v0, v0, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lbd/f;

    const/16 v16, 0x0

    const/16 v17, 0x37

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    const-string v4, "RoadObjects"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v3, v3, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lbd/f;

    sget-object v4, Lgd/h;->a:Lr9/i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "\u043c\u0435\u0440\u0435\u0436\u0430"

    :cond_8
    invoke-static {v0}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v9, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_7
    iget-object v1, v1, Lua/nav/hazards/a;->o:Lbd/i;

    iget-object v1, v1, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lbd/f;

    const/16 v16, 0x0

    const/16 v17, 0x37

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v9, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method
