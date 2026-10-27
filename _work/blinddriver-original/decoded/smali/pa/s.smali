.class public final Lpa/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/w;


# instance fields
.field public final a:Loa/d;

.field public final b:Lpa/r;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Lla/a;

.field public final j:Lm2/j;

.field public final k:Lpa/a;

.field public l:Lpa/x;

.field public m:Lpa/y;

.field public n:Lla/f0;

.field public final o:Lu8/k;


# direct methods
.method public constructor <init>(Loa/d;Lpa/r;IIIIZZLla/a;Lm2/j;Lpa/a;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p10, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionUser"

    invoke-static {p11, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/s;->a:Loa/d;

    iput-object p2, p0, Lpa/s;->b:Lpa/r;

    iput p3, p0, Lpa/s;->c:I

    iput p4, p0, Lpa/s;->d:I

    iput p5, p0, Lpa/s;->e:I

    iput p6, p0, Lpa/s;->f:I

    iput-boolean p7, p0, Lpa/s;->g:Z

    iput-boolean p8, p0, Lpa/s;->h:Z

    iput-object p9, p0, Lpa/s;->i:Lla/a;

    iput-object p10, p0, Lpa/s;->j:Lm2/j;

    iput-object p11, p0, Lpa/s;->k:Lpa/a;

    new-instance p1, Lu8/k;

    invoke-direct {p1}, Lu8/k;-><init>()V

    iput-object p1, p0, Lpa/s;->o:Lu8/k;

    return-void
.end method


# virtual methods
.method public final a()Lpa/d;
    .locals 11

    iget-object v0, p0, Lpa/s;->n:Lla/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lpa/s;->n:Lla/f0;

    invoke-virtual {p0, v0, v1}, Lpa/s;->b(Lla/f0;Ljava/util/ArrayList;)Lpa/d;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lpa/s;->l:Lpa/x;

    if-eqz v0, :cond_2

    iget v2, v0, Lpa/x;->a:I

    iget-object v3, v0, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v2, v0, Lpa/x;->a:I

    iget-object v3, v0, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget v2, v0, Lpa/x;->a:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lpa/x;->a:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/f0;

    invoke-virtual {p0, v0, v1}, Lpa/s;->b(Lla/f0;Ljava/util/ArrayList;)Lpa/d;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    iget-object v0, p0, Lpa/s;->m:Lpa/y;

    if-nez v0, :cond_3

    new-instance v0, Lpa/y;

    iget-object v1, p0, Lpa/s;->i:Lla/a;

    iget-object v2, p0, Lpa/s;->j:Lm2/j;

    iget-object v3, p0, Lpa/s;->k:Lpa/a;

    iget-boolean v4, p0, Lpa/s;->h:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lpa/y;-><init>(Lla/a;Lm2/j;Lpa/a;Z)V

    iput-object v0, p0, Lpa/s;->m:Lpa/y;

    :cond_3
    invoke-virtual {v0}, Lpa/y;->f()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lpa/y;->f()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iget v2, v0, Lpa/y;->c:I

    iget-object v3, v0, Lpa/y;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    iget-object v2, v0, Lpa/y;->d:Ljava/lang/Object;

    check-cast v2, Lla/a;

    const-string v3, "No route to "

    iget v4, v0, Lpa/y;->c:I

    iget-object v5, v0, Lpa/y;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    iget-object v4, v0, Lpa/y;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget v5, v0, Lpa/y;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lpa/y;->c:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    iget-object v5, v0, Lpa/y;->f:Ljava/lang/Object;

    check-cast v5, Lpa/a;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lpa/y;->h:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v7, v8, :cond_8

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    instance-of v8, v7, Ljava/net/InetSocketAddress;

    if-eqz v8, :cond_7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getHostName(...)"

    invoke-static {v8, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getHostAddress(...)"

    invoke-static {v8, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    iget-object v7, v2, Lla/a;->h:Lla/r;

    iget-object v8, v7, Lla/r;->d:Ljava/lang/String;

    iget v7, v7, Lla/r;->e:I

    :goto_2
    const/4 v9, 0x1

    if-gt v9, v7, :cond_18

    const/high16 v9, 0x10000

    if-ge v7, v9, :cond_18

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v3, v9, :cond_9

    invoke-static {v8, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_9
    sget-object v3, Lma/b;->a:Lr9/i;

    const-string v3, "<this>"

    invoke-static {v8, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lma/b;->a:Lr9/i;

    invoke-virtual {v3, v8}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lla/a;->a:Lla/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    const-string v9, "getAllByName(...)"

    invoke-static {v3, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lu8/l;->H0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_17

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    :goto_3
    iget-boolean v3, v0, Lpa/y;->b:Z

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_b

    goto/16 :goto_7

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/net/InetAddress;

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_c

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    sget-object v2, Lma/c;->a:[B

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v8

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {v8}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object v2

    goto :goto_7

    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lv8/b;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    :goto_9
    iget-object v2, v0, Lpa/y;->h:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    new-instance v5, Lla/f0;

    iget-object v6, v0, Lpa/y;->d:Ljava/lang/Object;

    check-cast v6, Lla/a;

    invoke-direct {v5, v6, v4, v3}, Lla/f0;-><init>(Lla/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v3, v0, Lpa/y;->e:Ljava/lang/Object;

    check-cast v3, Lm2/j;

    monitor-enter v3

    :try_start_1
    iget-object v6, v3, Lm2/j;->m:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    if-eqz v6, :cond_15

    iget-object v3, v0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_b

    :cond_17
    new-instance p0, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lla/a;->a:Lla/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned no addresses for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Broken system behaviour for dns lookup of "

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_18
    new-instance p0, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; port is out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lla/a;->h:Lla/r;

    iget-object v2, v2, Lla/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lpa/y;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iget-object v0, v0, Lpa/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    new-instance v0, Lpa/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lpa/x;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lpa/s;->l:Lpa/x;

    iget-object v2, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v2}, Lpa/a;->m()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, v0, Lpa/x;->a:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    iget v2, v0, Lpa/x;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lpa/x;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/f0;

    invoke-virtual {p0, v0, v1}, Lpa/s;->b(Lla/f0;Ljava/util/ArrayList;)Lpa/d;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "exhausted all routes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lla/f0;Ljava/util/ArrayList;)Lpa/d;
    .locals 15

    move-object/from16 v10, p1

    const-string v0, "route"

    invoke-static {v10, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v10, Lla/f0;->a:Lla/a;

    iget-object v1, v0, Lla/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_2

    iget-object v0, v0, Lla/a;->j:Ljava/util/List;

    sget-object v1, Lla/l;->f:Lla/l;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v10, Lla/f0;->a:Lla/a;

    iget-object v0, v0, Lla/a;->h:Lla/r;

    iget-object v0, v0, Lla/r;->d:Ljava/lang/String;

    sget-object v1, Lva/c;->a:Lva/a;

    sget-object v1, Lva/c;->a:Lva/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "hostname"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/UnknownServiceException;

    const-string v1, "CLEARTEXT communication to "

    const-string v2, " not permitted by network security policy"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/net/UnknownServiceException;

    const-string v0, "CLEARTEXT communication not enabled for client"

    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, v0, Lla/a;->i:Ljava/util/List;

    sget-object v1, Lla/w;->r:Lla/w;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    iget-object v0, v10, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v10, Lla/f0;->a:Lla/a;

    iget-object v1, v0, Lla/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_5

    iget-object v0, v0, Lla/a;->i:Ljava/util/List;

    sget-object v1, Lla/w;->r:Lla/w;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object v12, v2

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v0, Landroidx/lifecycle/a1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/lifecycle/a1;-><init>(I)V

    iget-object v1, v10, Lla/f0;->a:Lla/a;

    iget-object v1, v1, Lla/a;->h:Lla/r;

    const-string v3, "url"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    iget-object v1, v10, Lla/f0;->a:Lla/a;

    iget-object v2, v1, Lla/a;->h:Lla/r;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lma/e;->i(Lla/r;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v0, v3, v2}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Proxy-Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "okhttp/5.1.0"

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lg7/c;

    invoke-direct {v2, v0}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    sget-object v0, Lla/e0;->l:Lla/d0;

    new-instance v3, Lc5/o;

    invoke-direct {v3}, Lc5/o;-><init>()V

    sget-object v4, Lla/w;->m:Lla/b;

    const-string v4, "Proxy-Authenticate"

    invoke-static {v4}, Ly4/s;->t(Ljava/lang/String;)V

    const-string v5, "OkHttp-Preemptive"

    invoke-static {v5, v4}, Ly4/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lc5/o;->m(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Ly4/s;->i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lc5/o;->g()Lla/p;

    const-string v3, "body"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lla/a;->f:Lla/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :goto_3
    new-instance v0, Lpa/d;

    iget-object v1, p0, Lpa/s;->a:Loa/d;

    iget-object v2, p0, Lpa/s;->b:Lpa/r;

    iget v3, p0, Lpa/s;->c:I

    iget v4, p0, Lpa/s;->d:I

    iget v5, p0, Lpa/s;->e:I

    iget v6, p0, Lpa/s;->f:I

    iget-boolean v7, p0, Lpa/s;->g:Z

    iget-object v8, p0, Lpa/s;->k:Lpa/a;

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v9, p0

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v14}, Lpa/d;-><init>(Loa/d;Lpa/r;IIIIZLpa/a;Lpa/s;Lla/f0;Ljava/util/List;Lg7/c;IZ)V

    return-object v0

    :cond_6
    new-instance p0, Ljava/net/UnknownServiceException;

    const-string v0, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lla/r;)Z
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpa/s;->i:Lla/a;

    iget-object p0, p0, Lla/a;->h:Lla/r;

    iget v0, p1, Lla/r;->e:I

    iget v1, p0, Lla/r;->e:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lla/r;->d:Ljava/lang/String;

    iget-object p0, p0, Lla/r;->d:Ljava/lang/String;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lpa/q;)Z
    .locals 4

    iget-object v0, p0, Lpa/s;->o:Lu8/k;

    invoke-virtual {v0}, Lu8/k;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpa/s;->n:Lla/f0;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_5

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lpa/q;->o:I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Lpa/q;->m:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lpa/q;->d:Lla/f0;

    iget-object v0, v0, Lla/f0;->a:Lla/a;

    iget-object v0, v0, Lla/a;->h:Lla/r;

    iget-object v3, p0, Lpa/s;->i:Lla/a;

    iget-object v3, v3, Lla/a;->h:Lla/r;

    invoke-static {v0, v3}, Lma/e;->a(Lla/r;Lla/r;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lpa/q;->d:Lla/f0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p1

    if-eqz v2, :cond_5

    iput-object v2, p0, Lpa/s;->n:Lla/f0;

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5
    iget-object p1, p0, Lpa/s;->l:Lpa/x;

    if-eqz p1, :cond_6

    iget v0, p1, Lpa/x;->a:I

    iget-object p1, p1, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Lpa/s;->m:Lpa/y;

    if-nez p0, :cond_7

    :goto_1
    return v1

    :cond_7
    invoke-virtual {p0}, Lpa/y;->f()Z

    move-result p0

    return p0
.end method

.method public final e()Lla/a;
    .locals 0

    iget-object p0, p0, Lpa/s;->i:Lla/a;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {p0}, Lpa/a;->m()Z

    move-result p0

    return p0
.end method

.method public final g()Lu8/k;
    .locals 0

    iget-object p0, p0, Lpa/s;->o:Lu8/k;

    return-object p0
.end method

.method public final h()Lpa/v;
    .locals 6

    iget-object v0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v0}, Lpa/a;->c()Lpa/q;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, v1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v2}, Lpa/a;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Lpa/q;->f(Z)Z

    move-result v2

    monitor-enter v0

    if-nez v2, :cond_2

    :try_start_0
    iget-boolean v2, v0, Lpa/q;->m:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v3, v0, Lpa/q;->m:Z

    iget-object v3, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v3}, Lpa/a;->o()Ljava/net/Socket;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    iget-boolean v2, v0, Lpa/q;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, v0, Lpa/q;->d:Lla/f0;

    iget-object v2, v2, Lla/f0;->a:Lla/a;

    iget-object v2, v2, Lla/a;->h:Lla/r;

    invoke-virtual {p0, v2}, Lpa/s;->c(Lla/r;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    move-object v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v2}, Lpa/a;->o()Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v3

    move-object v3, v2

    move v2, v5

    :goto_2
    monitor-exit v0

    iget-object v4, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v4}, Lpa/a;->c()Lpa/q;

    move-result-object v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    new-instance v2, Lpa/t;

    invoke-direct {v2, v0}, Lpa/t;-><init>(Lpa/q;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {v3}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_7
    iget-object v0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_8

    iget-object v0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_0

    iget-object v0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :goto_3
    if-eqz v2, :cond_9

    return-object v2

    :cond_9
    invoke-virtual {p0, v1, v1}, Lpa/s;->i(Lpa/d;Ljava/util/List;)Lpa/t;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    iget-object v0, p0, Lpa/s;->o:Lu8/k;

    invoke-virtual {v0}, Lu8/k;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Lpa/s;->o:Lu8/k;

    invoke-virtual {p0}, Lu8/k;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpa/v;

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lpa/s;->a()Lpa/d;

    move-result-object v0

    iget-object v1, v0, Lpa/d;->k:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lpa/s;->i(Lpa/d;Ljava/util/List;)Lpa/t;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    return-object v0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final i(Lpa/d;Ljava/util/List;)Lpa/t;
    .locals 10

    iget-object v0, p0, Lpa/s;->b:Lpa/r;

    iget-object v1, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {v1}, Lpa/a;->l()Z

    move-result v1

    iget-object v2, p0, Lpa/s;->i:Lla/a;

    iget-object v3, p0, Lpa/s;->k:Lpa/a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpa/d;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "address"

    invoke-static {v2, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "connectionUser"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lpa/r;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v7, "iterator(...)"

    invoke-static {v0, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpa/q;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    monitor-enter v7

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v9, v7, Lpa/q;->l:Lsa/p;

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    if-nez v9, :cond_3

    :goto_3
    move v9, v4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    invoke-virtual {v7, v2, p2}, Lpa/q;->d(Lla/a;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v7}, Lpa/a;->a(Lpa/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v5

    :goto_4
    monitor-exit v7

    if-eqz v9, :cond_1

    invoke-virtual {v7, v1}, Lpa/q;->f(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    monitor-enter v7

    :try_start_1
    iput-boolean v5, v7, Lpa/q;->m:Z

    invoke-virtual {v3}, Lpa/a;->o()Ljava/net/Socket;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    if-eqz v8, :cond_1

    invoke-static {v8}, Lma/e;->c(Ljava/net/Socket;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v7

    throw p0

    :goto_5
    monitor-exit v7

    throw p0

    :cond_6
    move-object v7, v8

    :goto_6
    if-nez v7, :cond_7

    return-object v8

    :cond_7
    if-eqz p1, :cond_8

    iget-object p2, p1, Lpa/d;->j:Lla/f0;

    iput-object p2, p0, Lpa/s;->n:Lla/f0;

    iget-object p1, p1, Lpa/d;->q:Ljava/net/Socket;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lma/e;->c(Ljava/net/Socket;)V

    :cond_8
    iget-object p1, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {p1, v7}, Lpa/a;->e(Lpa/q;)V

    iget-object p0, p0, Lpa/s;->k:Lpa/a;

    invoke-virtual {p0, v7}, Lpa/a;->f(Lpa/q;)V

    new-instance p0, Lpa/t;

    invoke-direct {p0, v7}, Lpa/t;-><init>(Lpa/q;)V

    return-object p0
.end method
