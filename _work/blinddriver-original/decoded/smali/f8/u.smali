.class public final Lf8/u;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lf8/z;

    invoke-direct {p0}, Lf8/z;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_b

    const/16 v5, 0x12

    if-eq v3, v5, :cond_9

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
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_3

    new-instance v4, Lf8/j4;

    invoke-direct {v4}, Lf8/j4;-><init>()V

    iput-object v4, p0, Lf8/z;->s:Lf8/k4;

    or-int/lit8 v2, v2, 0x10

    :cond_3
    iget-object v4, p0, Lf8/z;->s:Lf8/k4;

    invoke-interface {v4, v3}, Lf8/k4;->h(Lf8/j;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/z;->r:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_5
    iget-object v3, p0, Lf8/z;->r:Ljava/util/List;

    sget-object v4, Lf8/y;->s:Lf8/w;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget v3, p0, Lf8/z;->n:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    iget-object v3, p0, Lf8/z;->q:Lf8/c0;

    invoke-virtual {v3}, Lf8/c0;->z()Lf8/b0;

    move-result-object v3

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lf8/c0;->u:Lf8/a0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lf8/c0;

    iput-object v4, p0, Lf8/z;->q:Lf8/c0;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v4}, Lf8/b0;->X(Lf8/c0;)V

    invoke-virtual {v3}, Lf8/b0;->W()Lf8/c0;

    move-result-object v3

    iput-object v3, p0, Lf8/z;->q:Lf8/c0;

    :cond_8
    iget v3, p0, Lf8/z;->n:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lf8/z;->n:I

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/z;->p:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_a
    iget-object v3, p0, Lf8/z;->p:Ljava/util/List;

    sget-object v4, Lf8/f0;->t:Lf8/d0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iget v5, p0, Lf8/z;->n:I

    or-int/2addr v4, v5

    iput v4, p0, Lf8/z;->n:I

    iput-object v3, p0, Lf8/z;->o:Ljava/io/Serializable;
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

    if-eqz p2, :cond_c

    iget-object p2, p0, Lf8/z;->p:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/z;->p:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_d

    iget-object p2, p0, Lf8/z;->r:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/z;->r:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_e

    iget-object p2, p0, Lf8/z;->s:Lf8/k4;

    invoke-interface {p2}, Lf8/k4;->i()Lf8/k4;

    move-result-object p2

    iput-object p2, p0, Lf8/z;->s:Lf8/k4;

    :cond_e
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_10

    iget-object p1, p0, Lf8/z;->p:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/z;->p:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_11

    iget-object p1, p0, Lf8/z;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/z;->r:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_12

    iget-object p1, p0, Lf8/z;->s:Lf8/k4;

    invoke-interface {p1}, Lf8/k4;->i()Lf8/k4;

    move-result-object p1

    iput-object p1, p0, Lf8/z;->s:Lf8/k4;

    :cond_12
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
