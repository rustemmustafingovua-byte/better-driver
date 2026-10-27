.class public final Lmc/k;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lmc/m;

    invoke-direct {p0}, Lmc/m;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_19

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p2, v3, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v5

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

    move-result v3

    invoke-virtual {p1, v3}, Lf8/k;->e(I)I

    move-result v3

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Lf8/g;

    new-array v4, v4, [Z

    invoke-direct {v5, v4, v0}, Lf8/g;-><init>([ZI)V

    iput-object v5, p0, Lmc/m;->s:Lf8/a4;

    or-int/lit8 v2, v2, 0x20

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lmc/m;->s:Lf8/a4;

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v5

    check-cast v4, Lf8/g;

    invoke-virtual {v4, v5}, Lf8/g;->b(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Lf8/k;->d(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_3

    new-instance v3, Lf8/g;

    new-array v4, v4, [Z

    invoke-direct {v3, v4, v0}, Lf8/g;-><init>([ZI)V

    iput-object v3, p0, Lmc/m;->s:Lf8/a4;

    or-int/lit8 v2, v2, 0x20

    :cond_3
    iget-object v3, p0, Lmc/m;->s:Lf8/a4;

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    check-cast v3, Lf8/g;

    invoke-virtual {v3, v4}, Lf8/g;->b(Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v3

    invoke-virtual {p1, v3}, Lf8/k;->e(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/m;->r:Lf8/c4;

    or-int/lit8 v2, v2, 0x10

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lmc/m;->r:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->o()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v3}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_6

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v3

    iput-object v3, p0, Lmc/m;->r:Lf8/c4;

    or-int/lit8 v2, v2, 0x10

    :cond_6
    iget-object v3, p0, Lmc/m;->r:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->o()I

    move-result v4

    check-cast v3, Lf8/z3;

    invoke-virtual {v3, v4}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v3

    invoke-virtual {p1, v3}, Lf8/k;->e(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/m;->q:Lf8/c4;

    or-int/lit8 v2, v2, 0x8

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lmc/m;->q:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->o()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v3}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_9

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v3

    iput-object v3, p0, Lmc/m;->q:Lf8/c4;

    or-int/lit8 v2, v2, 0x8

    :cond_9
    iget-object v3, p0, Lmc/m;->q:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->o()I

    move-result v4

    check-cast v3, Lf8/z3;

    invoke-virtual {v3, v4}, Lf8/z3;->b(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v3

    invoke-virtual {p1, v3}, Lf8/k;->e(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_a

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v4

    iput-object v4, p0, Lmc/m;->p:Lf8/e4;

    or-int/lit8 v2, v2, 0x4

    :cond_a
    :goto_4
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Lmc/m;->p:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v5

    check-cast v4, Lf8/l4;

    invoke-virtual {v4, v5, v6}, Lf8/l4;->b(J)V

    goto :goto_4

    :cond_b
    invoke-virtual {p1, v3}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_c

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v3

    iput-object v3, p0, Lmc/m;->p:Lf8/e4;

    or-int/lit8 v2, v2, 0x4

    :cond_c
    iget-object v3, p0, Lmc/m;->p:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v4

    check-cast v3, Lf8/l4;

    invoke-virtual {v3, v4, v5}, Lf8/l4;->b(J)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v3

    invoke-virtual {p1, v3}, Lf8/k;->e(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_d

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v4

    iput-object v4, p0, Lmc/m;->o:Lf8/e4;

    or-int/lit8 v2, v2, 0x2

    :cond_d
    :goto_5
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Lmc/m;->o:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v5

    check-cast v4, Lf8/l4;

    invoke-virtual {v4, v5, v6}, Lf8/l4;->b(J)V

    goto :goto_5

    :cond_e
    invoke-virtual {p1, v3}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_f

    invoke-static {}, Lf8/y3;->u()Lf8/l4;

    move-result-object v3

    iput-object v3, p0, Lmc/m;->o:Lf8/e4;

    or-int/lit8 v2, v2, 0x2

    :cond_f
    iget-object v3, p0, Lmc/m;->o:Lf8/e4;

    invoke-virtual {p1}, Lf8/k;->p()J

    move-result-wide v4

    check-cast v3, Lf8/l4;

    invoke-virtual {v3, v4, v5}, Lf8/l4;->b(J)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v3

    invoke-virtual {p1, v3}, Lf8/k;->e(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_10

    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_10

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v4

    iput-object v4, p0, Lmc/m;->n:Lf8/c4;

    or-int/lit8 v2, v2, 0x1

    :cond_10
    :goto_6
    invoke-virtual {p1}, Lf8/k;->b()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, p0, Lmc/m;->n:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v5

    check-cast v4, Lf8/z3;

    invoke-virtual {v4, v5}, Lf8/z3;->b(I)V

    goto :goto_6

    :cond_11
    invoke-virtual {p1, v3}, Lf8/k;->d(I)V

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_12

    invoke-static {}, Lf8/y3;->t()Lf8/z3;

    move-result-object v3

    iput-object v3, p0, Lmc/m;->n:Lf8/c4;

    or-int/lit8 v2, v2, 0x1

    :cond_12
    iget-object v3, p0, Lmc/m;->n:Lf8/c4;

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    check-cast v3, Lf8/z3;

    invoke-virtual {v3, v4}, Lf8/z3;->b(I)V
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_7
    :try_start_1
    new-instance v1, Lf8/h4;

    invoke-direct {v1, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, v1, Lf8/h4;->l:Lf8/o4;

    throw v1

    :goto_8
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmc/m;->n:Lf8/c4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_13
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmc/m;->o:Lf8/e4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_14
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_15

    iget-object v1, p0, Lmc/m;->p:Lf8/e4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_15
    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmc/m;->q:Lf8/c4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_16
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmc/m;->r:Lf8/c4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_17
    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_18

    iget-object v1, p0, Lmc/m;->s:Lf8/a4;

    check-cast v1, Lf8/e;

    iput-boolean v0, v1, Lf8/e;->l:Z

    :cond_18
    invoke-virtual {p2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_19
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lmc/m;->n:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_1a
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmc/m;->o:Lf8/e4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_1b
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lmc/m;->p:Lf8/e4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_1c
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lmc/m;->q:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_1d
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lmc/m;->r:Lf8/c4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_1e
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lmc/m;->s:Lf8/a4;

    check-cast p1, Lf8/e;

    iput-boolean v0, p1, Lf8/e;->l:Z

    :cond_1f
    invoke-virtual {p2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_c
        0xa -> :sswitch_b
        0x10 -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x1a -> :sswitch_7
        0x20 -> :sswitch_6
        0x22 -> :sswitch_5
        0x28 -> :sswitch_4
        0x2a -> :sswitch_3
        0x30 -> :sswitch_2
        0x32 -> :sswitch_1
    .end sparse-switch
.end method
