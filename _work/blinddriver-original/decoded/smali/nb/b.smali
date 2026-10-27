.class public final Lnb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public static c(Lpb/a;Lpb/x;)I
    .locals 6

    iget-object v0, p1, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Lpb/q;->L()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p1, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Lpb/i;->z()Lpb/h;

    move-result-object v2

    invoke-virtual {v2, p0}, Lpb/h;->d(Lpb/a;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->t()[Lpb/a;

    move-result-object v0

    invoke-static {p0, v0}, Lc6/o;->T(Lpb/a;[Lpb/a;)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    iget-object v4, p1, Lpb/x;->p:[Lpb/s;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpb/i;->z()Lpb/h;

    move-result-object v5

    invoke-virtual {v5, p0}, Lpb/h;->d(Lpb/a;)Z

    move-result v5

    if-nez v5, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    iget-object v4, v4, Lpb/q;->o:Lpb/d;

    invoke-interface {v4}, Lpb/d;->t()[Lpb/a;

    move-result-object v4

    invoke-static {p0, v4}, Lc6/o;->T(Lpb/a;[Lpb/a;)I

    move-result v4

    :goto_2
    if-nez v4, :cond_5

    :goto_3
    return v1

    :cond_5
    if-ne v4, v2, :cond_6

    :goto_4
    return v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method public static d(Lpb/a;Lpb/q;)I
    .locals 5

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpb/h;->d(Lpb/a;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lpb/q;->o:Lpb/d;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lpb/d;->b(I)Lpb/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-interface {v0}, Lpb/d;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Lpb/d;->b(I)Lpb/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v0}, Lc6/o;->S(Lpb/a;Lpb/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lpb/q;->P()Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_2

    :cond_4
    move p0, v4

    :goto_2
    rem-int/2addr p0, v1

    if-ne p0, v4, :cond_5

    return v4

    :cond_5
    :goto_3
    return v2
.end method


# virtual methods
.method public final a(Lpb/a;Lpb/i;)V
    .locals 12

    invoke-virtual {p2}, Lpb/i;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    instance-of v0, p2, Lpb/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lpb/w;

    invoke-virtual {v0}, Lpb/w;->v()Lpb/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpb/a;->i(Lpb/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lnb/b;->e(I)V

    :cond_2
    instance-of v0, p2, Lpb/q;

    if-eqz v0, :cond_3

    check-cast p2, Lpb/q;

    invoke-static {p1, p2}, Lnb/b;->d(Lpb/a;Lpb/q;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnb/b;->e(I)V

    return-void

    :cond_3
    instance-of v0, p2, Lpb/x;

    if-eqz v0, :cond_4

    check-cast p2, Lpb/x;

    invoke-static {p1, p2}, Lnb/b;->c(Lpb/a;Lpb/x;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnb/b;->e(I)V

    return-void

    :cond_4
    instance-of v0, p2, Lpb/t;

    if-eqz v0, :cond_5

    check-cast p2, Lpb/t;

    :goto_1
    iget-object v0, p2, Lpb/j;->o:[Lpb/i;

    array-length v2, v0

    if-ge v1, v2, :cond_11

    aget-object v0, v0, v1

    check-cast v0, Lpb/q;

    invoke-static {p1, v0}, Lnb/b;->d(Lpb/a;Lpb/q;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnb/b;->e(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    instance-of v0, p2, Lpb/v;

    if-eqz v0, :cond_6

    check-cast p2, Lpb/v;

    :goto_2
    iget-object v0, p2, Lpb/j;->o:[Lpb/i;

    array-length v2, v0

    if-ge v1, v2, :cond_11

    aget-object v0, v0, v1

    check-cast v0, Lpb/x;

    invoke-static {p1, v0}, Lnb/b;->c(Lpb/a;Lpb/x;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnb/b;->e(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    instance-of v0, p2, Lpb/j;

    if-eqz v0, :cond_11

    move-object v0, p2

    check-cast v0, Lpb/j;

    iget-object v2, v0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v8, v1

    move-object v7, v4

    move v6, v5

    :cond_7
    :goto_3
    if-eqz v6, :cond_9

    :cond_8
    :goto_4
    move v9, v5

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lpb/k;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    move-object v7, v4

    :cond_b
    if-lt v8, v3, :cond_8

    move v9, v1

    :goto_5
    if-eqz v9, :cond_11

    if-eqz v6, :cond_c

    move-object v9, v0

    move v6, v1

    goto :goto_6

    :cond_c
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lpb/k;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v9

    goto :goto_6

    :cond_d
    move-object v7, v4

    :cond_e
    if-ge v8, v3, :cond_10

    add-int/lit8 v9, v8, 0x1

    aget-object v8, v2, v8

    instance-of v10, v8, Lpb/j;

    if-eqz v10, :cond_f

    new-instance v7, Lpb/k;

    check-cast v8, Lpb/j;

    invoke-direct {v7, v8}, Lpb/k;-><init>(Lpb/j;)V

    invoke-virtual {v7}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v8

    :cond_f
    move v11, v9

    move-object v9, v8

    move v8, v11

    :goto_6
    check-cast v9, Lpb/i;

    if-eq v9, p2, :cond_7

    invoke-virtual {p0, p1, v9}, Lnb/b;->a(Lpb/a;Lpb/i;)V

    goto :goto_3

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_11
    :goto_7
    return-void
.end method

.method public final b(Lpb/a;Lpb/i;)I
    .locals 2

    invoke-virtual {p2}, Lpb/i;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lpb/q;

    if-eqz v0, :cond_1

    check-cast p2, Lpb/q;

    invoke-static {p1, p2}, Lnb/b;->d(Lpb/a;Lpb/q;)I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p2, Lpb/x;

    if-eqz v0, :cond_2

    check-cast p2, Lpb/x;

    invoke-static {p1, p2}, Lnb/b;->c(Lpb/a;Lpb/x;)I

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnb/b;->a:Z

    iput v0, p0, Lnb/b;->b:I

    invoke-virtual {p0, p1, p2}, Lnb/b;->a(Lpb/a;Lpb/i;)V

    iget p1, p0, Lnb/b;->b:I

    rem-int/lit8 p2, p1, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    return v1

    :cond_3
    if-gtz p1, :cond_5

    iget-boolean p0, p0, Lnb/b;->a:Z

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public final e(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lnb/b;->a:Z

    :cond_0
    if-ne p1, v0, :cond_1

    iget p1, p0, Lnb/b;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lnb/b;->b:I

    :cond_1
    return-void
.end method
