.class public final Lpa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/s;


# static fields
.field public static final a:Lpa/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpa/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpa/b;->a:Lpa/b;

    return-void
.end method


# virtual methods
.method public final a(Lqa/f;)Lla/c0;
    .locals 9

    iget-object p0, p1, Lqa/f;->a:Lpa/p;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpa/p;->w:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lpa/p;->v:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lpa/p;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    monitor-exit p0

    iget-object v0, p0, Lpa/p;->r:Lpa/h;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Lpa/h;->a()Lpa/q;

    move-result-object v1

    iget-object v2, p0, Lpa/p;->l:Lla/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lqa/f;->g:I

    iget-object v4, v1, Lpa/q;->f:Ljava/net/Socket;

    iget-object v5, v1, Lpa/q;->i:Lbb/i;

    iget-object v6, v1, Lpa/q;->j:Lbb/h;

    iget-object v7, v1, Lpa/q;->l:Lsa/p;

    if-eqz v7, :cond_0

    new-instance v3, Lsa/q;

    invoke-direct {v3, v2, v1, p1, v7}, Lsa/q;-><init>(Lla/v;Lpa/q;Lqa/f;Lsa/p;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {v5}, Lbb/u;->timeout()Lbb/w;

    move-result-object v4

    int-to-long v7, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8}, Lbb/w;->g(J)Lbb/w;

    invoke-interface {v6}, Lbb/t;->timeout()Lbb/w;

    move-result-object v3

    iget v4, p1, Lqa/f;->h:I

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Lbb/w;->g(J)Lbb/w;

    new-instance v3, Lra/g;

    invoke-direct {v3, v2, v1, v5, v6}, Lra/g;-><init>(Lla/v;Lqa/c;Lbb/i;Lbb/h;)V

    :goto_0
    new-instance v1, Lk4/h;

    invoke-direct {v1, p0, v0, v3}, Lk4/h;-><init>(Lpa/p;Lpa/h;Lqa/d;)V

    iput-object v1, p0, Lpa/p;->t:Lk4/h;

    iput-object v1, p0, Lpa/p;->y:Lk4/h;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lpa/p;->u:Z

    iput-boolean v0, p0, Lpa/p;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-boolean p0, p0, Lpa/p;->x:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    const/16 v0, 0x3d

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, p0, v0}, Lqa/f;->a(Lqa/f;ILk4/h;Lg7/c;I)Lqa/f;

    move-result-object p0

    iget-object p1, p1, Lqa/f;->e:Lg7/c;

    invoke-virtual {p0, p1}, Lqa/f;->b(Lg7/c;)Lla/c0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    throw p1
.end method
