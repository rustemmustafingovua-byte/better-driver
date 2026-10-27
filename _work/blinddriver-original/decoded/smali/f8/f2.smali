.class public final Lf8/f2;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lf8/k2;

    invoke-direct {p0}, Lf8/k2;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0x12

    if-eq v3, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_7

    const/16 v5, 0x20

    if-eq v3, v5, :cond_6

    const/16 v6, 0x28

    if-eq v3, v6, :cond_5

    const/16 v6, 0x31

    if-eq v3, v6, :cond_4

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_3

    const/16 v6, 0x42

    if-eq v3, v6, :cond_2

    invoke-virtual {v0, v3, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iget v4, p0, Lf8/k2;->n:I

    or-int/2addr v4, v5

    iput v4, p0, Lf8/k2;->n:I

    iput-object v3, p0, Lf8/k2;->u:Ljava/io/Serializable;

    goto :goto_0

    :cond_3
    iget v3, p0, Lf8/k2;->n:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lf8/k2;->n:I

    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iput-object v3, p0, Lf8/k2;->t:Lf8/j;

    goto :goto_0

    :cond_4
    iget v3, p0, Lf8/k2;->n:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lf8/k2;->n:I

    invoke-virtual {p1}, Lf8/k;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    iput-wide v3, p0, Lf8/k2;->s:D

    goto :goto_0

    :cond_5
    iget v3, p0, Lf8/k2;->n:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lf8/k2;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v3

    iput-wide v3, p0, Lf8/k2;->r:J

    goto :goto_0

    :cond_6
    iget v3, p0, Lf8/k2;->n:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lf8/k2;->n:I

    invoke-virtual {p1}, Lf8/k;->m()J

    move-result-wide v3

    iput-wide v3, p0, Lf8/k2;->q:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v3

    iget v5, p0, Lf8/k2;->n:I

    or-int/2addr v4, v5

    iput v4, p0, Lf8/k2;->n:I

    iput-object v3, p0, Lf8/k2;->p:Ljava/io/Serializable;

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lf8/k2;->o:Ljava/util/List;

    move v2, v4

    :cond_9
    iget-object v3, p0, Lf8/k2;->o:Ljava/util/List;

    sget-object v4, Lf8/j2;->s:Lf8/h2;

    invoke-virtual {p1, v4, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :try_start_1
    new-instance p2, Lf8/h4;

    invoke-direct {p2, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lf8/h4;->l:Lf8/o4;

    throw p2

    :goto_2
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_a

    iget-object p2, p0, Lf8/k2;->o:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/k2;->o:Ljava/util/List;

    :cond_a
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_b
    if-eqz v2, :cond_c

    iget-object p1, p0, Lf8/k2;->o:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/k2;->o:Ljava/util/List;

    :cond_c
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
