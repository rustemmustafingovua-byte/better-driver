.class public final Lpa/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/v;
.implements Lqa/c;


# instance fields
.field public final a:Loa/d;

.field public final b:Lpa/r;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Lpa/a;

.field public final i:Lpa/s;

.field public final j:Lla/f0;

.field public final k:Ljava/util/List;

.field public final l:Lg7/c;

.field public final m:I

.field public final n:Z

.field public volatile o:Z

.field public p:Ljava/net/Socket;

.field public q:Ljava/net/Socket;

.field public r:Lla/o;

.field public s:Lla/w;

.field public t:Lbb/p;

.field public u:Lbb/o;

.field public v:Lpa/q;


# direct methods
.method public constructor <init>(Loa/d;Lpa/r;IIIIZLpa/a;Lpa/s;Lla/f0;Ljava/util/List;Lg7/c;IZ)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p8, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p10, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/d;->a:Loa/d;

    iput-object p2, p0, Lpa/d;->b:Lpa/r;

    iput p3, p0, Lpa/d;->c:I

    iput p4, p0, Lpa/d;->d:I

    iput p5, p0, Lpa/d;->e:I

    iput p6, p0, Lpa/d;->f:I

    iput-boolean p7, p0, Lpa/d;->g:Z

    iput-object p8, p0, Lpa/d;->h:Lpa/a;

    iput-object p9, p0, Lpa/d;->i:Lpa/s;

    iput-object p10, p0, Lpa/d;->j:Lla/f0;

    iput-object p11, p0, Lpa/d;->k:Ljava/util/List;

    iput-object p12, p0, Lpa/d;->l:Lg7/c;

    iput p13, p0, Lpa/d;->m:I

    iput-boolean p14, p0, Lpa/d;->n:Z

    return-void
.end method


# virtual methods
.method public final a()Lpa/v;
    .locals 15

    new-instance v0, Lpa/d;

    iget v13, p0, Lpa/d;->m:I

    iget-boolean v14, p0, Lpa/d;->n:Z

    iget-object v1, p0, Lpa/d;->a:Loa/d;

    iget-object v2, p0, Lpa/d;->b:Lpa/r;

    iget v3, p0, Lpa/d;->c:I

    iget v4, p0, Lpa/d;->d:I

    iget v5, p0, Lpa/d;->e:I

    iget v6, p0, Lpa/d;->f:I

    iget-boolean v7, p0, Lpa/d;->g:Z

    iget-object v8, p0, Lpa/d;->h:Lpa/a;

    iget-object v9, p0, Lpa/d;->i:Lpa/s;

    iget-object v10, p0, Lpa/d;->j:Lla/f0;

    iget-object v11, p0, Lpa/d;->k:Ljava/util/List;

    iget-object v12, p0, Lpa/d;->l:Lg7/c;

    invoke-direct/range {v0 .. v14}, Lpa/d;-><init>(Loa/d;Lpa/r;IIIIZLpa/a;Lpa/s;Lla/f0;Ljava/util/List;Lg7/c;IZ)V

    return-object v0
.end method

.method public final b()Lpa/q;
    .locals 5

    iget-object v0, p0, Lpa/d;->h:Lpa/a;

    iget-object v1, p0, Lpa/d;->j:Lla/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "route"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lpa/a;->a:Lpa/p;

    iget-object v0, v0, Lpa/p;->l:Lla/v;

    iget-object v0, v0, Lla/v;->B:Lm2/j;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lm2/j;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lpa/d;->v:Lpa/q;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lpa/d;->h:Lpa/a;

    iget-object v2, p0, Lpa/d;->j:Lla/f0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "connection"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "route"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lpa/a;->b:Lpa/e;

    iget-object v1, v1, Lpa/a;->a:Lpa/p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "call"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lpa/d;->i:Lpa/s;

    iget-object v2, p0, Lpa/d;->k:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Lpa/s;->i(Lpa/d;Ljava/util/List;)Lpa/t;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lpa/t;->a:Lpa/q;

    return-object p0

    :cond_0
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lpa/d;->b:Lpa/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v2, v1, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lpa/r;->d:Loa/c;

    iget-object v1, v1, Lpa/r;->e:Loa/b;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Loa/c;->c(Loa/a;J)V

    iget-object v1, p0, Lpa/d;->h:Lpa/a;

    invoke-virtual {v1, v0}, Lpa/a;->a(Lpa/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v1, p0, Lpa/d;->h:Lpa/a;

    invoke-virtual {v1, v0}, Lpa/a;->e(Lpa/q;)V

    iget-object p0, p0, Lpa/d;->h:Lpa/a;

    invoke-virtual {p0, v0}, Lpa/a;->f(Lpa/q;)V

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lpa/d;->s:Lla/w;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpa/d;->o:Z

    iget-object p0, p0, Lpa/d;->p:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final d()Lpa/u;
    .locals 7

    iget-object v0, p0, Lpa/d;->j:Lla/f0;

    iget-object v1, p0, Lpa/d;->p:Ljava/net/Socket;

    if-nez v1, :cond_3

    iget-object v1, p0, Lpa/d;->h:Lpa/a;

    invoke-virtual {v1, p0}, Lpa/a;->b(Lpa/d;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "route"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lla/f0;->c:Ljava/net/InetSocketAddress;

    const-string v4, "inetSocketAddress"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpa/d;->i()V

    const/4 v2, 0x1

    new-instance v3, Lpa/u;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-direct {v3, p0, v4, v5}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p0}, Lpa/a;->p(Lpa/d;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, v0, Lla/f0;->a:Lla/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lla/f0;->a:Lla/a;

    iget-object v5, v4, Lla/a;->g:Ljava/net/ProxySelector;

    iget-object v4, v4, Lla/a;->h:Lla/r;

    invoke-virtual {v4}, Lla/r;->g()Ljava/net/URI;

    move-result-object v4

    iget-object v6, v0, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, v4, v6, v3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {v1, v0, v3}, Lpa/a;->d(Lla/f0;Ljava/io/IOException;)V

    new-instance v0, Lpa/u;

    const/4 v4, 0x2

    invoke-direct {v0, p0, v3, v4}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, p0}, Lpa/a;->p(Lpa/d;)V

    if-nez v2, :cond_1

    iget-object p0, p0, Lpa/d;->p:Ljava/net/Socket;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_1
    return-object v0

    :goto_0
    invoke-virtual {v1, p0}, Lpa/a;->p(Lpa/d;)V

    if-nez v2, :cond_2

    iget-object p0, p0, Lpa/d;->p:Ljava/net/Socket;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_2
    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TCP already connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()Lpa/u;
    .locals 20

    move-object/from16 v1, p0

    iget-object v6, v1, Lpa/d;->p:Ljava/net/Socket;

    if-eqz v6, :cond_13

    invoke-virtual {v1}, Lpa/d;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v13, v1, Lpa/d;->j:Lla/f0;

    iget-object v0, v13, Lla/f0;->a:Lla/a;

    iget-object v2, v13, Lla/f0;->a:Lla/a;

    iget-object v0, v0, Lla/a;->j:Ljava/util/List;

    iget-object v14, v1, Lpa/d;->h:Lpa/a;

    invoke-virtual {v14, v1}, Lpa/a;->b(Lpa/d;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lpa/d;->l:Lg7/c;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lpa/d;->k()Lpa/u;

    move-result-object v4

    iget-object v5, v4, Lpa/u;->c:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    invoke-virtual {v14, v1}, Lpa/a;->p(Lpa/d;)V

    iget-object v0, v1, Lpa/d;->q:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_0
    invoke-static {v6}, Lma/e;->c(Ljava/net/Socket;)V

    return-object v4

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v15, v3

    :goto_0
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_1
    :try_start_1
    iget-object v4, v2, Lla/a;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "sink"

    const-string v7, "source"

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    :try_start_2
    iget-object v4, v1, Lpa/d;->t:Lbb/p;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lbb/p;->m:Lbb/g;

    invoke-virtual {v4}, Lbb/g;->l()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lpa/d;->u:Lbb/o;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lbb/o;->m:Lbb/g;

    invoke-virtual {v4}, Lbb/g;->l()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lla/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, v2, Lla/a;->h:Lla/r;

    iget-object v9, v2, Lla/r;->d:Ljava/lang/String;

    iget v2, v2, Lla/r;->e:I

    invoke-virtual {v4, v6, v9, v2, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v0, v2}, Lpa/d;->m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lpa/d;

    move-result-object v4

    iget v9, v4, Lpa/d;->m:I

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lla/l;

    invoke-virtual {v4, v0, v2}, Lpa/d;->l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lpa/d;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, v4, Lpa/d;->n:Z

    invoke-virtual {v9, v2, v0}, Lla/l;->a(Ljavax/net/ssl/SSLSocket;Z)V

    invoke-virtual {v1, v2, v9}, Lpa/d;->j(Ljavax/net/ssl/SSLSocket;Lla/l;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v10

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v15, v3

    move-object v3, v10

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-static {v5}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v7}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :cond_5
    iput-object v6, v1, Lpa/d;->q:Ljava/net/Socket;

    iget-object v0, v2, Lla/a;->i:Ljava/util/List;

    sget-object v2, Lla/w;->r:Lla/w;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v2, Lla/w;->o:Lla/w;

    :goto_1
    iput-object v2, v1, Lpa/d;->s:Lla/w;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v16, v3

    :goto_2
    :try_start_5
    new-instance v2, Lpa/q;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v3

    :try_start_6
    iget-object v3, v1, Lpa/d;->a:Loa/d;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v9, v4

    :try_start_7
    iget-object v4, v1, Lpa/d;->b:Lpa/r;

    move-object v0, v5

    iget-object v5, v1, Lpa/d;->j:Lla/f0;

    move-object v10, v7

    iget-object v7, v1, Lpa/d;->q:Ljava/net/Socket;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    move v11, v8

    iget-object v8, v1, Lpa/d;->r:Lla/o;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v12, v9

    :try_start_8
    iget-object v9, v1, Lpa/d;->s:Lla/w;

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    move-object/from16 v17, v10

    iget-object v10, v1, Lpa/d;->t:Lbb/p;

    if-eqz v10, :cond_8

    move/from16 v18, v11

    iget-object v11, v1, Lpa/d;->u:Lbb/o;

    if-eqz v11, :cond_7

    iget-object v0, v1, Lpa/d;->b:Lpa/r;

    iget-object v0, v0, Lpa/r;->a:Lpa/e;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v15, v12

    move-object v12, v0

    :try_start_9
    invoke-direct/range {v2 .. v12}, Lpa/q;-><init>(Loa/d;Lpa/r;Lla/f0;Ljava/net/Socket;Ljava/net/Socket;Lla/o;Lla/w;Lbb/p;Lbb/o;Lpa/e;)V

    iput-object v2, v1, Lpa/d;->v:Lpa/q;

    invoke-virtual {v2}, Lpa/q;->i()V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "route"

    invoke-static {v13, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v13, Lla/f0;->c:Ljava/net/InetSocketAddress;

    const-string v2, "inetSocketAddress"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-instance v0, Lpa/u;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v15, v2}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-virtual {v14, v1}, Lpa/a;->p(Lpa/d;)V

    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v15, v18

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v3, v16

    move/from16 v19, v18

    goto :goto_4

    :goto_3
    move-object/from16 v3, v16

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v15, v12

    goto :goto_3

    :cond_7
    move-object v15, v12

    :try_start_b
    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v15

    :cond_8
    move-object v15, v12

    invoke-static/range {v17 .. v17}, Lj9/n;->m(Ljava/lang/String;)V

    throw v15
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_5
    move-exception v0

    move-object v15, v9

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v15, v4

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v15, v3

    goto :goto_3

    :goto_4
    :try_start_c
    invoke-virtual {v14, v13, v0}, Lpa/a;->d(Lla/f0;Ljava/io/IOException;)V

    iget-boolean v2, v1, Lpa/d;->g:Z

    if-eqz v2, :cond_d

    instance-of v2, v0, Ljava/net/ProtocolException;

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_d

    goto :goto_7

    :goto_5
    move/from16 v15, v19

    goto :goto_8

    :cond_d
    :goto_6
    move-object v3, v15

    :goto_7
    new-instance v2, Lpa/u;

    invoke-direct {v2, v1, v3, v0}, Lpa/u;-><init>(Lpa/v;Lpa/d;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    invoke-virtual {v14, v1}, Lpa/a;->p(Lpa/d;)V

    if-nez v19, :cond_f

    iget-object v0, v1, Lpa/d;->q:Ljava/net/Socket;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_e
    invoke-static {v6}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_f
    return-object v2

    :catchall_2
    move-exception v0

    goto :goto_5

    :goto_8
    invoke-virtual {v14, v1}, Lpa/a;->p(Lpa/d;)V

    if-nez v15, :cond_11

    iget-object v1, v1, Lpa/d;->q:Ljava/net/Socket;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_10
    invoke-static {v6}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_11
    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TCP not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lla/f0;
    .locals 0

    iget-object p0, p0, Lpa/d;->j:Lla/f0;

    return-object p0
.end method

.method public final h(Lpa/p;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lpa/d;->j:Lla/f0;

    iget-object v0, v0, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lpa/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lpa/d;->j:Lla/f0;

    iget-object v1, v1, Lla/f0;->b:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lpa/d;->j:Lla/f0;

    iget-object v0, v0, Lla/f0;->a:Lla/a;

    iget-object v0, v0, Lla/a;->b:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, Lpa/d;->p:Ljava/net/Socket;

    iget-boolean v1, p0, Lpa/d;->o:Z

    if-nez v1, :cond_3

    iget v1, p0, Lpa/d;->f:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object v1, Lva/c;->a:Lva/a;

    sget-object v1, Lva/c;->a:Lva/a;

    iget-object v2, p0, Lpa/d;->j:Lla/f0;

    iget-object v2, v2, Lla/f0;->c:Ljava/net/InetSocketAddress;

    iget v3, p0, Lpa/d;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "address"

    invoke-static {v2, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lpc/h;->y(Ljava/net/Socket;)Lbb/d;

    move-result-object v1

    new-instance v2, Lbb/p;

    invoke-direct {v2, v1}, Lbb/p;-><init>(Lbb/u;)V

    iput-object v2, p0, Lpa/d;->t:Lbb/p;

    invoke-static {v0}, Lpc/h;->w(Ljava/net/Socket;)Lbb/c;

    move-result-object v0

    invoke-static {v0}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object v0

    iput-object v0, p0, Lpa/d;->u:Lbb/o;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "throw with null exception"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lpa/d;->j:Lla/f0;

    iget-object p0, p0, Lla/f0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "canceled"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljavax/net/ssl/SSLSocket;Lla/l;)V
    .locals 11

    iget-object v0, p0, Lpa/d;->j:Lla/f0;

    iget-object v0, v0, Lla/f0;->a:Lla/a;

    :try_start_0
    iget-boolean v1, p2, Lla/l;->b:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lva/c;->a:Lva/a;

    sget-object v1, Lva/c;->a:Lva/a;

    iget-object v4, v0, Lla/a;->h:Lla/r;

    iget-object v4, v4, Lla/r;->d:Ljava/lang/String;

    iget-object v5, v0, Lla/a;->i:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "protocols"

    invoke-static {v5, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lva/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :cond_0
    if-ge v7, v6, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    move-object v9, v8

    check-cast v9, Lwa/o;

    invoke-interface {v9, p1}, Lwa/o;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_1
    move-object v8, v3

    :goto_0
    check-cast v8, Lwa/o;

    if-eqz v8, :cond_2

    invoke-interface {v8, p1, v4, v5}, Lwa/o;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Lg6/c1;->p(Ljavax/net/ssl/SSLSession;)Lla/o;

    move-result-object v4

    iget-object v5, v0, Lla/a;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v6, v0, Lla/a;->h:Lla/r;

    iget-object v6, v6, Lla/r;->d:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4}, Lla/o;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p0, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            |Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lla/a;->h:Lla/r;

    iget-object v0, v0, Lla/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n            |    certificate: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lla/g;->c:Lla/g;

    invoke-static {p0}, Lc6/o;->W(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            |    DN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            |    subjectAltNames: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lza/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lza/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n            "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr9/l;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hostname "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lla/a;->h:Lla/r;

    iget-object v0, v0, Lla/r;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v1, v0, Lla/a;->e:Lla/g;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v5, Lla/o;

    iget-object v6, v4, Lla/o;->a:Lla/g0;

    iget-object v7, v4, Lla/o;->b:Lla/i;

    iget-object v8, v4, Lla/o;->c:Ljava/util/List;

    new-instance v9, Lb0/c3;

    const/16 v10, 0xd

    invoke-direct {v9, v1, v4, v0, v10}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v5, v6, v7, v8, v9}, Lla/o;-><init>(Lla/g0;Lla/i;Ljava/util/List;Li9/a;)V

    iput-object v5, p0, Lpa/d;->r:Lla/o;

    iget-object v0, v0, Lla/a;->h:Lla/r;

    iget-object v0, v0, Lla/r;->d:Ljava/lang/String;

    const-string v4, "hostname"

    invoke-static {v0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lla/g;->a:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean p2, p2, Lla/l;->b:Z

    if-eqz p2, :cond_7

    sget-object p2, Lva/c;->a:Lva/a;

    sget-object p2, Lva/c;->a:Lva/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lva/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_5
    if-ge v2, v0, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    check-cast v4, Lwa/o;

    invoke-interface {v4, p1}, Lwa/o;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_6
    move-object v1, v3

    :goto_2
    check-cast v1, Lwa/o;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Lwa/o;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    iput-object p1, p0, Lpa/d;->q:Ljava/net/Socket;

    invoke-static {p1}, Lpc/h;->y(Ljava/net/Socket;)Lbb/d;

    move-result-object p2

    new-instance v0, Lbb/p;

    invoke-direct {v0, p2}, Lbb/p;-><init>(Lbb/u;)V

    iput-object v0, p0, Lpa/d;->t:Lbb/p;

    invoke-static {p1}, Lpc/h;->w(Ljava/net/Socket;)Lbb/c;

    move-result-object p2

    invoke-static {p2}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object p2

    iput-object p2, p0, Lpa/d;->u:Lbb/o;

    if-eqz v3, :cond_8

    sget-object p2, Lla/w;->m:Lla/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lla/b;->d(Ljava/lang/String;)Lla/w;

    move-result-object p2

    goto :goto_3

    :cond_8
    sget-object p2, Lla/w;->o:Lla/w;

    :goto_3
    iput-object p2, p0, Lpa/d;->s:Lla/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lva/c;->a:Lva/a;

    sget-object p0, Lva/c;->a:Lva/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_9
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    sget-object p2, Lva/c;->a:Lva/a;

    sget-object p2, Lva/c;->a:Lva/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lma/e;->c(Ljava/net/Socket;)V

    throw p0
.end method

.method public final k()Lpa/u;
    .locals 11

    iget-object v0, p0, Lpa/d;->l:Lg7/c;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lpa/d;->j:Lla/f0;

    iget-object v2, v1, Lla/f0;->a:Lla/a;

    iget-object v2, v2, Lla/a;->h:Lla/r;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONNECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lma/e;->i(Lla/r;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lra/g;

    iget-object v4, p0, Lpa/d;->t:Lbb/p;

    const-string v5, "source"

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget-object v7, p0, Lpa/d;->u:Lbb/o;

    const-string v8, "sink"

    if-eqz v7, :cond_5

    invoke-direct {v3, v6, p0, v4, v7}, Lra/g;-><init>(Lla/v;Lqa/c;Lbb/i;Lbb/h;)V

    iget-object v4, p0, Lpa/d;->t:Lbb/p;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lbb/p;->l:Lbb/u;

    invoke-interface {v4}, Lbb/u;->timeout()Lbb/w;

    move-result-object v4

    iget v5, p0, Lpa/d;->c:I

    int-to-long v9, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10}, Lbb/w;->g(J)Lbb/w;

    iget-object v4, p0, Lpa/d;->u:Lbb/o;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lbb/o;->l:Lbb/t;

    invoke-interface {v4}, Lbb/t;->timeout()Lbb/w;

    move-result-object v4

    iget v5, p0, Lpa/d;->d:I

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Lbb/w;->g(J)Lbb/w;

    iget-object v4, v0, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast v4, Lla/p;

    invoke-virtual {v3, v4, v2}, Lra/g;->k(Lla/p;Ljava/lang/String;)V

    invoke-virtual {v3}, Lra/g;->a()V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lra/g;->f(Z)Lla/b0;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v0, v2, Lla/b0;->a:Lg7/c;

    invoke-virtual {v2}, Lla/b0;->a()Lla/c0;

    move-result-object v0

    iget v2, v0, Lla/c0;->o:I

    invoke-static {v0}, Lma/e;->e(Lla/c0;)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lla/c0;->l:Lg7/c;

    iget-object v0, v0, Lg7/c;->c:Ljava/lang/Object;

    check-cast v0, Lla/r;

    invoke-virtual {v3, v0, v4, v5}, Lra/g;->j(Lla/r;J)Lra/d;

    move-result-object v0

    const v3, 0x7fffffff

    invoke-static {v0, v3}, Lma/e;->g(Lbb/u;I)Z

    invoke-virtual {v0}, Lra/d;->close()V

    :goto_0
    const/16 v0, 0xc8

    if-eq v2, v0, :cond_2

    const/16 p0, 0x197

    if-ne v2, p0, :cond_1

    iget-object p0, v1, Lla/f0;->a:Lla/a;

    iget-object p0, p0, Lla/a;->f:Lla/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to authenticate with proxy"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected response code for CONNECT: "

    invoke-static {v2, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lpa/u;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v6, v1}, Lpa/u;-><init>(Lpa/v;Ljava/lang/Throwable;I)V

    return-object v0

    :cond_3
    invoke-static {v8}, Lj9/n;->m(Ljava/lang/String;)V

    throw v6

    :cond_4
    invoke-static {v5}, Lj9/n;->m(Ljava/lang/String;)V

    throw v6

    :cond_5
    invoke-static {v8}, Lj9/n;->m(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-static {v5}, Lj9/n;->m(Ljava/lang/String;)V

    throw v6
.end method

.method public final l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lpa/d;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "connectionSpecs"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Lpa/d;->m:I

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lla/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v5, Lla/l;->a:Z

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lla/l;->d:[Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lw8/a;->b:Lw8/a;

    invoke-static {v6, v7, v8}, Lma/c;->e([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v5, Lla/l;->c:[Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lla/i;->c:Lla/h;

    invoke-static {v5, v6, v7}, Lma/c;->e([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-eq v2, v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    move/from16 v19, v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    new-instance v5, Lpa/d;

    iget-object v15, v0, Lpa/d;->j:Lla/f0;

    iget-object v1, v0, Lpa/d;->k:Ljava/util/List;

    iget-object v6, v0, Lpa/d;->a:Loa/d;

    iget-object v7, v0, Lpa/d;->b:Lpa/r;

    iget v8, v0, Lpa/d;->c:I

    iget v9, v0, Lpa/d;->d:I

    iget v10, v0, Lpa/d;->e:I

    iget v11, v0, Lpa/d;->f:I

    iget-boolean v12, v0, Lpa/d;->g:Z

    iget-object v13, v0, Lpa/d;->h:Lpa/a;

    iget-object v14, v0, Lpa/d;->i:Lpa/s;

    iget-object v0, v0, Lpa/d;->l:Lg7/c;

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move/from16 v18, v3

    invoke-direct/range {v5 .. v19}, Lpa/d;-><init>(Loa/d;Lpa/r;IIIIZLpa/a;Lpa/s;Lla/f0;Ljava/util/List;Lg7/c;IZ)V

    return-object v5

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lpa/d;
    .locals 3

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lpa/d;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lpa/d;->l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lpa/d;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lpa/d;->n:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", modes="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", supported protocols="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
