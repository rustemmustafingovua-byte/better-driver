.class public final Lsa/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final K:Lsa/b0;


# instance fields
.field public final A:Lsa/c;

.field public final B:Lsa/b0;

.field public C:Lsa/b0;

.field public final D:Lta/a;

.field public E:J

.field public F:J

.field public final G:Ljava/net/Socket;

.field public final H:Lsa/y;

.field public final I:Lod/x2;

.field public final J:Ljava/util/LinkedHashSet;

.field public final l:Lsa/n;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:Z

.field public final r:Loa/d;

.field public final s:Loa/c;

.field public final t:Loa/c;

.field public final u:Loa/c;

.field public final v:Lsa/a0;

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsa/b0;

    invoke-direct {v0}, Lsa/b0;-><init>()V

    const/4 v1, 0x4

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lsa/b0;->c(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lsa/b0;->c(II)V

    sput-object v0, Lsa/p;->K:Lsa/b0;

    return-void
.end method

.method public constructor <init>(Lf8/u3;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lf8/u3;->f:Ljava/lang/Object;

    check-cast v0, Lsa/n;

    iput-object v0, p0, Lsa/p;->l:Lsa/n;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lf8/u3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lsa/p;->n:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lsa/p;->p:I

    iget-object v0, p1, Lf8/u3;->a:Ljava/lang/Object;

    check-cast v0, Loa/d;

    iput-object v0, p0, Lsa/p;->r:Loa/d;

    invoke-virtual {v0}, Loa/d;->d()Loa/c;

    move-result-object v2

    iput-object v2, p0, Lsa/p;->s:Loa/c;

    invoke-virtual {v0}, Loa/d;->d()Loa/c;

    move-result-object v2

    iput-object v2, p0, Lsa/p;->t:Loa/c;

    invoke-virtual {v0}, Loa/d;->d()Loa/c;

    move-result-object v0

    iput-object v0, p0, Lsa/p;->u:Loa/c;

    sget-object v0, Lsa/a0;->a:Lsa/a0;

    iput-object v0, p0, Lsa/p;->v:Lsa/a0;

    iget-object v0, p1, Lf8/u3;->g:Ljava/lang/Object;

    check-cast v0, Lsa/c;

    iput-object v0, p0, Lsa/p;->A:Lsa/c;

    new-instance v0, Lsa/b0;

    invoke-direct {v0}, Lsa/b0;-><init>()V

    const/4 v2, 0x4

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v2, v3}, Lsa/b0;->c(II)V

    iput-object v0, p0, Lsa/p;->B:Lsa/b0;

    sget-object v0, Lsa/p;->K:Lsa/b0;

    iput-object v0, p0, Lsa/p;->C:Lsa/b0;

    new-instance v2, Lta/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lta/a;-><init>(I)V

    iput-object v2, p0, Lsa/p;->D:Lta/a;

    invoke-virtual {v0}, Lsa/b0;->a()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lsa/p;->F:J

    iget-object v0, p1, Lf8/u3;->b:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lsa/p;->G:Ljava/net/Socket;

    new-instance v0, Lsa/y;

    iget-object v2, p1, Lf8/u3;->e:Ljava/lang/Object;

    check-cast v2, Lbb/h;

    if-eqz v2, :cond_1

    invoke-direct {v0, v2}, Lsa/y;-><init>(Lbb/h;)V

    iput-object v0, p0, Lsa/p;->H:Lsa/y;

    new-instance v0, Lod/x2;

    new-instance v2, Lsa/t;

    iget-object p1, p1, Lf8/u3;->d:Ljava/lang/Object;

    check-cast p1, Lbb/i;

    if-eqz p1, :cond_0

    invoke-direct {v2, p1}, Lsa/t;-><init>(Lbb/i;)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v2, v1}, Lod/x2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lsa/p;->I:Lod/x2;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lsa/p;->J:Ljava/util/LinkedHashSet;

    return-void

    :cond_0
    const-string p0, "source"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "sink"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "socket"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "connectionName"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final b(Lsa/b;Lsa/b;Ljava/io/IOException;)V
    .locals 3

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    :try_start_0
    invoke-virtual {p0, p1}, Lsa/p;->e(Lsa/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Lsa/x;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    check-cast p1, [Lsa/x;

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lsa/x;->c(Lsa/b;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lsa/p;->H:Lsa/y;

    invoke-virtual {p1}, Lsa/y;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lsa/p;->G:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lsa/p;->s:Loa/c;

    invoke-virtual {p1}, Loa/c;->e()V

    iget-object p1, p0, Lsa/p;->t:Loa/c;

    invoke-virtual {p1}, Loa/c;->e()V

    iget-object p0, p0, Lsa/p;->u:Loa/c;

    invoke-virtual {p0}, Loa/c;->e()V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final c(I)Lsa/x;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsa/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lsa/b;->n:Lsa/b;

    sget-object v1, Lsa/b;->s:Lsa/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d(I)Lsa/x;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsa/x;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Lsa/b;)V
    .locals 3

    iget-object v0, p0, Lsa/p;->H:Lsa/y;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lsa/p;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lsa/p;->q:Z

    iget v1, p0, Lsa/p;->o:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object p0, p0, Lsa/p;->H:Lsa/y;

    sget-object v2, Lma/c;->a:[B

    invoke-virtual {p0, v1, p1, v2}, Lsa/y;->e(ILsa/b;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lsa/p;->H:Lsa/y;

    invoke-virtual {p0}, Lsa/y;->flush()V

    return-void
.end method

.method public final k(J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsa/p;->D:Lta/a;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lta/a;->b(Lta/a;JJI)V

    iget-object p1, p0, Lsa/p;->D:Lta/a;

    invoke-virtual {p1}, Lta/a;->a()J

    move-result-wide v3

    iget-object p1, p0, Lsa/p;->B:Lsa/b0;

    invoke-virtual {p1}, Lsa/b0;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v3, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lsa/p;->q(IJ)V

    iget-object v0, p0, Lsa/p;->D:Lta/a;

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lta/a;->b(Lta/a;JJI)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lsa/p;->A:Lsa/c;

    iget-object p2, p0, Lsa/p;->D:Lta/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "windowCounter"

    invoke-static {p2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final m(IZLbb/g;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lsa/p;->H:Lsa/y;

    invoke-virtual {p0, p2, p1, p3, v3}, Lsa/y;->c(ZILbb/g;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lsa/p;->E:J

    iget-wide v6, p0, Lsa/p;->F:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    iget-object v2, p0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lsa/p;->H:Lsa/y;

    iget v4, v4, Lsa/y;->n:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lsa/p;->E:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lsa/p;->E:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lsa/p;->H:Lsa/y;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lsa/y;->c(ZILbb/g;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final n(ILsa/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsa/p;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsa/j;

    invoke-direct {v1, p0, p1, p2}, Lsa/j;-><init>(Lsa/p;ILsa/b;)V

    iget-object p0, p0, Lsa/p;->s:Loa/c;

    invoke-static {p0, v0, v1}, Loa/c;->b(Loa/c;Ljava/lang/String;Li9/a;)V

    return-void
.end method

.method public final q(IJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsa/p;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsa/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lsa/i;-><init>(Lsa/p;IJ)V

    iget-object p0, p0, Lsa/p;->s:Loa/c;

    invoke-static {p0, v0, v1}, Loa/c;->b(Loa/c;Ljava/lang/String;Li9/a;)V

    return-void
.end method
