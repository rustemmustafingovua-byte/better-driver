.class public final Lh5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final l:Ly4/e;

.field public final m:Ly4/k;

.field public final n:Z

.field public final o:I


# direct methods
.method public constructor <init>(Ly4/e;Ly4/k;ZI)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/i;->l:Ly4/e;

    iput-object p2, p0, Lh5/i;->m:Ly4/k;

    iput-boolean p3, p0, Lh5/i;->n:Z

    iput p4, p0, Lh5/i;->o:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-boolean v0, p0, Lh5/i;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh5/i;->l:Ly4/e;

    iget-object v1, p0, Lh5/i;->m:Ly4/k;

    iget v2, p0, Lh5/i;->o:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ly4/k;->a:Lg5/j;

    iget-object v1, v1, Lg5/j;->a:Ljava/lang/String;

    iget-object v3, v0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v1}, Ly4/e;->b(Ljava/lang/String;)Ly4/c0;

    move-result-object v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0, v2}, Ly4/e;->d(Ljava/lang/String;Ly4/c0;I)Z

    move-result v0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object v0, p0, Lh5/i;->l:Ly4/e;

    iget-object v1, p0, Lh5/i;->m:Ly4/k;

    iget v2, p0, Lh5/i;->o:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Ignored stopWork. WorkerWrapper "

    iget-object v4, v1, Ly4/k;->a:Lg5/j;

    iget-object v4, v4, Lg5/j;->a:Ljava/lang/String;

    iget-object v5, v0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v6, v0, Ly4/e;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, Ly4/e;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    :goto_0
    move v0, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v3, v0, Ly4/e;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ly4/e;->b(Ljava/lang/String;)Ly4/c0;

    move-result-object v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4, v0, v2}, Ly4/e;->d(Ljava/lang/String;Ly4/c0;I)Z

    move-result v0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    const-string v2, "StopWorkRunnable"

    invoke-static {v2}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StopWorkRunnable for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lh5/i;->m:Ly4/k;

    iget-object p0, p0, Ly4/k;->a:Lg5/j;

    iget-object p0, p0, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; Processor.stopWork = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
