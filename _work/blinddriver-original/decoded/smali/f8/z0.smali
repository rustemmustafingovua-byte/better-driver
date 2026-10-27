.class public final Lf8/z0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lf8/c1;

    invoke-direct {p0}, Lf8/c1;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/high16 v3, 0x100000

    if-nez v1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v4}, Lf8/o3;->x(Lf8/k;Lf8/f5;Lf8/h3;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v6

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
    and-int v4, v2, v3

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/c1;->J:Ljava/util/List;

    move v2, v3

    :cond_1
    iget-object v4, p0, Lf8/c1;->J:Ljava/util/List;

    sget-object v5, Lf8/k2;->x:Lf8/f2;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->I:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->H:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_4
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->z:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->G:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->F:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->E:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->D:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->C:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_a
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->B:Z

    goto/16 :goto_0

    :sswitch_b
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->t:Z

    goto/16 :goto_0

    :sswitch_c
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->A:Z

    goto/16 :goto_0

    :sswitch_d
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->s:Z

    goto/16 :goto_0

    :sswitch_e
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->y:Z

    goto/16 :goto_0

    :sswitch_f
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->x:Z

    goto/16 :goto_0

    :sswitch_10
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->w:Z

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->v:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_12
    iget v4, p0, Lf8/c1;->o:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lf8/c1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/c1;->r:Z

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    sget-object v5, Lf8/b1;->m:Lf8/b1;

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    sget-object v5, Lf8/b1;->o:Lf8/b1;

    goto :goto_1

    :cond_3
    sget-object v5, Lf8/b1;->n:Lf8/b1;

    goto :goto_1

    :cond_4
    sget-object v5, Lf8/b1;->m:Lf8/b1;

    :goto_1
    if-nez v5, :cond_5

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v4}, Lf8/f5;->z(II)V

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lf8/c1;->o:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lf8/c1;->o:I

    iput v4, p0, Lf8/c1;->u:I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v6, p0, Lf8/c1;->o:I

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->q:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v4

    iget v5, p0, Lf8/c1;->o:I

    or-int/2addr v5, v6

    iput v5, p0, Lf8/c1;->o:I

    iput-object v4, p0, Lf8/c1;->p:Ljava/io/Serializable;
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
    and-int p2, v2, v3

    if-eqz p2, :cond_6

    iget-object p2, p0, Lf8/c1;->J:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/c1;->J:Ljava/util/List;

    :cond_6
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/o3;->w()V

    throw p1

    :cond_7
    and-int p1, v2, v3

    if-eqz p1, :cond_8

    iget-object p1, p0, Lf8/c1;->J:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/c1;->J:Ljava/util/List;

    :cond_8
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/o3;->w()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_15
        0x42 -> :sswitch_14
        0x48 -> :sswitch_13
        0x50 -> :sswitch_12
        0x5a -> :sswitch_11
        0x80 -> :sswitch_10
        0x88 -> :sswitch_f
        0x90 -> :sswitch_e
        0xa0 -> :sswitch_d
        0xb8 -> :sswitch_c
        0xd8 -> :sswitch_b
        0xf8 -> :sswitch_a
        0x122 -> :sswitch_9
        0x12a -> :sswitch_8
        0x13a -> :sswitch_7
        0x142 -> :sswitch_6
        0x14a -> :sswitch_5
        0x150 -> :sswitch_4
        0x162 -> :sswitch_3
        0x16a -> :sswitch_2
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method
