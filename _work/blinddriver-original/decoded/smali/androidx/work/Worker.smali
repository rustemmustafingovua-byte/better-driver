.class public abstract Landroidx/work/Worker;
.super Lx4/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lx4/s;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final a()Lg3/l;
    .locals 3

    iget-object v0, p0, Lx4/s;->b:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Ljava/util/concurrent/ExecutorService;

    const-string v1, "backgroundExecutor"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lx4/a0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lx4/a0;-><init>(Landroidx/work/Worker;I)V

    new-instance p0, Lb0/b3;

    invoke-direct {p0, v0, v1}, Lb0/b3;-><init>(Ljava/util/concurrent/Executor;Li9/a;)V

    invoke-static {p0}, Ll9/a;->q(Lg3/j;)Lg3/l;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lg3/l;
    .locals 3

    iget-object v0, p0, Lx4/s;->b:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Ljava/util/concurrent/ExecutorService;

    const-string v1, "backgroundExecutor"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lx4/a0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lx4/a0;-><init>(Landroidx/work/Worker;I)V

    new-instance p0, Lb0/b3;

    invoke-direct {p0, v0, v1}, Lb0/b3;-><init>(Ljava/util/concurrent/Executor;Li9/a;)V

    invoke-static {p0}, Ll9/a;->q(Lg3/j;)Lg3/l;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Lx4/q;
.end method
