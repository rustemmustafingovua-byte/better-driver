.class public final Lx3/d;
.super La/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lx3/e;


# direct methods
.method public constructor <init>(Lx3/e;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, La/a;-><init>(I)V

    iput-object p1, p0, Lx3/d;->f:Lx3/e;

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lx3/d;->f:Lx3/e;

    iget-object p0, p0, Lx3/e;->a:Lx3/h;

    invoke-virtual {p0, p1}, Lx3/h;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t(Lg5/i;)V
    .locals 5

    iget-object p0, p0, Lx3/d;->f:Lx3/e;

    iput-object p1, p0, Lx3/e;->c:Lg5/i;

    new-instance p1, Lx2/k;

    iget-object v0, p0, Lx3/e;->c:Lg5/i;

    iget-object v1, p0, Lx3/e;->a:Lx3/h;

    iget-object v2, v1, Lx3/h;->g:Lwa/e;

    iget-object v1, v1, Lx3/h;->i:Lx3/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_0

    invoke-static {}, Lx3/l;->a()Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lb6/g;->s()Ljava/util/Set;

    move-result-object v3

    :goto_0
    invoke-direct {p1, v0, v2, v1, v3}, Lx2/k;-><init>(Lg5/i;Lwa/e;Lx3/c;Ljava/util/Set;)V

    iput-object p1, p0, Lx3/e;->b:Lx2/k;

    iget-object p0, p0, Lx3/e;->a:Lx3/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lx3/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lx3/h;->c:I

    iget-object v0, p0, Lx3/h;->b:Lk/f;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lx3/h;->b:Lk/f;

    invoke-virtual {v0}, Lk/f;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lx3/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lx3/h;->d:Landroid/os/Handler;

    new-instance v1, Lf7/n;

    iget p0, p0, Lx3/h;->c:I

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lf7/n;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lx3/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
