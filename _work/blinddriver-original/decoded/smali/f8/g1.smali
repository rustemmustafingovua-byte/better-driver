.class public final Lf8/g1;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 5

    new-instance p0, Lf8/i1;

    invoke-direct {p0}, Lf8/i1;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_9

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v2, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

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
    iget v2, p0, Lf8/i1;->n:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lf8/i1;->n:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v2

    iput-boolean v2, p0, Lf8/i1;->t:Z

    goto :goto_0

    :cond_3
    iget v2, p0, Lf8/i1;->n:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lf8/i1;->n:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v2

    iput-boolean v2, p0, Lf8/i1;->s:Z

    goto :goto_0

    :cond_4
    iget v2, p0, Lf8/i1;->n:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lf8/i1;->r:Lf8/m1;

    invoke-virtual {v2}, Lf8/m1;->z()Lf8/k1;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lf8/m1;->u:Lf8/j1;

    invoke-virtual {p1, v3, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v3

    check-cast v3, Lf8/m1;

    iput-object v3, p0, Lf8/i1;->r:Lf8/m1;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lf8/k1;->X(Lf8/m1;)V

    invoke-virtual {v2}, Lf8/k1;->W()Lf8/m1;

    move-result-object v2

    iput-object v2, p0, Lf8/i1;->r:Lf8/m1;

    :cond_6
    iget v2, p0, Lf8/i1;->n:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lf8/i1;->n:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/i1;->n:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lf8/i1;->n:I

    iput-object v2, p0, Lf8/i1;->q:Ljava/io/Serializable;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v3, p0, Lf8/i1;->n:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lf8/i1;->n:I

    iput-object v2, p0, Lf8/i1;->p:Ljava/io/Serializable;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v2

    iget v4, p0, Lf8/i1;->n:I

    or-int/2addr v3, v4

    iput v3, p0, Lf8/i1;->n:I

    iput-object v2, p0, Lf8/i1;->o:Ljava/io/Serializable;
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

    :cond_a
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
