.class public final Lua/nav/update/UpdateWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final c(Ly8/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lqd/w;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lqd/w;

    iget v1, v0, Lqd/w;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lqd/w;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lqd/w;

    check-cast p1, La9/c;

    invoke-direct {v0, p0, p1}, Lqd/w;-><init>(Lua/nav/update/UpdateWorker;La9/c;)V

    :goto_0
    iget-object p0, v0, Lqd/w;->l:Ljava/lang/Object;

    sget-object p1, Lz8/a;->l:Lz8/a;

    iget v1, v0, Lqd/w;->n:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object p0

    iput v2, v0, Lqd/w;->n:I

    invoke-virtual {p0, v0}, Lua/nav/update/a;->b(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    new-instance p0, Lx4/q;

    invoke-direct {p0}, Lx4/q;-><init>()V

    return-object p0
.end method
