.class public final Lmc/i0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 8

    new-instance p0, Lmc/l0;

    invoke-direct {p0}, Lmc/l0;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-nez v2, :cond_19

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {v0, v4, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v4

    if-nez v4, :cond_0

    :sswitch_0
    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto/16 :goto_8

    :sswitch_1
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    :goto_1
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    invoke-static {v6}, Lmc/k0;->b(I)Lmc/k0;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v5, v6}, Lf8/f5;->z(II)V

    goto :goto_1

    :cond_1
    and-int/lit8 v7, v3, 0x40

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lmc/l0;->u:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_2
    iget-object v7, p0, Lmc/l0;->u:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-static {v4}, Lmc/k0;->b(I)Lmc/k0;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v5, v4}, Lf8/f5;->z(II)V

    goto :goto_0

    :cond_4
    and-int/lit8 v5, v3, 0x40

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmc/l0;->u:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_5
    iget-object v5, p0, Lmc/l0;->u:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x20

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_6

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v5

    iput-object v5, p0, Lmc/l0;->t:Lf8/e4;

    or-int/lit8 v3, v3, 0x20

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lmc/l0;->t:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v6

    check-cast v5, Lf8/l4;

    invoke-virtual {v5, v6, v7}, Lf8/l4;->b(J)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_8

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v4

    iput-object v4, p0, Lmc/l0;->t:Lf8/e4;

    or-int/lit8 v3, v3, 0x20

    :cond_8
    iget-object v4, p0, Lmc/l0;->t:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v5

    check-cast v4, Lf8/l4;

    invoke-virtual {v4, v5, v6}, Lf8/l4;->b(J)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_9

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_9

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lmc/l0;->s:Lf8/c4;

    or-int/lit8 v3, v3, 0x10

    :cond_9
    :goto_3
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Lmc/l0;->s:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_b

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/l0;->s:Lf8/c4;

    or-int/lit8 v3, v3, 0x10

    :cond_b
    iget-object v4, p0, Lmc/l0;->s:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :sswitch_7
    iget v4, p0, Lmc/l0;->n:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c

    iget-object v4, p0, Lmc/l0;->r:Lmc/y;

    invoke-virtual {v4}, Lmc/y;->A()Lmc/x;

    move-result-object v4

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    sget-object v5, Lmc/y;->w:Lmc/w;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    check-cast v5, Lmc/y;

    iput-object v5, p0, Lmc/l0;->r:Lmc/y;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v5}, Lmc/x;->S(Lmc/y;)V

    invoke-virtual {v4}, Lmc/x;->R()Lmc/y;

    move-result-object v4

    iput-object v4, p0, Lmc/l0;->r:Lmc/y;

    :cond_d
    iget v4, p0, Lmc/l0;->n:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lmc/l0;->n:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_e

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_e

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lmc/l0;->q:Lf8/c4;

    or-int/lit8 v3, v3, 0x4

    :cond_e
    :goto_5
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lmc/l0;->q:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_5

    :cond_f
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_10

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/l0;->q:Lf8/c4;

    or-int/lit8 v3, v3, 0x4

    :cond_10
    iget-object v4, p0, Lmc/l0;->q:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_11

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_11

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lmc/l0;->p:Lf8/c4;

    or-int/lit8 v3, v3, 0x2

    :cond_11
    :goto_6
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_12

    iget-object v5, p0, Lmc/l0;->p:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_6

    :cond_12
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_13

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/l0;->p:Lf8/c4;

    or-int/lit8 v3, v3, 0x2

    :cond_13
    iget-object v4, p0, Lmc/l0;->p:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :sswitch_c
    iget v4, p0, Lmc/l0;->n:I

    or-int/2addr v4, v6

    iput v4, p0, Lmc/l0;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lmc/l0;->o:J
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_7
    :try_start_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_8
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lmc/l0;->p:Lf8/c4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_14
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_15

    iget-object p2, p0, Lmc/l0;->q:Lf8/c4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_15
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_16

    iget-object p2, p0, Lmc/l0;->s:Lf8/c4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_16
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_17

    iget-object p2, p0, Lmc/l0;->t:Lf8/e4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_17
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_18

    iget-object p2, p0, Lmc/l0;->u:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lmc/l0;->u:Ljava/util/List;

    :cond_18
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_19
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lmc/l0;->p:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1a
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmc/l0;->q:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1b
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lmc/l0;->s:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1c
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lmc/l0;->t:Lf8/e4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1d
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lmc/l0;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmc/l0;->u:Ljava/util/List;

    :cond_1e
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x40 -> :sswitch_6
        0x42 -> :sswitch_5
        0x48 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method
