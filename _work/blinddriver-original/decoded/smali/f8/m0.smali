.class public final Lf8/m0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lf8/q0;

    invoke-direct {p0}, Lf8/q0;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v0, v2, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v2

    if-nez v2, :cond_0

    :sswitch_0
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

    :sswitch_1
    iget v2, p0, Lf8/q0;->n:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lf8/q0;->n:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v2

    iput-boolean v2, p0, Lf8/q0;->y:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/q0;->n:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lf8/q0;->n:I

    iput-object v2, p0, Lf8/q0;->w:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_3
    iget v2, p0, Lf8/q0;->n:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lf8/q0;->n:I

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v2

    iput v2, p0, Lf8/q0;->v:I

    goto :goto_0

    :sswitch_4
    iget v2, p0, Lf8/q0;->n:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Lf8/q0;->x:Lf8/v0;

    invoke-virtual {v2}, Lf8/v0;->D()Lf8/s0;

    move-result-object v4

    :cond_1
    sget-object v2, Lf8/v0;->y:Lf8/r0;

    invoke-virtual {p1, v2, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v2

    check-cast v2, Lf8/v0;

    iput-object v2, p0, Lf8/q0;->x:Lf8/v0;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Lf8/s0;->X(Lf8/v0;)V

    invoke-virtual {v4}, Lf8/s0;->W()Lf8/v0;

    move-result-object v2

    iput-object v2, p0, Lf8/q0;->x:Lf8/v0;

    :cond_2
    iget v2, p0, Lf8/q0;->n:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lf8/q0;->n:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/q0;->n:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lf8/q0;->n:I

    iput-object v2, p0, Lf8/q0;->u:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/q0;->n:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lf8/q0;->n:I

    iput-object v2, p0, Lf8/q0;->s:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v2

    invoke-static {v2}, Lf8/p0;->b(I)Lf8/p0;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Lf8/f5;->z(II)V

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Lf8/q0;->n:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lf8/q0;->n:I

    iput v2, p0, Lf8/q0;->r:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v2

    if-eq v2, v5, :cond_6

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    sget-object v3, Lf8/o0;->m:Lf8/o0;

    goto :goto_1

    :cond_4
    sget-object v4, Lf8/o0;->o:Lf8/o0;

    goto :goto_1

    :cond_5
    sget-object v4, Lf8/o0;->n:Lf8/o0;

    goto :goto_1

    :cond_6
    sget-object v4, Lf8/o0;->m:Lf8/o0;

    :goto_1
    const/4 v3, 0x4

    if-nez v4, :cond_7

    invoke-virtual {v0, v3, v2}, Lf8/f5;->z(II)V

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Lf8/q0;->n:I

    or-int/2addr v3, v4

    iput v3, p0, Lf8/q0;->n:I

    iput v2, p0, Lf8/q0;->q:I

    goto/16 :goto_0

    :sswitch_9
    iget v2, p0, Lf8/q0;->n:I

    or-int/2addr v2, v3

    iput v2, p0, Lf8/q0;->n:I

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v2

    iput v2, p0, Lf8/q0;->p:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/q0;->n:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lf8/q0;->n:I

    iput-object v2, p0, Lf8/q0;->t:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/q0;->n:I

    or-int/2addr v3, v5

    iput v3, p0, Lf8/q0;->n:I

    iput-object v2, p0, Lf8/q0;->o:Ljava/io/Serializable;
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
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_8
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x48 -> :sswitch_3
        0x52 -> :sswitch_2
        0x88 -> :sswitch_1
    .end sparse-switch
.end method
