.class public final Lf8/w1;
.super Lf8/d;
.source "SourceFile"


# virtual methods
.method public final a(Lf8/k;Lf8/h3;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lf8/y1;

    invoke-direct {p0}, Lf8/y1;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x108

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

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lf8/y1;->q:Ljava/util/List;

    move v2, v3

    :cond_3
    iget-object v4, p0, Lf8/y1;->q:Ljava/util/List;

    sget-object v5, Lf8/k2;->x:Lf8/f2;

    invoke-virtual {p1, v5, p2}, Lf8/k;->i(Lf8/r4;Lf8/h3;)Lf8/o4;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v4, p0, Lf8/y1;->o:I

    or-int/2addr v4, v5

    iput v4, p0, Lf8/y1;->o:I

    invoke-virtual {p1}, Lf8/k;->f()Z

    move-result v4

    iput-boolean v4, p0, Lf8/y1;->p:Z
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lf8/y1;->q:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf8/y1;->q:Ljava/util/List;

    :cond_5
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p2

    iput-object p2, p0, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/o3;->w()V

    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lf8/y1;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/y1;->q:Ljava/util/List;

    :cond_7
    invoke-virtual {v0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/o3;->w()V

    return-object p0
.end method
