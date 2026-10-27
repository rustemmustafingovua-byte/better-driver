.class public final Lgd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lgd/a;

.field public static final i:Lla/t;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljd/b;

.field public final c:Li9/a;

.field public final d:Li9/a;

.field public final e:Li9/a;

.field public final f:Lla/v;

.field public final g:Ljava/lang/Object;

.field public volatile h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgd/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgd/d;->Companion:Lgd/a;

    sget-object v0, Lla/t;->c:Lr9/i;

    const-string v0, "application/json"

    invoke-static {v0}, Ll7/a;->o(Ljava/lang/String;)Lla/t;

    move-result-object v0

    sput-object v0, Lgd/d;->i:Lla/t;

    return-void
.end method

.method public constructor <init>(Ljd/b;Li9/a;Li9/a;Lp/a1;Lla/v;I)V
    .locals 1

    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    new-instance p4, La1/b;

    const/16 v0, 0x13

    invoke-direct {p4, v0}, La1/b;-><init>(I)V

    :cond_0
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_1

    sget-object p5, Lgd/h;->b:Lla/v;

    :cond_1
    const-string p6, "client"

    invoke-static {p5, p6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p6, "https://blinddriver.duckdns.org"

    iput-object p6, p0, Lgd/d;->a:Ljava/lang/String;

    iput-object p1, p0, Lgd/d;->b:Ljd/b;

    iput-object p2, p0, Lgd/d;->c:Li9/a;

    iput-object p3, p0, Lgd/d;->d:Li9/a;

    iput-object p4, p0, Lgd/d;->e:Li9/a;

    invoke-virtual {p5}, Lla/v;->a()Lla/u;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lla/u;->i:Z

    iput-boolean p2, p1, Lla/u;->j:Z

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string p3, "unit"

    invoke-static {p2, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p2, 0x1e

    invoke-static {p2, p3}, Lma/e;->b(J)I

    move-result p2

    iput p2, p1, Lla/u;->w:I

    new-instance p2, Lla/v;

    invoke-direct {p2, p1}, Lla/v;-><init>(Lla/u;)V

    iput-object p2, p0, Lgd/d;->f:Lla/v;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgd/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lla/c0;J)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lla/c0;->r:Lla/e0;

    invoke-virtual {p0}, Lla/e0;->e()Lbb/i;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lbb/i;->A(J)Z

    invoke-interface {p0}, Lbb/i;->a()Lbb/g;

    move-result-object v0

    invoke-interface {p0}, Lbb/i;->a()Lbb/g;

    move-result-object v1

    iget-wide v1, v1, Lbb/g;->m:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1, p2, v1}, Lbb/g;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static c(Lgd/d;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgd/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgd/d;->b:Ljd/b;

    const-string v2, "log_secret"

    invoke-virtual {v1, v2}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lgd/d;->d(Z)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;
    .locals 25

    move-object/from16 v0, p0

    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    :goto_0
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p4

    :goto_1
    and-int/lit8 v1, p5, 0x10

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x4000

    :goto_2
    move-wide v10, v1

    goto :goto_3

    :cond_2
    const-wide/32 v1, 0x80000

    goto :goto_2

    :goto_3
    iget-object v12, v0, Lgd/d;->b:Ljd/b;

    const-string v13, "log_secret"

    invoke-virtual {v12, v13}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lgd/d;->c(Lgd/d;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v14, "register"

    if-eqz v1, :cond_e

    sget-object v2, Lgd/d;->Companion:Lgd/a;

    const/4 v15, 0x0

    if-nez v9, :cond_4

    new-array v3, v15, [B

    goto :goto_4

    :cond_4
    move-object v3, v9

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lgd/a;->a([B)Ljava/lang/String;

    move-result-object v6

    move v2, v15

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_d

    new-instance v3, Landroidx/lifecycle/a1;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroidx/lifecycle/a1;-><init>(I)V

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Lgd/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    const-string v5, "bodySha256"

    invoke-static {v6, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v5, 0x3e8

    move-object/from16 p4, v1

    move v8, v2

    int-to-long v1, v5

    div-long v16, v16, v1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Led/l;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lgd/d;->c:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    new-instance v15, Lt8/j;

    move-object/from16 v16, v3

    const-string v3, "X-BD-Install"

    invoke-direct {v15, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "X-BD-Ts"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    move-object/from16 v17, v1

    const-string v1, "X-BD-Nonce"

    invoke-direct {v3, v1, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    move-object/from16 v18, v2

    const-string v2, "X-BD-Sha256"

    invoke-direct {v1, v2, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    move-object/from16 v1, p4

    move/from16 p4, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v14

    move-object v14, v2

    move-object v2, v9

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Led/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lt8/j;

    const-string v5, "X-BD-Sig"

    invoke-direct {v3, v5, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v8, v9, v14, v3}, [Lt8/j;

    move-result-object v3

    invoke-static {v3}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lla/a0;->Companion:Lla/z;

    const/4 v5, 0x0

    if-nez v17, :cond_6

    new-array v8, v5, [B

    goto :goto_7

    :cond_6
    move-object/from16 v8, v17

    :goto_7
    array-length v9, v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v8

    int-to-long v14, v4

    move-wide/from16 v19, v14

    int-to-long v14, v5

    move-object/from16 p5, v6

    int-to-long v5, v9

    move-wide/from16 v23, v5

    move-wide/from16 v21, v14

    invoke-static/range {v19 .. v24}, Lma/c;->a(JJJ)V

    new-instance v5, Lla/y;

    sget-object v6, Lgd/d;->i:Lla/t;

    invoke-direct {v5, v6, v9, v8}, Lla/y;-><init>(Lla/t;I[B)V

    invoke-virtual {v7, v3, v5}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    :cond_7
    move-object/from16 p5, v6

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lla/a0;->a:Lla/x;

    invoke-virtual {v7, v3, v5}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    goto :goto_8

    :cond_8
    const-string v3, "GET"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    :goto_9
    iget-object v3, v0, Lgd/d;->f:Lla/v;

    new-instance v6, Lg7/c;

    invoke-direct {v6, v7}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lpa/p;

    invoke-direct {v7, v3, v6}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v7}, Lpa/p;->i()Lla/c0;

    move-result-object v3

    :try_start_0
    invoke-static {v3, v10, v11}, Lgd/d;->b(Lla/c0;J)Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lla/c0;->o:I

    const/16 v8, 0x191

    if-ne v7, v8, :cond_c

    if-nez p4, :cond_c

    invoke-virtual {v12, v13}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    move-object v6, v5

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :goto_a
    if-nez v6, :cond_a

    invoke-virtual {v12, v13}, Ljd/b;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lgd/d;->c(Lgd/d;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object v6, v1

    :cond_a
    move-object/from16 v1, v18

    goto :goto_b

    :cond_b
    new-instance v0, Ljava/io/IOException;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_b
    invoke-virtual {v3}, Lla/c0;->close()V

    add-int/lit8 v3, p4, 0x1

    move-object v14, v1

    move v2, v3

    move-object v1, v6

    move-object/from16 v7, v16

    move-object/from16 v9, v17

    const/4 v15, 0x0

    move-object/from16 v6, p5

    goto/16 :goto_5

    :cond_c
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lt8/j;

    invoke-direct {v1, v0, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lla/c0;->close()V

    return-object v1

    :goto_c
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "auth"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v1, v14

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lgd/d;->a:Ljava/lang/String;

    invoke-static {p0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d(Z)Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lgd/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lia/z;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lia/z;-><init>(I)V

    iget-object v2, p0, Lgd/d;->c:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "install_id"

    invoke-static {v0, v3, v2}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lgd/d;->e:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v5, v3}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v6, v3, Ljava/lang/Number;

    if-eqz v6, :cond_3

    check-cast v3, Ljava/lang/Number;

    new-instance v6, Lia/s;

    invoke-direct {v6, v3, v4}, Lia/s;-><init>(Ljava/io/Serializable;Z)V

    invoke-virtual {v0, v6, v5}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v0, v5, v3}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lia/z;->b()Lia/y;

    move-result-object v0

    invoke-virtual {v0}, Lia/y;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroidx/lifecycle/a1;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroidx/lifecycle/a1;-><init>(I)V

    const-string v3, "/v1/register"

    invoke-virtual {p0, v3}, Lgd/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    sget-object v3, Lla/a0;->Companion:Lla/z;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lr9/a;->a:Ljava/nio/charset/Charset;

    sget-object v6, Lgd/d;->i:Lla/t;

    if-eqz v6, :cond_6

    invoke-static {v6}, Lla/t;->a(Lla/t;)Ljava/nio/charset/Charset;

    move-result-object v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; charset=utf-8"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v6}, Ll7/a;->o(Ljava/lang/String;)Lla/t;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    goto :goto_1

    :catch_0
    move-object v6, v1

    goto :goto_1

    :cond_5
    move-object v5, v7

    :cond_6
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v3, "getBytes(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    array-length v5, v0

    int-to-long v7, v5

    int-to-long v9, v4

    int-to-long v11, v3

    invoke-static/range {v7 .. v12}, Lma/c;->a(JJJ)V

    new-instance v5, Lla/y;

    invoke-direct {v5, v6, v3, v0}, Lla/y;-><init>(Lla/t;I[B)V

    const-string v0, "POST"

    invoke-virtual {v2, v0, v5}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    new-instance v0, Lg7/c;

    invoke-direct {v0, v2}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    iget-object v2, p0, Lgd/d;->f:Lla/v;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lpa/p;

    invoke-direct {v3, v2, v0}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v3}, Lpa/p;->i()Lla/c0;

    move-result-object v2

    const-wide/16 v5, 0x1000

    :try_start_1
    invoke-static {v2, v5, v6}, Lgd/d;->b(Lla/c0;J)Ljava/lang/String;

    move-result-object v0

    iget v3, v2, Lla/c0;->o:I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_9

    const-string p1, "\"secret\"\\s*:\\s*\"([0-9a-f]{64})\""

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v3, "compile(...)"

    invoke-static {p1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v3, "matcher(...)"

    invoke-static {p1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v0}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lr9/g;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Lr9/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lgd/d;->b:Ljd/b;

    const-string v0, "log_secret"

    invoke-virtual {p0, v0, p1}, Ljd/b;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lla/c0;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v2}, Lla/c0;->close()V

    return-object v1

    :cond_9
    const/16 v0, 0x199

    if-ne v3, v0, :cond_a

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lgd/d;->d:Li9/a;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lgd/d;->d(Z)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lla/c0;->close()V

    return-object p0

    :cond_a
    invoke-virtual {v2}, Lla/c0;->close()V

    return-object v1

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2f

    const/4 v2, 0x0

    aput-char v1, v0, v2

    iget-object p0, p0, Lgd/d;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
