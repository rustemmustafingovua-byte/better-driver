.class public final Lua/nav/support/DevMessagesWorker;
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

    instance-of v0, p1, Lmd/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmd/d;

    iget v1, v0, Lmd/d;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmd/d;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmd/d;

    check-cast p1, La9/c;

    invoke-direct {v0, p0, p1}, Lmd/d;-><init>(Lua/nav/support/DevMessagesWorker;La9/c;)V

    :goto_0
    iget-object p1, v0, Lmd/d;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lmd/d;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object p1

    invoke-virtual {p1}, Lua/nav/support/a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p1, Lua/nav/support/a;->Companion:Lmd/a;

    const-string v0, "getApplicationContext(...)"

    iget-object p0, p0, Lx4/s;->a:Landroid/content/Context;

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object p0

    iget-object p1, p0, Ly4/q;->m:Lx4/a;

    iget-object p1, p1, Lx4/a;->m:Lx4/j;

    const-string v0, "CancelWorkByName_"

    const-string v1, "dev-messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ly4/q;->o:Li5/a;

    iget-object v1, v1, Li5/a;->a:Lh5/h;

    const-string v2, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lc2/l0;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0, v1, v2}, Lpc/h;->p(Lx4/j;Ljava/lang/String;Ljava/util/concurrent/Executor;Li9/a;)Lx4/j;

    new-instance p0, Lx4/q;

    invoke-direct {p0}, Lx4/q;-><init>()V

    return-object p0

    :cond_3
    sget-object p0, Lsc/i0;->R:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4

    iput v3, v0, Lmd/d;->n:I

    invoke-virtual {p1, v3, v0}, Lua/nav/support/a;->e(ZLa9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Lx4/q;

    invoke-direct {p0}, Lx4/q;-><init>()V

    return-object p0
.end method
