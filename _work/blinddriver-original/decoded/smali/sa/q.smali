.class public final Lsa/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqa/d;


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public final a:Lpa/q;

.field public final b:Lqa/f;

.field public final c:Lsa/p;

.field public volatile d:Lsa/x;

.field public final e:Lla/w;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lma/e;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsa/q;->g:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lma/e;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsa/q;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lla/v;Lpa/q;Lqa/f;Lsa/p;)V
    .locals 1

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsa/q;->a:Lpa/q;

    iput-object p3, p0, Lsa/q;->b:Lqa/f;

    iput-object p4, p0, Lsa/q;->c:Lsa/p;

    iget-object p1, p1, Lla/v;->r:Ljava/util/List;

    sget-object p2, Lla/w;->r:Lla/w;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lla/w;->q:Lla/w;

    :goto_0
    iput-object p2, p0, Lsa/q;->e:Lla/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lsa/q;->d:Lsa/x;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lsa/x;->i:Lsa/u;

    invoke-virtual {p0}, Lsa/u;->close()V

    return-void
.end method

.method public final b()Z
    .locals 4

    iget-object p0, p0, Lsa/q;->d:Lsa/x;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsa/x;->h:Lsa/v;

    iget-boolean v2, v1, Lsa/v;->m:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v1, v1, Lsa/v;->o:Lbb/g;

    invoke-virtual {v1}, Lbb/g;->l()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    monitor-exit p0

    if-ne v1, v3, :cond_1

    return v3

    :cond_1
    return v0

    :goto_1
    monitor-exit p0

    throw v0

    :cond_2
    return v0
.end method

.method public final c(Lla/c0;)J
    .locals 0

    invoke-static {p1}, Lqa/e;->a(Lla/c0;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-static {p1}, Lma/e;->e(Lla/c0;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsa/q;->f:Z

    iget-object p0, p0, Lsa/q;->d:Lsa/x;

    if-eqz p0, :cond_0

    sget-object v0, Lsa/b;->s:Lsa/b;

    invoke-virtual {p0, v0}, Lsa/x;->e(Lsa/b;)V

    :cond_0
    return-void
.end method

.method public final d(Lla/c0;)Lbb/u;
    .locals 0

    iget-object p0, p0, Lsa/q;->d:Lsa/x;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lsa/x;->h:Lsa/v;

    return-object p0
.end method

.method public final e(Lg7/c;J)Lbb/t;
    .locals 0

    iget-object p0, p0, Lsa/q;->d:Lsa/x;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lsa/x;->i:Lsa/u;

    return-object p0
.end method

.method public final f(Z)Lla/b0;
    .locals 10

    iget-object v0, p0, Lsa/q;->d:Lsa/x;

    if-eqz v0, :cond_f

    monitor-enter v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, v0, Lsa/x;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lsa/x;->f()Lsa/b;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-nez p1, :cond_3

    iget-object v3, v0, Lsa/x;->b:Lsa/p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lsa/x;->i:Lsa/u;

    iget-boolean v4, v3, Lsa/u;->n:Z

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lsa/u;->l:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v1, v0, Lsa/x;->j:Lsa/w;

    invoke-virtual {v1}, Lbb/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_5
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v1, v0, Lsa/x;->j:Lsa/w;

    invoke-virtual {v1}, Lsa/w;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_4
    iget-object p1, v0, Lsa/x;->j:Lsa/w;

    invoke-virtual {p1}, Lsa/w;->k()V

    :cond_6
    throw p0

    :cond_7
    iget-object v1, v0, Lsa/x;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lsa/x;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "removeFirst(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lla/p;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lsa/q;->e:Lla/w;

    const-string v0, "protocol"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lla/p;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v2

    move-object v6, v4

    :goto_5
    if-ge v5, v3, :cond_a

    invoke-virtual {v1, v5}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":status"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpc/h;->r(Ljava/lang/String;)Ld1/c0;

    move-result-object v6

    goto :goto_6

    :cond_8
    sget-object v9, Lsa/q;->h:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_c

    new-instance v1, Lla/b0;

    invoke-direct {v1}, Lla/b0;-><init>()V

    iput-object p0, v1, Lla/b0;->b:Lla/w;

    iget p0, v6, Ld1/c0;->b:I

    iput p0, v1, Lla/b0;->c:I

    iget-object p0, v6, Ld1/c0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lla/b0;->d:Ljava/lang/String;

    new-instance p0, Lla/p;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lla/p;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lla/p;->c()Lc5/o;

    move-result-object p0

    iput-object p0, v1, Lla/b0;->f:Lc5/o;

    if-eqz p1, :cond_b

    iget p0, v1, Lla/b0;->c:I

    const/16 p1, 0x64

    if-ne p0, p1, :cond_b

    return-object v4

    :cond_b
    return-object v1

    :cond_c
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :try_start_5
    iget-object p0, v0, Lsa/x;->m:Ljava/io/IOException;

    if-eqz p0, :cond_e

    goto :goto_7

    :cond_e
    new-instance p0, Lsa/c0;

    invoke-virtual {v0}, Lsa/x;->f()Lsa/b;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lsa/c0;-><init>(Lsa/b;)V

    :goto_7
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    monitor-exit v0

    throw p0

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "stream wasn\'t created"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lg7/c;)V
    .locals 14

    iget-object v0, p0, Lsa/q;->d:Lsa/x;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lg7/c;->e:Ljava/lang/Object;

    check-cast v0, Lla/a0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p1, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast v3, Lla/p;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lla/p;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lsa/d;

    sget-object v6, Lsa/d;->f:Lbb/j;

    iget-object v7, p1, Lg7/c;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lsa/d;-><init>(Lbb/j;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lsa/d;

    sget-object v6, Lsa/d;->g:Lbb/j;

    iget-object v7, p1, Lg7/c;->c:Ljava/lang/Object;

    check-cast v7, Lla/r;

    const-string v8, "url"

    invoke-static {v7, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lla/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lla/r;->d()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-direct {v5, v6, v8}, Lsa/d;-><init>(Lbb/j;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    iget-object p1, p1, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast p1, Lla/p;

    invoke-virtual {p1, v5}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v5, Lsa/d;

    sget-object v6, Lsa/d;->i:Lbb/j;

    invoke-direct {v5, v6, p1}, Lsa/d;-><init>(Lbb/j;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lsa/d;

    sget-object v5, Lsa/d;->h:Lbb/j;

    iget-object v6, v7, Lla/r;->a:Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Lsa/d;-><init>(Lbb/j;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lla/p;->size()I

    move-result p1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_6

    invoke-virtual {v3, v5}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "US"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lsa/q;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lsa/d;

    invoke-virtual {v3, v5}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lsa/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lsa/q;->c:Lsa/p;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v9, v0, 0x1

    iget-object p1, v8, Lsa/p;->H:Lsa/y;

    monitor-enter p1

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v8, Lsa/p;->p:I

    const v5, 0x3fffffff    # 1.9999999f

    if-le v3, v5, :cond_7

    sget-object v3, Lsa/b;->r:Lsa/b;

    invoke-virtual {v8, v3}, Lsa/p;->e(Lsa/b;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_7
    :goto_2
    iget-boolean v3, v8, Lsa/p;->q:Z

    if-nez v3, :cond_d

    iget v7, v8, Lsa/p;->p:I

    add-int/lit8 v3, v7, 0x2

    iput v3, v8, Lsa/p;->p:I

    new-instance v6, Lsa/x;

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lsa/x;-><init>(ILsa/p;ZZLla/p;)V

    if-eqz v0, :cond_8

    iget-wide v10, v8, Lsa/p;->E:J

    iget-wide v12, v8, Lsa/p;->F:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_8

    iget-wide v10, v6, Lsa/x;->d:J

    iget-wide v12, v6, Lsa/x;->e:J

    cmp-long v0, v10, v12

    if-ltz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-virtual {v6}, Lsa/x;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :try_start_2
    monitor-exit v8

    iget-object v0, v8, Lsa/p;->H:Lsa/y;

    invoke-virtual {v0, v9, v7, v4}, Lsa/y;->k(ZILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    if-eqz v1, :cond_b

    iget-object p1, v8, Lsa/p;->H:Lsa/y;

    invoke-virtual {p1}, Lsa/y;->flush()V

    :cond_b
    iput-object v6, p0, Lsa/q;->d:Lsa/x;

    iget-boolean p1, p0, Lsa/q;->f:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lsa/q;->d:Lsa/x;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p1, p1, Lsa/x;->j:Lsa/w;

    iget-object v0, p0, Lsa/q;->b:Lqa/f;

    iget v0, v0, Lqa/f;->g:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lbb/w;->g(J)Lbb/w;

    iget-object p1, p0, Lsa/q;->d:Lsa/x;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p1, p1, Lsa/x;->k:Lsa/w;

    iget-object p0, p0, Lsa/q;->b:Lqa/f;

    iget p0, p0, Lqa/f;->h:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lbb/w;->g(J)Lbb/w;

    return-void

    :cond_c
    iget-object p0, p0, Lsa/q;->d:Lsa/x;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object p1, Lsa/b;->s:Lsa/b;

    invoke-virtual {p0, p1}, Lsa/x;->e(Lsa/b;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_d
    :try_start_3
    new-instance p0, Lsa/a;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    monitor-exit v8

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit p1

    throw p0
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lsa/q;->c:Lsa/p;

    invoke-virtual {p0}, Lsa/p;->flush()V

    return-void
.end method

.method public final i()Lqa/c;
    .locals 0

    iget-object p0, p0, Lsa/q;->a:Lpa/q;

    return-object p0
.end method
