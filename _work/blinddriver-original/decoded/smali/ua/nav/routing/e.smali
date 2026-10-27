.class public final Lua/nav/routing/e;
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

    iput-object p1, p0, Lua/nav/routing/e;->m:Lid/c1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Lua/nav/routing/e;

    iget-object p0, p0, Lua/nav/routing/e;->m:Lid/c1;

    invoke-direct {v0, p0, p2}, Lua/nav/routing/e;-><init>(Lid/c1;Ly8/c;)V

    iput-object p1, v0, Lua/nav/routing/e;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/e;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/routing/e;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/routing/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lua/nav/routing/e;->l:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lua/nav/routing/e;->m:Lid/c1;

    :try_start_0
    iget-object p1, p0, Lid/c1;->b:Ljava/io/File;

    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v1, Lua/nav/routing/Favorites;->Companion:Lua/nav/routing/Favorites$Companion;

    invoke-virtual {v1}, Lua/nav/routing/Favorites$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lid/c1;->f:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lt8/z;->a:Lt8/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_0
    new-instance p1, Lt8/m;

    invoke-direct {p1, p0}, Lt8/m;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
