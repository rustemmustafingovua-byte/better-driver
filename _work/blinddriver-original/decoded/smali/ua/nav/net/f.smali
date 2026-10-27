.class public final Lua/nav/net/f;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;


# direct methods
.method public constructor <init>(Lgd/d;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/f;->l:Lgd/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 0

    new-instance p1, Lua/nav/net/f;

    iget-object p0, p0, Lua/nav/net/f;->l:Lgd/d;

    invoke-direct {p1, p0, p2}, Lua/nav/net/f;-><init>(Lgd/d;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 p0, 0x0

    return-object p0
.end method
