.class public final Lsa/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# instance fields
.field public final l:J

.field public m:Z

.field public final n:Lbb/g;

.field public final o:Lbb/g;

.field public p:Z

.field public final synthetic q:Lsa/x;


# direct methods
.method public constructor <init>(Lsa/x;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/v;->q:Lsa/x;

    iput-wide p2, p0, Lsa/v;->l:J

    iput-boolean p4, p0, Lsa/v;->m:Z

    new-instance p1, Lbb/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/v;->n:Lbb/g;

    new-instance p1, Lbb/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/v;->o:Lbb/g;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lsa/v;->q:Lsa/x;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lsa/v;->p:Z

    iget-object v1, p0, Lsa/v;->o:Lbb/g;

    iget-wide v2, v1, Lbb/g;->m:J

    invoke-virtual {v1}, Lbb/g;->P()V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lsa/v;->q:Lsa/x;

    sget-object v1, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v0, v0, Lsa/x;->b:Lsa/p;

    invoke-virtual {v0, v2, v3}, Lsa/p;->k(J)V

    :cond_0
    iget-object p0, p0, Lsa/v;->q:Lsa/x;

    invoke-virtual {p0}, Lsa/x;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final read(Lbb/g;J)J
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_e

    :goto_0
    iget-object v6, v0, Lsa/v;->q:Lsa/x;

    monitor-enter v6

    :try_start_0
    iget-object v7, v6, Lsa/x;->b:Lsa/p;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lsa/x;->i:Lsa/u;

    iget-boolean v8, v7, Lsa/u;->n:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_1

    iget-boolean v7, v7, Lsa/u;->l:Z

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v9

    :goto_2
    if-eqz v7, :cond_2

    iget-object v8, v6, Lsa/x;->j:Lsa/w;

    invoke-virtual {v8}, Lbb/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Lsa/x;->f()Lsa/b;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lsa/v;->m:Z

    if-nez v8, :cond_3

    iget-object v8, v6, Lsa/x;->m:Ljava/io/IOException;

    if-nez v8, :cond_4

    new-instance v8, Lsa/c0;

    invoke-virtual {v6}, Lsa/x;->f()Lsa/b;

    move-result-object v11

    invoke-static {v11}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v8, v11}, Lsa/c0;-><init>(Lsa/b;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_4
    iget-boolean v11, v0, Lsa/v;->p:Z

    if-nez v11, :cond_c

    iget-object v11, v0, Lsa/v;->o:Lbb/g;

    iget-wide v12, v11, Lbb/g;->m:J

    cmp-long v14, v12, v4

    const-wide/16 v15, -0x1

    if-lez v14, :cond_6

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v11, v1, v12, v13}, Lbb/g;->read(Lbb/g;J)J

    move-result-wide v18

    iget-object v9, v6, Lsa/x;->c:Lta/a;

    const-wide/16 v20, 0x0

    const/16 v22, 0x2

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v22}, Lta/a;->b(Lta/a;JJI)V

    iget-object v9, v6, Lsa/x;->c:Lta/a;

    invoke-virtual {v9}, Lta/a;->a()J

    move-result-wide v11

    if-nez v8, :cond_5

    iget-object v9, v6, Lsa/x;->b:Lsa/p;

    iget-object v9, v9, Lsa/p;->B:Lsa/b0;

    invoke-virtual {v9}, Lsa/b0;->a()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-long v13, v9

    cmp-long v9, v11, v13

    if-ltz v9, :cond_5

    iget-object v9, v6, Lsa/x;->b:Lsa/p;

    iget v13, v6, Lsa/x;->a:I

    invoke-virtual {v9, v13, v11, v12}, Lsa/p;->q(IJ)V

    iget-object v9, v6, Lsa/x;->c:Lta/a;

    const-wide/16 v21, 0x0

    const/16 v25, 0x1

    move-object/from16 v20, v9

    move-wide/from16 v23, v11

    invoke-static/range {v20 .. v25}, Lta/a;->b(Lta/a;JJI)V

    :cond_5
    move v9, v10

    goto :goto_6

    :cond_6
    iget-boolean v11, v0, Lsa/v;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_7

    if-nez v8, :cond_7

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    move-wide/from16 v18, v15

    goto :goto_6

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    move v9, v10

    goto :goto_5

    :goto_6
    if-eqz v7, :cond_8

    :try_start_4
    iget-object v7, v6, Lsa/x;->j:Lsa/w;

    invoke-virtual {v7}, Lsa/w;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit v6

    iget-object v6, v0, Lsa/v;->q:Lsa/x;

    iget-object v6, v6, Lsa/x;->b:Lsa/p;

    iget-object v6, v6, Lsa/p;->A:Lsa/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_9

    goto/16 :goto_0

    :cond_9
    cmp-long v0, v18, v15

    if-eqz v0, :cond_a

    return-wide v18

    :cond_a
    if-nez v8, :cond_b

    return-wide v15

    :cond_b
    throw v8

    :cond_c
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    if-eqz v7, :cond_d

    :try_start_6
    iget-object v1, v6, Lsa/x;->j:Lsa/w;

    invoke-virtual {v1}, Lsa/w;->k()V

    :cond_d
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    monitor-exit v6

    throw v0

    :cond_e
    const-string v0, "byteCount < 0: "

    invoke-static {v2, v3, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lsa/v;->q:Lsa/x;

    iget-object p0, p0, Lsa/x;->j:Lsa/w;

    return-object p0
.end method
