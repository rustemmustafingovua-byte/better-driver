.class public final Lf8/w0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lf8/y0;

    invoke-direct {p0}, Lf8/y0;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-nez v2, :cond_17

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x0

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

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/y0;->n:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lf8/y0;->n:I

    iput-object v4, p0, Lf8/y0;->z:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lf8/y0;->s:Lf8/c4;

    or-int/lit8 v3, v3, 0x10

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lf8/y0;->s:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto :goto_0

    :sswitch_3
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_3

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lf8/y0;->s:Lf8/c4;

    or-int/lit8 v3, v3, 0x10

    :cond_3
    iget-object v4, p0, Lf8/y0;->s:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lf8/k;->e(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v5

    iput-object v5, p0, Lf8/y0;->r:Lf8/c4;

    or-int/lit8 v3, v3, 0x8

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lf8/y0;->r:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v6

    check-cast v5, Lf8/z3;

    invoke-virtual {v5, v6}, Lf8/z3;->b(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v4}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_6

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lf8/y0;->r:Lf8/c4;

    or-int/lit8 v3, v3, 0x8

    :cond_6
    iget-object v4, p0, Lf8/y0;->r:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :sswitch_6
    iget v4, p0, Lf8/y0;->n:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    iget-object v4, p0, Lf8/y0;->y:Lf8/e2;

    invoke-virtual {v4}, Lf8/e2;->v()Lf8/a2;

    move-result-object v5

    :cond_7
    sget-object v4, Lf8/e2;->q:Lf8/z1;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lf8/e2;

    iput-object v4, p0, Lf8/y0;->y:Lf8/e2;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v4}, Lf8/a2;->S(Lf8/e2;)V

    invoke-virtual {v5}, Lf8/a2;->R()Lf8/e2;

    move-result-object v4

    iput-object v4, p0, Lf8/y0;->y:Lf8/e2;

    :cond_8
    iget v4, p0, Lf8/y0;->n:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lf8/y0;->n:I

    goto/16 :goto_0

    :sswitch_7
    iget v4, p0, Lf8/y0;->n:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lf8/y0;->x:Lf8/c1;

    invoke-virtual {v4}, Lf8/c1;->b0()Lf8/a1;

    move-result-object v5

    :cond_9
    sget-object v4, Lf8/c1;->M:Lf8/z0;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    check-cast v4, Lf8/c1;

    iput-object v4, p0, Lf8/y0;->x:Lf8/c1;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4}, Lf8/a1;->X(Lf8/c1;)V

    invoke-virtual {v5}, Lf8/a1;->W()Lf8/c1;

    move-result-object v4

    iput-object v4, p0, Lf8/y0;->x:Lf8/c1;

    :cond_a
    iget v4, p0, Lf8/y0;->n:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lf8/y0;->n:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/y0;->w:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_b
    iget-object v4, p0, Lf8/y0;->w:Ljava/util/List;

    sget-object v5, Lf8/q0;->B:Lf8/m0;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/y0;->v:Ljava/util/List;

    or-int/lit16 v3, v3, 0x80

    :cond_c
    iget-object v4, p0, Lf8/y0;->v:Ljava/util/List;

    sget-object v5, Lf8/v1;->t:Lf8/t1;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/y0;->u:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_d
    iget-object v4, p0, Lf8/y0;->u:Ljava/util/List;

    sget-object v5, Lf8/z;->v:Lf8/u;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/y0;->t:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_e
    iget-object v4, p0, Lf8/y0;->t:Ljava/util/List;

    sget-object v5, Lf8/t;->A:Lf8/l;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_f

    new-instance v5, Lf8/j4;

    invoke-direct {v5}, Lf8/j4;-><init>()V

    iput-object v5, p0, Lf8/y0;->q:Lf8/k4;

    or-int/lit8 v3, v3, 0x4

    :cond_f
    iget-object v5, p0, Lf8/y0;->q:Lf8/k4;

    invoke-interface {v5, v4}, Lf8/k4;->h(Lf8/j;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/y0;->n:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lf8/y0;->n:I

    iput-object v4, p0, Lf8/y0;->p:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/y0;->n:I

    or-int/2addr v5, v6

    iput v5, p0, Lf8/y0;->n:I

    iput-object v4, p0, Lf8/y0;->o:Ljava/io/Serializable;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_4
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_10

    iget-object p2, p0, Lf8/y0;->q:Lf8/k4;

    invoke-interface {p2}, Lf8/k4;->i()Lf8/k4;

    move-result-object p2

    iput-object p2, p0, Lf8/y0;->q:Lf8/k4;

    :cond_10
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_11

    iget-object p2, p0, Lf8/y0;->t:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/y0;->t:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_12

    iget-object p2, p0, Lf8/y0;->u:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/y0;->u:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v3, 0x80

    if-eqz p2, :cond_13

    iget-object p2, p0, Lf8/y0;->v:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/y0;->v:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_14

    iget-object p2, p0, Lf8/y0;->w:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/y0;->w:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_15

    iget-object p2, p0, Lf8/y0;->r:Lf8/c4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_15
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_16

    iget-object p2, p0, Lf8/y0;->s:Lf8/c4;

    check-cast p2, Lf8/e;

    iput-boolean v1, p2, Lf8/e;->l:Z

    :cond_16
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_17
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_18

    iget-object p1, p0, Lf8/y0;->q:Lf8/k4;

    invoke-interface {p1}, Lf8/k4;->i()Lf8/k4;

    move-result-object p1

    iput-object p1, p0, Lf8/y0;->q:Lf8/k4;

    :cond_18
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_19

    iget-object p1, p0, Lf8/y0;->t:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/y0;->t:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lf8/y0;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/y0;->u:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v3, 0x80

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lf8/y0;->v:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/y0;->v:Ljava/util/List;

    :cond_1b
    and-int/lit16 p1, v3, 0x100

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lf8/y0;->w:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/y0;->w:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lf8/y0;->r:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1d
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lf8/y0;->s:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v1, p1, Lf8/e;->l:Z

    :cond_1e
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x4a -> :sswitch_6
        0x50 -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
    .end sparse-switch
.end method
