.class public final Lmc/t;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lmc/v;

    invoke-direct {p0}, Lmc/v;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_b

    const/16 v5, 0x22

    if-eq v3, v5, :cond_9

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_7

    const/16 v5, 0x82

    if-eq v3, v5, :cond_6

    const/16 v5, 0x8a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x100

    if-eq v3, v5, :cond_4

    const/16 v5, 0x108

    if-eq v3, v5, :cond_3

    const/16 v5, 0x112

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

    iget v4, p0, Lmc/v;->n:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lmc/v;->n:I

    iput-object v3, p0, Lmc/v;->v:Ljava/io/Serializable;

    goto :goto_0

    :cond_3
    iget v3, p0, Lmc/v;->n:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lmc/v;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v3

    iput-wide v3, p0, Lmc/v;->u:J

    goto :goto_0

    :cond_4
    iget v3, p0, Lmc/v;->n:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lmc/v;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v3

    iput-wide v3, p0, Lmc/v;->t:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iget v4, p0, Lmc/v;->n:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lmc/v;->n:I

    iput-object v3, p0, Lmc/v;->s:Ljava/io/Serializable;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iget v4, p0, Lmc/v;->n:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lmc/v;->n:I

    iput-object v3, p0, Lmc/v;->r:Ljava/io/Serializable;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_8

    new-instance v4, Lf8/j4;

    invoke-direct {v4}, Lf8/j4;-><init>()V

    iput-object v4, p0, Lmc/v;->q:Lf8/k4;

    or-int/lit8 v2, v2, 0x4

    :cond_8
    iget-object v4, p0, Lmc/v;->q:Lf8/k4;

    invoke-interface {v4, v3}, Lf8/k4;->h(Lf8/j;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    new-instance v4, Lf8/j4;

    invoke-direct {v4}, Lf8/j4;-><init>()V

    iput-object v4, p0, Lmc/v;->p:Lf8/k4;

    or-int/lit8 v2, v2, 0x2

    :cond_a
    iget-object v4, p0, Lmc/v;->p:Lf8/k4;

    invoke-interface {v4, v3}, Lf8/k4;->h(Lf8/j;)V

    goto/16 :goto_0

    :cond_b
    iget v3, p0, Lmc/v;->n:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    iget-object v3, p0, Lmc/v;->o:Lmc/s;

    invoke-virtual {v3}, Lmc/s;->z()Lmc/r;

    move-result-object v3

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lmc/s;->u:Lmc/q;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    check-cast v5, Lmc/s;

    iput-object v5, p0, Lmc/v;->o:Lmc/s;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v5}, Lmc/r;->S(Lmc/s;)V

    invoke-virtual {v3}, Lmc/r;->R()Lmc/s;

    move-result-object v3

    iput-object v3, p0, Lmc/v;->o:Lmc/s;

    :cond_d
    iget v3, p0, Lmc/v;->n:I

    or-int/2addr v3, v4

    iput v3, p0, Lmc/v;->n:I
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

    if-eqz p2, :cond_e

    iget-object p2, p0, Lmc/v;->p:Lf8/k4;

    invoke-interface {p2}, Lf8/k4;->i()Lf8/k4;

    move-result-object p2

    iput-object p2, p0, Lmc/v;->p:Lf8/k4;

    :cond_e
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_f

    iget-object p2, p0, Lmc/v;->q:Lf8/k4;

    invoke-interface {p2}, Lf8/k4;->i()Lf8/k4;

    move-result-object p2

    iput-object p2, p0, Lmc/v;->q:Lf8/k4;

    :cond_f
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_11

    iget-object p1, p0, Lmc/v;->p:Lf8/k4;

    invoke-interface {p1}, Lf8/k4;->i()Lf8/k4;

    move-result-object p1

    iput-object p1, p0, Lmc/v;->p:Lf8/k4;

    :cond_11
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_12

    iget-object p1, p0, Lmc/v;->q:Lf8/k4;

    invoke-interface {p1}, Lf8/k4;->i()Lf8/k4;

    move-result-object p1

    iput-object p1, p0, Lmc/v;->q:Lf8/k4;

    :cond_12
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
