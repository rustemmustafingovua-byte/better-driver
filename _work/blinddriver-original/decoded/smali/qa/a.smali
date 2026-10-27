.class public final Lqa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/s;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lla/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lqa/a;->a:I

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqa/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lla/v;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lqa/a;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lqa/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lla/c0;I)I
    .locals 1

    iget-object p0, p0, Lla/c0;->q:Lla/p;

    const-string v0, "Retry-After"

    invoke-virtual {p0, v0}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    const-string p1, "\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "valueOf(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final a(Lqa/f;)Lla/c0;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lqa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lqa/f;->e:Lg7/c;

    iget-object v6, v2, Lqa/f;->a:Lpa/p;

    sget-object v7, Lu8/r;->l:Lu8/r;

    move-object v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v11, v6, Lpa/p;->t:Lk4/h;

    if-nez v11, :cond_c

    monitor-enter v6

    :try_start_0
    iget-boolean v11, v6, Lpa/p;->v:Z

    if-nez v11, :cond_b

    iget-boolean v11, v6, Lpa/p;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_a

    monitor-exit v6

    if-eqz v0, :cond_3

    iget-object v0, v6, Lpa/p;->l:Lla/v;

    iget-object v12, v0, Lla/v;->C:Loa/d;

    iget-object v13, v6, Lpa/p;->n:Lpa/r;

    iget v14, v0, Lla/v;->x:I

    iget v15, v0, Lla/v;->y:I

    iget v11, v2, Lqa/f;->f:I

    iget v4, v2, Lqa/f;->g:I

    iget-boolean v3, v0, Lla/v;->e:Z

    iget-boolean v5, v0, Lla/v;->f:Z

    move/from16 v18, v3

    iget-object v3, v7, Lg7/c;->c:Ljava/lang/Object;

    check-cast v3, Lla/r;

    move/from16 v17, v4

    const-string v4, "url"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lla/r;->a:Ljava/lang/String;

    move/from16 v19, v5

    const-string v5, "https"

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lla/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_0

    iget-object v5, v0, Lla/v;->s:Lza/c;

    move-object/from16 v16, v4

    iget-object v4, v0, Lla/v;->t:Lla/g;

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v16

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_2
    new-instance v20, Lla/a;

    iget-object v4, v3, Lla/r;->d:Ljava/lang/String;

    iget v3, v3, Lla/r;->e:I

    iget-object v5, v0, Lla/v;->k:Lla/b;

    move/from16 v25, v3

    iget-object v3, v0, Lla/v;->n:Ljavax/net/SocketFactory;

    move-object/from16 v27, v3

    iget-object v3, v0, Lla/v;->m:Lla/b;

    move-object/from16 v31, v3

    iget-object v3, v0, Lla/v;->r:Ljava/util/List;

    move-object/from16 v32, v3

    iget-object v3, v0, Lla/v;->q:Ljava/util/List;

    iget-object v0, v0, Lla/v;->l:Ljava/net/ProxySelector;

    move-object/from16 v34, v0

    move-object/from16 v33, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v20

    invoke-direct/range {v23 .. v34}, Lla/a;-><init>(Ljava/lang/String;ILla/b;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lla/g;Lla/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    new-instance v0, Lpa/a;

    iget-object v3, v6, Lpa/p;->n:Lpa/r;

    iget-object v3, v3, Lpa/r;->a:Lpa/e;

    invoke-direct {v0, v6, v3, v2}, Lpa/a;-><init>(Lpa/p;Lpa/e;Lqa/f;)V

    iget-object v3, v6, Lpa/p;->l:Lla/v;

    iget-object v3, v3, Lla/v;->B:Lm2/j;

    move/from16 v16, v11

    new-instance v11, Lpa/s;

    move-object/from16 v22, v0

    move-object/from16 v21, v3

    invoke-direct/range {v11 .. v22}, Lpa/s;-><init>(Loa/d;Lpa/r;IIIIZZLla/a;Lm2/j;Lpa/a;)V

    iget-object v0, v6, Lpa/p;->l:Lla/v;

    iget-boolean v3, v0, Lla/v;->f:Z

    if-eqz v3, :cond_2

    new-instance v3, Lpa/k;

    iget-object v0, v0, Lla/v;->C:Loa/d;

    invoke-direct {v3, v11, v0}, Lpa/k;-><init>(Lpa/w;Loa/d;)V

    goto :goto_3

    :cond_2
    new-instance v3, Lpa/l;

    invoke-direct {v3, v11}, Lpa/l;-><init>(Lpa/s;)V

    :goto_3
    iput-object v3, v6, Lpa/p;->r:Lpa/h;

    :cond_3
    :try_start_1
    iget-boolean v0, v6, Lpa/p;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_9

    :try_start_2
    invoke-virtual {v2, v7}, Lqa/f;->b(Lg7/c;)Lla/c0;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Lla/c0;->b()Lla/b0;

    move-result-object v0

    iput-object v7, v0, Lla/b0;->a:Lg7/c;

    if-eqz v9, :cond_4

    invoke-static {v9}, Lwa/h;->x(Lla/c0;)Lla/c0;

    move-result-object v3

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    :goto_4
    iput-object v3, v0, Lla/b0;->j:Lla/c0;

    invoke-virtual {v0}, Lla/b0;->a()Lla/c0;

    move-result-object v9

    iget-object v0, v6, Lpa/p;->t:Lk4/h;

    invoke-virtual {v1, v9, v0}, Lqa/a;->b(Lla/c0;Lk4/h;)Lg7/c;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lpa/p;->j(Z)V

    return-object v9

    :cond_5
    :try_start_4
    iget-object v0, v9, Lla/c0;->r:Lla/e0;

    invoke-static {v0}, Lma/c;->b(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lpa/p;->j(Z)V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0, v6, v7}, Lqa/a;->c(Ljava/io/IOException;Lpa/p;Lg7/c;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v1, Lma/c;->a:[B

    const-string v1, "suppressed"

    invoke-static {v8, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v2}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v0

    :cond_8
    invoke-static {v8, v0}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lpa/p;->j(Z)V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    invoke-virtual {v6, v3}, Lpa/p;->j(Z)V

    throw v0

    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_b
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    monitor-exit v6

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v3, 0x1

    const-string v0, "Content-Encoding"

    const-string v4, "User-Agent"

    iget-object v1, v1, Lqa/a;->b:Ljava/lang/Object;

    check-cast v1, Lla/b;

    const-string v5, "gzip"

    const-string v6, "Accept-Encoding"

    const-string v7, "Connection"

    const-string v8, "Host"

    const-string v9, "Transfer-Encoding"

    const-string v10, "Content-Type"

    const-string v11, "Content-Length"

    iget-object v12, v2, Lqa/f;->e:Lg7/c;

    iget-object v13, v12, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast v13, Lla/p;

    invoke-virtual {v12}, Lg7/c;->a()Landroidx/lifecycle/a1;

    move-result-object v14

    iget-object v15, v12, Lg7/c;->c:Ljava/lang/Object;

    check-cast v15, Lla/r;

    iget-object v12, v12, Lg7/c;->e:Ljava/lang/Object;

    check-cast v12, Lla/a0;

    move-object/from16 v16, v4

    const-wide/16 v17, -0x1

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lla/a0;->b()Lla/t;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v3, Lla/t;->a:Ljava/lang/String;

    invoke-virtual {v14, v10, v3}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v12}, Lla/a0;->a()J

    move-result-wide v3

    cmp-long v12, v3, v17

    if-eqz v12, :cond_e

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v11, v3}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v14, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v3, Lc5/o;

    invoke-virtual {v3, v9}, Lc5/o;->m(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    const-string v3, "chunked"

    invoke-virtual {v14, v9, v3}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v14, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v3, Lc5/o;

    invoke-virtual {v3, v11}, Lc5/o;->m(Ljava/lang/String;)V

    :cond_f
    :goto_8
    invoke-virtual {v13, v8}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lma/e;->i(Lla/r;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v8, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v13, v7}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    const-string v4, "Keep-Alive"

    invoke-virtual {v14, v7, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v13, v6}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    const-string v4, "Range"

    invoke-virtual {v13, v4}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    invoke-virtual {v14, v6, v5}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "url"

    invoke-static {v15, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-virtual {v13, v4}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    const-string v6, "okhttp/5.1.0"

    invoke-virtual {v14, v4, v6}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance v4, Lg7/c;

    invoke-direct {v4, v14}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {v2, v4}, Lqa/f;->b(Lg7/c;)Lla/c0;

    move-result-object v2

    iget-object v6, v2, Lla/c0;->q:Lla/p;

    iget-object v7, v4, Lg7/c;->c:Ljava/lang/Object;

    check-cast v7, Lla/r;

    invoke-static {v1, v7, v6}, Lqa/e;->b(Lla/b;Lla/r;Lla/p;)V

    invoke-virtual {v2}, Lla/c0;->b()Lla/b0;

    move-result-object v1

    iput-object v4, v1, Lla/b0;->a:Lg7/c;

    if-eqz v3, :cond_16

    invoke-virtual {v6, v0}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    :cond_14
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v2}, Lqa/e;->a(Lla/c0;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v2, v2, Lla/c0;->r:Lla/e0;

    if-eqz v2, :cond_16

    new-instance v3, Lbb/l;

    invoke-virtual {v2}, Lla/e0;->e()Lbb/i;

    move-result-object v2

    invoke-direct {v3, v2}, Lbb/l;-><init>(Lbb/i;)V

    invoke-virtual {v6}, Lla/p;->c()Lc5/o;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc5/o;->m(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lc5/o;->m(Ljava/lang/String;)V

    invoke-virtual {v2}, Lc5/o;->g()Lla/p;

    move-result-object v0

    invoke-virtual {v0}, Lla/p;->c()Lc5/o;

    move-result-object v0

    iput-object v0, v1, Lla/b0;->f:Lc5/o;

    invoke-virtual {v6, v10}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v4, 0x0

    goto :goto_a

    :cond_15
    move-object v4, v0

    :goto_a
    new-instance v0, Lqa/g;

    new-instance v2, Lbb/p;

    invoke-direct {v2, v3}, Lbb/p;-><init>(Lbb/u;)V

    move-wide/from16 v5, v17

    invoke-direct {v0, v4, v5, v6, v2}, Lqa/g;-><init>(Ljava/lang/String;JLbb/p;)V

    iput-object v0, v1, Lla/b0;->g:Lla/e0;

    :cond_16
    invoke-virtual {v1}, Lla/b0;->a()Lla/c0;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lla/c0;Lk4/h;)Lg7/c;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lk4/h;->b()Lpa/q;

    move-result-object v1

    iget-object v1, v1, Lpa/q;->d:Lla/f0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lla/c0;->o:I

    iget-object v3, p1, Lla/c0;->l:Lg7/c;

    iget-object v3, v3, Lg7/c;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x134

    const/16 v7, 0x133

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_c

    const/16 v8, 0x191

    if-eq v2, v8, :cond_b

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_9

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :cond_1
    iget-object p0, p0, Lqa/a;->b:Ljava/lang/Object;

    check-cast p0, Lla/v;

    iget-boolean p0, p0, Lla/v;->e:Z

    if-nez p0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p0, p1, Lla/c0;->u:Lla/c0;

    if-eqz p0, :cond_3

    iget p0, p0, Lla/c0;->o:I

    if-ne p0, p2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {p1, v4}, Lqa/a;->d(Lla/c0;I)I

    move-result p0

    if-lez p0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p0, p1, Lla/c0;->l:Lg7/c;

    return-object p0

    :cond_5
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p1, v1, Lla/f0;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    iget-object p0, p0, Lqa/a;->b:Ljava/lang/Object;

    check-cast p0, Lla/v;

    iget-object p0, p0, Lla/v;->m:Lla/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p0, p1, Lla/c0;->u:Lla/c0;

    if-eqz p0, :cond_8

    iget p0, p0, Lla/c0;->o:I

    if-ne p0, p2, :cond_8

    goto/16 :goto_3

    :cond_8
    const p0, 0x7fffffff

    invoke-static {p1, p0}, Lqa/a;->d(Lla/c0;I)I

    move-result p0

    if-nez p0, :cond_12

    iget-object p0, p1, Lla/c0;->l:Lg7/c;

    return-object p0

    :cond_9
    if-eqz p2, :cond_12

    iget-object p0, p2, Lk4/h;->c:Ljava/lang/Object;

    check-cast p0, Lpa/h;

    invoke-interface {p0}, Lpa/h;->b()Lpa/w;

    move-result-object p0

    invoke-interface {p0}, Lpa/w;->e()Lla/a;

    move-result-object p0

    iget-object p0, p0, Lla/a;->h:Lla/r;

    iget-object p0, p0, Lla/r;->d:Ljava/lang/String;

    iget-object v1, p2, Lk4/h;->d:Ljava/lang/Object;

    check-cast v1, Lqa/d;

    invoke-interface {v1}, Lqa/d;->i()Lqa/c;

    move-result-object v1

    invoke-interface {v1}, Lqa/c;->g()Lla/f0;

    move-result-object v1

    iget-object v1, v1, Lla/f0;->a:Lla/a;

    iget-object v1, v1, Lla/a;->h:Lla/r;

    iget-object v1, v1, Lla/r;->d:Ljava/lang/String;

    invoke-static {p0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Lk4/h;->b()Lpa/q;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iput-boolean v5, p0, Lpa/q;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, p1, Lla/c0;->l:Lg7/c;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b
    iget-object p0, p0, Lqa/a;->b:Ljava/lang/Object;

    check-cast p0, Lla/v;

    iget-object p0, p0, Lla/v;->g:Lla/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    iget-object p0, p0, Lqa/a;->b:Ljava/lang/Object;

    check-cast p0, Lla/v;

    iget-boolean v1, p0, Lla/v;->h:Z

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const-string v1, "Location"

    iget-object v2, p1, Lla/c0;->q:Lla/p;

    invoke-virtual {v2, v1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v1, v0

    :cond_e
    iget-object v2, p1, Lla/c0;->l:Lg7/c;

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    iget-object v8, v2, Lg7/c;->c:Ljava/lang/Object;

    check-cast v8, Lla/r;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v9, Lla/q;

    invoke-direct {v9}, Lla/q;-><init>()V

    invoke-virtual {v9, v8, v1}, Lla/q;->c(Lla/r;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v9, v0

    :goto_1
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lla/q;->a()Lla/r;

    move-result-object v1

    goto :goto_2

    :cond_10
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    iget-object v8, v1, Lla/r;->a:Ljava/lang/String;

    iget-object v9, v2, Lg7/c;->c:Ljava/lang/Object;

    check-cast v9, Lla/r;

    iget-object v9, v9, Lla/r;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-boolean p0, p0, Lla/v;->i:Z

    if-nez p0, :cond_13

    :cond_12
    :goto_3
    return-object v0

    :cond_13
    invoke-virtual {v2}, Lg7/c;->a()Landroidx/lifecycle/a1;

    move-result-object p0

    invoke-static {v3}, Ll9/a;->t(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget p1, p1, Lla/c0;->o:I

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    if-eq p1, v6, :cond_14

    if-ne p1, v7, :cond_15

    :cond_14
    move v4, v5

    :cond_15
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    if-eq p1, v6, :cond_16

    if-eq p1, v7, :cond_16

    const-string p1, "GET"

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    goto :goto_4

    :cond_16
    if-eqz v4, :cond_17

    iget-object p1, v2, Lg7/c;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lla/a0;

    :cond_17
    invoke-virtual {p0, v3, v0}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    :goto_4
    if-nez v4, :cond_18

    const-string p1, "Transfer-Encoding"

    iget-object p2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p2, Lc5/o;

    invoke-virtual {p2, p1}, Lc5/o;->m(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    iget-object p2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p2, Lc5/o;

    invoke-virtual {p2, p1}, Lc5/o;->m(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    iget-object p2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p2, Lc5/o;

    invoke-virtual {p2, p1}, Lc5/o;->m(Ljava/lang/String;)V

    :cond_18
    iget-object p1, v2, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Lla/r;

    invoke-static {p1, v1}, Lma/e;->a(Lla/r;Lla/r;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "Authorization"

    iget-object p2, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p2, Lc5/o;

    invoke-virtual {p2, p1}, Lc5/o;->m(Ljava/lang/String;)V

    :cond_19
    iput-object v1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    new-instance p1, Lg7/c;

    invoke-direct {p1, p0}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/io/IOException;Lpa/p;Lg7/c;)Z
    .locals 0

    instance-of p3, p1, Lsa/a;

    iget-object p0, p0, Lqa/a;->b:Ljava/lang/Object;

    check-cast p0, Lla/v;

    iget-boolean p0, p0, Lla/v;->e:Z

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_3

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_7

    if-eqz p3, :cond_7

    goto :goto_0

    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    :goto_0
    iget-object p0, p2, Lpa/p;->y:Lk4/h;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lk4/h;->a:Z

    const/4 p1, 0x1

    if-ne p0, p1, :cond_7

    iget-object p0, p2, Lpa/p;->r:Lpa/h;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0}, Lpa/h;->b()Lpa/w;

    move-result-object p0

    iget-object p2, p2, Lpa/p;->y:Lk4/h;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lk4/h;->b()Lpa/q;

    move-result-object p2

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0, p2}, Lpa/w;->d(Lpa/q;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p1

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
