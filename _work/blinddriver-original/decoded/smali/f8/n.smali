.class public final Lf8/n;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 5

    new-instance p0, Lf8/p;

    invoke-direct {p0}, Lf8/p;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v2, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    iget v2, p0, Lf8/p;->n:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lf8/p;->q:Lf8/l0;

    invoke-virtual {v2}, Lf8/l0;->y()Lf8/k0;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lf8/l0;->r:Lf8/j0;

    invoke-virtual {p1, v3, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v3

    check-cast v3, Lf8/l0;

    iput-object v3, p0, Lf8/p;->q:Lf8/l0;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Lf8/k0;->X(Lf8/l0;)Lf8/k0;

    invoke-virtual {v2}, Lf8/k0;->W()Lf8/l0;

    move-result-object v2

    iput-object v2, p0, Lf8/p;->q:Lf8/l0;

    :cond_4
    iget v2, p0, Lf8/p;->n:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lf8/p;->n:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lf8/p;->n:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lf8/p;->n:I

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v2

    iput v2, p0, Lf8/p;->p:I

    goto :goto_0

    :cond_6
    iget v2, p0, Lf8/p;->n:I

    or-int/2addr v2, v3

    iput v2, p0, Lf8/p;->n:I

    invoke-virtual {p1}, Lf8/k;->l()I

    move-result v2

    iput v2, p0, Lf8/p;->o:I
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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

    :cond_7
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
