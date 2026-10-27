.class public final Lod/d7;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Lua/nav/update/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/update/a;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lod/d7;->l:I

    iput-object p1, p0, Lod/d7;->n:Lua/nav/update/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lod/d7;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lod/d7;

    iget-object p0, p0, Lod/d7;->n:Lua/nav/update/a;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lod/d7;

    iget-object p0, p0, Lod/d7;->n:Lua/nav/update/a;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lod/d7;

    iget-object p0, p0, Lod/d7;->n:Lua/nav/update/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lod/d7;

    iget-object p0, p0, Lod/d7;->n:Lua/nav/update/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/d7;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/d7;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d7;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/d7;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d7;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lod/d7;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d7;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lod/d7;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d7;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lod/d7;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    iget-object v3, p0, Lod/d7;->n:Lua/nav/update/a;

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v3, Lua/nav/update/a;->a:Landroid/app/Application;

    iget-object v5, v3, Lua/nav/update/a;->j:Lx9/l0;

    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v7, p0, Lod/d7;->m:I

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    if-ne v7, v4, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lqd/g;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lqd/g;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v4, p0, Lod/d7;->m:I

    invoke-virtual {v3, p0}, Lua/nav/update/a;->b(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v6, :cond_2

    move-object v1, v6

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object p0, v3, Lua/nav/update/a;->d:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd/q;

    iget-object p0, p0, Lqd/q;->c:Lua/nav/update/ReleaseInfo;

    if-nez p0, :cond_5

    sget-object p0, Lua/nav/update/ReleaseInfo;->Companion:Lua/nav/update/ReleaseInfo$Companion;

    iget-object p1, v3, Lua/nav/update/a;->c:Lqd/u;

    iget-object p1, p1, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v2, "latest_json"

    invoke-interface {p1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lua/nav/update/ReleaseInfo$Companion;->a(Ljava/lang/String;)Lua/nav/update/ReleaseInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Lua/nav/update/ReleaseInfo;->a(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v8

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u0457 \u043f\u0440\u043e \u043d\u043e\u0432\u0443 \u0432\u0435\u0440\u0441\u0456\u044e"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget p1, p0, Lua/nav/update/ReleaseInfo;->a:I

    const v2, 0x18e4a81

    if-gt p1, v2, :cond_6

    sget-object p0, Lqd/i;->a:Lqd/i;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p1, Lb0/a;

    const/16 v2, 0x1a

    invoke-direct {p1, v2, v3}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p0, p1}, Lr5/u0;->l(Landroid/content/Context;Lua/nav/update/ReleaseInfo;Lb0/a;)Ljava/io/File;

    move-result-object p1

    sget-object v2, Lqd/m;->a:Lqd/m;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v0, p1, p0}, Lr5/u0;->u(Landroid/content/Context;Ljava/io/File;Lua/nav/update/ReleaseInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p1, Lqd/h;

    invoke-direct {p1, p0}, Lqd/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sget-object p0, Lqd/j;->a:Lqd/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v0, p1}, Lr5/u0;->o(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    sget-object p1, Lgd/h;->a:Lr9/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :cond_8
    invoke-static {p1}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "install: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lqd/h;

    invoke-static {p0}, Lua/nav/update/a;->l(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lqd/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_4
    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lod/d7;->m:I

    if-eqz v1, :cond_a

    if-ne v1, v4, :cond_9

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :goto_5
    iput v4, p0, Lod/d7;->m:I

    const-wide/32 v1, 0xea60

    invoke-static {v1, v2, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    :goto_6
    invoke-virtual {v3}, Lua/nav/update/a;->i()V

    goto :goto_5

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v5, p0, Lod/d7;->m:I

    if-eqz v5, :cond_d

    if-ne v5, v4, :cond_c

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iput v4, p0, Lod/d7;->m:I

    invoke-virtual {v3, p0}, Lua/nav/update/a;->b(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    move-object v1, v0

    :cond_e
    :goto_7
    return-object v1

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v5, p0, Lod/d7;->m:I

    if-eqz v5, :cond_10

    if-ne v5, v4, :cond_f

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iput v4, p0, Lod/d7;->m:I

    invoke-virtual {v3, p0}, Lua/nav/update/a;->b(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    move-object v1, v0

    :cond_11
    :goto_8
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
