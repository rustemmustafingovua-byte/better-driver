.class public final Lmc/c0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lmc/e0;

    invoke-direct {p0}, Lmc/e0;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_8

    const/16 v6, 0x12

    if-eq v4, v6, :cond_6

    const/16 v6, 0x88

    if-eq v4, v6, :cond_5

    const/16 v6, 0x90

    if-eq v4, v6, :cond_4

    const/16 v6, 0x98

    if-eq v4, v6, :cond_3

    const/16 v6, 0xa0

    if-eq v4, v6, :cond_2

    invoke-virtual {v0, v4, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_2
    iget v4, p0, Lmc/e0;->n:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lmc/e0;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lmc/e0;->s:J

    goto :goto_0

    :cond_3
    iget v4, p0, Lmc/e0;->n:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lmc/e0;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lmc/e0;->r:J

    goto :goto_0

    :cond_4
    iget v4, p0, Lmc/e0;->n:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lmc/e0;->n:I

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    iput v4, p0, Lmc/e0;->t:I

    goto :goto_0

    :cond_5
    iget v4, p0, Lmc/e0;->n:I

    or-int/2addr v4, v3

    iput v4, p0, Lmc/e0;->n:I

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    iput v4, p0, Lmc/e0;->q:I

    goto :goto_0

    :cond_6
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmc/e0;->p:Ljava/util/List;

    move v2, v3

    :cond_7
    iget-object v4, p0, Lmc/e0;->p:Ljava/util/List;

    sget-object v5, Lmc/h0;->v:Lmc/f0;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    check-cast v5, Lmc/h0;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget v4, p0, Lmc/e0;->n:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    iget-object v4, p0, Lmc/e0;->o:Lmc/o0;

    invoke-virtual {v4}, Lmc/o0;->v()Lmc/n0;

    move-result-object v4

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    sget-object v6, Lmc/o0;->q:Lmc/m0;

    invoke-virtual {p1, v6, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v6

    check-cast v6, Lmc/o0;

    iput-object v6, p0, Lmc/e0;->o:Lmc/o0;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v6}, Lmc/n0;->S(Lmc/o0;)V

    invoke-virtual {v4}, Lmc/n0;->R()Lmc/o0;

    move-result-object v4

    iput-object v4, p0, Lmc/e0;->o:Lmc/o0;

    :cond_a
    iget v4, p0, Lmc/e0;->n:I

    or-int/2addr v4, v5

    iput v4, p0, Lmc/e0;->n:I
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_3
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lmc/e0;->p:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lmc/e0;->p:Ljava/util/List;

    :cond_b
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_d

    iget-object p1, p0, Lmc/e0;->p:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmc/e0;->p:Ljava/util/List;

    :cond_d
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
