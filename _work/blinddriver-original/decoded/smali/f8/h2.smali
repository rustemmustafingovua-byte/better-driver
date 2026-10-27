.class public final Lf8/h2;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 4

    new-instance p0, Lf8/j2;

    invoke-direct {p0}, Lf8/j2;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0x10

    if-eq v1, v3, :cond_2

    invoke-virtual {p2, v1, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    iget v1, p0, Lf8/j2;->n:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lf8/j2;->n:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v1

    iput-boolean v1, p0, Lf8/j2;->p:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lf8/k;->g()Lf8/j;

    move-result-object v1

    iget v3, p0, Lf8/j2;->n:I

    or-int/2addr v2, v3

    iput v2, p0, Lf8/j2;->n:I

    iput-object v1, p0, Lf8/j2;->o:Ljava/io/Serializable;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    new-instance v0, Lf8/h4;

    invoke-direct {v0, p1}, Lf8/h4;-><init>(Ljava/io/IOException;)V

    iput-object p0, v0, Lf8/h4;->l:Lf8/o4;

    throw v0

    :goto_2
    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    throw p1

    :cond_4
    invoke-virtual {p2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method
