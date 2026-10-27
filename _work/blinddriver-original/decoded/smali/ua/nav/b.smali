.class public final Lua/nav/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Lua/nav/SavedPlan;


# direct methods
.method public constructor <init>(Lua/nav/c;Lua/nav/SavedPlan;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/b;->m:Lua/nav/c;

    iput-object p2, p0, Lua/nav/b;->n:Lua/nav/SavedPlan;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Lua/nav/b;

    iget-object v1, p0, Lua/nav/b;->m:Lua/nav/c;

    iget-object p0, p0, Lua/nav/b;->n:Lua/nav/SavedPlan;

    invoke-direct {v0, v1, p0, p2}, Lua/nav/b;-><init>(Lua/nav/c;Lua/nav/SavedPlan;Ly8/c;)V

    iput-object p1, v0, Lua/nav/b;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lua/nav/b;->l:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lua/nav/b;->m:Lua/nav/c;

    iget-object p0, p0, Lua/nav/b;->n:Lua/nav/SavedPlan;

    :try_start_0
    iget-object p1, p1, Lua/nav/c;->s:Ljava/io/File;

    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v1, Lua/nav/SavedPlan;->Companion:Lua/nav/SavedPlan$Companion;

    invoke-virtual {v1}, Lua/nav/SavedPlan$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p0}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
