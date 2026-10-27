.class public final Lpa/q;
.super Lsa/n;
.source "SourceFile"

# interfaces
.implements Lqa/c;


# instance fields
.field public final b:Loa/d;

.field public final c:Lpa/r;

.field public final d:Lla/f0;

.field public final e:Ljava/net/Socket;

.field public final f:Ljava/net/Socket;

.field public final g:Lla/o;

.field public final h:Lla/w;

.field public final i:Lbb/i;

.field public final j:Lbb/h;

.field public final k:Lpa/e;

.field public l:Lsa/p;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:Ljava/util/ArrayList;

.field public t:J


# direct methods
.method public constructor <init>(Loa/d;Lpa/r;Lla/f0;Ljava/net/Socket;Ljava/net/Socket;Lla/o;Lla/w;Lbb/p;Lbb/o;Lpa/e;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawSocket"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p8, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/q;->b:Loa/d;

    iput-object p2, p0, Lpa/q;->c:Lpa/r;

    iput-object p3, p0, Lpa/q;->d:Lla/f0;

    iput-object p4, p0, Lpa/q;->e:Ljava/net/Socket;

    iput-object p5, p0, Lpa/q;->f:Ljava/net/Socket;

    iput-object p6, p0, Lpa/q;->g:Lla/o;

    iput-object p7, p0, Lpa/q;->h:Lla/w;

    iput-object p8, p0, Lpa/q;->i:Lbb/i;

    iput-object p9, p0, Lpa/q;->j:Lbb/h;

    iput-object p10, p0, Lpa/q;->k:Lpa/e;

    const/4 p1, 0x1

    iput p1, p0, Lpa/q;->r:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpa/q;->s:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lpa/q;->t:J

    return-void
.end method

.method public static c(Lla/v;Lla/f0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lla/f0;->a:Lla/a;

    iget-object v1, v0, Lla/a;->g:Ljava/net/ProxySelector;

    iget-object v0, v0, Lla/a;->h:Lla/r;

    invoke-virtual {v0}, Lla/r;->g()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lla/v;->B:Lm2/j;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lm2/j;->m:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lsa/p;Lsa/b0;)V
    .locals 2

    const-string p1, "settings"

    invoke-static {p2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lpa/q;->r:I

    iget v0, p2, Lsa/b0;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object p2, p2, Lsa/b0;->b:[I

    const/4 v0, 0x3

    aget p2, p2, v0

    goto :goto_0

    :cond_0
    const p2, 0x7fffffff

    :goto_0
    iput p2, p0, Lpa/q;->r:I

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lpa/q;->c:Lpa/r;

    iget-object p2, p0, Lpa/q;->d:Lla/f0;

    iget-object p2, p2, Lla/f0;->a:Lla/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "address"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lpa/r;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-le p2, p1, :cond_3

    iget-object p1, p0, Lpa/q;->c:Lpa/r;

    iget-object p2, p1, Lpa/r;->d:Loa/c;

    iget-object p1, p1, Lpa/r;->e:Loa/b;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Loa/c;->c(Loa/a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final b(Lsa/x;)V
    .locals 1

    sget-object p0, Lsa/b;->r:Lsa/b;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lsa/x;->c(Lsa/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lpa/q;->e:Ljava/net/Socket;

    invoke-static {p0}, Lma/e;->c(Ljava/net/Socket;)V

    return-void
.end method

.method public final d(Lla/a;Ljava/util/List;)Z
    .locals 10

    const-string v0, "hostname"

    const-string v1, "address"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lla/a;->h:Lla/r;

    sget-object v2, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v2, p0, Lpa/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lpa/q;->r:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_a

    iget-boolean v2, p0, Lpa/q;->m:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lpa/q;->d:Lla/f0;

    iget-object v3, v2, Lla/f0;->a:Lla/a;

    iget-object v5, v2, Lla/f0;->a:Lla/a;

    invoke-virtual {v3, p1}, Lla/a;->a(Lla/a;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, v1, Lla/r;->d:Ljava/lang/String;

    iget-object v6, v1, Lla/r;->d:Ljava/lang/String;

    iget-object v7, v5, Lla/a;->h:Lla/r;

    iget-object v7, v7, Lla/r;->d:Ljava/lang/String;

    invoke-static {v3, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    return v7

    :cond_2
    iget-object v3, p0, Lpa/q;->l:Lsa/p;

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lla/f0;

    iget-object v8, v3, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_5

    iget-object v8, v2, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    if-ne v8, v9, :cond_5

    iget-object v8, v2, Lla/f0;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Lla/f0;->c:Ljava/net/InetSocketAddress;

    invoke-static {v8, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p2, p1, Lla/a;->d:Ljavax/net/ssl/HostnameVerifier;

    sget-object v2, Lza/c;->a:Lza/c;

    if-eq p2, v2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p2, Lma/e;->a:Ljava/util/TimeZone;

    iget-object p2, v5, Lla/a;->h:Lla/r;

    iget v1, v1, Lla/r;->e:I

    iget v2, p2, Lla/r;->e:I

    if-eq v1, v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, Lla/r;->d:Ljava/lang/String;

    invoke-static {v6, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v1, p0, Lpa/q;->g:Lla/o;

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p0, p0, Lpa/q;->n:Z

    if-nez p0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lla/o;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p0, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {v6, p0}, Lza/c;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_0
    :try_start_0
    iget-object p0, p1, Lla/a;->e:Lla/g;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lla/o;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {v6, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "peerCertificates"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lla/g;->a:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    return v7

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_1
    return v4
.end method

.method public final e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lpa/q;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, p0, Lpa/q;->k:Lpa/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Z)Z
    .locals 7

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lpa/q;->e:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, p0, Lpa/q;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lpa/q;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lpa/q;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lpa/q;->l:Lsa/p;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p0, v2, Lsa/p;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v2

    return v3

    :cond_1
    :try_start_1
    iget-wide p0, v2, Lsa/p;->y:J

    iget-wide v5, v2, Lsa/p;->x:J

    cmp-long p0, p0, v5

    if-gez p0, :cond_2

    iget-wide p0, v2, Lsa/p;->z:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_2

    monitor-exit v2

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v4

    :goto_0
    monitor-exit v2

    throw p0

    :cond_3
    monitor-enter p0

    :try_start_2
    iget-wide v5, p0, Lpa/q;->t:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-long/2addr v0, v5

    monitor-exit p0

    const-wide v5, 0x2540be400L

    cmp-long v0, v0, v5

    if-ltz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lpa/q;->f:Ljava/net/Socket;

    iget-object p0, p0, Lpa/q;->i:Lbb/i;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {p0}, Lbb/i;->l()Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr p0, v4

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move v3, v4

    :catch_1
    return v3

    :cond_4
    return v4

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    return v3
.end method

.method public final g()Lla/f0;
    .locals 0

    iget-object p0, p0, Lpa/q;->d:Lla/f0;

    return-object p0
.end method

.method public final h(Lpa/p;Ljava/io/IOException;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Lsa/c0;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lsa/c0;

    iget-object v0, v0, Lsa/c0;->l:Lsa/b;

    sget-object v2, Lsa/b;->r:Lsa/b;

    if-ne v0, v2, :cond_0

    iget p1, p0, Lpa/q;->q:I

    add-int/2addr p1, v1

    iput p1, p0, Lpa/q;->q:I

    if-le p1, v1, :cond_6

    iput-boolean v1, p0, Lpa/q;->m:Z

    iget p1, p0, Lpa/q;->o:I

    add-int/2addr p1, v1

    iput p1, p0, Lpa/q;->o:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast p2, Lsa/c0;

    iget-object p2, p2, Lsa/c0;->l:Lsa/b;

    sget-object v0, Lsa/b;->s:Lsa/b;

    if-ne p2, v0, :cond_1

    iget-boolean p1, p1, Lpa/p;->x:Z

    if-nez p1, :cond_6

    :cond_1
    iput-boolean v1, p0, Lpa/q;->m:Z

    iget p1, p0, Lpa/q;->o:I

    add-int/2addr p1, v1

    iput p1, p0, Lpa/q;->o:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lpa/q;->l:Lsa/p;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    instance-of v0, p2, Lsa/a;

    if-eqz v0, :cond_6

    :cond_4
    iput-boolean v1, p0, Lpa/q;->m:Z

    iget v0, p0, Lpa/q;->p:I

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    iget-object p1, p1, Lpa/p;->l:Lla/v;

    iget-object v0, p0, Lpa/q;->d:Lla/f0;

    invoke-static {p1, v0, p2}, Lpa/q;->c(Lla/v;Lla/f0;Ljava/io/IOException;)V

    :cond_5
    iget p1, p0, Lpa/q;->o:I

    add-int/2addr p1, v1

    iput p1, p0, Lpa/q;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final i()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lpa/q;->t:J

    iget-object v0, p0, Lpa/q;->h:Lla/w;

    sget-object v1, Lla/w;->q:Lla/w;

    if-eq v0, v1, :cond_1

    sget-object v1, Lla/w;->r:Lla/w;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lpa/q;->f:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    sget-object v0, Lsa/c;->a:Lsa/c;

    new-instance v2, Lf8/u3;

    iget-object v3, p0, Lpa/q;->b:Loa/d;

    const-string v4, "taskRunner"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lf8/u3;->a:Ljava/lang/Object;

    sget-object v3, Lsa/n;->a:Lsa/m;

    iput-object v3, v2, Lf8/u3;->f:Ljava/lang/Object;

    sget-object v3, Lsa/c;->a:Lsa/c;

    iput-object v3, v2, Lf8/u3;->g:Ljava/lang/Object;

    iget-object v3, p0, Lpa/q;->f:Ljava/net/Socket;

    iget-object v4, p0, Lpa/q;->d:Lla/f0;

    iget-object v4, v4, Lla/f0;->a:Lla/a;

    iget-object v4, v4, Lla/a;->h:Lla/r;

    iget-object v4, v4, Lla/r;->d:Ljava/lang/String;

    iget-object v5, p0, Lpa/q;->i:Lbb/i;

    iget-object v6, p0, Lpa/q;->j:Lbb/h;

    const-string v7, "socket"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "peerName"

    invoke-static {v4, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "source"

    invoke-static {v5, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sink"

    invoke-static {v6, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Lf8/u3;->b:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lma/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Lf8/u3;->c:Ljava/lang/Object;

    iput-object v5, v2, Lf8/u3;->d:Ljava/lang/Object;

    iput-object v6, v2, Lf8/u3;->e:Ljava/lang/Object;

    iput-object p0, v2, Lf8/u3;->f:Ljava/lang/Object;

    iput-object v0, v2, Lf8/u3;->g:Ljava/lang/Object;

    new-instance v0, Lsa/p;

    invoke-direct {v0, v2}, Lsa/p;-><init>(Lf8/u3;)V

    iput-object v0, p0, Lpa/q;->l:Lsa/p;

    sget-object v2, Lsa/p;->K:Lsa/b0;

    iget v3, v2, Lsa/b0;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    iget-object v2, v2, Lsa/b0;->b:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    goto :goto_1

    :cond_2
    const v2, 0x7fffffff

    :goto_1
    iput v2, p0, Lpa/q;->r:I

    iget-object p0, v0, Lsa/p;->H:Lsa/y;

    const-string v2, ">> CONNECTION "

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lsa/y;->o:Z

    if-nez v3, :cond_9

    sget-object v3, Lsa/y;->q:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lsa/h;->a:Lbb/j;

    invoke-virtual {v2}, Lbb/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lma/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_2
    iget-object v2, p0, Lsa/y;->l:Lbb/h;

    sget-object v3, Lsa/h;->a:Lbb/j;

    invoke-interface {v2, v3}, Lbb/h;->N(Lbb/j;)Lbb/h;

    iget-object v2, p0, Lsa/y;->l:Lbb/h;

    invoke-interface {v2}, Lbb/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, v0, Lsa/p;->H:Lsa/y;

    iget-object v2, v0, Lsa/p;->B:Lsa/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "settings"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lsa/y;->o:Z

    if-nez v3, :cond_8

    iget v3, v2, Lsa/b0;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v3, v4, v1}, Lsa/y;->d(IIII)V

    move v3, v1

    :goto_3
    const/16 v4, 0xa

    if-ge v3, v4, :cond_6

    const/4 v4, 0x1

    shl-int v5, v4, v3

    iget v6, v2, Lsa/b0;->a:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Lsa/y;->l:Lbb/h;

    invoke-interface {v4, v3}, Lbb/h;->writeShort(I)Lbb/h;

    iget-object v4, p0, Lsa/y;->l:Lbb/h;

    iget-object v5, v2, Lsa/b0;->b:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Lbb/h;->writeInt(I)Lbb/h;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lsa/y;->l:Lbb/h;

    invoke-interface {v2}, Lbb/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    iget-object p0, v0, Lsa/p;->B:Lsa/b0;

    invoke-virtual {p0}, Lsa/b0;->a()I

    move-result p0

    const v2, 0xffff

    if-eq p0, v2, :cond_7

    iget-object v3, v0, Lsa/p;->H:Lsa/y;

    sub-int/2addr p0, v2

    int-to-long v4, p0

    invoke-virtual {v3, v1, v4, v5}, Lsa/y;->q(IJ)V

    :cond_7
    iget-object p0, v0, Lsa/p;->r:Loa/d;

    invoke-virtual {p0}, Loa/d;->d()Loa/c;

    move-result-object p0

    iget-object v1, v0, Lsa/p;->n:Ljava/lang/String;

    iget-object v0, v0, Lsa/p;->I:Lod/x2;

    invoke-static {p0, v1, v0}, Loa/c;->b(Loa/c;Ljava/lang/String;Li9/a;)V

    return-void

    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    monitor-exit p0

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpa/q;->d:Lla/f0;

    iget-object v2, v1, Lla/f0;->a:Lla/a;

    iget-object v2, v2, Lla/a;->h:Lla/r;

    iget-object v2, v2, Lla/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lla/f0;->a:Lla/a;

    iget-object v2, v2, Lla/a;->h:Lla/r;

    iget v2, v2, Lla/r;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lla/f0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpa/q;->g:Lla/o;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lla/o;->b:Lla/i;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "none"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpa/q;->h:Lla/w;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
