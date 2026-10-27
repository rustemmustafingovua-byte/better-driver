.class public abstract Landroidx/work/CoroutineWorker;
.super Lx4/s;
.source "SourceFile"


# instance fields
.field public final e:Landroidx/work/WorkerParameters;

.field public final f:Lx4/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lx4/s;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/CoroutineWorker;->e:Landroidx/work/WorkerParameters;

    sget-object p1, Lx4/e;->n:Lx4/e;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->f:Lx4/e;

    return-void
.end method


# virtual methods
.method public final a()Lg3/l;
    .locals 4

    invoke-static {}, Lu9/v;->b()Lu9/x0;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->f:Lx4/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object v0

    new-instance v1, Lx4/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lx4/f;-><init>(Landroidx/work/CoroutineWorker;Ly8/c;I)V

    invoke-static {v0, v1}, Ll7/a;->s(Ly8/h;Li9/e;)Lg3/l;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lg3/l;
    .locals 4

    sget-object v0, Lx4/e;->n:Lx4/e;

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->f:Lx4/e;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->e:Landroidx/work/WorkerParameters;

    iget-object v1, v0, Landroidx/work/WorkerParameters;->c:Ly8/h;

    :goto_0
    const-string v0, "if (coroutineContext != \u2026rkerContext\n            }"

    invoke-static {v1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lu9/v;->b()Lu9/x0;

    move-result-object v0

    invoke-interface {v1, v0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    new-instance v1, Lx4/f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lx4/f;-><init>(Landroidx/work/CoroutineWorker;Ly8/c;I)V

    invoke-static {v0, v1}, Ll7/a;->s(Ly8/h;Li9/e;)Lg3/l;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Ly8/c;)Ljava/lang/Object;
.end method
