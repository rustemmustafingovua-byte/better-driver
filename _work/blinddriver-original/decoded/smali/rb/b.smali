.class public final Lrb/b;
.super Lg5/c;
.source "SourceFile"


# instance fields
.field public o:Lcc/a;


# virtual methods
.method public final a(Lpb/i;)Z
    .locals 8

    invoke-virtual {p0, p1}, Lg5/c;->g(Lpb/i;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, La/a;->i(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lrb/b;->o:Lcc/a;

    if-nez v2, :cond_1

    new-instance v2, Lcc/a;

    iget-object v4, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v4, Lpb/i;

    invoke-static {v4}, La/a;->i(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Lcc/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lrb/b;->o:Lcc/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lrb/b;->o:Lcc/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcc/d;

    invoke-direct {v4}, Lcc/d;-><init>()V

    iget-object v2, v2, Lcc/a;->a:Lk0/l;

    invoke-virtual {v2, v0, v4}, Lk0/l;->j(Ljava/util/ArrayList;Lcc/e;)V

    iget-boolean v0, v4, Lcc/d;->n:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, p1}, Lg5/c;->i(Lpb/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    return v3

    :cond_3
    invoke-virtual {p1}, Lpb/i;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lnb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc5/o;->k(Lpb/i;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_4
    if-ge v5, v4, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lpb/a;

    iget-object v7, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v7, Lpb/i;

    invoke-virtual {v0, v6, v7}, Lnb/b;->b(Lpb/a;Lpb/i;)I

    move-result v6

    if-eq v6, v2, :cond_4

    return v3

    :cond_5
    :goto_3
    return v1
.end method
