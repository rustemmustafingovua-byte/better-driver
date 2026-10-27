.class public final Lra/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/t;


# instance fields
.field public final l:Lbb/k;

.field public m:Z

.field public final synthetic n:Lra/g;


# direct methods
.method public constructor <init>(Lra/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/b;->n:Lra/g;

    new-instance v0, Lbb/k;

    iget-object p1, p1, Lra/g;->d:Lbb/h;

    invoke-interface {p1}, Lbb/t;->timeout()Lbb/w;

    move-result-object p1

    invoke-direct {v0, p1}, Lbb/k;-><init>(Lbb/w;)V

    iput-object v0, p0, Lra/b;->l:Lbb/k;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lra/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lra/b;->m:Z

    iget-object v0, p0, Lra/b;->n:Lra/g;

    iget-object v0, v0, Lra/g;->d:Lbb/h;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    iget-object v0, p0, Lra/b;->l:Lbb/k;

    iget-object v1, v0, Lbb/k;->e:Lbb/w;

    sget-object v2, Lbb/w;->d:Lbb/v;

    iput-object v2, v0, Lbb/k;->e:Lbb/w;

    invoke-virtual {v1}, Lbb/w;->a()Lbb/w;

    invoke-virtual {v1}, Lbb/w;->b()Lbb/w;

    iget-object v0, p0, Lra/b;->n:Lra/g;

    const/4 v1, 0x3

    iput v1, v0, Lra/g;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lra/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lra/b;->n:Lra/g;

    iget-object v0, v0, Lra/g;->d:Lbb/h;

    invoke-interface {v0}, Lbb/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lra/b;->l:Lbb/k;

    return-object p0
.end method

.method public final write(Lbb/g;J)V
    .locals 3

    iget-object v0, p0, Lra/b;->n:Lra/g;

    iget-object v0, v0, Lra/g;->d:Lbb/h;

    const-string v1, "source"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lra/b;->m:Z

    if-nez p0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p0, p2, v1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2, p3}, Lbb/h;->z(J)Lbb/h;

    const-string p0, "\r\n"

    invoke-interface {v0, p0}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    invoke-interface {v0, p1, p2, p3}, Lbb/t;->write(Lbb/g;J)V

    invoke-interface {v0, p0}, Lbb/h;->u(Ljava/lang/String;)Lbb/h;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
