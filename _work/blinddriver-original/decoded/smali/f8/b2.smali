.class public final Lf8/b2;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lf8/d2;

    invoke-direct {p0}, Lf8/d2;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_e

    const/16 v6, 0xa

    if-eq v4, v6, :cond_b

    if-eq v4, v3, :cond_9

    const/16 v6, 0x12

    if-eq v4, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_5

    const/16 v6, 0x22

    if-eq v4, v6, :cond_4

    const/16 v6, 0x32

    if-eq v4, v6, :cond_2

    invoke-virtual {p2, v4, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_3

    new-instance v5, Lf8/j4;

    invoke-direct {v5}, Lf8/j4;-><init>()V

    iput-object v5, p0, Lf8/d2;->s:Lf8/k4;

    or-int/lit8 v2, v2, 0x10

    :cond_3
    iget-object v5, p0, Lf8/d2;->s:Lf8/k4;

    invoke-interface {v5, v4}, Lf8/k4;->h(Lf8/j;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/d2;->n:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lf8/d2;->n:I

    iput-object v4, p0, Lf8/d2;->r:Ljava/io/Serializable;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v6, p0, Lf8/d2;->n:I

    or-int/2addr v5, v6

    iput v5, p0, Lf8/d2;->n:I

    iput-object v4, p0, Lf8/d2;->q:Ljava/io/Serializable;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lf8/d2;->p:Lf8/c4;

    or-int/lit8 v2, v2, 0x2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lf8/d2;->p:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lf8/d2;->p:Lf8/c4;

    or-int/lit8 v2, v2, 0x2

    :cond_a
    iget-object v4, p0, Lf8/d2;->p:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_c

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_c

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lf8/d2;->o:Lf8/c4;

    or-int/lit8 v2, v2, 0x1

    :cond_c
    :goto_2
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v5, p0, Lf8/d2;->o:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_f

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lf8/d2;->o:Lf8/c4;

    or-int/lit8 v2, v2, 0x1

    :cond_f
    iget-object v4, p0, Lf8/d2;->o:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance v1, Lf8/h4;

    invoke-direct {v1, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, v1, Lf8/h4;->l:Lf8/o4;

    throw v1

    :goto_4
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lf8/d2;->o:Lf8/c4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_10
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_11

    iget-object v1, p0, Lf8/d2;->p:Lf8/c4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_11
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_12

    iget-object v0, p0, Lf8/d2;->s:Lf8/k4;

    invoke-interface {v0}, Lf8/k4;->i()Lf8/k4;

    move-result-object v0

    iput-object v0, p0, Lf8/d2;->s:Lf8/k4;

    :cond_12
    invoke-virtual {p2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lf8/d2;->o:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_14
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_15

    iget-object p1, p0, Lf8/d2;->p:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_15
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_16

    iget-object p1, p0, Lf8/d2;->s:Lf8/k4;

    invoke-interface {p1}, Lf8/k4;->i()Lf8/k4;

    move-result-object p1

    iput-object p1, p0, Lf8/d2;->s:Lf8/k4;

    :cond_16
    invoke-virtual {p2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
