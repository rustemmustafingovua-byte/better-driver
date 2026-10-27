.class public final Lmc/f0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lmc/h0;

    invoke-direct {p0}, Lmc/h0;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_11

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_b

    const/16 v5, 0x12

    if-eq v3, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x22

    if-eq v3, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_2

    invoke-virtual {v0, v3, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

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
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmc/h0;->s:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_3
    iget-object v3, p0, Lmc/h0;->s:Ljava/util/List;

    sget-object v4, Lmc/j;->r:Lmc/h;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lmc/j;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmc/h0;->r:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_5
    iget-object v3, p0, Lmc/h0;->r:Ljava/util/List;

    sget-object v4, Lmc/l0;->y:Lmc/i0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lmc/l0;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmc/h0;->q:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_7
    iget-object v3, p0, Lmc/h0;->q:Ljava/util/List;

    sget-object v4, Lmc/r0;->x:Lmc/p0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lmc/r0;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget v3, p0, Lmc/h0;->n:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmc/h0;->p:Lmc/p;

    invoke-virtual {v3}, Lmc/p;->v()Lmc/o;

    move-result-object v3

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lmc/p;->v:Lmc/n;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    check-cast v5, Lmc/p;

    iput-object v5, p0, Lmc/h0;->p:Lmc/p;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v5}, Lmc/o;->S(Lmc/p;)V

    invoke-virtual {v3}, Lmc/o;->R()Lmc/p;

    move-result-object v3

    iput-object v3, p0, Lmc/h0;->p:Lmc/p;

    :cond_a
    iget v3, p0, Lmc/h0;->n:I

    or-int/2addr v3, v4

    iput v3, p0, Lmc/h0;->n:I

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmc/h0;->o:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_c
    iget-object v3, p0, Lmc/h0;->o:Ljava/util/List;

    sget-object v4, Lmc/b0;->w:Lmc/z;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lmc/b0;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_d

    iget-object p2, p0, Lmc/h0;->o:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lmc/h0;->o:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_e

    iget-object p2, p0, Lmc/h0;->q:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lmc/h0;->q:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_f

    iget-object p2, p0, Lmc/h0;->r:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lmc/h0;->r:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_10

    iget-object p2, p0, Lmc/h0;->s:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lmc/h0;->s:Ljava/util/List;

    :cond_10
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_11
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lmc/h0;->o:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmc/h0;->o:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_13

    iget-object p1, p0, Lmc/h0;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmc/h0;->q:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_14

    iget-object p1, p0, Lmc/h0;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmc/h0;->r:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_15

    iget-object p1, p0, Lmc/h0;->s:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmc/h0;->s:Ljava/util/List;

    :cond_15
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
