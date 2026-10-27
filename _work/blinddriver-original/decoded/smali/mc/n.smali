.class public final Lmc/n;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 8

    new-instance p0, Lmc/p;

    invoke-direct {p0}, Lmc/p;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1d

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_17

    const/16 v6, 0xa

    if-eq v4, v6, :cond_14

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_11

    const/16 v6, 0x40

    if-eq v4, v6, :cond_f

    const/16 v6, 0x42

    if-eq v4, v6, :cond_c

    const/16 v6, 0x48

    if-eq v4, v6, :cond_a

    const/16 v6, 0x4a

    if-eq v4, v6, :cond_7

    const/16 v6, 0x50

    if-eq v4, v6, :cond_5

    const/16 v6, 0x52

    if-eq v4, v6, :cond_2

    invoke-virtual {v0, v4, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lmc/p;->s:Lf8/c4;

    or-int/lit8 v3, v3, 0x10

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lmc/p;->s:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_6

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/p;->s:Lf8/c4;

    or-int/lit8 v3, v3, 0x10

    :cond_6
    iget-object v4, p0, Lmc/p;->s:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_8

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_8

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v5

    iput-object v5, p0, Lmc/p;->r:Lf8/e4;

    or-int/lit8 v3, v3, 0x8

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lmc/p;->r:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v6

    check-cast v5, Lf8/l4;

    invoke-virtual {v5, v6, v7}, Lf8/l4;->b(J)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_b

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v4

    iput-object v4, p0, Lmc/p;->r:Lf8/e4;

    or-int/lit8 v3, v3, 0x8

    :cond_b
    iget-object v4, p0, Lmc/p;->r:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v5

    check-cast v4, Lf8/l4;

    invoke-virtual {v4, v5, v6}, Lf8/l4;->b(J)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_d

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_d

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v5

    iput-object v5, p0, Lmc/p;->q:Lf8/e4;

    or-int/lit8 v3, v3, 0x4

    :cond_d
    :goto_3
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, p0, Lmc/p;->q:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v6

    check-cast v5, Lf8/l4;

    invoke-virtual {v5, v6, v7}, Lf8/l4;->b(J)V

    goto :goto_3

    :cond_e
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :cond_f
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_10

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v4

    iput-object v4, p0, Lmc/p;->q:Lf8/e4;

    or-int/lit8 v3, v3, 0x4

    :cond_10
    iget-object v4, p0, Lmc/p;->q:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v5

    check-cast v4, Lf8/l4;

    invoke-virtual {v4, v5, v6}, Lf8/l4;->b(J)V

    goto/16 :goto_0

    :cond_11
    iget v4, p0, Lmc/p;->n:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_12

    iget-object v4, p0, Lmc/p;->p:Lmc/m;

    invoke-virtual {v4}, Lmc/m;->v()Lmc/l;

    move-result-object v4

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    :goto_4
    sget-object v6, Lmc/m;->v:Lmc/k;

    invoke-virtual {p1, v6, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v6

    check-cast v6, Lmc/m;

    iput-object v6, p0, Lmc/p;->p:Lmc/m;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v6}, Lmc/l;->S(Lmc/m;)V

    invoke-virtual {v4}, Lmc/l;->R()Lmc/m;

    move-result-object v4

    iput-object v4, p0, Lmc/p;->p:Lmc/m;

    :cond_13
    iget v4, p0, Lmc/p;->n:I

    or-int/2addr v4, v5

    iput v4, p0, Lmc/p;->n:I

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_15

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_15

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v5

    iput-object v5, p0, Lmc/p;->o:Lf8/e4;

    or-int/lit8 v3, v3, 0x1

    :cond_15
    :goto_5
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_16

    iget-object v5, p0, Lmc/p;->o:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v6

    check-cast v5, Lf8/l4;

    invoke-virtual {v5, v6, v7}, Lf8/l4;->b(J)V

    goto :goto_5

    :cond_16
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :cond_17
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_18

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v4

    iput-object v4, p0, Lmc/p;->o:Lf8/e4;

    or-int/lit8 v3, v3, 0x1

    :cond_18
    iget-object v4, p0, Lmc/p;->o:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v5

    check-cast v4, Lf8/l4;

    invoke-virtual {v4, v5, v6}, Lf8/l4;->b(J)V
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_6
    :try_start_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_7
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_19

    iget-object p2, p0, Lmc/p;->o:Lf8/e4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_19
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lmc/p;->q:Lf8/e4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_1a
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lmc/p;->r:Lf8/e4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_1b
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lmc/p;->s:Lf8/c4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_1c
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_1d
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lmc/p;->o:Lf8/e4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1e
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lmc/p;->q:Lf8/e4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1f
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_20

    iget-object p1, p0, Lmc/p;->r:Lf8/e4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_20
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_21

    iget-object p1, p0, Lmc/p;->s:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_21
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
