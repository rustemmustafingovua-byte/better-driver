.class public final Lsa/w;
.super Lbb/e;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lsa/x;


# direct methods
.method public constructor <init>(Lsa/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/w;->m:Lsa/x;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 4

    iget-object v0, p0, Lsa/w;->m:Lsa/x;

    sget-object v1, Lsa/b;->s:Lsa/b;

    invoke-virtual {v0, v1}, Lsa/x;->e(Lsa/b;)V

    iget-object p0, p0, Lsa/w;->m:Lsa/x;

    iget-object p0, p0, Lsa/x;->b:Lsa/p;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsa/p;->y:J

    iget-wide v2, p0, Lsa/p;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    :try_start_1
    iput-wide v2, p0, Lsa/p;->x:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsa/p;->z:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lsa/p;->s:Loa/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsa/p;->n:Ljava/lang/String;

    const-string v3, " ping"

    invoke-static {v1, v2, v3}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lod/x4;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Loa/c;->b(Loa/c;Ljava/lang/String;Li9/a;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lbb/e;->i()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
