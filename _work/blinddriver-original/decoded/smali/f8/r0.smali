.class public final Lf8/r0;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 11

    new-instance p0, Lf8/v0;

    invoke-direct {p0}, Lf8/v0;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x40

    if-nez v1, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x8

    if-eq v4, v8, :cond_d

    const/16 v9, 0x10

    if-eq v4, v9, :cond_c

    const/16 v10, 0x18

    if-eq v4, v10, :cond_b

    const/16 v9, 0x28

    if-eq v4, v9, :cond_a

    const/16 v8, 0x30

    if-eq v4, v8, :cond_5

    const/16 v6, 0x50

    if-eq v4, v6, :cond_4

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_2

    invoke-virtual {p0, p1, v0, p2, v4}, Lf8/o3;->x(Lf8/k;Lf8/f5;Lf8/h3;I)Z

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
    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/v0;->v:Ljava/util/List;

    move v2, v3

    :cond_3
    iget-object v4, p0, Lf8/v0;->v:Ljava/util/List;

    sget-object v5, Lf8/k2;->x:Lf8/f2;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v4, p0, Lf8/v0;->o:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lf8/v0;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/v0;->u:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    if-eqz v4, :cond_8

    if-eq v4, v5, :cond_7

    if-eq v4, v7, :cond_6

    sget-object v5, Lf8/u0;->m:Lf8/u0;

    goto :goto_1

    :cond_6
    sget-object v6, Lf8/u0;->o:Lf8/u0;

    goto :goto_1

    :cond_7
    sget-object v6, Lf8/u0;->n:Lf8/u0;

    goto :goto_1

    :cond_8
    sget-object v6, Lf8/u0;->m:Lf8/u0;

    :goto_1
    if-nez v6, :cond_9

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Lf8/f5;->z(II)V

    goto :goto_0

    :cond_9
    iget v5, p0, Lf8/v0;->o:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lf8/v0;->o:I

    iput v4, p0, Lf8/v0;->r:I

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lf8/v0;->o:I

    or-int/2addr v4, v8

    iput v4, p0, Lf8/v0;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/v0;->s:Z

    goto/16 :goto_0

    :cond_b
    iget v4, p0, Lf8/v0;->o:I

    or-int/2addr v4, v9

    iput v4, p0, Lf8/v0;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/v0;->t:Z

    goto/16 :goto_0

    :cond_c
    iget v4, p0, Lf8/v0;->o:I

    or-int/2addr v4, v7

    iput v4, p0, Lf8/v0;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/v0;->q:Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v4

    if-eqz v4, :cond_10

    if-eq v4, v5, :cond_f

    if-eq v4, v7, :cond_e

    sget-object v7, Lf8/t0;->m:Lf8/t0;

    goto :goto_2

    :cond_e
    sget-object v6, Lf8/t0;->o:Lf8/t0;

    goto :goto_2

    :cond_f
    sget-object v6, Lf8/t0;->n:Lf8/t0;

    goto :goto_2

    :cond_10
    sget-object v6, Lf8/t0;->m:Lf8/t0;

    :goto_2
    if-nez v6, :cond_11

    invoke-virtual {v0, v5, v4}, Lf8/f5;->z(II)V

    goto/16 :goto_0

    :cond_11
    iget v6, p0, Lf8/v0;->o:I

    or-int/2addr v5, v6

    iput v5, p0, Lf8/v0;->o:I

    iput v4, p0, Lf8/v0;->p:I
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
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_12

    iget-object p2, p0, Lf8/v0;->v:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/v0;->v:Ljava/util/List;

    :cond_12
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/o3;->w()V

    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_14

    iget-object p1, p0, Lf8/v0;->v:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/v0;->v:Ljava/util/List;

    :cond_14
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/o3;->w()V

    return-object p0
.end method
