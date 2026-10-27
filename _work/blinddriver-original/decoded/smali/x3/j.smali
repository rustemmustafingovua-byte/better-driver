.class public final Lx3/j;
.super La/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:La/a;

.field public final synthetic g:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(La/a;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, La/a;-><init>(I)V

    iput-object p1, p0, Lx3/j;->f:La/a;

    iput-object p2, p0, Lx3/j;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lx3/j;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object p0, p0, Lx3/j;->f:La/a;

    invoke-virtual {p0, p1}, La/a;->s(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p0
.end method

.method public final t(Lg5/i;)V
    .locals 1

    iget-object v0, p0, Lx3/j;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object p0, p0, Lx3/j;->f:La/a;

    invoke-virtual {p0, p1}, La/a;->t(Lg5/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p0
.end method
