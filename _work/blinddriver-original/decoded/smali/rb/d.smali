.class public final Lrb/d;
.super Lg5/c;
.source "SourceFile"


# instance fields
.field public final o:Z

.field public p:Lcc/a;

.field public q:Le/a;


# direct methods
.method public constructor <init>(Lpb/x;)V
    .locals 1

    invoke-direct {p0, p1}, Lg5/c;-><init>(Lpb/i;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lrb/d;->p:Lcc/a;

    iput-object v0, p0, Lrb/d;->q:Le/a;

    invoke-virtual {p1}, Lpb/i;->N()Z

    move-result p1

    iput-boolean p1, p0, Lrb/d;->o:Z

    return-void
.end method


# virtual methods
.method public final a(Lpb/i;)Z
    .locals 8

    invoke-virtual {p0, p1}, Lg5/c;->g(Lpb/i;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lrb/d;->o:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    check-cast p0, Lpb/x;

    invoke-static {p0, p1}, La/a;->m(Lpb/x;Lpb/i;)Z

    move-result p0

    return p0

    :cond_1
    new-instance v0, Lrb/f;

    invoke-direct {v0, p0}, Le1/b;-><init>(Lrb/d;)V

    invoke-static {p1}, Lc5/o;->k(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_2
    const/4 v5, 0x2

    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lpb/a;

    iget-object v7, v0, Le1/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a;

    invoke-virtual {v7, v6}, Le/a;->c(Lpb/a;)I

    move-result v6

    if-eq v6, v5, :cond_2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, La/a;->i(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lrb/d;->n()Lcc/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcc/d;

    invoke-direct {v3}, Lcc/d;-><init>()V

    iget-object v2, v2, Lcc/a;->a:Lk0/l;

    invoke-virtual {v2, v0, v3}, Lk0/l;->j(Ljava/util/ArrayList;Lcc/e;)V

    iget-boolean v0, v3, Lcc/d;->n:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v0

    if-ne v0, v5, :cond_7

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_6
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lpb/a;

    invoke-static {v3, p1}, Lm2/j;->s(Lpb/a;Lpb/i;)I

    move-result v3

    if-eq v3, v5, :cond_6

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    return v1
.end method

.method public final d(Lpb/i;)Z
    .locals 9

    iget-object v0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Lpb/i;

    invoke-virtual {v0}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpb/h;->a(Lpb/h;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v1, p0, Lrb/d;->o:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lpb/x;

    new-instance p0, Lb0/l1;

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lb0/l1;-><init>(IZ)V

    invoke-virtual {v0}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    iput-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb/h;->a(Lpb/h;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lb0/l1;->s(Lpb/i;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return v2

    :cond_2
    return v3

    :cond_3
    new-instance v1, Lrb/e;

    invoke-direct {v1, p0}, Le1/b;-><init>(Lrb/d;)V

    iput-boolean v3, v1, Lrb/e;->b:Z

    iget-object v4, v1, Le1/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a;

    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_7

    move p0, v2

    :goto_1
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v0

    if-ge p0, v0, :cond_5

    invoke-virtual {p1, p0}, Lpb/i;->A(I)Lpb/i;

    move-result-object v0

    check-cast v0, Lpb/w;

    invoke-virtual {v0}, Lpb/w;->v()Lpb/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Le/a;->c(Lpb/a;)I

    move-result v0

    if-ne v0, v6, :cond_4

    goto/16 :goto_6

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p0, v1, Lrb/e;->b:Z

    if-eqz p0, :cond_12

    move p0, v2

    :goto_2
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v0

    if-ge p0, v0, :cond_11

    invoke-virtual {p1, p0}, Lpb/i;->A(I)Lpb/i;

    move-result-object v0

    check-cast v0, Lpb/w;

    invoke-virtual {v0}, Lpb/w;->v()Lpb/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Le/a;->c(Lpb/a;)I

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_7

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lc5/o;->k(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v2

    :cond_8
    if-ge v7, v5, :cond_9

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lpb/a;

    invoke-virtual {v4, v8}, Le/a;->c(Lpb/a;)I

    move-result v8

    if-ne v8, v6, :cond_8

    goto :goto_6

    :cond_9
    instance-of v1, p1, Lpb/y;

    if-eqz v1, :cond_a

    :goto_3
    move v4, v3

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lpb/i;->E()I

    move-result v4

    if-eq v4, v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v2}, Lpb/i;->A(I)Lpb/i;

    move-result-object v4

    check-cast v4, Lpb/x;

    iget-object v4, v4, Lpb/x;->p:[Lpb/s;

    array-length v4, v4

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    :goto_4
    move v4, v2

    :goto_5
    invoke-static {p1}, La/a;->i(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Lcc/d;

    invoke-direct {v7}, Lcc/d;-><init>()V

    iput-boolean v3, v7, Lcc/d;->m:Z

    invoke-virtual {p0}, Lrb/d;->n()Lcc/a;

    move-result-object v8

    iget-object v8, v8, Lcc/a;->a:Lk0/l;

    invoke-virtual {v8, v5, v7}, Lk0/l;->j(Ljava/util/ArrayList;Lcc/e;)V

    iget-boolean v5, v7, Lcc/d;->n:Z

    iget-boolean v8, v7, Lcc/d;->o:Z

    iget-boolean v7, v7, Lcc/d;->p:Z

    if-eqz v4, :cond_d

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    if-nez v7, :cond_e

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v0, p1}, Lpb/i;->l(Lpb/i;)Z

    move-result p0

    return p0

    :cond_f
    if-eqz v1, :cond_12

    iget-object p0, p0, Lg5/c;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :cond_10
    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lpb/a;

    invoke-static {v4, p1}, Lm2/j;->s(Lpb/a;Lpb/i;)I

    move-result v4

    if-eq v4, v6, :cond_10

    :cond_11
    :goto_6
    return v2

    :cond_12
    :goto_7
    return v3
.end method

.method public final declared-synchronized n()Lcc/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrb/d;->p:Lcc/a;

    if-nez v0, :cond_0

    new-instance v0, Lcc/a;

    iget-object v1, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v1, Lpb/i;

    invoke-static {v1}, La/a;->i(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcc/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lrb/d;->p:Lcc/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lrb/d;->p:Lcc/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
