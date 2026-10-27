.class public final Lua/nav/routing/c;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lid/c1;


# direct methods
.method public constructor <init>(Lid/c1;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/routing/c;->m:Lid/c1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Lua/nav/routing/c;

    iget-object p0, p0, Lua/nav/routing/c;->m:Lid/c1;

    invoke-direct {v0, p0, p2}, Lua/nav/routing/c;-><init>(Lid/c1;Ly8/c;)V

    iput-object p1, v0, Lua/nav/routing/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/routing/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/routing/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lua/nav/routing/c;->l:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lua/nav/routing/c;->m:Lid/c1;

    iget-object p1, p0, Lid/c1;->c:Ljava/io/File;

    iget-object v0, p0, Lid/c1;->b:Ljava/io/File;

    iget-object v1, p0, Lid/c1;->a:Ljava/io/File;

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lid/c1;->d:Lx9/l0;

    sget-object v3, Lgd/h;->c:Lia/r;

    sget-object v4, Lua/nav/routing/SavedRoutesFile;->Companion:Lua/nav/routing/SavedRoutesFile$Companion;

    invoke-virtual {v4}, Lua/nav/routing/SavedRoutesFile$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/KSerializer;

    sget-object v5, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v1, v5}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/SavedRoutesFile;

    iget-object v1, v1, Lua/nav/routing/SavedRoutesFile;->a:Ljava/util/List;

    invoke-virtual {v2, v1}, Lx9/l0;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lid/c1;->f:Lx9/l0;

    sget-object v2, Lgd/h;->c:Lia/r;

    sget-object v3, Lua/nav/routing/Favorites;->Companion:Lua/nav/routing/Favorites$Companion;

    invoke-virtual {v3}, Lua/nav/routing/Favorites$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v4}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lx9/l0;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lid/c1;->h:Lx9/l0;

    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v1, Lua/nav/routing/SavedAddressesFile;->Companion:Lua/nav/routing/SavedAddressesFile$Companion;

    invoke-virtual {v1}, Lua/nav/routing/SavedAddressesFile$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v2}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/routing/SavedAddressesFile;

    iget-object p1, p1, Lua/nav/routing/SavedAddressesFile;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lx9/l0;->j(Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_2
    new-instance p1, Lt8/m;

    invoke-direct {p1, p0}, Lt8/m;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
